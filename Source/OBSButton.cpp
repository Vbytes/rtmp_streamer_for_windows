#include "OBSButton.h"
#include<tchar.h>
#include <gdiplus.h>



const int g_nCaptionLen = 50;

COBSButton::COBSButton(void) : m_hWnd(NULL), m_hFourStateBitmap(NULL), \
m_fTrackMouse(FALSE), m_hdcMemory(NULL), m_hOldBmp(NULL), m_nSubPic(4)
{

}

COBSButton::~COBSButton(void)
{
	if (m_hFourStateBitmap)
	{
		DeleteObject(m_hFourStateBitmap);
	}
	if (m_hFont)
	{
		DeleteObject(m_hFont);
	}
	if (m_hdcMemory)
	{
		DeleteDC(m_hdcMemory);
		
	}
}
BOOL  COBSButton::ChangeSubPic(STATE index, LPCTSTR lpszImage)
{
	if (m_hWnd == NULL || lpszImage == NULL)
	{
		return FALSE;
	}
	Gdiplus::Image* pImage = Gdiplus::Image::FromFile(lpszImage);
	if ((pImage == NULL) || (pImage->GetLastStatus() != Gdiplus::Ok))
	{
		if (pImage)
		{
			delete pImage;
			pImage = NULL;
		}
		return FALSE;
	}
	
	int nPos = pImage->GetWidth()*index;//计算4张图片需要多少像素
	
	Gdiplus::Graphics graph(m_hdcMemory);
	graph.SetSmoothingMode(Gdiplus::SmoothingModeNone);
	graph.DrawImage(pImage, nPos, 0, pImage->GetWidth(), pImage->GetHeight());

	return TRUE;
}
BOOL COBSButton::Create(LPCTSTR lpszCaption, const RECT& rect, HWND hParentWnd, \
	UINT nID, LPCTSTR lpszImage,int nSubPic)
{
	if (m_hWnd)
		return FALSE;
	if (nSubPic>4||nSubPic<=0)
	{
		return FALSE;
	}
	m_hWnd = CreateWindow(TEXT("BUTTON"), lpszCaption, \
		WS_CHILD | WS_VISIBLE | WS_TABSTOP | BS_OWNERDRAW, \
		rect.left, rect.top, rect.right - rect.left, rect.bottom - rect.top, \
		hParentWnd, (HMENU)nID, NULL, NULL);

	if (NULL == m_hWnd)
	{
		goto CREATE_FAIL;
	}
	SendMessage(m_hWnd, WM_SETFONT, (WPARAM)GetStockObject(DEFAULT_GUI_FONT), TRUE);
	m_OldProc = (WNDPROC)SetWindowLong(m_hWnd, GWLP_WNDPROC /*GWL_WNDPROC*/, (LONG)ButtonProc);
	SetWindowLong(m_hWnd, GWLP_USERDATA, (LONG)this);

	m_hFont = CreateFont(16, 0, 0, 0, FW_NORMAL, FALSE, FALSE, 0, DEFAULT_CHARSET, \
		OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, DEFAULT_QUALITY, DEFAULT_PITCH | FF_SWISS, TEXT("Arial"));

	Gdiplus::Image* pImage = NULL;
	//加载图片
	if (lpszImage != NULL)
	{

		
		pImage = Gdiplus::Image::FromFile(lpszImage);
		if ((pImage == NULL) || (pImage->GetLastStatus() != Gdiplus::Ok))
		{
			if (pImage)
			{
				delete pImage;
				pImage = NULL;
			}
			return FALSE;
		}
		RECT windowRect;
		GetWindowRect(m_hWnd, &windowRect);
		SIZE sizeWindow;
		sizeWindow.cx = (pImage->GetWidth() / nSubPic)*4;//计算4张图片需要多少像素
	    sizeWindow.cy = pImage->GetHeight();
		
		HDC hDC = GetDC(m_hWnd);
		m_hdcMemory = CreateCompatibleDC(hDC);
		if (m_hdcMemory == NULL) return FALSE;
		m_hFourStateBitmap = CreateCompatibleBitmap(hDC, sizeWindow.cx, sizeWindow.cy);
		if (m_hFourStateBitmap == NULL) return FALSE;
		m_hOldBmp = (HBITMAP)::SelectObject(m_hdcMemory, m_hFourStateBitmap);
		if (m_hOldBmp == NULL) return FALSE;
		Gdiplus::Graphics graph(m_hdcMemory);
		graph.SetSmoothingMode(Gdiplus::SmoothingModeNone);
		graph.DrawImage(pImage, 0, 0, sizeWindow.cx, sizeWindow.cy);

		if (NULL == m_hFourStateBitmap)
		{
			goto CREATE_FAIL;
		}
	}




	if (pImage)
	{
		delete pImage;
		pImage = NULL;
	}

	return TRUE;

CREATE_FAIL:
	if (m_hFourStateBitmap)
	{
		DeleteObject(m_hFourStateBitmap);
	}
	return FALSE;
}

