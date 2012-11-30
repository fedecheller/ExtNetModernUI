<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="desktop.aspx.cs" Inherits="ExtNetModernUI.desktop" Theme="ModernUI" %>
<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ext.Net - Modern UI</title>
    <script src="Scripts/modernui.js" type="text/javascript" language="javascript"></script>
    <style type="text/css">
        .x-border-panel, .x-splitbar-h
        {
            border-top: #598993 1px solid;
            background-image: none !important;
            background-color: #5A94BB !important;
             -moz-opacity:.70; 
            filter: alpha(opacity=70);
            opacity:.70;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <ext:ResourceManager ID="rsm" runat="server">
        <Listeners>
            <DocumentReady Handler="notifyHour();" />
            <WindowResize Handler="notifyHour();"  />
        </Listeners>
    </ext:ResourceManager>
    <ext:Desktop ID="desktopModernUI" runat="server" BackgroundColor="#004050" ShortcutTextColor="White" Wallpaper="App_Themes/ModernUI/Backgrounds/bkgr_island.png" EnableTheming="false">
        <StartButton Text=" " />
        <Content>
                
        </Content>

        <Modules>
                <ext:DesktopModule ModuleID="dskModTrash" WindowID="winTrash" AutoRun="false">

                </ext:DesktopModule>
                <ext:DesktopModule ModuleID="dskModExplorer" WindowID="winExplorer" AutoRun="true">

                </ext:DesktopModule>
        </Modules>  
            
        <Shortcuts>
            <ext:DesktopShortcut ModuleID="dskModTrash" Text="Trash" IconCls="shortcut-icon-desk icon-desk-trash" X="{DX}-150" Y="50" />
            <ext:DesktopShortcut ModuleID="dskModExplorer" Text="Explorer" IconCls="shortcut-icon-desk icon-desk-explorer" X="{DX}-150" Y="150" />
            
        </Shortcuts>
            



        <Listeners>
            <ShortcutClick Handler="var d=#{MyDesktop}.getDesktop(); if(id == 'scTile'){d.tile();}else if(id == 'scCascade'){d.cascade();}" />
        </Listeners>
        <StartMenu Width="180" Height="80" Shadow="false" ToolsWidth="-10" Title="Start">
            <Items>
                <ext:Image runat="server" ImageUrl="App_Themes/ModernUI/Images/modern.start.png" Cls="x-img-metro-start">
                    <Listeners>
                        <Click Handler="document.location.href='index.aspx'" />
                    </Listeners>
                </ext:Image>
            </Items>
            
        </StartMenu>
    </ext:Desktop>

     <ext:DesktopWindow ID="winTrash" runat="server" Title="Trash" InitCenter="false" Icon="BinClosed" Width="600" Height="450" PageX="150" PageY="100" Layout="Form" Shadow="None">

     </ext:DesktopWindow>
     <ext:DesktopWindow ID="winExplorer" runat="server" Title="Explorer" InitCenter="false" Icon="Folder" Width="350" Height="200" PageX="100" PageY="25" Layout="Form" Shadow="None">
        
     </ext:DesktopWindow>
     <ext:TaskManager ID="tskManager" runat="server">
        <Tasks>
            <ext:Task Interval="60000">
                <Listeners>
                    <Update Handler="notifyHour()" />
                </Listeners>
            </ext:Task>
        </Tasks>
    </ext:TaskManager>
    </form>
</body>
</html>
