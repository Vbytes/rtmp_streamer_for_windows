; Listing generated by Microsoft (R) Optimizing Compiler Version 18.00.21005.1 

	TITLE	F:\songmm_moon_stone_obs\OBS\Source\RTMPStuff.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB OLDNAMES

EXTRN	__imp__WSAStartup@8:PROC
EXTRN	__imp__WSACleanup@0:PROC
EXTRN	_strstr:PROC
$SG4294772377 DB 'app', 00H
$SG4294772375 DB 'flashVer', 00H
$SG4294772369 DB 'audioCodecs', 00H
$SG4294772368 DB 'videoCodecs', 00H
$SG4294772364 DB 'FCSubscribe', 00H
$SG4294772353 DB 'secureToken', 00H
$SG4294772354 DB 'description', 00H
$SG4294772351 DB 'onMetaData', 00H
_av_Started_playing DD FLAT:$SG4294772333
	DD	0fH
_av_capabilities DD FLAT:$SG4294772370
	DD	0cH
_av_encoder DD	FLAT:$SG4294772338
	DD	07H
_av_audiocodecid DD FLAT:$SG4294772344
	DD	0cH
_av_audiochannels DD FLAT:$SG4294772340
	DD	0dH
_av__result DD	FLAT:$SG4294772365
	DD	07H
_av_mp4a DD	FLAT:$SG4294772322
	DD	04H
_av_videocodecid DD FLAT:$SG4294772347
	DD	0cH
_av_width DD	FLAT:$SG4294772349
	DD	05H
_av_audiosamplerate DD FLAT:$SG4294772342
	DD	0fH
_av_mode DD	FLAT:$SG4294772357
	DD	04H
_av_NetStream_Play_Stop DD FLAT:$SG4294772332
	DD	013H
_av_Stopped_playing DD FLAT:$SG4294772331
	DD	0fH
_av_details DD	FLAT:$SG4294772330
	DD	07H
_av_OBSVersion DD FLAT:$SG4294772324
	DD	021H
_av_framerate DD FLAT:$SG4294772345
	DD	09H
_av_NetStream_Play_Start DD FLAT:$SG4294772334
	DD	014H
_av_fileSize DD	FLAT:$SG4294772337
	DD	08H
_av_audiosamplesize DD FLAT:$SG4294772341
	DD	0fH
_av_description DD FLAT:$SG4294772354
	DD	0bH
_av_audiodatarate DD FLAT:$SG4294772343
	DD	0dH
_av_duration DD	FLAT:$SG4294772350
	DD	08H
_av_level DD	FLAT:$SG4294772356
	DD	05H
_av_avc1 DD	FLAT:$SG4294772323
	DD	04H
_av_status DD	FLAT:$SG4294772335
	DD	06H
_av_clientid DD	FLAT:$SG4294772329
	DD	08H
_av_objectEncoding DD FLAT:$SG4294772366
	DD	0eH
_av_mp3	DD	FLAT:$SG4294772321
	DD	04H
_av_stereo DD	FLAT:$SG4294772339
	DD	06H
_av_height DD	FLAT:$SG4294772348
	DD	06H
_av_code DD	FLAT:$SG4294772355
	DD	04H
_av_videodatarate DD FLAT:$SG4294772346
	DD	0dH
_av_fmsVer DD	FLAT:$SG4294772358
	DD	06H
_av_onStatus DD	FLAT:$SG4294772336
	DD	08H
$SG4294772376 DB 'connect', 00H
$SG4294772373 DB 'pageUrl', 00H
$SG4294772372 DB 'tcUrl', 00H
	ORG $+2
$SG4294772374 DB 'swfUrl', 00H
	ORG $+1
$SG4294772371 DB 'fpad', 00H
	ORG $+3
$SG4294772370 DB 'capabilities', 00H
	ORG $+3
$SG4294772365 DB '_result', 00H
$SG4294772367 DB 'videoFunction', 00H
	ORG $+2
$SG4294772366 DB 'objectEncoding', 00H
	ORG $+1
