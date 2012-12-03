var notifyEvent = function (html) {
    Ext.net.Notification.show({
        hideFx: {
            args: [{
                duration: 2.0,
                endOpacity: 0.01
            }],
            fxName: 'fadeOut'
        },
        showFx: {
            args: [{ duration: 2.0}],
            fxName: 'fadeIn'
        },
        hideDelay: 1000,
        alignToCfg: {
            offset: [20, 20],
            position: 'tl-tl'
        },
        pinEvent: 'none',
        html: html,
        title: '',
        height: 70,
        unstyled: true,
        bodyCssClass: 'x-notification-metro x-transp',
        shim: false
    });
};
var notifyDate = function (html) {
    Ext.net.Notification.show({
        hideFx: {
            args: [{
                duration: 1.0,
                endOpacity: 0.01
            }],
            fxName: 'fadeOut'
        },
        showFx: {
            args: [{ duration: 0.5}],
            fxName: 'fadeIn'
        },
        hideDelay: 1000,
        alignToCfg: {
            offset: [20, -20],
            position: 'bl-bl'
        },
        pinEvent: 'none',
        html: getDateFormat(),
        title: '',
        height: 150,
        width: 450,
        unstyled: true,
        bodyCssClass: 'x-notification-metro',
        shim: false
    });
};
var notifyUser = function () {
    Ext.net.Notification.show({
        showFx: {
            args: [{ duration: 0.5}],
            fxName: 'fadeIn'
        },
        alignToCfg: {
            offset: [-150, 50],
            position: 'tr-tr'
        },
        pinEvent: 'none',
        html: getLoggedUser(),
        height: 80,
        width: 150,
        header: false,
        autoHide: false,
        closeVisible: false,
        unstyled: true,
        plain: true,
        bodyCssClass: 'x-lbl-metro',
        shim: false
    });
};
var notifyHour = function () {
    Ext.net.Notification.show({
        showFx: {
            args: [{ duration: 0.5}],
            fxName: 'fadeIn'
        },
        alignToCfg: {
            offset: [-50, 50],
            position: 'br-br'
        },
        pinEvent: 'none',
        html: getHourFormat(),
        height: 80,
        width: 150,
        header: false,
        autoHide: false,
        closeVisible: true,
        unstyled: true,
        plain: true,
        bodyCssClass: 'x-lbl-metro',
        shim: false
    });
};
function getHourFormat() {
    return "<table style='width:100%'><tr><td style='font-size: 14px;text-align:right'>" + new Date().dateFormat('H:i') + "</td><td></td></tr></table>";
}
function getDateFormat() {
    return "<table style='width:100%'><tr><td style='font-size: 90px;text-align:right'>" + new Date().dateFormat('H.i') + "</td><td style='font-size: 32px'>" + new Date().dateFormat('d M') + "</br>" + new Date().dateFormat('Y') + "</td></tr></table>";
};
function getLoggedUser() {
    return "<table style='width:100%'><tr><td style='text-align:right'>Local<br />user</td><td><img src='App_Themes/ModernUI/Images/icon.user.png' /></td></tr></table>";
}