LRESULT CALLBACK COBSButton::ButtonProc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
	PAINTSTRUCT ps;
	HDC hdc;
	COBSButton *_this = (COBSButton *)GetWindowLong(hWnd, GWLP_USERDATA);
	_this->m_hWnd = hWnd;

	switch (message)
	{
	case WM_PAINT:
		hdc = BeginPaint(hWnd, &ps);
		// TODO: Add any drawing code here...
		_this->Draw(hdc);
		EndPaint(hWnd, &ps);
		break;
	case WM_ERASEBKGND:
		return TRUE;
	case WM_DRAWITEM:
	{
						DRAWITEMSTRUCT *pDrawItemSturct = (DRAWITEMSTRUCT *)lParam;

						if (pDrawItemSturct->itemState & ODS_FOCUS)
						{
							RECT rtFocus = pDrawItemSturct->rcItem;
							rtFocus.left += 3;
							rtFocus.top += 3;
							rtFocus.right -= 3;
							rtFocus.bottom -= 3;
							_this->DrawFocusRect(pDrawItemSturct->hDC, rtFocus);
						}
						//_this->Draw(pDrawItemSturct->hDC);
	}
		break;
	case WM_LBUTTONDOWN:
	{
						   _this->OnLbuttonDown(wParam, lParam);

	}
		break;
	case WM_LBUTTONUP:
	{
						 _this->OnLbuttonUp(wParam, lParam);

	}
		break;
	case WM_LBUTTONDBLCLK:
	{
							 _this->OnLbuttonDBClick(wParam, lParam);

	}
		break;
	case WM_MOUSEMOVE:
	{
						 _this->OnMouseMove(wParam, lParam);
	}
		break;
	case WM_MOUSELEAVE:
	{
						  _this->OnMouseLeave(wParam, lParam);
	}
		break;
	default:
		return CallWindowProc(_this->m_OldProc, hWnd, message, wParam, lParam);
	}
	return 0;
}
void COBSButton::OnLbuttonDown(WPARAM wParam, LPARAM lParam)
{
	SetCapture(m_hWnd);
	m_nButtonState = STATE_DOWN;
	InvalidataCtrl();
}
void COBSButton::OnLbuttonUp(WPARAM wParam, LPARAM lParam)
{
	if (m_nButtonState == STATE_DOWN)
	{
		ReleaseCapture();
		POINT pt = {};
		GetCursorPos(&pt);
		RECT rcWnd = {};
		GetWindowRect(m_hWnd, &rcWnd);
		if (PtInRect(&rcWnd, pt))
		{
			m_fTrackMouse = TRUE;
			m_nButtonState = STATE_FOCUS;
			SendMessage(GetParent(m_hWnd), WM_COMMAND, MAKEWPARAM(GetDlgCtrlID(m_hWnd), \
				BN_CLICKED), (LPARAM)m_hWnd);
		}
		else
		{
			m_fTrackMouse = FALSE;
			m_nButtonState = STATE_UP;
		}
		InvalidataCtrl();
	}
}

void COBSButton::OnLbuttonDBClick(WPARAM wParam, LPARAM lParam)
{
	SendMessage(m_hWnd, WM_LBUTTONDOWN, NULL, NULL);
}

void COBSButton::OnMouseMove(WPARAM wParam, LPARAM lParam)
{
	if (!m_fTrackMouse)
	{
		TRACKMOUSEEVENT MouseEvent = { sizeof(TRACKMOUSEEVENT) };
		MouseEvent.dwFlags = TME_LEAVE;
		MouseEvent.hwndTrack = m_hWnd;
		MouseEvent.dwHoverTime = 1000;
		TrackMouseEvent(&MouseEvent);

		m_fTrackMouse = TRUE;
		m_nButtonState = STATE_FOCUS;
		InvalidataCtrl();
	}
}