$SG4294772361 DB 'deleteStream', 00H
	ORG $+3
$SG4294772360 DB 'getStreamLength', 00H
$SG4294772363 DB 'onFCSubscribe', 00H
	ORG $+2
$SG4294772362 DB 'createStream', 00H
	ORG $+3
$SG4294772357 DB 'mode', 00H
	ORG $+3
$SG4294772356 DB 'level', 00H
	ORG $+2
$SG4294772359 DB 'play', 00H
	ORG $+3
$SG4294772358 DB 'fmsVer', 00H
	ORG $+1
$SG4294772352 DB 'send', 00H
	ORG $+3
$SG4294772355 DB 'code', 00H
	ORG $+3
$SG4294772349 DB 'width', 00H
	ORG $+2
$SG4294772348 DB 'height', 00H
	ORG $+1
$SG4294772350 DB 'duration', 00H
	ORG $+3
$SG4294772345 DB 'framerate', 00H
	ORG $+2
$SG4294772344 DB 'audiocodecid', 00H
	ORG $+3
$SG4294772347 DB 'videocodecid', 00H
	ORG $+3
$SG4294772346 DB 'videodatarate', 00H
	ORG $+2
$SG4294772341 DB 'audiosamplesize', 00H
$SG4294772340 DB 'audiochannels', 00H
	ORG $+2
$SG4294772343 DB 'audiodatarate', 00H
	ORG $+2
$SG4294772342 DB 'audiosamplerate', 00H
$SG4294772337 DB 'fileSize', 00H
	ORG $+3
$SG4294772336 DB 'onStatus', 00H
	ORG $+3
$SG4294772339 DB 'stereo', 00H
	ORG $+1
$SG4294772338 DB 'encoder', 00H
$SG4294772333 DB 'Started playing', 00H
$SG4294772332 DB 'NetStream.Play.Stop', 00H
$SG4294772335 DB 'status', 00H
	ORG $+1
$SG4294772334 DB 'NetStream.Play.Start', 00H
	ORG $+3
$SG4294772329 DB 'clientid', 00H
	ORG $+3
$SG4294772328 DB 'NetStream.Authenticate.UsherToken', 00H
	ORG $+2
$SG4294772331 DB 'Stopped playing', 00H
$SG4294772330 DB 'details', 00H
$SG4294772325 DB '\"', 00H
	ORG $+1
$SG4294772324 DB 'Open Broadcaster Software v0.657b', 00H
	ORG $+2
$SG4294772327 DB '@setDataFrame', 00H
	ORG $+2
$SG4294772326 DB '"', 00H
	ORG $+2
$SG4294772321 DB 'mp3 ', 00H
	ORG $+3
$SG4294772320 DB 'FMS/3,5,1,525', 00H
	ORG $+2
$SG4294772323 DB 'avc1', 00H
	ORG $+3
$SG4294772322 DB 'mp4a', 00H
	ORG $+3
$SG4294772317 DB 'Connection succeeded.', 00H
	ORG $+2
$SG4294772316 DB 'version', 00H
$SG4294772319 DB 'status', 00H
	ORG $+1
$SG4294772318 DB 'NetConnection.Connect.Success', 00H
	ORG $+2
$SG4294772313 DB 'A', 00H, 'A', 00H, 'C', 00H, 00H, 00H
$SG4294772312 DB 'b', 00H, 'a', 00H, 'd', 00H, ' ', 00H, 'a', 00H, 'u', 00H
	DB	'd', 00H, 'i', 00H, 'o', 00H, ' ', 00H, 'c', 00H, 'h', 00H, 'a'
	DB	00H, 'n', 00H, 'n', 00H, 'n', 00H, 'e', 00H, 'l', 00H, ' ', 00H
	DB	'c', 00H, 'o', 00H, 'n', 00H, 'f', 00H, 'i', 00H, 'g', 00H, 'u'
	DB	00H, 'r', 00H, 'a', 00H, 't', 00H, 'i', 00H, 'o', 00H, 'n', 00H
	DB	00H, 00H
	ORG $+2
