
var PageName = '好友动态';
var PageId = 'pd787f20a2ed14531911e8a4bf5a52f6c'
var PageUrl = '好友动态.html'
document.title = '好友动态';

if (top.location != self.location)
{
	if (parent.HandleMainFrameChanged) {
		parent.HandleMainFrameChanged();
	}
}

var $OnLoadVariable = '';

var $CSUM;

var hasQuery = false;
var query = window.location.hash.substring(1);
if (query.length > 0) hasQuery = true;
var vars = query.split("&");
for (var i = 0; i < vars.length; i++) {
    var pair = vars[i].split("=");
    if (pair[0].length > 0) eval("$" + pair[0] + " = decodeURIComponent(pair[1]);");
} 

if (hasQuery && $CSUM != 1) {
alert('Prototype Warning: Variable values were truncated.');
}

function GetQuerystring() {
    return '#OnLoadVariable=' + encodeURIComponent($OnLoadVariable) + '&CSUM=1';
}

function PopulateVariables(value) {
  value = value.replace(/\[\[OnLoadVariable\]\]/g, $OnLoadVariable);
  value = value.replace(/\[\[PageName\]\]/g, PageName);
  return value;
}

function OnLoad(e) {

}

var u20 = document.getElementById('u20');
gv_vAlignTable['u20'] = 'center';
var u51 = document.getElementById('u51');
gv_vAlignTable['u51'] = 'top';
var u36 = document.getElementById('u36');

var u31 = document.getElementById('u31');
gv_vAlignTable['u31'] = 'top';
var u45 = document.getElementById('u45');
gv_vAlignTable['u45'] = 'center';
var u11 = document.getElementById('u11');

var u27 = document.getElementById('u27');

var u6 = document.getElementById('u6');

var u4 = document.getElementById('u4');

var u2 = document.getElementById('u2');

var u10 = document.getElementById('u10');
gv_vAlignTable['u10'] = 'top';
var u0 = document.getElementById('u0');

var u26 = document.getElementById('u26');
gv_vAlignTable['u26'] = 'center';
var u49 = document.getElementById('u49');
gv_vAlignTable['u49'] = 'top';
var u35 = document.getElementById('u35');
gv_vAlignTable['u35'] = 'center';
var u29 = document.getElementById('u29');
gv_vAlignTable['u29'] = 'top';
var u54 = document.getElementById('u54');
gv_vAlignTable['u54'] = 'top';
var u8 = document.getElementById('u8');

var u34 = document.getElementById('u34');

var u14 = document.getElementById('u14');
gv_vAlignTable['u14'] = 'center';
var u48 = document.getElementById('u48');
gv_vAlignTable['u48'] = 'top';
var u28 = document.getElementById('u28');
gv_vAlignTable['u28'] = 'center';
var u44 = document.getElementById('u44');

var u33 = document.getElementById('u33');
gv_vAlignTable['u33'] = 'center';
var u50 = document.getElementById('u50');
gv_vAlignTable['u50'] = 'top';
var u22 = document.getElementById('u22');
gv_vAlignTable['u22'] = 'center';
var u52 = document.getElementById('u52');
gv_vAlignTable['u52'] = 'top';
var u13 = document.getElementById('u13');

var u47 = document.getElementById('u47');
gv_vAlignTable['u47'] = 'center';
var u12 = document.getElementById('u12');
gv_vAlignTable['u12'] = 'center';
var u41 = document.getElementById('u41');
gv_vAlignTable['u41'] = 'center';
var u53 = document.getElementById('u53');
gv_vAlignTable['u53'] = 'top';
var u21 = document.getElementById('u21');

var u37 = document.getElementById('u37');
gv_vAlignTable['u37'] = 'center';
var u7 = document.getElementById('u7');
gv_vAlignTable['u7'] = 'center';
var u40 = document.getElementById('u40');

var u17 = document.getElementById('u17');
gv_vAlignTable['u17'] = 'center';
var u5 = document.getElementById('u5');
gv_vAlignTable['u5'] = 'center';
var u15 = document.getElementById('u15');
gv_vAlignTable['u15'] = 'top';
var u56 = document.getElementById('u56');
gv_vAlignTable['u56'] = 'top';
var u3 = document.getElementById('u3');
gv_vAlignTable['u3'] = 'center';
var u1 = document.getElementById('u1');
gv_vAlignTable['u1'] = 'center';
var u25 = document.getElementById('u25');

var u43 = document.getElementById('u43');
gv_vAlignTable['u43'] = 'center';
var u16 = document.getElementById('u16');

var u39 = document.getElementById('u39');
gv_vAlignTable['u39'] = 'center';
var u19 = document.getElementById('u19');

var u9 = document.getElementById('u9');
gv_vAlignTable['u9'] = 'center';
var u30 = document.getElementById('u30');
gv_vAlignTable['u30'] = 'top';
var u24 = document.getElementById('u24');
gv_vAlignTable['u24'] = 'center';
var u46 = document.getElementById('u46');

u46.style.cursor = 'pointer';
if (bIE) u46.attachEvent("onclick", Clicku46);
else u46.addEventListener("click", Clicku46, true);
function Clicku46(e)
{

if (true) {

	self.location.href="登陆后主界面.html" + GetQuerystring();

}

}

var u55 = document.getElementById('u55');
gv_vAlignTable['u55'] = 'top';
var u38 = document.getElementById('u38');

var u18 = document.getElementById('u18');
gv_vAlignTable['u18'] = 'top';
var u32 = document.getElementById('u32');

var u42 = document.getElementById('u42');

var u23 = document.getElementById('u23');

if (window.OnLoad) OnLoad();
