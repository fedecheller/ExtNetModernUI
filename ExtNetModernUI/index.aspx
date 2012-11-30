<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ExtNetModernUI.index" Theme="ModernUI" %>
<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ext.Net - Modern UI</title>
    <script src="Scripts/modernui.js" type="text/javascript" language="javascript"></script>
    <ext:XScript ID="XScript1" runat="server">
        <script type="text/javascript">
            var near = function(el, sensorEl) {
               notifyDate();
               #{pnlEast}.expand();
            };
            var far = function () {
                #{pnlEast}.collapse();
            };
        </script>
    </ext:XScript>
</head>
<body>
    <form id="form1" runat="server">
        <ext:ResourceManager ID="rsm" runat="server">
            <Listeners>
                <DocumentReady Handler="notifyUser();" />
                <WindowResize Handler="document.location.reload();" />
            </Listeners>
        </ext:ResourceManager>
        <ext:Menu runat="server" ID="mnuContext">
            <Listeners>
                <BeforeShow Handler="return false;" />
            </Listeners>
        </ext:Menu>
        <ext:Viewport ID="vwpPortalMetro" runat="server" ContextMenuID="mnuContext" Layout="BorderLayout">
            <Items>
                <ext:Panel ID="pnlPortalMetro" runat="server" Header="false" Border="false" CtCls="x-panel-metro" BodyCssClass="x-fulltransp" Margins="150 0 0 0" Unstyled="true" Region="Center" Layout="BorderLayout">
                    <Items> 
                        <ext:Portal ID="portaMetro" runat="server" Border="false" Layout="ColumnLayout" Unstyled="true" AutoScroll="false" Region="Center" MinWidth="2500">
                            <Items>
                                <ext:PortalColumn runat="server" Cls="x-column-padding" Layout="Anchor">
                                    <Items>
                                        <ext:Portlet ID="portletMail" runat="server" Width="350" Collapsible="false" Header="false" Unstyled="true" Frame="false" Border="false" HideBorders="true" BodyCssClass="tile-tea" Height="200">
                                            <Items>
                                                <ext:Image ID="imgMail" runat="server" ImageUrl="App_Themes/ModernUI/Images/tile.mail.png" Cls="x-img-metro x-img-metro-double">
                                                    <Listeners>
                                                        <Click Handler="notifyEvent('MAIL')" />
                                                    </Listeners>
                                                </ext:Image>
                                                <ext:Label runat="server" Html="<br />"></ext:Label>
                                                <ext:Label ID="lblMail" runat="server" Html="Mail" Cls="x-lbl-metro"></ext:Label>
                                                <ext:Label ID="lblMailCount" runat="server" Html="2" Cls="x-lbl-metro" StyleSpec="position:relative;left:240px"></ext:Label>
                                            </Items>
                                        </ext:Portlet>
                                        <ext:Portlet ID="portletCalendar" runat="server" Width="350" Collapsible="false" Header="false" Unstyled="true" Frame="false" Border="false" HideBorders="true" BodyCssClass="tile-blue" Height="200">
                                            <Items>
                                                <ext:Image ID="imgCalendar" runat="server" ImageUrl="App_Themes/ModernUI/Images/tile.calendar.png" Cls="x-img-metro x-img-metro-double">
                                                    <Listeners>
                                                        <Click Handler="notifyEvent('CALENDAR')" />
                                                    </Listeners>
                                                </ext:Image>
                                                <ext:Label runat="server" Html="<br />"></ext:Label>
                                                <ext:Label ID="lblCalendar" runat="server" Html="Calendar" Cls="x-lbl-metro"></ext:Label>
                                            </Items>
                                        </ext:Portlet>
                                        <ext:Portlet ID="portletDesktop" runat="server" Width="350" Collapsible="false" Header="false" Unstyled="true" Frame="false" Border="false" HideBorders="true" BodyStyle="background-image:url('App_Themes/ModernUI/Images/tile.desktop.png')" Height="200">
                                            <Items>
                                                <ext:Image ID="imgDesktop" runat="server" ImageUrl="App_Themes/ModernUI/Images/blank.gif" Cls="x-img-metro x-img-metro-double x-img-metro-double-full">
                                                    <Listeners>
                                                        <Click Handler="document.location.href='desktop.aspx'" />
                                                    </Listeners>
                                                </ext:Image>
                                                <ext:Label runat="server" Html="<br />"></ext:Label>
                                                <ext:Label ID="lblDesktop" runat="server" Html="Desktop" Cls="x-lbl-metro"></ext:Label>
                                            </Items>
                                        </ext:Portlet>
                                    </Items>
                                </ext:PortalColumn>
                                <ext:PortalColumn runat="server" Cls="x-column-padding" Layout="Anchor">
                                    <Items>
                                    <ext:Portlet ID="portletContacts" runat="server" Width="200" Collapsible="false" Header="false" Unstyled="true" Frame="false" Border="false" HideBorders="true" BodyCssClass="tile-cyan" Height="200">
                                        <Items>
                                            <ext:Image ID="imgContacts" runat="server" ImageUrl="App_Themes/ModernUI/Images/tile.contacts.png" Cls="x-img-metro">
                                                <Listeners>
                                                    <Click Handler="notifyEvent('CONTACTS')" />
                                                </Listeners>
                                            </ext:Image>
                                            <ext:Label ID="lblContacts" runat="server" Html="Contacts" Cls="x-lbl-metro"></ext:Label>
                                        </Items>
                                    </ext:Portlet>
                                    <ext:Portlet ID="portletMessaging" runat="server" Width="200" Collapsible="false" Header="false" Unstyled="true" Frame="false" Border="false" HideBorders="true" BodyCssClass="tile-magenta" Height="200">
                                        <Items>
                                            <ext:Image ID="imgMessaging" runat="server" ImageUrl="App_Themes/ModernUI/Images/tile.text.png" Cls="x-img-metro">
                                                <Listeners>
                                                    <Click Handler="notifyEvent('MESSAGING')" />
                                                </Listeners>
                                            </ext:Image>
                                            <ext:Label ID="lblMessaging" runat="server" Html="Messaging" Cls="x-lbl-metro"></ext:Label>
                                        </Items>
                                    </ext:Portlet>
                                    <ext:Portlet ID="portletOffice" runat="server" Width="200" Collapsible="false" Header="false" Unstyled="true" Frame="false" Border="false" HideBorders="true" BodyCssClass="tile-cyan" Height="200">
                                        <Items>
                                            <ext:Image ID="imgOffice" runat="server" ImageUrl="App_Themes/ModernUI/Images/tile.msoffice.png" Cls="x-img-metro">
                                                <Listeners>
                                                    <Click Handler="notifyEvent('OFFICE')" />
                                                </Listeners>
                                            </ext:Image>
                                            <ext:Label ID="lblOffice" runat="server" Html="MS Office" Cls="x-lbl-metro"></ext:Label>
                                        </Items>
                                    </ext:Portlet>
                                </Items>
                            </ext:PortalColumn>
                            <ext:PortalColumn runat="server" Cls="x-column-padding" Layout="Anchor">
                                <Items>
                                    <ext:Portlet ID="portletBing" runat="server" Width="200" Collapsible="false" Header="false" Unstyled="true" Frame="false" Border="false" HideBorders="true" BodyCssClass="tile-green" Height="200">
                                        <Items>
                                            <ext:Image ID="imgBing" runat="server" ImageUrl="App_Themes/ModernUI/Images/tile.bing.png" Cls="x-img-metro">
                                                <Listeners>
                                                    <Click Handler="notifyEvent('BING')" />
                                                </Listeners>
                                            </ext:Image>
                                            <ext:Label ID="lblBing" runat="server" Html="Bing" Cls="x-lbl-metro"></ext:Label>
                                        </Items>
                                    </ext:Portlet>
                                    <ext:Portlet ID="portletMaps" runat="server" Width="200" Collapsible="false" Header="false" Unstyled="true" Frame="false" Border="false" HideBorders="true" BodyCssClass="tile-purple" Height="200">
                                        <Items>
                                            <ext:Image ID="imgMaps" runat="server" ImageUrl="App_Themes/ModernUI/Images/tile.maps.png" Cls="x-img-metro">
                                                <Listeners>
                                                    <Click Handler="notifyEvent('MAPS')" />
                                                </Listeners>
                                            </ext:Image>
                                            <ext:Label ID="lblMaps" runat="server" Html="Maps" Cls="x-lbl-metro"></ext:Label>
                                        </Items>
                                    </ext:Portlet>
                                    <ext:Portlet ID="portletTwitter" runat="server" Width="200" Collapsible="false" Header="false" Unstyled="true" Frame="false" Border="false" HideBorders="true" BodyCssClass="tile-blue" Height="200">
                                        <Items>
                                            <ext:Image ID="imgTwitter" runat="server" ImageUrl="App_Themes/ModernUI/Images/tile.twitter.png" Cls="x-img-metro">
                                                <Listeners>
                                                    <Click Handler="notifyEvent('TWITTER')" />
                                                </Listeners>
                                            </ext:Image>
                                            <ext:Label ID="lblTwitter" runat="server" Html="Twitter" Cls="x-lbl-metro"></ext:Label>
                                        </Items>
                                    </ext:Portlet>    
                                </Items>
                            </ext:PortalColumn>
                            <ext:PortalColumn runat="server" Cls="x-column-padding" Layout="Anchor">
                            </ext:PortalColumn>
                            <ext:PortalColumn runat="server" Cls="x-column-padding" Layout="Anchor">
                            </ext:PortalColumn>
                            <ext:PortalColumn runat="server" Cls="x-column-padding" Layout="Anchor">
                            </ext:PortalColumn>
                            <ext:PortalColumn runat="server" Cls="x-column-padding" Layout="Anchor">
                                <Items>
                                    <ext:Portlet ID="portletWeather" runat="server" Width="200" Collapsible="false" Header="false" Unstyled="true" Frame="false" Border="false" HideBorders="true" BodyCssClass="tile-magenta" Height="200">
                                        <Items>
                                            <ext:Image ID="imgWeather" runat="server" ImageUrl="App_Themes/ModernUI/Images/tile.weather.png" Cls="x-img-metro">
                                                <Listeners>
                                                    <Click Handler="notifyEvent('WEATHER')" />
                                                </Listeners>
                                            </ext:Image>
                                            <ext:Label ID="lblWeather" runat="server" Html="Weather" Cls="x-lbl-metro"></ext:Label>
                                        </Items>
                                    </ext:Portlet>
                                    <ext:Portlet ID="portetExplorer" runat="server" Width="200" Collapsible="false" Header="false" Unstyled="true" Frame="false" Border="false" HideBorders="true" BodyCssClass="tile-cyan" Height="200">
                                        <Items>
                                            <ext:Image ID="imgExplorer" runat="server" ImageUrl="App_Themes/ModernUI/Images/tile.inetexplorer.png" Cls="x-img-metro">
                                                <Listeners>
                                                    <Click Handler="notifyEvent('INTERNET EXPLORER')" />
                                                </Listeners>
                                            </ext:Image>
                                            <ext:Label ID="lblExplorer" runat="server" Html="Internet Explorer" Cls="x-lbl-metro"></ext:Label>
                                        </Items>
                                    </ext:Portlet>
                                    <ext:Portlet ID="portletWiki" runat="server" Width="200" Collapsible="false" Header="false" Unstyled="true" Frame="false" Border="false" HideBorders="true" BodyCssClass="tile-tea" Height="200">
                                        <Items>
                                            <ext:Image ID="imgWiki" runat="server" ImageUrl="App_Themes/ModernUI/Images/tile.wiki.png" Cls="x-img-metro">
                                                <Listeners>
                                                    <Click Handler="notifyEvent('WIKI')" />
                                                </Listeners>
                                            </ext:Image>
                                            <ext:Label ID="lblWiki" runat="server" Html="Wiki" Cls="x-lbl-metro"></ext:Label>
                                        </Items>
                                    </ext:Portlet>
                                </Items>
                            </ext:PortalColumn>
                            <ext:PortalColumn runat="server" Cls="x-column-padding" Layout="Anchor">
                                <Items>
                                    <ext:Portlet ID="portletSkype" runat="server" Width="350" Collapsible="false" Header="false" Unstyled="true" Frame="false" Border="false" HideBorders="true" BodyCssClass="tile-cyan" Height="200">
                                        <Items>
                                            <ext:Image ID="imgSkype" runat="server" ImageUrl="App_Themes/ModernUI/Images/tile.skype.png" Cls="x-img-metro x-img-metro-double">
                                                <Listeners>
                                                    <Click Handler="notifyEvent('SKYPE')" />
                                                </Listeners>
                                            </ext:Image>
                                            <ext:Label runat="server" Html="<br />"></ext:Label>
                                            <ext:Label ID="lblSkype" runat="server" Html="Skype" Cls="x-lbl-metro"></ext:Label>
                                        </Items>
                                    </ext:Portlet>
                                    <ext:Portlet ID="portletNews" runat="server" Width="350" Collapsible="false" Header="false" Unstyled="true" Frame="false" Border="false" HideBorders="true" BodyStyle="background-image:url('App_Themes/ModernUI/Images/tile.news.png')" Height="200">
                                        <Items>
                                            <ext:Image ID="imgNews" runat="server" ImageUrl="App_Themes/ModernUI/Images/blank.gif" Cls="x-img-metro x-img-metro-double x-img-metro-double-full">
                                                <Listeners>
                                                    <Click Handler="notifyEvent('NEWS')" />
                                                </Listeners>
                                            </ext:Image>
                                            <ext:Label runat="server" Html="<br />"></ext:Label>
                                            <ext:Label ID="lblNews" runat="server" Html="News" Cls="x-lbl-metro"></ext:Label>
                                        </Items>
                                    </ext:Portlet>
                                </Items>
                            </ext:PortalColumn>
                            <ext:PortalColumn runat="server" Cls="x-column-padding" Layout="Anchor">
                            </ext:PortalColumn>
                            <ext:PortalColumn runat="server" Cls="x-column-padding" Layout="Anchor">
                            </ext:PortalColumn>
                            <ext:PortalColumn runat="server" Cls="x-column-padding" Layout="Anchor">
                            </ext:PortalColumn>
                        </Items>
                        </ext:Portal>          
                        <ext:Panel ID="pnlDistance" runat="server" Header="false" Width="20" Unstyled="true" Border="false" Region="East">
                            <Plugins>
                                <ext:MouseDistanceSensor ID="mouseDistanceSensor" runat="server" SensorElement="={#{pnlDistance}.body}" ConstrainElement="pnlDistance" Opacity="false" Threshold="100">
                                    <Listeners>
                                        <Near Fn="near" />
                                        <Far Fn="far" Delay="3000" />
                                    </Listeners>
                                </ext:MouseDistanceSensor>
                            </Plugins>
                        </ext:Panel>
                    </Items>
                </ext:Panel>
                <ext:Panel ID="pnlEast" runat="server" Width="100" Collapsed="true" Border="false" Unstyled="true" BodyCssClass="east-panel-body x-transp" CollapseMode="Default" CtCls="east-panel-metro" Region="East">
                    <Content>
                        <ext:Panel ID="pnlEastSearch" runat="server" Unstyled="true" Border="false" BodyCssClass="x-panel-setting" OverCls="x-panel-setting-over">
                            <Content>
                                <ext:Image ID="imgEastSearch" runat="server" ImageUrl="App_Themes/ModernUI/Images/appbar.magnify.png" Cls="x-img-metro-east">
                                    <Listeners>
                                        <Click Handler="notifyEvent('SEARCH')" />
                                    </Listeners>
                                </ext:Image>
                                <ext:Label ID="lblEastSearch" runat="server" Html="Search"></ext:Label>
                            </Content>
                        </ext:Panel>
                        <ext:Panel ID="pnlEastShare" runat="server" Unstyled="true" Border="false" BodyCssClass="x-panel-setting" OverCls="x-panel-setting-over">
                            <Content>
                                <ext:Image ID="imgEastShare" runat="server" ImageUrl="App_Themes/ModernUI/Images/appbar.share.png" Cls="x-img-metro-east">
                                    <Listeners>
                                        <Click Handler="notifyEvent('SHARE')" />
                                    </Listeners>
                                </ext:Image>
                                <ext:Label ID="lblEastShare" runat="server" Html="Share"></ext:Label>
                            </Content>
                        </ext:Panel>
                        <ext:Panel ID="pnlEastStart" runat="server" Unstyled="true" Border="false" BodyCssClass="x-panel-setting" OverCls="x-panel-setting-over">
                            <Content>
                                <ext:Image ID="imgEastStart" runat="server" ImageUrl="App_Themes/ModernUI/Images/appbar.os.windows.8.png" Cls="x-img-metro-east">
                                    <Listeners>
                                        <Click Handler="notifyEvent('START')" />
                                    </Listeners>
                                </ext:Image>
                                <ext:Label ID="lblEastStart" runat="server" Html="Start"></ext:Label>
                            </Content>
                        </ext:Panel>
                        <ext:Panel ID="pnlEastNetwork" runat="server" Unstyled="true" Border="false" BodyCssClass="x-panel-setting" OverCls="x-panel-setting-over">
                            <Content>
                                <ext:Image ID="imgEastNetwork" runat="server" ImageUrl="App_Themes/ModernUI/Images/appbar.network.png" Cls="x-img-metro-east">
                                    <Listeners>
                                        <Click Handler="notifyEvent('NETWORK')" />
                                    </Listeners>
                                </ext:Image>
                                <ext:Label ID="lblEastNetwork" runat="server" Html="Network"></ext:Label>
                            </Content>
                        </ext:Panel>
                        <ext:Panel ID="pnlEastSettings" runat="server" Unstyled="true" Border="false" BodyCssClass="x-panel-setting" OverCls="x-panel-setting-over">
                            <Content>
                                <ext:Image ID="imgEastSettings" runat="server" ImageUrl="App_Themes/ModernUI/Images/appbar.settings.png" Cls="x-img-metro-east">
                                    <Listeners>
                                        <Click Handler="notifyEvent('SETTINGS')" />
                                    </Listeners>
                                </ext:Image>
                                <ext:Label ID="lblEastSettings" runat="server" Html="Settings"></ext:Label>
                            </Content>
                        </ext:Panel>  
                    </Content>
                </ext:Panel>
            </Items>
        </ext:Viewport>

        <ext:TaskManager ID="tskManager" runat="server">
            <Tasks>
                <ext:Task Interval="5000">
                    <Listeners>
                        <Update Handler="Ext.get('imgTwitter').slideOut('r', {duration:.5});
                            Ext.get('imgTwitter').slideIn('l', {duration:.5});" />
                    </Listeners>
                </ext:Task>
                <ext:Task Interval="8000">
                    <Listeners>
                        <Update Handler="Ext.get('imgWeather').fadeOut({duration:1.5});
                            Ext.get('imgWeather').fadeIn({duration:1.5});" />
                    </Listeners>
                </ext:Task>
                <ext:Task Interval="12000">
                    <Listeners>
                        <Update Handler="Ext.get('lblMailCount').frame();" />
                    </Listeners>
                </ext:Task>
            </Tasks>
        </ext:TaskManager>
    </form>
</body>
</html>