$SG4294772315 DB '3,5,1,525', 00H
	ORG $+2
$SG4294772314 DB 'data', 00H
PUBLIC	?GetFPS@OBS@@QBEIXZ				; OBS::GetFPS
PUBLIC	?strstr@@YAPADPADPBD@Z				; strstr
PUBLIC	?TerminateSockets@@YAXXZ			; TerminateSockets
PUBLIC	?InitSockets@@YAXXZ				; InitSockets
PUBLIC	?EncMetaData@OBS@@QAEPADPAD0_N@Z		; OBS::EncMetaData
	ALIGN	4

__Tuple_alloc DB 01H DUP (?)
	ALIGN	4

_ignore	DB	01H DUP (?)
	ALIGN	4

_allocator_arg DB 01H DUP (?)
	ALIGN	4

_piecewise_construct DB 01H DUP (?)
_BSS	ENDS
_piecewise_construct$initializer$ DD FLAT:??__Epiecewise_construct@std@@YAXXZ
_allocator_arg$initializer$ DD FLAT:??__Eallocator_arg@std@@YAXXZ
_ignore$initializer$ DD FLAT:??__Eignore@std@@YAXXZ
__Tuple_alloc$initializer$ DD FLAT:??__E_Tuple_alloc@std@@YAXXZ
; Function compile flags: /Odtp
; File f:\songmm_moon_stone_obs\obs\source\rtmpstuff.cpp
;	COMDAT ?EncMetaData@OBS@@QAEPADPAD0_N@Z
_TEXT	SEGMENT
_audioBitRate$ = -56					; size = 4
_fps$ = -52						; size = 4
_maxBitRate$ = -48					; size = 4
_lpAudioCodec$ = -44					; size = 4
tv215 = -40						; size = 4
tv281 = -36						; size = 4
tv274 = -32						; size = 4
_av_codecFourCC$ = -28					; size = 4
tv261 = -24						; size = 4
tv254 = -20						; size = 4
tv83 = -16						; size = 4
tv76 = -12						; size = 4
tv67 = -8						; size = 4
_this$ = -4						; size = 4
_enc$ = 8						; size = 4
_pend$ = 12						; size = 4
_bFLVFile$ = 16						; size = 1
?EncMetaData@OBS@@QAEPADPAD0_N@Z PROC			; OBS::EncMetaData, COMDAT
; _this$ = ecx

; 219  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 56					; 00000038H
	mov	DWORD PTR _this$[ebp], ecx