void COBSButton::OnMouseLeave(WPARAM wParam, LPARAM lParam)
{
	m_fTrackMouse = FALSE;
	m_nButtonState = STATE_UP;
	InvalidataCtrl();
}

void COBSButton::Draw(HDC hDC)
{

	BITMAP bmpInfo = {};
	GetObject(m_hFourStateBitmap, sizeof(bmpInfo), &bmpInfo);


	RECT rcWnd = {};
	GetClientRect(m_hWnd, &rcWnd);
	int nWidth = rcWnd.right - rcWnd.left;
	int nHeight = rcWnd.bottom - rcWnd.top;
	int nBmpWidth = bmpInfo.bmWidth / 4;
	int nBmpHeight = bmpInfo.bmHeight;
	//绘制背景图
	SetStretchBltMode(hDC, HALFTONE);

	StretchBlt(hDC, 0, 0, nWidth, nHeight, m_hdcMemory, nBmpWidth * m_nButtonState, \
		0, nBmpWidth, nBmpHeight, SRCCOPY);



	if (m_nButtonState == STATE_DOWN||m_nButtonState==STATE_FOCUS)
	{
		SetTextColor(hDC, RGB(216, 92, 18));
		
		rcWnd.top += 2;
	}else 
	{
		SetTextColor(hDC, RGB(100, 100, 100));
	}

	//绘制文本
	TCHAR szCaption[g_nCaptionLen] = {};
	GetWindowText(m_hWnd, szCaption, g_nCaptionLen - 1);
	if (_tcslen(szCaption) > 0)
	{
		SetBkMode(hDC, TRANSPARENT);
		TCHAR *pReturnPos = NULL;
		HFONT hOldFont = (HFONT)SelectObject(hDC, m_hFont);
		if (pReturnPos = _tcsstr(szCaption, TEXT("\\r\\n")))
		{
		
			TCHAR *pszSecondLine = pReturnPos + 4;
			rcWnd.bottom = (rcWnd.bottom + rcWnd.top) / 2;
			rcWnd.top += 1;
			DrawText(hDC, szCaption, pReturnPos - szCaption, &rcWnd, DT_CENTER);
			rcWnd.top -= 1;
			rcWnd.bottom = rcWnd.bottom * 2 - rcWnd.top;
			rcWnd.top = (rcWnd.bottom + rcWnd.top) / 2;
			rcWnd.top -= 1;
			DrawText(hDC, pszSecondLine, _tcslen(pszSecondLine), &rcWnd, DT_CENTER);
		}
		else
		{
			rcWnd.left += 18;
			
			DrawText(hDC, szCaption, _tcslen(szCaption), &rcWnd, DT_CENTER | DT_VCENTER | DT_SINGLELINE);
		}
		SelectObject(hDC, hOldFont);
	}

	
}

void COBSButton::DrawFocusRect(HDC hDC, RECT &rcWnd)
{
	HPEN hOldPen = NULL;
	HPEN hDrawPen = CreatePen(PS_DOT, 2, RGB(0, 0, 0));

	HBRUSH hBrush = (HBRUSH)GetStockObject(NULL_BRUSH);
	HBRUSH hOldBrush = (HBRUSH)SelectObject(hDC, hBrush);
	hOldPen = (HPEN)SelectObject(hDC, hDrawPen);
	Rectangle(hDC, rcWnd.left, rcWnd.top, rcWnd.right, rcWnd.bottom);

	SelectObject(hDC, hOldBrush);
	SelectObject(hDC, hOldPen);
	DeleteObject(hDrawPen);
}

bool COBSButton::InvalidataCtrl()
{
	//RECT rcWnd = {};
	//GetClientRect(m_hWnd, &rcWnd);
	//InvalidateRect(m_hWnd, &rcWnd, bErase);
	HDC hDC = GetDC(m_hWnd);
	Draw(hDC);
	ReleaseDC(m_hWnd, hDC);
	return true;
}

void COBSButton::EnableButton(bool fEnable)
{
	if (fEnable)
	{
		m_nButtonState = STATE_UP;
	}
	else
	{
		m_nButtonState = STATE_DISABLE;
	}
	EnableWindow(m_hWnd, fEnable);
	InvalidataCtrl();
}
