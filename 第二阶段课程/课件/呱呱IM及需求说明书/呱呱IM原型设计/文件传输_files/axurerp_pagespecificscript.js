
var PageName = '文件传输';
var PageId = 'pdc314a95357b41e7b490078cda1882d2'
var PageUrl = '文件传输.html'
document.title = '文件传输';

if (top.location != self.location)
{
	if (parent.HandleMainFrameChanged) {
		parent.HandleMainFrameChanged();
	}
}

if (window.OnLoad) OnLoad();