; 220  :     int    maxBitRate    = GetVideoEncoder()->GetBitRate();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?GetVideoEncoder@OBS@@QBEPAVVideoEncoder@@XZ ; OBS::GetVideoEncoder
	mov	DWORD PTR tv67[ebp], eax
	mov	eax, DWORD PTR tv67[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR tv67[ebp]
	mov	eax, DWORD PTR [edx+12]
	call	eax
	mov	DWORD PTR _maxBitRate$[ebp], eax

; 221  :     int    fps           = GetFPS();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?GetFPS@OBS@@QBEIXZ			; OBS::GetFPS
	mov	DWORD PTR _fps$[ebp], eax

; 222  :     int    audioBitRate  = GetAudioEncoder()->GetBitRate();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?GetAudioEncoder@OBS@@QBEPAVAudioEncoder@@XZ ; OBS::GetAudioEncoder
	mov	DWORD PTR tv76[ebp], eax
	mov	ecx, DWORD PTR tv76[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR tv76[ebp]
	mov	eax, DWORD PTR [edx+16]
	call	eax
	mov	DWORD PTR _audioBitRate$[ebp], eax

; 223  :     CTSTR  lpAudioCodec  = GetAudioEncoder()->GetCodec();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?GetAudioEncoder@OBS@@QBEPAVAudioEncoder@@XZ ; OBS::GetAudioEncoder
	mov	DWORD PTR tv83[ebp], eax
	mov	ecx, DWORD PTR tv83[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR tv83[ebp]
	mov	eax, DWORD PTR [edx+20]
	call	eax
	mov	DWORD PTR _lpAudioCodec$[ebp], eax

; 224  : 
; 225  :     //double audioCodecID;
; 226  :     const AVal *av_codecFourCC;
; 227  : 
; 228  : #ifdef USE_AAC
; 229  :     if(scmpi(lpAudioCodec, TEXT("AAC")) == 0)

	push	OFFSET $SG4294772313
	mov	ecx, DWORD PTR _lpAudioCodec$[ebp]
	push	ecx
	call	DWORD PTR __imp_?scmpi@@YGHPB_W0@Z
	test	eax, eax
	jne	SHORT $LN6@EncMetaDat

; 230  :     {
; 231  :         av_codecFourCC = &av_mp4a;

	mov	DWORD PTR _av_codecFourCC$[ebp], OFFSET _av_mp4a

; 232  :         //audioCodecID = 10.0;
; 233  :     }
; 234  :     else

	jmp	SHORT $LN5@EncMetaDat
$LN6@EncMetaDat:

; 235  : #endif
; 236  :     {
; 237  :         av_codecFourCC = &av_mp3;

	mov	DWORD PTR _av_codecFourCC$[ebp], OFFSET _av_mp3
$LN5@EncMetaDat:

; 238  :         //audioCodecID = 2.0;
; 239  :     }
; 240  : 
; 241  :     if(bFLVFile)

	movzx	edx, BYTE PTR _bFLVFile$[ebp]
	test	edx, edx
	je	SHORT $LN4@EncMetaDat

; 242  :     {
; 243  :         *enc++ = AMF_ECMA_ARRAY;

	mov	eax, DWORD PTR _enc$[ebp]
	mov	BYTE PTR [eax], 8
	mov	ecx, DWORD PTR _enc$[ebp]
	add	ecx, 1
	mov	DWORD PTR _enc$[ebp], ecx

; 244  :         enc = AMF_EncodeInt32(enc, pend, 14);

	push	14					; 0000000eH
	mov	edx, DWORD PTR _pend$[ebp]
	mov	ecx, DWORD PTR _enc$[ebp]
	call	_AMF_EncodeInt32
	add	esp, 4
	mov	DWORD PTR _enc$[ebp], eax

; 245  :     }
; 246  :     else

	jmp	SHORT $LN3@EncMetaDat
$LN4@EncMetaDat:

; 247  :         *enc++ = AMF_OBJECT;

	mov	edx, DWORD PTR _enc$[ebp]
	mov	BYTE PTR [edx], 3
	mov	eax, DWORD PTR _enc$[ebp]
	add	eax, 1
	mov	DWORD PTR _enc$[ebp], eax
$LN3@EncMetaDat:

; 248  : 
; 249  :     enc = AMF_EncodeNamedNumber(enc, pend, &av_duration,        0.0);

	push	OFFSET _av_duration
	movsd	xmm3, QWORD PTR __real@0000000000000000
	mov	edx, DWORD PTR _pend$[ebp]
	mov	ecx, DWORD PTR _enc$[ebp]
	call	_AMF_EncodeNamedNumber
	add	esp, 4
	mov	DWORD PTR _enc$[ebp], eax

; 250  :     enc = AMF_EncodeNamedNumber(enc, pend, &av_fileSize,        0.0);

	push	OFFSET _av_fileSize
	movsd	xmm3, QWORD PTR __real@0000000000000000
	mov	edx, DWORD PTR _pend$[ebp]
	mov	ecx, DWORD PTR _enc$[ebp]
	call	_AMF_EncodeNamedNumber
	add	esp, 4
	mov	DWORD PTR _enc$[ebp], eax

; 251  :     enc = AMF_EncodeNamedNumber(enc, pend, &av_width,           double(outputCX));

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+872]
	mov	DWORD PTR tv254[ebp], edx
	cvtsi2sd xmm3, DWORD PTR tv254[ebp]
	mov	eax, DWORD PTR tv254[ebp]
	shr	eax, 31					; 0000001fH
	addsd	xmm3, QWORD PTR __xmm@41f00000000000000000000000000000[eax*8]
	push	OFFSET _av_width
	mov	edx, DWORD PTR _pend$[ebp]
	mov	ecx, DWORD PTR _enc$[ebp]
	call	_AMF_EncodeNamedNumber
	add	esp, 4
	mov	DWORD PTR _enc$[ebp], eax

; 252  :     enc = AMF_EncodeNamedNumber(enc, pend, &av_height,          double(outputCY));

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+876]
	mov	DWORD PTR tv261[ebp], edx
	cvtsi2sd xmm3, DWORD PTR tv261[ebp]
	mov	eax, DWORD PTR tv261[ebp]
	shr	eax, 31					; 0000001fH
	addsd	xmm3, QWORD PTR __xmm@41f00000000000000000000000000000[eax*8]
	push	OFFSET _av_height
	mov	edx, DWORD PTR _pend$[ebp]
	mov	ecx, DWORD PTR _enc$[ebp]
	call	_AMF_EncodeNamedNumber
	add	esp, 4
	mov	DWORD PTR _enc$[ebp], eax

; 253  : 
; 254  :     /*if(bFLVFile)
; 255  :         enc = AMF_EncodeNamedNumber(enc, pend, &av_videocodecid,    7.0);//&av_avc1);//
; 256  :     else*/
; 257  :         enc = AMF_EncodeNamedString(enc, pend, &av_videocodecid,    &av_avc1);//7.0);//

	push	OFFSET _av_avc1
	push	OFFSET _av_videocodecid
	mov	edx, DWORD PTR _pend$[ebp]
	mov	ecx, DWORD PTR _enc$[ebp]
	call	_AMF_EncodeNamedString
	add	esp, 8
	mov	DWORD PTR _enc$[ebp], eax

; 258  : 
; 259  :     enc = AMF_EncodeNamedNumber(enc, pend, &av_videodatarate,   double(maxBitRate));

	cvtsi2sd xmm3, DWORD PTR _maxBitRate$[ebp]
	push	OFFSET _av_videodatarate
	mov	edx, DWORD PTR _pend$[ebp]
	mov	ecx, DWORD PTR _enc$[ebp]
	call	_AMF_EncodeNamedNumber
	add	esp, 4
	mov	DWORD PTR _enc$[ebp], eax

; 260  :     enc = AMF_EncodeNamedNumber(enc, pend, &av_framerate,       double(fps));

	cvtsi2sd xmm3, DWORD PTR _fps$[ebp]
	push	OFFSET _av_framerate
	mov	edx, DWORD PTR _pend$[ebp]
	mov	ecx, DWORD PTR _enc$[ebp]
	call	_AMF_EncodeNamedNumber
	add	esp, 4
	mov	DWORD PTR _enc$[ebp], eax

; 261  : 
; 262  :     /*if(bFLVFile)
; 263  :         enc = AMF_EncodeNamedNumber(enc, pend, &av_audiocodecid,    audioCodecID);//av_codecFourCC);//
; 264  :     else*/
; 265  :         enc = AMF_EncodeNamedString(enc, pend, &av_audiocodecid,    av_codecFourCC);//audioCodecID);//

	mov	ecx, DWORD PTR _av_codecFourCC$[ebp]
	push	ecx
	push	OFFSET _av_audiocodecid
	mov	edx, DWORD PTR _pend$[ebp]
	mov	ecx, DWORD PTR _enc$[ebp]
	call	_AMF_EncodeNamedString
	add	esp, 8
	mov	DWORD PTR _enc$[ebp], eax

; 266  : 
; 267  :     enc = AMF_EncodeNamedNumber(enc, pend, &av_audiodatarate,   double(audioBitRate)); //ex. 128kb\s

	cvtsi2sd xmm3, DWORD PTR _audioBitRate$[ebp]
	push	OFFSET _av_audiodatarate
	mov	edx, DWORD PTR _pend$[ebp]
	mov	ecx, DWORD PTR _enc$[ebp]
	call	_AMF_EncodeNamedNumber
	add	esp, 4
	mov	DWORD PTR _enc$[ebp], eax

; 268  :     enc = AMF_EncodeNamedNumber(enc, pend, &av_audiosamplerate, double(App->GetSampleRateHz()));

	mov	ecx, DWORD PTR ?App@@3PAVOBS@@A		; App
	call	?GetSampleRateHz@OBS@@QBEIXZ		; OBS::GetSampleRateHz
	mov	DWORD PTR tv274[ebp], eax
	cvtsi2sd xmm3, DWORD PTR tv274[ebp]
	mov	edx, DWORD PTR tv274[ebp]
	shr	edx, 31					; 0000001fH
	addsd	xmm3, QWORD PTR __xmm@41f00000000000000000000000000000[edx*8]
	push	OFFSET _av_audiosamplerate
	mov	edx, DWORD PTR _pend$[ebp]
	mov	ecx, DWORD PTR _enc$[ebp]
	call	_AMF_EncodeNamedNumber
	add	esp, 4
	mov	DWORD PTR _enc$[ebp], eax

; 269  :     enc = AMF_EncodeNamedNumber(enc, pend, &av_audiosamplesize, 16.0);

	push	OFFSET _av_audiosamplesize
	movsd	xmm3, QWORD PTR __real@4030000000000000
	mov	edx, DWORD PTR _pend$[ebp]
	mov	ecx, DWORD PTR _enc$[ebp]
	call	_AMF_EncodeNamedNumber
	add	esp, 4
	mov	DWORD PTR _enc$[ebp], eax

; 270  :     enc = AMF_EncodeNamedNumber(enc, pend, &av_audiochannels,   double(App->NumAudioChannels()));

	mov	ecx, DWORD PTR ?App@@3PAVOBS@@A		; App
	call	?NumAudioChannels@OBS@@QBEIXZ		; OBS::NumAudioChannels
	mov	DWORD PTR tv281[ebp], eax
	cvtsi2sd xmm3, DWORD PTR tv281[ebp]
	mov	eax, DWORD PTR tv281[ebp]
	shr	eax, 31					; 0000001fH
	addsd	xmm3, QWORD PTR __xmm@41f00000000000000000000000000000[eax*8]
	push	OFFSET _av_audiochannels
	mov	edx, DWORD PTR _pend$[ebp]
	mov	ecx, DWORD PTR _enc$[ebp]
	call	_AMF_EncodeNamedNumber
	add	esp, 4
	mov	DWORD PTR _enc$[ebp], eax

; 271  :     //enc = AMF_EncodeNamedBoolean(enc, pend, &av_stereo,         true);
; 272  : 
; 273  :     if (App->NumAudioChannels() > 2 || App->NumAudioChannels() <1)

	mov	ecx, DWORD PTR ?App@@3PAVOBS@@A		; App
	call	?NumAudioChannels@OBS@@QBEIXZ		; OBS::NumAudioChannels
	cmp	eax, 2
	ja	SHORT $LN1@EncMetaDat
	mov	ecx, DWORD PTR ?App@@3PAVOBS@@A		; App
	call	?NumAudioChannels@OBS@@QBEIXZ		; OBS::NumAudioChannels
	cmp	eax, 1
	jae	SHORT $LN2@EncMetaDat
$LN1@EncMetaDat:

; 274  :         CrashError(TEXT("bad audio channnel configuration"));

	push	OFFSET $SG4294772312
	call	DWORD PTR __imp_?CrashError@@YAXPB_WZZ
$LN2@EncMetaDat:

; 275  :     enc = AMF_EncodeNamedBoolean(enc, pend, &av_stereo,     App->NumAudioChannels()==2);

	mov	ecx, DWORD PTR ?App@@3PAVOBS@@A		; App
	call	?NumAudioChannels@OBS@@QBEIXZ		; OBS::NumAudioChannels
	cmp	eax, 2
	jne	SHORT $LN9@EncMetaDat
	mov	DWORD PTR tv215[ebp], 1
	jmp	SHORT $LN10@EncMetaDat
$LN9@EncMetaDat:
	mov	DWORD PTR tv215[ebp], 0
$LN10@EncMetaDat:
	mov	ecx, DWORD PTR tv215[ebp]
	push	ecx
	push	OFFSET _av_stereo
	mov	edx, DWORD PTR _pend$[ebp]
	mov	ecx, DWORD PTR _enc$[ebp]
	call	_AMF_EncodeNamedBoolean
	add	esp, 8
	mov	DWORD PTR _enc$[ebp], eax

; 276  : 
; 277  :     enc = AMF_EncodeNamedString(enc, pend, &av_encoder,         &av_OBSVersion);

	push	OFFSET _av_OBSVersion
	push	OFFSET _av_encoder
	mov	edx, DWORD PTR _pend$[ebp]
	mov	ecx, DWORD PTR _enc$[ebp]
	call	_AMF_EncodeNamedString
	add	esp, 8
	mov	DWORD PTR _enc$[ebp], eax

; 278  :     *enc++ = 0;

	mov	edx, DWORD PTR _enc$[ebp]
	mov	BYTE PTR [edx], 0
	mov	eax, DWORD PTR _enc$[ebp]
	add	eax, 1
	mov	DWORD PTR _enc$[ebp], eax

; 279  :     *enc++ = 0;

	mov	ecx, DWORD PTR _enc$[ebp]
	mov	BYTE PTR [ecx], 0
	mov	edx, DWORD PTR _enc$[ebp]
	add	edx, 1
	mov	DWORD PTR _enc$[ebp], edx

; 280  :     *enc++ = AMF_OBJECT_END;

	mov	eax, DWORD PTR _enc$[ebp]
	mov	BYTE PTR [eax], 9
	mov	ecx, DWORD PTR _enc$[ebp]
	add	ecx, 1
	mov	DWORD PTR _enc$[ebp], ecx

; 281  : 
; 282  :     return enc;

	mov	eax, DWORD PTR _enc$[ebp]
$LN7@EncMetaDat:

; 283  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
?EncMetaData@OBS@@QAEPADPAD0_N@Z ENDP			; OBS::EncMetaData
_TEXT	ENDS
; Function compile flags: /Odtp
; File f:\songmm_moon_stone_obs\obs\source\rtmpstuff.cpp
;	COMDAT ?InitSockets@@YAXXZ
_TEXT	SEGMENT
_wsad$ = -404						; size = 400
__$ArrayPad$ = -4					; size = 4
?InitSockets@@YAXXZ PROC				; InitSockets, COMDAT

; 24   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 404				; 00000194H
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax

; 25   :     WSADATA wsad;
; 26   :     WSAStartup(MAKEWORD( 2, 2 ), &wsad);

	lea	eax, DWORD PTR _wsad$[ebp]
	push	eax
	push	514					; 00000202H
	call	DWORD PTR __imp__WSAStartup@8

; 27   : }

	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	0
