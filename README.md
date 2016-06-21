### 简介
    桌面版推流器是月光石网络科技公司团队基于OBS推流软件API，团队在其上删除了一些不必要的功能，
    美化了展示界面的开源推流器。使用它用户可以很美观的推送rtmp流到流媒体服务器。
    由于时间原因，当前阶段只美化了主界面，后续工作可能会美化所有部分。

### 界面展示    
    ！[im](http://image.baidu.com/search/detail?ct=503316480&z=0&ipn=d&word=%E7%A7%BB%E8%BD%B4%E6%91%84%E5%BD%B1&step_word=&pn=2&spn=0&di=129773627830&pi=&rn=1&tn=baiduimagedetail&is=&istype=2&ie=utf-8&oe=utf-8&in=&cl=2&lm=-1&st=-1&cs=3445377427%2C2645691367&os=1552355012%2C341823336&simid=3376104868%2C486805203&adpicid=0&ln=1000&fr=&fmq=1464341735810_R&fm=&ic=0&s=undefined&se=&sme=&tab=0&width=&height=&face=undefined&ist=&jit=&cg=&bdtype=0&oriquery=&objurl=http%3A%2F%2Fcdn.duitang.com%2Fuploads%2Fitem%2F201112%2F27%2F20111227143751_TtLkL.jpg&fromurl=ippr_z2C%24qAzdH3FAzdH3Fooo_z%26e3B17tpwg2_z%26e3Bv54AzdH3Frj5rsjAzdH3F4ks52AzdH3F8lmamc09AzdH3F1jpwtsAzdH3F&gsm=0&rpstart=0&rpnum=0)
    
### 开发环境配置
    1. 安装vs2013,下载地址请上官网下载，只有vs2013 以下不能编译通过哦！
    2. 安装Directx 10 ,下载地址同上。
### 功能介绍
    1. 支持对屏幕，摄像头，音频输入进行实时采集。
    2. 支持对屏幕中指定区域进行采集。
    3. 支持对屏幕中指定窗口进行采集。
    4. 支持多场景编辑和直播中切换。
    5. 支持对场景中实体进行布局。
    6. 使用rtmp协议将数据推送到fms服务器。
    7. 采用高效的H264视频编码和AAC音频编码。
    8. 支持插件功能，用户可以自定义插件。
    9. 支持边推流边录制功能。
    10. 支持预览功能。
    11. 视频 H264编码，音频AAC编码。 
### 编译步骤
    1. 使用vs2013 打开项目下OBS-ALL.sln 文件，待加载完成后点击重新生成解决方案。
    2. 编译完成后到rundir目录下,如果是编译的32位则运行copyrelease.bat脚本,64位
       运行相应的脚本。
    3. 点击OBS.exe 如果成功，则可以出现主画面
### 安装包制作
    解压rundir下HofoSetup-v4.0.1.zip到指定目录，然后点击可执行文件按照说明进行打包发布
    打包时应该把directx 10 加到添加可执行或脚本选项中
### 技术支持
    如果遇到不可解决问题，可发送邮件到本人邮箱，本人有时间会一一答复!
    邮箱地址:songming8998@126.com
    公司网址：http://www.vbyte.cn/
