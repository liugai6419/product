
var PageName = '语音聊天';
var PageId = 'pce017b98bcbc47ebaf638d1a4d801ed7'
var PageUrl = '语音聊天.html'
document.title = '语音聊天';

if (top.location != self.location)
{
	if (parent.HandleMainFrameChanged) {
		parent.HandleMainFrameChanged();
	}
}

if (window.OnLoad) OnLoad();