?InitSockets@@YAXXZ ENDP				; InitSockets
_TEXT	ENDS
; Function compile flags: /Odtp
; File f:\songmm_moon_stone_obs\obs\source\rtmpstuff.cpp
;	COMDAT ?TerminateSockets@@YAXXZ
_TEXT	SEGMENT
?TerminateSockets@@YAXXZ PROC				; TerminateSockets, COMDAT

; 30   : {

	push	ebp
	mov	ebp, esp

; 31   :     WSACleanup();

	call	DWORD PTR __imp__WSACleanup@0

; 32   : }

	pop	ebp
	ret	0
?TerminateSockets@@YAXXZ ENDP				; TerminateSockets
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\vs2013\vc\include\string.h
;	COMDAT ?strstr@@YAPADPADPBD@Z
_TEXT	SEGMENT
__Str$ = 8						; size = 4
__SubStr$ = 12						; size = 4
?strstr@@YAPADPADPBD@Z PROC				; strstr, COMDAT

; 228  :         { return (char*)strstr((const char*)_Str, _SubStr); }

	push	ebp
	mov	ebp, esp
	mov	eax, DWORD PTR __SubStr$[ebp]
	push	eax
	mov	ecx, DWORD PTR __Str$[ebp]
	push	ecx
	call	_strstr
	add	esp, 8
	pop	ebp
	ret	0
?strstr@@YAPADPADPBD@Z ENDP				; strstr
_TEXT	ENDS
; Function compile flags: /Odtp
; File d:\vs2013\vc\include\utility
;	COMDAT ??__Epiecewise_construct@std@@YAXXZ
text$di	SEGMENT
$T1 = -1						; size = 1
??__Epiecewise_construct@std@@YAXXZ PROC		; std::`dynamic initializer for 'piecewise_construct'', COMDAT

; 70   : 	piecewise_construct_t();

	push	ebp
	mov	ebp, esp
	push	ecx
	xor	eax, eax
	mov	BYTE PTR $T1[ebp], al
	mov	esp, ebp
	pop	ebp
	ret	0
??__Epiecewise_construct@std@@YAXXZ ENDP		; std::`dynamic initializer for 'piecewise_construct''
text$di	ENDS
; Function compile flags: /Odtp
; File d:\vs2013\vc\include\xutility
;	COMDAT ??__Eallocator_arg@std@@YAXXZ
text$di	SEGMENT
$T1 = -1						; size = 1
??__Eallocator_arg@std@@YAXXZ PROC			; std::`dynamic initializer for 'allocator_arg'', COMDAT

; 3451 : const allocator_arg_t allocator_arg = allocator_arg_t();

	push	ebp
	mov	ebp, esp
	push	ecx
	xor	eax, eax
	mov	BYTE PTR $T1[ebp], al
	mov	esp, ebp
	pop	ebp
	ret	0
??__Eallocator_arg@std@@YAXXZ ENDP			; std::`dynamic initializer for 'allocator_arg''
text$di	ENDS
; Function compile flags: /Odtp
; File d:\vs2013\vc\include\tuple
;	COMDAT ??__Eignore@std@@YAXXZ
text$di	SEGMENT
??__Eignore@std@@YAXXZ PROC				; std::`dynamic initializer for 'ignore'', COMDAT

; 59   : const _Ignore ignore;

	push	ebp
	mov	ebp, esp
	mov	ecx, OFFSET _ignore
	call	??0_Ignore@std@@QAE@XZ			; std::_Ignore::_Ignore
	pop	ebp
	ret	0
??__Eignore@std@@YAXXZ ENDP				; std::`dynamic initializer for 'ignore''
text$di	ENDS
; Function compile flags: /Odtp
; File d:\vs2013\vc\include\tuple
;	COMDAT ??__E_Tuple_alloc@std@@YAXXZ
text$di	SEGMENT
$T1 = -1						; size = 1
??__E_Tuple_alloc@std@@YAXXZ PROC			; std::`dynamic initializer for '_Tuple_alloc'', COMDAT

; 66   : const _Tuple_alloc_t _Tuple_alloc = _Tuple_alloc_t();

	push	ebp
	mov	ebp, esp
	push	ecx
	xor	eax, eax
	mov	BYTE PTR $T1[ebp], al
	mov	esp, ebp
	pop	ebp
	ret	0
??__E_Tuple_alloc@std@@YAXXZ ENDP			; std::`dynamic initializer for '_Tuple_alloc''
text$di	ENDS
; Function compile flags: /Odtp
; File f:\songmm_moon_stone_obs\obs\source\obs.h
;	COMDAT ?GetFPS@OBS@@QBEIXZ
_TEXT	SEGMENT
_this$ = -4						; size = 4
?GetFPS@OBS@@QBEIXZ PROC				; OBS::GetFPS, COMDAT
; _this$ = ecx

; 1237 :     inline UINT GetFPS()       const {return fps;}

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+892]
	mov	esp, ebp
	pop	ebp
	ret	0
?GetFPS@OBS@@QBEIXZ ENDP				; OBS::GetFPS
_TEXT	ENDS
END
