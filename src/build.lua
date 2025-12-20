-- This file is generated automatically and is not meant to be modified.

if IY_LOADED and not _G.IY_DEBUG==true then

return
end

pcall(function()getgenv().IY_LOADED=true end)
if not game:IsLoaded()then game.Loaded:Wait()end

function missing(a,b,c)
if type(b)==a then return b end
return c
end

cloneref=missing("function",cloneref,function(...)return...end)
sethidden=missing("function",sethiddenproperty or set_hidden_property or set_hidden_prop)
gethidden=missing("function",gethiddenproperty or get_hidden_property or get_hidden_prop)
queueteleport=missing("function",queue_on_teleport or(syn and syn.queue_on_teleport)or(fluxus and fluxus.queue_on_teleport))
httprequest=missing("function",request or http_request or(syn and syn.request)or(http and http.request)or(fluxus and fluxus.request))
everyClipboard=missing("function",setclipboard or toclipboard or set_clipboard or(Clipboard and Clipboard.set))
firetouchinterest=missing("function",firetouchinterest)
waxwritefile,waxreadfile=writefile,readfile
writefile=missing("function",waxwritefile)and function(a,b,c)
if c==true then return pcall(waxwritefile,a,b)end
waxwritefile(a,b)
end
readfile=missing("function",waxreadfile)and function(a,b)
if b==true then return pcall(waxreadfile,a)end
return waxreadfile(a)
end
isfile=missing("function",isfile,readfile and function(a)
local b,c=pcall(function()
return readfile(a)
end)
return b and c~=nil and c~=""
end)
makefolder=missing("function",makefolder)
isfolder=missing("function",isfolder)
waxgetcustomasset=missing("function",getcustomasset or getsynasset)
hookfunction=missing("function",hookfunction)
hookmetamethod=missing("function",hookmetamethod)
getnamecallmethod=missing("function",getnamecallmethod or get_namecall_method)
checkcaller=missing("function",checkcaller,function()return false end)
newcclosure=missing("function",newcclosure)
getgc=missing("function",getgc or get_gc_objects)
setthreadidentity=missing("function",setthreadidentity or(syn and syn.set_thread_identity)or syn_context_set or setthreadcontext)
replicatesignal=missing("function",replicatesignal)
getconnections=missing("function",getconnections or get_signal_cons)

Services=setmetatable({},{
__index=function(a,b)
local c,d=pcall(function()
return cloneref(game:GetService(b))
end)
if c then
rawset(a,b,d)
return d
else
error("Invalid Service: "..tostring(b))
end
end
})

COREGUI=Services.CoreGui
Players=Services.Players
UserInputService=Services.UserInputService
TweenService=Services.TweenService
HttpService=Services.HttpService
MarketplaceService=Services.MarketplaceService
RunService=Services.RunService
TeleportService=Services.TeleportService
StarterGui=Services.StarterGui
GuiService=Services.GuiService
Lighting=Services.Lighting
ContextActionService=Services.ContextActionService
ReplicatedStorage=Services.ReplicatedStorage
GroupService=Services.GroupService
PathService=Services.PathfindingService
SoundService=Services.SoundService
Teams=Services.Teams
StarterPlayer=Services.StarterPlayer
InsertService=Services.InsertService
ChatService=Services.Chat
ProximityPromptService=Services.ProximityPromptService
ContentProvider=Services.ContentProvider
StatsService=Services.Stats
MaterialService=Services.MaterialService
AvatarEditorService=Services.AvatarEditorService
TextService=Services.TextService
TextChatService=Services.TextChatService
CaptureService=Services.CaptureService
VoiceChatService=Services.VoiceChatService
SocialService=Services.SocialService

IYMouse=cloneref(Players.LocalPlayer:GetMouse())
PlayerGui=cloneref(Players.LocalPlayer:FindFirstChildWhichIsA"PlayerGui")
PlaceId,JobId=game.PlaceId,game.JobId
xpcall(function()
IsOnMobile=table.find({Enum.Platform.Android,Enum.Platform.IOS},UserInputService:GetPlatform())
end,function()
IsOnMobile=UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled
end)
isLegacyChat=TextChatService.ChatVersion==Enum.ChatVersion.LegacyChatService


local a={
["infiniteyield/assets/bindsandplugins.png"]="rbxassetid://5147695474",
["infiniteyield/assets/close.png"]="rbxassetid://5054663650",
["infiniteyield/assets/editaliases.png"]="rbxassetid://5147488658",
["infiniteyield/assets/editkeybinds.png"]="rbxassetid://129697930",
["infiniteyield/assets/edittheme.png"]="rbxassetid://4911962991",
["infiniteyield/assets/editwaypoints.png"]="rbxassetid://5147488592",
["infiniteyield/assets/imgstudiopluginlogo.png"]="rbxassetid://4113050383",
["infiniteyield/assets/logo.png"]="rbxassetid://1352543873",
["infiniteyield/assets/minimize.png"]="rbxassetid://2406617031",
["infiniteyield/assets/pin.png"]="rbxassetid://6234691350",
["infiniteyield/assets/reference.png"]="rbxassetid://3523243755",
["infiniteyield/assets/settings.png"]="rbxassetid://1204397029"
}

local function getcustomasset(b)
if waxgetcustomasset then
local c,d=pcall(function()
return waxgetcustomasset(b)
end)
if c and d~=nil and d~=""then
return d
end
end
return a[b]
end

if makefolder and isfolder and writefile and isfile then
pcall(function()
local b="https://raw.githubusercontent.com/infyiff/backup/refs/heads/main/"
for c,d in{"infiniteyield","infiniteyield/assets"}do
if not isfolder(d)then
makefolder(d)
end
end
for c in a do
if not isfile(c)then
writefile(c,game:HttpGet((c:gsub("infiniteyield/",b))))
end
end
if IsOnMobile then writefile"infiniteyield/assets/.nomedia"end
end)
end

currentVersion="6.3.4"

ScaledHolder=Instance.new"Frame"
Scale=Instance.new"UIScale"
Holder=Instance.new"Frame"
Title=Instance.new"TextLabel"
Dark=Instance.new"Frame"
Cmdbar=Instance.new"TextBox"
CMDsF=Instance.new"ScrollingFrame"
cmdListLayout=Instance.new"UIListLayout"
SettingsButton=Instance.new"ImageButton"
ColorsButton=Instance.new"ImageButton"
Settings=Instance.new"Frame"
Prefix=Instance.new"TextLabel"
PrefixBox=Instance.new"TextBox"
Keybinds=Instance.new"TextLabel"
StayOpen=Instance.new"TextLabel"
Button=Instance.new"Frame"
On=Instance.new"TextButton"
Positions=Instance.new"TextLabel"
EventBind=Instance.new"TextLabel"
Plugins=Instance.new"TextLabel"
Example=Instance.new"TextButton"
Notification=Instance.new"Frame"
Title_2=Instance.new"TextLabel"
Text_2=Instance.new"TextLabel"
CloseButton=Instance.new"TextButton"
CloseImage=Instance.new"ImageLabel"
PinButton=Instance.new"TextButton"
PinImage=Instance.new"ImageLabel"
Tooltip=Instance.new"Frame"
Title_3=Instance.new"TextLabel"
Description=Instance.new"TextLabel"
IntroBackground=Instance.new"Frame"
Logo=Instance.new"ImageLabel"
Credits=Instance.new"TextBox"
KeybindsFrame=Instance.new"Frame"
Close=Instance.new"TextButton"
Add=Instance.new"TextButton"
Delete=Instance.new"TextButton"
Holder_2=Instance.new"ScrollingFrame"
Example_2=Instance.new"Frame"
Text_3=Instance.new"TextLabel"
Delete_2=Instance.new"TextButton"
KeybindEditor=Instance.new"Frame"
background_2=Instance.new"Frame"
Dark_3=Instance.new"Frame"
Directions=Instance.new"TextLabel"
BindTo=Instance.new"TextButton"
TriggerLabel=Instance.new"TextLabel"
BindTriggerSelect=Instance.new"TextButton"
Add_2=Instance.new"TextButton"
Toggles=Instance.new"ScrollingFrame"
ClickTP=Instance.new"TextLabel"
Select=Instance.new"TextButton"
ClickDelete=Instance.new"TextLabel"
Select_2=Instance.new"TextButton"
Cmdbar_2=Instance.new"TextBox"
Cmdbar_3=Instance.new"TextBox"
CreateToggle=Instance.new"TextLabel"
Button_2=Instance.new"Frame"
On_2=Instance.new"TextButton"
shadow_2=Instance.new"Frame"
PopupText_2=Instance.new"TextLabel"
Exit_2=Instance.new"TextButton"
ExitImage_2=Instance.new"ImageLabel"
PositionsFrame=Instance.new"Frame"
Close_3=Instance.new"TextButton"
Delete_5=Instance.new"TextButton"
Part=Instance.new"TextButton"
Holder_4=Instance.new"ScrollingFrame"
Example_4=Instance.new"Frame"
Text_5=Instance.new"TextLabel"
Delete_6=Instance.new"TextButton"
TP=Instance.new"TextButton"
AliasesFrame=Instance.new"Frame"
Close_2=Instance.new"TextButton"
Delete_3=Instance.new"TextButton"
Holder_3=Instance.new"ScrollingFrame"
Example_3=Instance.new"Frame"
Text_4=Instance.new"TextLabel"
Delete_4=Instance.new"TextButton"
Aliases=Instance.new"TextLabel"
PluginsFrame=Instance.new"Frame"
Close_4=Instance.new"TextButton"
Add_3=Instance.new"TextButton"
Holder_5=Instance.new"ScrollingFrame"
Example_5=Instance.new"Frame"
Text_6=Instance.new"TextLabel"
Delete_7=Instance.new"TextButton"
PluginEditor=Instance.new"Frame"
background_3=Instance.new"Frame"
Dark_2=Instance.new"Frame"
Img=Instance.new"ImageButton"
AddPlugin=Instance.new"TextButton"
FileName=Instance.new"TextBox"
About=Instance.new"TextLabel"
Directions_2=Instance.new"TextLabel"
shadow_3=Instance.new"Frame"
PopupText_3=Instance.new"TextLabel"
Exit_3=Instance.new"TextButton"
ExitImage_3=Instance.new"ImageLabel"
AliasHint=Instance.new"TextLabel"
PluginsHint=Instance.new"TextLabel"
PositionsHint=Instance.new"TextLabel"
ToPartFrame=Instance.new"Frame"
background_4=Instance.new"Frame"
ChoosePart=Instance.new"TextButton"
CopyPath=Instance.new"TextButton"
Directions_3=Instance.new"TextLabel"
Path=Instance.new"TextLabel"
shadow_4=Instance.new"Frame"
PopupText_5=Instance.new"TextLabel"
Exit_4=Instance.new"TextButton"
ExitImage_5=Instance.new"ImageLabel"
logs=Instance.new"Frame"
shadow=Instance.new"Frame"
Hide=Instance.new"TextButton"
ImageLabel=Instance.new"ImageLabel"
PopupText=Instance.new"TextLabel"
Exit=Instance.new"TextButton"
ImageLabel_2=Instance.new"ImageLabel"
background=Instance.new"Frame"
chat=Instance.new"Frame"
Clear=Instance.new"TextButton"
SaveChatlogs=Instance.new"TextButton"
Toggle=Instance.new"TextButton"
scroll_2=Instance.new"ScrollingFrame"
join=Instance.new"Frame"
Toggle_2=Instance.new"TextButton"
Clear_2=Instance.new"TextButton"
scroll_3=Instance.new"ScrollingFrame"
listlayout=Instance.new("UIListLayout",scroll_3)
selectChat=Instance.new"TextButton"
selectJoin=Instance.new"TextButton"

function randomString()
local b=math.random(10,20)
local c={}
for d=1,b do
c[d]=string.char(math.random(32,126))
end
return table.concat(c)
end

PARENT=nil
if get_hidden_gui or gethui then
local b=get_hidden_gui or gethui
local c=Instance.new"ScreenGui"
c.Name=randomString()
c.Parent=b()
PARENT=c
elseif(not is_sirhurt_closure)and(syn and syn.protect_gui)then
local b=Instance.new"ScreenGui"
b.Name=randomString()
syn.protect_gui(b)
b.Parent=COREGUI
PARENT=b
elseif COREGUI:FindFirstChild"RobloxGui"then
PARENT=COREGUI.RobloxGui
else
local b=Instance.new"ScreenGui"
b.Name=randomString()
b.Parent=COREGUI
PARENT=b
end

shade1={}
shade2={}
shade3={}
text1={}
text2={}
scroll={}

ScaledHolder.Name=randomString()
ScaledHolder.Size=UDim2.fromScale(1,1)
ScaledHolder.BackgroundTransparency=1
ScaledHolder.Parent=PARENT
Scale.Name=randomString()

Holder.Name=randomString()
Holder.Parent=ScaledHolder
Holder.Active=true
Holder.BackgroundColor3=Color3.fromRGB(46,46,47)
Holder.BorderSizePixel=0
Holder.Position=UDim2.new(1,-250,1,-220)
Holder.Size=UDim2.new(0,250,0,220)
Holder.ZIndex=10
table.insert(shade2,Holder)

Title.Name="Title"
Title.Parent=Holder
Title.Active=true
Title.BackgroundColor3=Color3.fromRGB(36,36,37)
Title.BorderSizePixel=0
Title.Size=UDim2.new(0,250,0,20)
Title.Font=Enum.Font.SourceSans
Title.TextSize=18
Title.Text="Zero Yield FE v"..currentVersion

do
local b=({
["01 01"]="🎆",
[(function(b)
local c=math.floor(b/100)
local d=math.floor((13+8*c)/25)
local e=(15-d+c-math.floor(c/4))%30
local f=(4+c-math.floor(c/4))%7
local g=(19*(b%19)+e)%30
local h=(2*(b%4)+4*(b%7)+6*g+f)%7
local i=(22+g+h)
if g==29 and h==6 then
return"04 19"
elseif g==28 and h==6 then
return"04 18"
elseif 31<i then
return("04 %02d"):format(i-31)
end
return("03 %02d"):format(i)
end)(tonumber(os.date"%Y"))]="🥚",
["10 31"]="🎃",
["12 25"]="🎄"
})[os.date"%m %d"]
if b then
Title.Text=("%s %s %s"):format(b,Title.Text,b)
end
end

Title.TextColor3=Color3.new(1,1,1)
Title.ZIndex=10
table.insert(shade1,Title)
table.insert(text1,Title)

Dark.Name="Dark"
Dark.Parent=Holder
Dark.Active=true
Dark.BackgroundColor3=Color3.fromRGB(36,36,37)
Dark.BorderSizePixel=0
Dark.Position=UDim2.new(0,0,0,45)
Dark.Size=UDim2.new(0,250,0,175)
Dark.ZIndex=10
table.insert(shade1,Dark)

Cmdbar.Name="Cmdbar"
Cmdbar.Parent=Holder
Cmdbar.BackgroundTransparency=1
Cmdbar.BorderSizePixel=0
Cmdbar.Position=UDim2.new(0,5,0,20)
Cmdbar.Size=UDim2.new(0,240,0,25)
Cmdbar.Font=Enum.Font.SourceSans
Cmdbar.TextSize=18
Cmdbar.TextXAlignment=Enum.TextXAlignment.Left
Cmdbar.TextColor3=Color3.new(1,1,1)
Cmdbar.Text=""
Cmdbar.ZIndex=10
Cmdbar.PlaceholderText="Command Bar"

CMDsF.Name="CMDs"
CMDsF.Parent=Holder
CMDsF.BackgroundTransparency=1
CMDsF.BorderSizePixel=0
CMDsF.Position=UDim2.new(0,5,0,45)
CMDsF.Size=UDim2.new(0,245,0,175)
CMDsF.ScrollBarImageColor3=Color3.fromRGB(78,78,79)
CMDsF.BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
CMDsF.CanvasSize=UDim2.new(0,0,0,0)
CMDsF.MidImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
CMDsF.ScrollBarThickness=8
CMDsF.TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
CMDsF.VerticalScrollBarInset='Always'
CMDsF.ZIndex=10
table.insert(scroll,CMDsF)

cmdListLayout.Parent=CMDsF

SettingsButton.Name="SettingsButton"
SettingsButton.Parent=Holder
SettingsButton.BackgroundTransparency=1
SettingsButton.Position=UDim2.new(0,230,0,0)
SettingsButton.Size=UDim2.new(0,20,0,20)
SettingsButton.Image=getcustomasset"infiniteyield/assets/settings.png"
SettingsButton.ZIndex=10

ReferenceButton=Instance.new"ImageButton"
ReferenceButton.Name="ReferenceButton"
ReferenceButton.Parent=Holder
ReferenceButton.BackgroundTransparency=1
ReferenceButton.Position=UDim2.new(0,212,0,2)
ReferenceButton.Size=UDim2.new(0,16,0,16)
ReferenceButton.Image=getcustomasset"infiniteyield/assets/reference.png"
ReferenceButton.ZIndex=10

Settings.Name="Settings"
Settings.Parent=Holder
Settings.Active=true
Settings.BackgroundColor3=Color3.fromRGB(36,36,37)
Settings.BorderSizePixel=0
Settings.Position=UDim2.new(0,0,0,220)
Settings.Size=UDim2.new(0,250,0,175)
Settings.ZIndex=10
table.insert(shade1,Settings)

SettingsHolder=Instance.new"ScrollingFrame"
SettingsHolder.Name="Holder"
SettingsHolder.Parent=Settings
SettingsHolder.BackgroundTransparency=1
SettingsHolder.BorderSizePixel=0
SettingsHolder.Size=UDim2.new(1,0,1,0)
SettingsHolder.ScrollBarImageColor3=Color3.fromRGB(78,78,79)
SettingsHolder.BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
SettingsHolder.CanvasSize=UDim2.new(0,0,0,235)
SettingsHolder.MidImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
SettingsHolder.ScrollBarThickness=8
SettingsHolder.TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
SettingsHolder.VerticalScrollBarInset='Always'
SettingsHolder.ZIndex=10
table.insert(scroll,SettingsHolder)

Prefix.Name="Prefix"
Prefix.Parent=SettingsHolder
Prefix.BackgroundColor3=Color3.fromRGB(46,46,47)
Prefix.BorderSizePixel=0
Prefix.BackgroundTransparency=1
Prefix.Position=UDim2.new(0,5,0,5)
Prefix.Size=UDim2.new(1,-10,0,20)
Prefix.Font=Enum.Font.SourceSans
Prefix.TextSize=14
Prefix.Text="Prefix"
Prefix.TextColor3=Color3.new(1,1,1)
Prefix.TextXAlignment=Enum.TextXAlignment.Left
Prefix.ZIndex=10
table.insert(shade2,Prefix)
table.insert(text1,Prefix)

PrefixBox.Name="PrefixBox"
PrefixBox.Parent=Prefix
PrefixBox.BackgroundColor3=Color3.fromRGB(78,78,79)
PrefixBox.BorderSizePixel=0
PrefixBox.Position=UDim2.new(1,-20,0,0)
PrefixBox.Size=UDim2.new(0,20,0,20)
PrefixBox.Font=Enum.Font.SourceSansBold
PrefixBox.TextSize=14
PrefixBox.Text=''
PrefixBox.TextColor3=Color3.new(0,0,0)
PrefixBox.ZIndex=10
table.insert(shade3,PrefixBox)
table.insert(text2,PrefixBox)

function makeSettingsButton(b,c,d)
local e=Instance.new"TextButton"
e.BackgroundColor3=Color3.fromRGB(46,46,47)
e.BorderSizePixel=0
e.Position=UDim2.new(0,0,0,0)
e.Size=UDim2.new(1,0,0,25)
e.Text=""
e.ZIndex=10
local f=Instance.new"ImageLabel"
f.Name="Icon"
f.Parent=e
f.Position=UDim2.new(0,5,0,5)
f.Size=UDim2.new(0,16,0,16)
f.BackgroundTransparency=1
f.Image=c
f.ZIndex=10
if d then
f.ScaleType=Enum.ScaleType.Crop
f.ImageRectSize=Vector2.new(16,16)
f.ImageRectOffset=Vector2.new(d,0)
end
local g=Instance.new"TextLabel"
g.Name="ButtonLabel"
g.Parent=e
g.BackgroundTransparency=1
g.Text=b
g.Position=UDim2.new(0,28,0,0)
g.Size=UDim2.new(1,-28,1,0)
g.Font=Enum.Font.SourceSans
g.TextColor3=Color3.new(1,1,1)
g.TextSize=14
g.ZIndex=10
g.TextXAlignment=Enum.TextXAlignment.Left
table.insert(shade2,e)
table.insert(text1,g)
return e
end

ColorsButton=makeSettingsButton("Edit Theme",getcustomasset"infiniteyield/assets/edittheme.png")
ColorsButton.Position=UDim2.new(0,5,0,55)
ColorsButton.Size=UDim2.new(1,-10,0,25)
ColorsButton.Name="Colors"
ColorsButton.Parent=SettingsHolder

Keybinds=makeSettingsButton("Edit Keybinds",getcustomasset"infiniteyield/assets/editkeybinds.png")
Keybinds.Position=UDim2.new(0,5,0,85)
Keybinds.Size=UDim2.new(1,-10,0,25)
Keybinds.Name="Keybinds"
Keybinds.Parent=SettingsHolder

Aliases=makeSettingsButton("Edit Aliases",getcustomasset"infiniteyield/assets/editaliases.png")
Aliases.Position=UDim2.new(0,5,0,115)
Aliases.Size=UDim2.new(1,-10,0,25)
Aliases.Name="Aliases"
Aliases.Parent=SettingsHolder

StayOpen.Name="StayOpen"
StayOpen.Parent=SettingsHolder
StayOpen.BackgroundColor3=Color3.fromRGB(46,46,47)
StayOpen.BorderSizePixel=0
StayOpen.BackgroundTransparency=1
StayOpen.Position=UDim2.new(0,5,0,30)
StayOpen.Size=UDim2.new(1,-10,0,20)
StayOpen.Font=Enum.Font.SourceSans
StayOpen.TextSize=14
StayOpen.Text="Keep Menu Open"
StayOpen.TextColor3=Color3.new(1,1,1)
StayOpen.TextXAlignment=Enum.TextXAlignment.Left
StayOpen.ZIndex=10
table.insert(shade2,StayOpen)
table.insert(text1,StayOpen)

Button.Name="Button"
Button.Parent=StayOpen
Button.BackgroundColor3=Color3.fromRGB(78,78,79)
Button.BorderSizePixel=0
Button.Position=UDim2.new(1,-20,0,0)
Button.Size=UDim2.new(0,20,0,20)
Button.ZIndex=10
table.insert(shade3,Button)

On.Name="On"
On.Parent=Button
On.BackgroundColor3=Color3.fromRGB(150,150,151)
On.BackgroundTransparency=1
On.BorderSizePixel=0
On.Position=UDim2.new(0,2,0,2)
On.Size=UDim2.new(0,16,0,16)
On.Font=Enum.Font.SourceSans
On.FontSize=Enum.FontSize.Size14
On.Text=""
On.TextColor3=Color3.new(0,0,0)
On.ZIndex=10

Positions=makeSettingsButton("Edit/Goto Waypoints",getcustomasset"infiniteyield/assets/editwaypoints.png")
Positions.Position=UDim2.new(0,5,0,145)
Positions.Size=UDim2.new(1,-10,0,25)
Positions.Name="Waypoints"
Positions.Parent=SettingsHolder

EventBind=makeSettingsButton("Edit Event Binds",getcustomasset"infiniteyield/assets/bindsandplugins.png",759)
EventBind.Position=UDim2.new(0,5,0,205)
EventBind.Size=UDim2.new(1,-10,0,25)
EventBind.Name="EventBinds"
EventBind.Parent=SettingsHolder

Plugins=makeSettingsButton("Manage Plugins",getcustomasset"infiniteyield/assets/bindsandplugins.png",743)
Plugins.Position=UDim2.new(0,5,0,175)
Plugins.Size=UDim2.new(1,-10,0,25)
Plugins.Name="Plugins"
Plugins.Parent=SettingsHolder

Example.Name="Example"
Example.Parent=Holder
Example.BackgroundTransparency=1
Example.BorderSizePixel=0
Example.Size=UDim2.new(0,190,0,20)
Example.Visible=false
Example.Font=Enum.Font.SourceSans
Example.TextSize=18
Example.Text="Example"
Example.TextColor3=Color3.new(1,1,1)
Example.TextXAlignment=Enum.TextXAlignment.Left
Example.ZIndex=10
table.insert(text1,Example)

Notification.Name=randomString()
Notification.Parent=ScaledHolder
Notification.BackgroundColor3=Color3.fromRGB(36,36,37)
Notification.BorderSizePixel=0
Notification.Position=UDim2.new(1,-500,1,20)
Notification.Size=UDim2.new(0,250,0,100)
Notification.ZIndex=10
table.insert(shade1,Notification)

Title_2.Name="Title"
Title_2.Parent=Notification
Title_2.BackgroundColor3=Color3.fromRGB(46,46,47)
Title_2.BorderSizePixel=0
Title_2.Size=UDim2.new(0,250,0,20)
Title_2.Font=Enum.Font.SourceSans
Title_2.TextSize=14
Title_2.Text="Notification Title"
Title_2.TextColor3=Color3.new(1,1,1)
Title_2.ZIndex=10
table.insert(shade2,Title_2)
table.insert(text1,Title_2)

Text_2.Name="Text"
Text_2.Parent=Notification
Text_2.BackgroundTransparency=1
Text_2.BorderSizePixel=0
Text_2.Position=UDim2.new(0,5,0,25)
Text_2.Size=UDim2.new(0,240,0,75)
Text_2.Font=Enum.Font.SourceSans
Text_2.TextSize=16
Text_2.Text="Notification Text"
Text_2.TextColor3=Color3.new(1,1,1)
Text_2.TextWrapped=true
Text_2.ZIndex=10
table.insert(text1,Text_2)

CloseButton.Name="CloseButton"
CloseButton.Parent=Notification
CloseButton.BackgroundTransparency=1
CloseButton.Position=UDim2.new(1,-20,0,0)
CloseButton.Size=UDim2.new(0,20,0,20)
CloseButton.Text=""
CloseButton.ZIndex=10

CloseImage.Parent=CloseButton
CloseImage.BackgroundColor3=Color3.new(1,1,1)
CloseImage.BackgroundTransparency=1
CloseImage.Position=UDim2.new(0,5,0,5)
CloseImage.Size=UDim2.new(0,10,0,10)
CloseImage.Image=getcustomasset"infiniteyield/assets/close.png"
CloseImage.ZIndex=10

PinButton.Name="PinButton"
PinButton.Parent=Notification
PinButton.BackgroundTransparency=1
PinButton.Size=UDim2.new(0,20,0,20)
PinButton.ZIndex=10
PinButton.Text=""

PinImage.Parent=PinButton
PinImage.BackgroundColor3=Color3.new(1,1,1)
PinImage.BackgroundTransparency=1
PinImage.Position=UDim2.new(0,3,0,3)
PinImage.Size=UDim2.new(0,14,0,14)
PinImage.ZIndex=10
PinImage.Image=getcustomasset"infiniteyield/assets/pin.png"

Tooltip.Name=randomString()
Tooltip.Parent=ScaledHolder
Tooltip.Active=true
Tooltip.BackgroundColor3=Color3.fromRGB(36,36,37)
Tooltip.BackgroundTransparency=0.1
Tooltip.BorderSizePixel=0
Tooltip.Size=UDim2.new(0,200,0,96)
Tooltip.Visible=false
Tooltip.ZIndex=10
table.insert(shade1,Tooltip)

Title_3.Name="Title"
Title_3.Parent=Tooltip
Title_3.BackgroundColor3=Color3.fromRGB(46,46,47)
Title_3.BackgroundTransparency=0.1
Title_3.BorderSizePixel=0
Title_3.Size=UDim2.new(0,200,0,20)
Title_3.Font=Enum.Font.SourceSans
Title_3.TextSize=14
Title_3.Text=""
Title_3.TextColor3=Color3.new(1,1,1)
Title_3.TextTransparency=0.1
Title_3.ZIndex=10
table.insert(shade2,Title_3)
table.insert(text1,Title_3)

Description.Name="Description"
Description.Parent=Tooltip
Description.BackgroundTransparency=1
Description.BorderSizePixel=0
Description.Size=UDim2.new(0,180,0,72)
Description.Position=UDim2.new(0,10,0,18)
Description.Font=Enum.Font.SourceSans
Description.TextSize=16
Description.Text=""
Description.TextColor3=Color3.new(1,1,1)
Description.TextTransparency=0.1
Description.TextWrapped=true
Description.ZIndex=10
table.insert(text1,Description)

IntroBackground.Name="IntroBackground"
IntroBackground.Parent=Holder
IntroBackground.Active=true
IntroBackground.BackgroundColor3=Color3.fromRGB(36,36,37)
IntroBackground.BorderSizePixel=0
IntroBackground.Position=UDim2.new(0,0,0,45)
IntroBackground.Size=UDim2.new(0,250,0,175)
IntroBackground.ZIndex=10

Logo.Name="Logo"
Logo.Parent=Holder
Logo.BackgroundTransparency=1
Logo.BorderSizePixel=0
Logo.Position=UDim2.new(0,125,0,127)
Logo.Size=UDim2.new(0,10,0,10)
Logo.Image=getcustomasset"infiniteyield/assets/logo.png"
Logo.ImageTransparency=0
Logo.ZIndex=10

Credits.Name="Credits"
Credits.Parent=Holder
Credits.BackgroundTransparency=1
Credits.BorderSizePixel=0
Credits.Position=UDim2.new(0,0,0.9,30)
Credits.Size=UDim2.new(0,250,0,20)
Credits.Font=Enum.Font.SourceSansLight
Credits.FontSize=Enum.FontSize.Size14
Credits.Text="Edge // Zwolf // Moon // Toon // Peyton // ATP"
Credits.TextColor3=Color3.new(1,1,1)
Credits.ZIndex=10

KeybindsFrame.Name="KeybindsFrame"
KeybindsFrame.Parent=Settings
KeybindsFrame.Active=true
KeybindsFrame.BackgroundColor3=Color3.fromRGB(36,36,37)
KeybindsFrame.BorderSizePixel=0
KeybindsFrame.Position=UDim2.new(0,0,0,175)
KeybindsFrame.Size=UDim2.new(0,250,0,175)
KeybindsFrame.ZIndex=10
table.insert(shade1,KeybindsFrame)

Close.Name="Close"
Close.Parent=KeybindsFrame
Close.BackgroundColor3=Color3.fromRGB(46,46,47)
Close.BorderSizePixel=0
Close.Position=UDim2.new(0,205,0,150)
Close.Size=UDim2.new(0,40,0,20)
Close.Font=Enum.Font.SourceSans
Close.TextSize=14
Close.Text="Close"
Close.TextColor3=Color3.new(1,1,1)
Close.ZIndex=10
table.insert(shade2,Close)
table.insert(text1,Close)

Add.Name="Add"
Add.Parent=KeybindsFrame
Add.BackgroundColor3=Color3.fromRGB(46,46,47)
Add.BorderSizePixel=0
Add.Position=UDim2.new(0,5,0,150)
Add.Size=UDim2.new(0,40,0,20)
Add.Font=Enum.Font.SourceSans
Add.TextSize=14
Add.Text="Add"
Add.TextColor3=Color3.new(1,1,1)
Add.ZIndex=10
table.insert(shade2,Add)
table.insert(text1,Add)

Delete.Name="Delete"
Delete.Parent=KeybindsFrame
Delete.BackgroundColor3=Color3.fromRGB(46,46,47)
Delete.BorderSizePixel=0
Delete.Position=UDim2.new(0,50,0,150)
Delete.Size=UDim2.new(0,40,0,20)
Delete.Font=Enum.Font.SourceSans
Delete.TextSize=14
Delete.Text="Clear"
Delete.TextColor3=Color3.new(1,1,1)
Delete.ZIndex=10
table.insert(shade2,Delete)
table.insert(text1,Delete)

Holder_2.Name="Holder"
Holder_2.Parent=KeybindsFrame
Holder_2.BackgroundTransparency=1
Holder_2.BorderSizePixel=0
Holder_2.Position=UDim2.new(0,0,0,0)
Holder_2.Size=UDim2.new(0,250,0,145)
Holder_2.ScrollBarImageColor3=Color3.fromRGB(78,78,79)
Holder_2.BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_2.CanvasSize=UDim2.new(0,0,0,0)
Holder_2.MidImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_2.ScrollBarThickness=0
Holder_2.TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_2.VerticalScrollBarInset='Always'
Holder_2.ZIndex=10

Example_2.Name="Example"
Example_2.Parent=KeybindsFrame
Example_2.BackgroundColor3=Color3.fromRGB(46,46,47)
Example_2.BorderSizePixel=0
Example_2.Size=UDim2.new(0,10,0,20)
Example_2.Visible=false
Example_2.ZIndex=10
table.insert(shade2,Example_2)

Text_3.Name="Text"
Text_3.Parent=Example_2
Text_3.BackgroundColor3=Color3.fromRGB(46,46,47)
Text_3.BorderSizePixel=0
Text_3.Position=UDim2.new(0,10,0,0)
Text_3.Size=UDim2.new(0,240,0,20)
Text_3.Font=Enum.Font.SourceSans
Text_3.TextSize=14
Text_3.Text="nom"
Text_3.TextColor3=Color3.new(1,1,1)
Text_3.TextXAlignment=Enum.TextXAlignment.Left
Text_3.ZIndex=10
table.insert(shade2,Text_3)
table.insert(text1,Text_3)

Delete_2.Name="Delete"
Delete_2.Parent=Text_3
Delete_2.BackgroundColor3=Color3.fromRGB(78,78,79)
Delete_2.BorderSizePixel=0
Delete_2.Position=UDim2.new(0,200,0,0)
Delete_2.Size=UDim2.new(0,40,0,20)
Delete_2.Font=Enum.Font.SourceSans
Delete_2.TextSize=14
Delete_2.Text="Delete"
Delete_2.TextColor3=Color3.new(0,0,0)
Delete_2.ZIndex=10
table.insert(shade3,Delete_2)
table.insert(text2,Delete_2)

KeybindEditor.Name=randomString()
KeybindEditor.Parent=ScaledHolder
KeybindEditor.Active=true
KeybindEditor.BackgroundTransparency=1
KeybindEditor.Position=UDim2.new(0.5,-180,0,-500)
KeybindEditor.Size=UDim2.new(0,360,0,20)
KeybindEditor.ZIndex=10

background_2.Name="background"
background_2.Parent=KeybindEditor
background_2.Active=true
background_2.BackgroundColor3=Color3.fromRGB(36,36,37)
background_2.BorderSizePixel=0
background_2.Position=UDim2.new(0,0,0,20)
background_2.Size=UDim2.new(0,360,0,185)
background_2.ZIndex=10
table.insert(shade1,background_2)

Dark_3.Name="Dark"
Dark_3.Parent=background_2
Dark_3.Active=true
Dark_3.BackgroundColor3=Color3.fromRGB(46,46,47)
Dark_3.BorderSizePixel=0
Dark_3.Position=UDim2.new(0,135,0,0)
Dark_3.Size=UDim2.new(0,2,0,185)
Dark_3.ZIndex=10
table.insert(shade2,Dark_3)

Directions.Name="Directions"
Directions.Parent=background_2
Directions.BackgroundTransparency=1
Directions.BorderSizePixel=0
Directions.Position=UDim2.new(0,10,0,15)
Directions.Size=UDim2.new(0,115,0,90)
Directions.ZIndex=10
Directions.Font=Enum.Font.SourceSans
Directions.Text="Click the button below and press a key/mouse button. Then select what you want to bind it to."
Directions.TextColor3=Color3.fromRGB(255,255,255)
Directions.TextSize=14.000
Directions.TextWrapped=true
Directions.TextYAlignment=Enum.TextYAlignment.Top
table.insert(text1,Directions)

BindTo.Name="BindTo"
BindTo.Parent=background_2
BindTo.BackgroundColor3=Color3.fromRGB(46,46,47)
BindTo.BorderSizePixel=0
BindTo.Position=UDim2.new(0,10,0,95)
BindTo.Size=UDim2.new(0,115,0,50)
BindTo.ZIndex=10
BindTo.Font=Enum.Font.SourceSans
BindTo.Text="Click to bind"
BindTo.TextColor3=Color3.fromRGB(255,255,255)
BindTo.TextSize=16.000
table.insert(shade2,BindTo)
table.insert(text1,BindTo)

TriggerLabel.Name="TriggerLabel"
TriggerLabel.Parent=background_2
TriggerLabel.BackgroundTransparency=1
TriggerLabel.Position=UDim2.new(0,10,0,155)
TriggerLabel.Size=UDim2.new(0,45,0,20)
TriggerLabel.ZIndex=10
TriggerLabel.Font=Enum.Font.SourceSans
TriggerLabel.Text="Trigger:"
TriggerLabel.TextColor3=Color3.fromRGB(255,255,255)
TriggerLabel.TextSize=14.000
TriggerLabel.TextXAlignment=Enum.TextXAlignment.Left
table.insert(text1,TriggerLabel)

BindTriggerSelect.Name="BindTo"
BindTriggerSelect.Parent=background_2
BindTriggerSelect.BackgroundColor3=Color3.fromRGB(46,46,47)
BindTriggerSelect.BorderSizePixel=0
BindTriggerSelect.Position=UDim2.new(0,60,0,155)
BindTriggerSelect.Size=UDim2.new(0,65,0,20)
BindTriggerSelect.ZIndex=10
BindTriggerSelect.Font=Enum.Font.SourceSans
BindTriggerSelect.Text="KeyDown"
BindTriggerSelect.TextColor3=Color3.fromRGB(255,255,255)
BindTriggerSelect.TextSize=16.000
table.insert(shade2,BindTriggerSelect)
table.insert(text1,BindTriggerSelect)

Add_2.Name="Add"
Add_2.Parent=background_2
Add_2.BackgroundColor3=Color3.fromRGB(46,46,47)
Add_2.BorderSizePixel=0
Add_2.Position=UDim2.new(0,310,0,35)
Add_2.Size=UDim2.new(0,40,0,20)
Add_2.ZIndex=10
Add_2.Font=Enum.Font.SourceSans
Add_2.Text="Add"
Add_2.TextColor3=Color3.fromRGB(255,255,255)
Add_2.TextSize=14.000
table.insert(shade2,Add_2)
table.insert(text1,Add_2)

Toggles.Name="Toggles"
Toggles.Parent=background_2
Toggles.BackgroundTransparency=1
Toggles.BorderSizePixel=0
Toggles.Position=UDim2.new(0,150,0,125)
Toggles.Size=UDim2.new(0,200,0,50)
Toggles.ZIndex=10
Toggles.BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
Toggles.CanvasSize=UDim2.new(0,0,0,50)
Toggles.ScrollBarThickness=8
Toggles.TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
Toggles.VerticalScrollBarInset=Enum.ScrollBarInset.Always
table.insert(scroll,Toggles)

ClickTP.Name="Click TP (Hold Key & Click)"
ClickTP.Parent=Toggles
ClickTP.BackgroundColor3=Color3.fromRGB(46,46,47)
ClickTP.BorderSizePixel=0
ClickTP.Size=UDim2.new(0,200,0,20)
ClickTP.ZIndex=10
ClickTP.Font=Enum.Font.SourceSans
ClickTP.Text="    Click TP (Hold Key & Click)"
ClickTP.TextColor3=Color3.fromRGB(255,255,255)
ClickTP.TextSize=14.000
ClickTP.TextXAlignment=Enum.TextXAlignment.Left
table.insert(shade2,ClickTP)
table.insert(text1,ClickTP)

Select.Name="Select"
Select.Parent=ClickTP
Select.BackgroundColor3=Color3.fromRGB(78,78,79)
Select.BorderSizePixel=0
Select.Position=UDim2.new(0,160,0,0)
Select.Size=UDim2.new(0,40,0,20)
Select.ZIndex=10
Select.Font=Enum.Font.SourceSans
Select.Text="Add"
Select.TextColor3=Color3.fromRGB(0,0,0)
Select.TextSize=14.000
table.insert(shade3,Select)
table.insert(text2,Select)

ClickDelete.Name="Click Delete (Hold Key & Click)"
ClickDelete.Parent=Toggles
ClickDelete.BackgroundColor3=Color3.fromRGB(46,46,47)
ClickDelete.BorderSizePixel=0
ClickDelete.Position=UDim2.new(0,0,0,25)
ClickDelete.Size=UDim2.new(0,200,0,20)
ClickDelete.ZIndex=10
ClickDelete.Font=Enum.Font.SourceSans
ClickDelete.Text="    Click Delete (Hold Key & Click)"
ClickDelete.TextColor3=Color3.fromRGB(255,255,255)
ClickDelete.TextSize=14.000
ClickDelete.TextXAlignment=Enum.TextXAlignment.Left
table.insert(shade2,ClickDelete)
table.insert(text1,ClickDelete)

Select_2.Name="Select"
Select_2.Parent=ClickDelete
Select_2.BackgroundColor3=Color3.fromRGB(78,78,79)
Select_2.BorderSizePixel=0
Select_2.Position=UDim2.new(0,160,0,0)
Select_2.Size=UDim2.new(0,40,0,20)
Select_2.ZIndex=10
Select_2.Font=Enum.Font.SourceSans
Select_2.Text="Add"
Select_2.TextColor3=Color3.fromRGB(0,0,0)
Select_2.TextSize=14.000
table.insert(shade3,Select_2)
table.insert(text2,Select_2)

Cmdbar_2.Name="Cmdbar_2"
Cmdbar_2.Parent=background_2
Cmdbar_2.BackgroundColor3=Color3.fromRGB(46,46,47)
Cmdbar_2.BorderSizePixel=0
Cmdbar_2.Position=UDim2.new(0,150,0,35)
Cmdbar_2.Size=UDim2.new(0,150,0,20)
Cmdbar_2.ZIndex=10
Cmdbar_2.Font=Enum.Font.SourceSans
Cmdbar_2.PlaceholderText="Command"
Cmdbar_2.Text=""
Cmdbar_2.TextColor3=Color3.fromRGB(255,255,255)
Cmdbar_2.TextSize=14.000
Cmdbar_2.TextXAlignment=Enum.TextXAlignment.Left

Cmdbar_3.Name="Cmdbar_3"
Cmdbar_3.Parent=background_2
Cmdbar_3.BackgroundColor3=Color3.fromRGB(46,46,47)
Cmdbar_3.BorderSizePixel=0
Cmdbar_3.Position=UDim2.new(0,150,0,60)
Cmdbar_3.Size=UDim2.new(0,150,0,20)
Cmdbar_3.ZIndex=10
Cmdbar_3.Font=Enum.Font.SourceSans
Cmdbar_3.PlaceholderText="Command 2"
Cmdbar_3.Text=""
Cmdbar_3.TextColor3=Color3.fromRGB(255,255,255)
Cmdbar_3.TextSize=14.000
Cmdbar_3.TextXAlignment=Enum.TextXAlignment.Left

CreateToggle.Name="CreateToggle"
CreateToggle.Parent=background_2
CreateToggle.BackgroundColor3=Color3.fromRGB(46,46,47)
CreateToggle.BackgroundTransparency=1
CreateToggle.BorderSizePixel=0
CreateToggle.Position=UDim2.new(0,152,0,10)
CreateToggle.Size=UDim2.new(0,198,0,20)
CreateToggle.ZIndex=10
CreateToggle.Font=Enum.Font.SourceSans
CreateToggle.Text="Create Toggle"
CreateToggle.TextColor3=Color3.fromRGB(255,255,255)
CreateToggle.TextSize=14.000
CreateToggle.TextXAlignment=Enum.TextXAlignment.Left
table.insert(text1,CreateToggle)

Button_2.Name="Button"
Button_2.Parent=CreateToggle
Button_2.BackgroundColor3=Color3.fromRGB(78,78,79)
Button_2.BorderSizePixel=0
Button_2.Position=UDim2.new(1,-20,0,0)
Button_2.Size=UDim2.new(0,20,0,20)
Button_2.ZIndex=10
table.insert(shade3,Button_2)

On_2.Name="On"
On_2.Parent=Button_2
On_2.BackgroundColor3=Color3.fromRGB(150,150,151)
On_2.BackgroundTransparency=1
On_2.BorderSizePixel=0
On_2.Position=UDim2.new(0,2,0,2)
On_2.Size=UDim2.new(0,16,0,16)
On_2.ZIndex=10
On_2.Font=Enum.Font.SourceSans
On_2.Text=""
On_2.TextColor3=Color3.fromRGB(0,0,0)
On_2.TextSize=14.000

shadow_2.Name="shadow"
shadow_2.Parent=KeybindEditor
shadow_2.BackgroundColor3=Color3.fromRGB(46,46,47)
shadow_2.BorderSizePixel=0
shadow_2.Size=UDim2.new(0,360,0,20)
shadow_2.ZIndex=10
table.insert(shade2,shadow_2)

PopupText_2.Name="PopupText_2"
PopupText_2.Parent=shadow_2
PopupText_2.BackgroundTransparency=1
PopupText_2.Size=UDim2.new(1,0,0.949999988,0)
PopupText_2.ZIndex=10
PopupText_2.Font=Enum.Font.SourceSans
PopupText_2.Text="Set Keybinds"
PopupText_2.TextColor3=Color3.fromRGB(255,255,255)
PopupText_2.TextSize=14.000
PopupText_2.TextWrapped=true
table.insert(text1,PopupText_2)

Exit_2.Name="Exit_2"
Exit_2.Parent=shadow_2
Exit_2.BackgroundTransparency=1
Exit_2.Position=UDim2.new(1,-20,0,0)
Exit_2.Size=UDim2.new(0,20,0,20)
Exit_2.ZIndex=10
Exit_2.Text=""

ExitImage_2.Parent=Exit_2
ExitImage_2.BackgroundColor3=Color3.fromRGB(255,255,255)
ExitImage_2.BackgroundTransparency=1
ExitImage_2.Position=UDim2.new(0,5,0,5)
ExitImage_2.Size=UDim2.new(0,10,0,10)
ExitImage_2.ZIndex=10
ExitImage_2.Image=getcustomasset"infiniteyield/assets/close.png"

PositionsFrame.Name="PositionsFrame"
PositionsFrame.Parent=Settings
PositionsFrame.Active=true
PositionsFrame.BackgroundColor3=Color3.fromRGB(36,36,37)
PositionsFrame.BorderSizePixel=0
PositionsFrame.Size=UDim2.new(0,250,0,175)
PositionsFrame.Position=UDim2.new(0,0,0,175)
PositionsFrame.ZIndex=10
table.insert(shade1,PositionsFrame)

Close_3.Name="Close"
Close_3.Parent=PositionsFrame
Close_3.BackgroundColor3=Color3.fromRGB(46,46,47)
Close_3.BorderSizePixel=0
Close_3.Position=UDim2.new(0,205,0,150)
Close_3.Size=UDim2.new(0,40,0,20)
Close_3.Font=Enum.Font.SourceSans
Close_3.TextSize=14
Close_3.Text="Close"
Close_3.TextColor3=Color3.new(1,1,1)
Close_3.ZIndex=10
table.insert(shade2,Close_3)
table.insert(text1,Close_3)

Delete_5.Name="Delete"
Delete_5.Parent=PositionsFrame
Delete_5.BackgroundColor3=Color3.fromRGB(46,46,47)
Delete_5.BorderSizePixel=0
Delete_5.Position=UDim2.new(0,50,0,150)
Delete_5.Size=UDim2.new(0,40,0,20)
Delete_5.Font=Enum.Font.SourceSans
Delete_5.TextSize=14
Delete_5.Text="Clear"
Delete_5.TextColor3=Color3.new(1,1,1)
Delete_5.ZIndex=10
table.insert(shade2,Delete_5)
table.insert(text1,Delete_5)

Part.Name="PartGoto"
Part.Parent=PositionsFrame
Part.BackgroundColor3=Color3.fromRGB(46,46,47)
Part.BorderSizePixel=0
Part.Position=UDim2.new(0,5,0,150)
Part.Size=UDim2.new(0,40,0,20)
Part.Font=Enum.Font.SourceSans
Part.TextSize=14
Part.Text="Part"
Part.TextColor3=Color3.new(1,1,1)
Part.ZIndex=10
table.insert(shade2,Part)
table.insert(text1,Part)

Holder_4.Name="Holder"
Holder_4.Parent=PositionsFrame
Holder_4.BackgroundTransparency=1
Holder_4.BorderSizePixel=0
Holder_4.Position=UDim2.new(0,0,0,0)
Holder_4.Selectable=false
Holder_4.Size=UDim2.new(0,250,0,145)
Holder_4.ScrollBarImageColor3=Color3.fromRGB(78,78,79)
Holder_4.BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_4.CanvasSize=UDim2.new(0,0,0,0)
Holder_4.MidImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_4.ScrollBarThickness=0
Holder_4.TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_4.VerticalScrollBarInset='Always'
Holder_4.ZIndex=10

Example_4.Name="Example"
Example_4.Parent=PositionsFrame
Example_4.BackgroundColor3=Color3.fromRGB(46,46,47)
Example_4.BorderSizePixel=0
Example_4.Size=UDim2.new(0,10,0,20)
Example_4.Visible=false
Example_4.Position=UDim2.new(0,0,0,-5)
Example_4.ZIndex=10
table.insert(shade2,Example_4)

Text_5.Name="Text"
Text_5.Parent=Example_4
Text_5.BackgroundColor3=Color3.fromRGB(46,46,47)
Text_5.BorderSizePixel=0
Text_5.Position=UDim2.new(0,10,0,0)
Text_5.Size=UDim2.new(0,240,0,20)
Text_5.Font=Enum.Font.SourceSans
Text_5.TextSize=14
Text_5.Text="Position"
Text_5.TextColor3=Color3.new(1,1,1)
Text_5.TextXAlignment=Enum.TextXAlignment.Left
Text_5.ZIndex=10
table.insert(shade2,Text_5)
table.insert(text1,Text_5)

Delete_6.Name="Delete"
Delete_6.Parent=Text_5
Delete_6.BackgroundColor3=Color3.fromRGB(78,78,79)
Delete_6.BorderSizePixel=0
Delete_6.Position=UDim2.new(0,200,0,0)
Delete_6.Size=UDim2.new(0,40,0,20)
Delete_6.Font=Enum.Font.SourceSans
Delete_6.TextSize=14
Delete_6.Text="Delete"
Delete_6.TextColor3=Color3.new(0,0,0)
Delete_6.ZIndex=10
table.insert(shade3,Delete_6)
table.insert(text2,Delete_6)

TP.Name="TP"
TP.Parent=Text_5
TP.BackgroundColor3=Color3.fromRGB(78,78,79)
TP.BorderSizePixel=0
TP.Position=UDim2.new(0,155,0,0)
TP.Size=UDim2.new(0,40,0,20)
TP.Font=Enum.Font.SourceSans
TP.TextSize=14
TP.Text="Goto"
TP.TextColor3=Color3.new(0,0,0)
TP.ZIndex=10
table.insert(shade3,TP)
table.insert(text2,TP)

AliasesFrame.Name="AliasesFrame"
AliasesFrame.Parent=Settings
AliasesFrame.Active=true
AliasesFrame.BackgroundColor3=Color3.fromRGB(36,36,37)
AliasesFrame.BorderSizePixel=0
AliasesFrame.Position=UDim2.new(0,0,0,175)
AliasesFrame.Size=UDim2.new(0,250,0,175)
AliasesFrame.ZIndex=10
table.insert(shade1,AliasesFrame)

Close_2.Name="Close"
Close_2.Parent=AliasesFrame
Close_2.BackgroundColor3=Color3.fromRGB(46,46,47)
Close_2.BorderSizePixel=0
Close_2.Position=UDim2.new(0,205,0,150)
Close_2.Size=UDim2.new(0,40,0,20)
Close_2.Font=Enum.Font.SourceSans
Close_2.TextSize=14
Close_2.Text="Close"
Close_2.TextColor3=Color3.new(1,1,1)
Close_2.ZIndex=10
table.insert(shade2,Close_2)
table.insert(text1,Close_2)

Delete_3.Name="Delete"
Delete_3.Parent=AliasesFrame
Delete_3.BackgroundColor3=Color3.fromRGB(46,46,47)
Delete_3.BorderSizePixel=0
Delete_3.Position=UDim2.new(0,5,0,150)
Delete_3.Size=UDim2.new(0,40,0,20)
Delete_3.Font=Enum.Font.SourceSans
Delete_3.TextSize=14
Delete_3.Text="Clear"
Delete_3.TextColor3=Color3.new(1,1,1)
Delete_3.ZIndex=10
table.insert(shade2,Delete_3)
table.insert(text1,Delete_3)

Holder_3.Name="Holder"
Holder_3.Parent=AliasesFrame
Holder_3.BackgroundTransparency=1
Holder_3.BorderSizePixel=0
Holder_3.Position=UDim2.new(0,0,0,0)
Holder_3.Size=UDim2.new(0,250,0,145)
Holder_3.ScrollBarImageColor3=Color3.fromRGB(78,78,79)
Holder_3.BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_3.CanvasSize=UDim2.new(0,0,0,0)
Holder_3.MidImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_3.ScrollBarThickness=0
Holder_3.TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_3.VerticalScrollBarInset='Always'
Holder_3.ZIndex=10

Example_3.Name="Example"
Example_3.Parent=AliasesFrame
Example_3.BackgroundColor3=Color3.fromRGB(46,46,47)
Example_3.BorderSizePixel=0
Example_3.Size=UDim2.new(0,10,0,20)
Example_3.Visible=false
Example_3.ZIndex=10
table.insert(shade2,Example_3)

Text_4.Name="Text"
Text_4.Parent=Example_3
Text_4.BackgroundColor3=Color3.fromRGB(46,46,47)
Text_4.BorderSizePixel=0
Text_4.Position=UDim2.new(0,10,0,0)
Text_4.Size=UDim2.new(0,240,0,20)
Text_4.Font=Enum.Font.SourceSans
Text_4.TextSize=14
Text_4.Text="honk"
Text_4.TextColor3=Color3.new(1,1,1)
Text_4.TextXAlignment=Enum.TextXAlignment.Left
Text_4.ZIndex=10
table.insert(shade2,Text_4)
table.insert(text1,Text_4)

Delete_4.Name="Delete"
Delete_4.Parent=Text_4
Delete_4.BackgroundColor3=Color3.fromRGB(78,78,79)
Delete_4.BorderSizePixel=0
Delete_4.Position=UDim2.new(0,200,0,0)
Delete_4.Size=UDim2.new(0,40,0,20)
Delete_4.Font=Enum.Font.SourceSans
Delete_4.TextSize=14
Delete_4.Text="Delete"
Delete_4.TextColor3=Color3.new(0,0,0)
Delete_4.ZIndex=10
table.insert(shade3,Delete_4)
table.insert(text2,Delete_4)

PluginsFrame.Name="PluginsFrame"
PluginsFrame.Parent=Settings
PluginsFrame.Active=true
PluginsFrame.BackgroundColor3=Color3.fromRGB(36,36,37)
PluginsFrame.BorderSizePixel=0
PluginsFrame.Position=UDim2.new(0,0,0,175)
PluginsFrame.Size=UDim2.new(0,250,0,175)
PluginsFrame.ZIndex=10
table.insert(shade1,PluginsFrame)

Close_4.Name="Close"
Close_4.Parent=PluginsFrame
Close_4.BackgroundColor3=Color3.fromRGB(46,46,47)
Close_4.BorderSizePixel=0
Close_4.Position=UDim2.new(0,205,0,150)
Close_4.Size=UDim2.new(0,40,0,20)
Close_4.Font=Enum.Font.SourceSans
Close_4.TextSize=14
Close_4.Text="Close"
Close_4.TextColor3=Color3.new(1,1,1)
Close_4.ZIndex=10
table.insert(shade2,Close_4)
table.insert(text1,Close_4)

Add_3.Name="Add"
Add_3.Parent=PluginsFrame
Add_3.BackgroundColor3=Color3.fromRGB(46,46,47)
Add_3.BorderSizePixel=0
Add_3.Position=UDim2.new(0,5,0,150)
Add_3.Size=UDim2.new(0,40,0,20)
Add_3.Font=Enum.Font.SourceSans
Add_3.TextSize=14
Add_3.Text="Add"
Add_3.TextColor3=Color3.new(1,1,1)
Add_3.ZIndex=10
table.insert(shade2,Add_3)
table.insert(text1,Add_3)

Holder_5.Name="Holder"
Holder_5.Parent=PluginsFrame
Holder_5.BackgroundTransparency=1
Holder_5.BorderSizePixel=0
Holder_5.Position=UDim2.new(0,0,0,0)
Holder_5.Selectable=false
Holder_5.Size=UDim2.new(0,250,0,145)
Holder_5.ScrollBarImageColor3=Color3.fromRGB(78,78,79)
Holder_5.BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_5.CanvasSize=UDim2.new(0,0,0,0)
Holder_5.MidImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_5.ScrollBarThickness=0
Holder_5.TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
Holder_5.VerticalScrollBarInset='Always'
Holder_5.ZIndex=10

Example_5.Name="Example"
Example_5.Parent=PluginsFrame
Example_5.BackgroundColor3=Color3.fromRGB(46,46,47)
Example_5.BorderSizePixel=0
Example_5.Size=UDim2.new(0,10,0,20)
Example_5.Visible=false
Example_5.ZIndex=10
table.insert(shade2,Example_5)

Text_6.Name="Text"
Text_6.Parent=Example_5
Text_6.BackgroundColor3=Color3.fromRGB(46,46,47)
Text_6.BorderSizePixel=0
Text_6.Position=UDim2.new(0,10,0,0)
Text_6.Size=UDim2.new(0,240,0,20)
Text_6.Font=Enum.Font.SourceSans
Text_6.TextSize=14
Text_6.Text="F4 > Toggle Fly"
Text_6.TextColor3=Color3.new(1,1,1)
Text_6.TextXAlignment=Enum.TextXAlignment.Left
Text_6.ZIndex=10
table.insert(shade2,Text_6)
table.insert(text1,Text_6)

Delete_7.Name="Delete"
Delete_7.Parent=Text_6
Delete_7.BackgroundColor3=Color3.fromRGB(78,78,79)
Delete_7.BorderSizePixel=0
Delete_7.Position=UDim2.new(0,200,0,0)
Delete_7.Size=UDim2.new(0,40,0,20)
Delete_7.Font=Enum.Font.SourceSans
Delete_7.TextSize=14
Delete_7.Text="Delete"
Delete_7.TextColor3=Color3.new(0,0,0)
Delete_7.ZIndex=10
table.insert(shade3,Delete_7)
table.insert(text2,Delete_7)

PluginEditor.Name=randomString()
PluginEditor.Parent=ScaledHolder
PluginEditor.BorderSizePixel=0
PluginEditor.Active=true
PluginEditor.BackgroundTransparency=1
PluginEditor.Position=UDim2.new(0.5,-180,0,-500)
PluginEditor.Size=UDim2.new(0,360,0,20)
PluginEditor.ZIndex=10

background_3.Name="background"
background_3.Parent=PluginEditor
background_3.Active=true
background_3.BackgroundColor3=Color3.fromRGB(36,36,37)
background_3.BorderSizePixel=0
background_3.Position=UDim2.new(0,0,0,20)
background_3.Size=UDim2.new(0,360,0,160)
background_3.ZIndex=10
table.insert(shade1,background_3)

Dark_2.Name="Dark"
Dark_2.Parent=background_3
Dark_2.Active=true
Dark_2.BackgroundColor3=Color3.fromRGB(46,46,47)
Dark_2.BorderSizePixel=0
Dark_2.Position=UDim2.new(0,222,0,0)
Dark_2.Size=UDim2.new(0,2,0,160)
Dark_2.ZIndex=10
table.insert(shade2,Dark_2)

Img.Name="Img"
Img.Parent=background_3
Img.BackgroundTransparency=1
Img.Position=UDim2.new(0,242,0,3)
Img.Size=UDim2.new(0,100,0,95)
Img.Image=getcustomasset"infiniteyield/assets/imgstudiopluginlogo.png"
Img.ZIndex=10

AddPlugin.Name="AddPlugin"
AddPlugin.Parent=background_3
AddPlugin.BackgroundColor3=Color3.fromRGB(46,46,47)
AddPlugin.BorderSizePixel=0
AddPlugin.Position=UDim2.new(0,235,0,100)
AddPlugin.Size=UDim2.new(0,115,0,50)
AddPlugin.Font=Enum.Font.SourceSans
AddPlugin.TextSize=14
AddPlugin.Text="Add Plugin"
AddPlugin.TextColor3=Color3.new(1,1,1)
AddPlugin.ZIndex=10
table.insert(shade2,AddPlugin)
table.insert(text1,AddPlugin)

FileName.Name="FileName"
FileName.Parent=background_3
FileName.BackgroundColor3=Color3.fromRGB(46,46,47)
FileName.BorderSizePixel=0
FileName.Position=UDim2.new(0.028,0,0.625,0)
FileName.Size=UDim2.new(0,200,0,50)
FileName.Font=Enum.Font.SourceSans
FileName.TextSize=14
FileName.Text="Plugin File Name"
FileName.TextColor3=Color3.new(1,1,1)
FileName.ZIndex=10
table.insert(shade2,FileName)
table.insert(text1,FileName)

About.Name="About"
About.Parent=background_3
About.BackgroundTransparency=1
About.BorderSizePixel=0
About.Position=UDim2.new(0,17,0,10)
About.Size=UDim2.new(0,187,0,49)
About.Font=Enum.Font.SourceSans
About.TextSize=14
About.Text="Plugins are .iy files and should be located in the 'workspace' folder of your exploit."
About.TextColor3=Color3.fromRGB(255,255,255)
About.TextWrapped=true
About.TextYAlignment=Enum.TextYAlignment.Top
About.ZIndex=10
table.insert(text1,About)

Directions_2.Name="Directions"
Directions_2.Parent=background_3
Directions_2.BackgroundTransparency=1
Directions_2.BorderSizePixel=0
Directions_2.Position=UDim2.new(0,17,0,60)
Directions_2.Size=UDim2.new(0,187,0,49)
Directions_2.Font=Enum.Font.SourceSans
Directions_2.TextSize=14
Directions_2.Text="Type the name of the plugin file you want to add below."
Directions_2.TextColor3=Color3.fromRGB(255,255,255)
Directions_2.TextWrapped=true
Directions_2.TextYAlignment=Enum.TextYAlignment.Top
Directions_2.ZIndex=10
table.insert(text1,Directions_2)

shadow_3.Name="shadow"
shadow_3.Parent=PluginEditor
shadow_3.BackgroundColor3=Color3.fromRGB(46,46,47)
shadow_3.BorderSizePixel=0
shadow_3.Size=UDim2.new(0,360,0,20)
shadow_3.ZIndex=10
table.insert(shade2,shadow_3)

PopupText_3.Name="PopupText"
PopupText_3.Parent=shadow_3
PopupText_3.BackgroundTransparency=1
PopupText_3.Size=UDim2.new(1,0,0.95,0)
PopupText_3.ZIndex=10
PopupText_3.Font=Enum.Font.SourceSans
PopupText_3.TextSize=14
PopupText_3.Text="Add Plugins"
PopupText_3.TextColor3=Color3.new(1,1,1)
PopupText_3.TextWrapped=true
table.insert(text1,PopupText_3)

Exit_3.Name="Exit"
Exit_3.Parent=shadow_3
Exit_3.BackgroundTransparency=1
Exit_3.Position=UDim2.new(1,-20,0,0)
Exit_3.Size=UDim2.new(0,20,0,20)
Exit_3.Text=""
Exit_3.ZIndex=10

ExitImage_3.Parent=Exit_3
ExitImage_3.BackgroundColor3=Color3.new(1,1,1)
ExitImage_3.BackgroundTransparency=1
ExitImage_3.Position=UDim2.new(0,5,0,5)
ExitImage_3.Size=UDim2.new(0,10,0,10)
ExitImage_3.Image=getcustomasset"infiniteyield/assets/close.png"
ExitImage_3.ZIndex=10

AliasHint.Name="AliasHint"
AliasHint.Parent=AliasesFrame
AliasHint.BackgroundTransparency=1
AliasHint.BorderSizePixel=0
AliasHint.Position=UDim2.new(0,25,0,40)
AliasHint.Size=UDim2.new(0,200,0,50)
AliasHint.Font=Enum.Font.SourceSansItalic
AliasHint.TextSize=16
AliasHint.Text="Add aliases by using the 'addalias' command"
AliasHint.TextColor3=Color3.new(1,1,1)
AliasHint.TextStrokeColor3=Color3.new(1,1,1)
AliasHint.TextWrapped=true
AliasHint.ZIndex=10
table.insert(text1,AliasHint)

PluginsHint.Name="PluginsHint"
PluginsHint.Parent=PluginsFrame
PluginsHint.BackgroundTransparency=1
PluginsHint.BorderSizePixel=0
PluginsHint.Position=UDim2.new(0,25,0,40)
PluginsHint.Size=UDim2.new(0,200,0,50)
PluginsHint.Font=Enum.Font.SourceSansItalic
PluginsHint.TextSize=16
PluginsHint.Text="Download plugins from the IY Discord (discord.gg/78ZuWSq)"
PluginsHint.TextColor3=Color3.new(1,1,1)
PluginsHint.TextStrokeColor3=Color3.new(1,1,1)
PluginsHint.TextWrapped=true
PluginsHint.ZIndex=10
table.insert(text1,PluginsHint)

PositionsHint.Name="PositionsHint"
PositionsHint.Parent=PositionsFrame
PositionsHint.BackgroundTransparency=1
PositionsHint.BorderSizePixel=0
PositionsHint.Position=UDim2.new(0,25,0,40)
PositionsHint.Size=UDim2.new(0,200,0,70)
PositionsHint.Font=Enum.Font.SourceSansItalic
PositionsHint.TextSize=16
PositionsHint.Text="Use the 'swp' or 'setwaypoint' command to add a position using your character (NOTE: Part teleports will not save)"
PositionsHint.TextColor3=Color3.new(1,1,1)
PositionsHint.TextStrokeColor3=Color3.new(1,1,1)
PositionsHint.TextWrapped=true
PositionsHint.ZIndex=10
table.insert(text1,PositionsHint)

ToPartFrame.Name=randomString()
ToPartFrame.Parent=ScaledHolder
ToPartFrame.Active=true
ToPartFrame.BackgroundTransparency=1
ToPartFrame.Position=UDim2.new(0.5,-180,0,-500)
ToPartFrame.Size=UDim2.new(0,360,0,20)
ToPartFrame.ZIndex=10

background_4.Name="background"
background_4.Parent=ToPartFrame
background_4.Active=true
background_4.BackgroundColor3=Color3.fromRGB(36,36,37)
background_4.BorderSizePixel=0
background_4.Position=UDim2.new(0,0,0,20)
background_4.Size=UDim2.new(0,360,0,117)
background_4.ZIndex=10
table.insert(shade1,background_4)

ChoosePart.Name="ChoosePart"
ChoosePart.Parent=background_4
ChoosePart.BackgroundColor3=Color3.fromRGB(46,46,47)
ChoosePart.BorderSizePixel=0
ChoosePart.Position=UDim2.new(0,100,0,55)
ChoosePart.Size=UDim2.new(0,75,0,30)
ChoosePart.Font=Enum.Font.SourceSans
ChoosePart.TextSize=14
ChoosePart.Text="Select Part"
ChoosePart.TextColor3=Color3.new(1,1,1)
ChoosePart.ZIndex=10
table.insert(shade2,ChoosePart)
table.insert(text1,ChoosePart)

CopyPath.Name="CopyPath"
CopyPath.Parent=background_4
CopyPath.BackgroundColor3=Color3.fromRGB(46,46,47)
CopyPath.BorderSizePixel=0
CopyPath.Position=UDim2.new(0,185,0,55)
CopyPath.Size=UDim2.new(0,75,0,30)
CopyPath.Font=Enum.Font.SourceSans
CopyPath.TextSize=14
CopyPath.Text="Copy Path"
CopyPath.TextColor3=Color3.new(1,1,1)
CopyPath.ZIndex=10
table.insert(shade2,CopyPath)
table.insert(text1,CopyPath)

Directions_3.Name="Directions"
Directions_3.Parent=background_4
Directions_3.BackgroundTransparency=1
Directions_3.BorderSizePixel=0
Directions_3.Position=UDim2.new(0,51,0,17)
Directions_3.Size=UDim2.new(0,257,0,32)
Directions_3.Font=Enum.Font.SourceSans
Directions_3.TextSize=14
Directions_3.Text='Click on a part and then click the "Select Part" button below to set it as a teleport location'
Directions_3.TextColor3=Color3.new(1,1,1)
Directions_3.TextWrapped=true
Directions_3.TextYAlignment=Enum.TextYAlignment.Top
Directions_3.ZIndex=10
table.insert(text1,Directions_3)

Path.Name="Path"
Path.Parent=background_4
Path.BackgroundTransparency=1
Path.BorderSizePixel=0
Path.Position=UDim2.new(0,0,0,94)
Path.Size=UDim2.new(0,360,0,16)
Path.Font=Enum.Font.SourceSansItalic
Path.TextSize=14
Path.Text=""
Path.TextColor3=Color3.new(1,1,1)
Path.TextScaled=true
Path.TextWrapped=true
Path.TextYAlignment=Enum.TextYAlignment.Top
Path.ZIndex=10
table.insert(text1,Path)

shadow_4.Name="shadow"
shadow_4.Parent=ToPartFrame
shadow_4.BackgroundColor3=Color3.fromRGB(46,46,47)
shadow_4.BorderSizePixel=0
shadow_4.Size=UDim2.new(0,360,0,20)
shadow_4.ZIndex=10
table.insert(shade2,shadow_4)

PopupText_5.Name="PopupText"
PopupText_5.Parent=shadow_4
PopupText_5.BackgroundTransparency=1
PopupText_5.Size=UDim2.new(1,0,0.95,0)
PopupText_5.ZIndex=10
PopupText_5.Font=Enum.Font.SourceSans
PopupText_5.TextSize=14
PopupText_5.Text="Teleport to Part"
PopupText_5.TextColor3=Color3.new(1,1,1)
PopupText_5.TextWrapped=true
table.insert(text1,PopupText_5)

Exit_4.Name="Exit"
Exit_4.Parent=shadow_4
Exit_4.BackgroundTransparency=1
Exit_4.Position=UDim2.new(1,-20,0,0)
Exit_4.Size=UDim2.new(0,20,0,20)
Exit_4.Text=""
Exit_4.ZIndex=10

ExitImage_5.Parent=Exit_4
ExitImage_5.BackgroundColor3=Color3.new(1,1,1)
ExitImage_5.BackgroundTransparency=1
ExitImage_5.Position=UDim2.new(0,5,0,5)
ExitImage_5.Size=UDim2.new(0,10,0,10)
ExitImage_5.Image=getcustomasset"infiniteyield/assets/close.png"
ExitImage_5.ZIndex=10

logs.Name=randomString()
logs.Parent=ScaledHolder
logs.Active=true
logs.BackgroundTransparency=1
logs.Position=UDim2.new(0,0,1,10)
logs.Size=UDim2.new(0,338,0,20)
logs.ZIndex=10

shadow.Name="shadow"
shadow.Parent=logs
shadow.BackgroundColor3=Color3.new(0.180392,0.180392,0.184314)
shadow.BorderSizePixel=0
shadow.Position=UDim2.new(0,0,0.00999999978,0)
shadow.Size=UDim2.new(0,338,0,20)
shadow.ZIndex=10
table.insert(shade2,shadow)

Hide.Name="Hide"
Hide.Parent=shadow
Hide.BackgroundTransparency=1
Hide.Position=UDim2.new(1,-40,0,0)
Hide.Size=UDim2.new(0,20,0,20)
Hide.ZIndex=10
Hide.Text=""

ImageLabel.Parent=Hide
ImageLabel.BackgroundColor3=Color3.new(1,1,1)
ImageLabel.BackgroundTransparency=1
ImageLabel.Position=UDim2.new(0,3,0,3)
ImageLabel.Size=UDim2.new(0,14,0,14)
ImageLabel.Image=getcustomasset"infiniteyield/assets/minimize.png"
ImageLabel.ZIndex=10

PopupText.Name="PopupText"
PopupText.Parent=shadow
PopupText.BackgroundTransparency=1
PopupText.Size=UDim2.new(1,0,0.949999988,0)
PopupText.ZIndex=10
PopupText.Font=Enum.Font.SourceSans
PopupText.FontSize=Enum.FontSize.Size14
PopupText.Text="Logs"
PopupText.TextColor3=Color3.new(1,1,1)
PopupText.TextWrapped=true
table.insert(text1,PopupText)

Exit.Name="Exit"
Exit.Parent=shadow
Exit.BackgroundTransparency=1
Exit.Position=UDim2.new(1,-20,0,0)
Exit.Size=UDim2.new(0,20,0,20)
Exit.ZIndex=10
Exit.Text=""

ImageLabel_2.Parent=Exit
ImageLabel_2.BackgroundColor3=Color3.new(1,1,1)
ImageLabel_2.BackgroundTransparency=1
ImageLabel_2.Position=UDim2.new(0,5,0,5)
ImageLabel_2.Size=UDim2.new(0,10,0,10)
ImageLabel_2.Image=getcustomasset"infiniteyield/assets/close.png"
ImageLabel_2.ZIndex=10

background.Name="background"
background.Parent=logs
background.Active=true
background.BackgroundColor3=Color3.new(0.141176,0.141176,0.145098)
background.BorderSizePixel=0
background.ClipsDescendants=true
background.Position=UDim2.new(0,0,1,0)
background.Size=UDim2.new(0,338,0,245)
background.ZIndex=10

chat.Name="chat"
chat.Parent=background
chat.Active=true
chat.BackgroundColor3=Color3.new(0.141176,0.141176,0.145098)
chat.BorderSizePixel=0
chat.ClipsDescendants=true
chat.Size=UDim2.new(0,338,0,245)
chat.ZIndex=10
table.insert(shade1,chat)

Clear.Name="Clear"
Clear.Parent=chat
Clear.BackgroundColor3=Color3.new(0.180392,0.180392,0.184314)
Clear.BorderSizePixel=0
Clear.Position=UDim2.new(0,5,0,220)
Clear.Size=UDim2.new(0,50,0,20)
Clear.ZIndex=10
Clear.Font=Enum.Font.SourceSans
Clear.FontSize=Enum.FontSize.Size14
Clear.Text="Clear"
Clear.TextColor3=Color3.new(1,1,1)
table.insert(shade2,Clear)
table.insert(text1,Clear)

SaveChatlogs.Name="SaveChatlogs"
SaveChatlogs.Parent=chat
SaveChatlogs.BackgroundColor3=Color3.new(0.180392,0.180392,0.184314)
SaveChatlogs.BorderSizePixel=0
SaveChatlogs.Position=UDim2.new(0,258,0,220)
SaveChatlogs.Size=UDim2.new(0,75,0,20)
SaveChatlogs.ZIndex=10
SaveChatlogs.Font=Enum.Font.SourceSans
SaveChatlogs.FontSize=Enum.FontSize.Size14
SaveChatlogs.Text="Save To .txt"
SaveChatlogs.TextColor3=Color3.new(1,1,1)
table.insert(shade2,SaveChatlogs)
table.insert(text1,SaveChatlogs)

Toggle.Name="Toggle"
Toggle.Parent=chat
Toggle.BackgroundColor3=Color3.new(0.180392,0.180392,0.184314)
Toggle.BorderSizePixel=0
Toggle.Position=UDim2.new(0,60,0,220)
Toggle.Size=UDim2.new(0,66,0,20)
Toggle.ZIndex=10
Toggle.Font=Enum.Font.SourceSans
Toggle.FontSize=Enum.FontSize.Size14
Toggle.Text="Disabled"
Toggle.TextColor3=Color3.new(1,1,1)
table.insert(shade2,Toggle)
table.insert(text1,Toggle)

scroll_2.Name="scroll"
scroll_2.Parent=chat
scroll_2.BackgroundColor3=Color3.new(0.180392,0.180392,0.184314)
scroll_2.BorderSizePixel=0
scroll_2.Position=UDim2.new(0,5,0,25)
scroll_2.Size=UDim2.new(0,328,0,190)
scroll_2.ZIndex=10
scroll_2.BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
scroll_2.CanvasSize=UDim2.new(0,0,0,10)
scroll_2.ScrollBarThickness=8
scroll_2.TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
table.insert(scroll,scroll_2)
table.insert(shade2,scroll_2)

join.Name="join"
join.Parent=background
join.Active=true
join.BackgroundColor3=Color3.new(0.141176,0.141176,0.145098)
join.BorderSizePixel=0
join.ClipsDescendants=true
join.Size=UDim2.new(0,338,0,245)
join.Visible=false
join.ZIndex=10
table.insert(shade1,join)

Toggle_2.Name="Toggle"
Toggle_2.Parent=join
Toggle_2.BackgroundColor3=Color3.new(0.180392,0.180392,0.184314)
Toggle_2.BorderSizePixel=0
Toggle_2.Position=UDim2.new(0,60,0,220)
Toggle_2.Size=UDim2.new(0,66,0,20)
Toggle_2.ZIndex=10
Toggle_2.Font=Enum.Font.SourceSans
Toggle_2.FontSize=Enum.FontSize.Size14
Toggle_2.Text="Disabled"
Toggle_2.TextColor3=Color3.new(1,1,1)
table.insert(shade2,Toggle_2)
table.insert(text1,Toggle_2)

Clear_2.Name="Clear"
Clear_2.Parent=join
Clear_2.BackgroundColor3=Color3.new(0.180392,0.180392,0.184314)
Clear_2.BorderSizePixel=0
Clear_2.Position=UDim2.new(0,5,0,220)
Clear_2.Size=UDim2.new(0,50,0,20)
Clear_2.ZIndex=10
Clear_2.Font=Enum.Font.SourceSans
Clear_2.FontSize=Enum.FontSize.Size14
Clear_2.Text="Clear"
Clear_2.TextColor3=Color3.new(1,1,1)
table.insert(shade2,Clear_2)
table.insert(text1,Clear_2)

scroll_3.Name="scroll"
scroll_3.Parent=join
scroll_3.BackgroundColor3=Color3.new(0.180392,0.180392,0.184314)
scroll_3.BorderSizePixel=0
scroll_3.Position=UDim2.new(0,5,0,25)
scroll_3.Size=UDim2.new(0,328,0,190)
scroll_3.ZIndex=10
scroll_3.BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
scroll_3.CanvasSize=UDim2.new(0,0,0,10)
scroll_3.ScrollBarThickness=8
scroll_3.TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png"
table.insert(scroll,scroll_3)
table.insert(shade2,scroll_3)

selectChat.Name="selectChat"
selectChat.Parent=background
selectChat.BackgroundColor3=Color3.new(0.180392,0.180392,0.184314)
selectChat.BorderSizePixel=0
selectChat.Position=UDim2.new(0,5,0,5)
selectChat.Size=UDim2.new(0,164,0,20)
selectChat.ZIndex=10
selectChat.Font=Enum.Font.SourceSans
selectChat.FontSize=Enum.FontSize.Size14
selectChat.Text="Chat Logs"
selectChat.TextColor3=Color3.new(1,1,1)
table.insert(shade2,selectChat)
table.insert(text1,selectChat)

selectJoin.Name="selectJoin"
selectJoin.Parent=background
selectJoin.BackgroundColor3=Color3.new(0.305882,0.305882,0.309804)
selectJoin.BorderSizePixel=0
selectJoin.Position=UDim2.new(0,169,0,5)
selectJoin.Size=UDim2.new(0,164,0,20)
selectJoin.ZIndex=10
selectJoin.Font=Enum.Font.SourceSans
selectJoin.FontSize=Enum.FontSize.Size14
selectJoin.Text="Join Logs"
selectJoin.TextColor3=Color3.new(1,1,1)
table.insert(shade3,selectJoin)
table.insert(text1,selectJoin)

function create(b)
local c={}
for d,e in pairs(b)do c[e[1] ]=Instance.new(e[2])end

for d,e in pairs(b)do
for f,g in pairs(e[3])do
if type(g)=="table"then
c[e[1] ][f]=c[g[1] ]
else
c[e[1] ][f]=g
end
end
end

return c[1]
end

ViewportTextBox=(function()

local b={}
b.Update=function(c)
local d=c.TextBox.CursorPosition
local e=c.TextBox.Text
if e==""then c.TextBox.Position=UDim2.new(0,2,0,0)return end
if d==-1 then return end

local f=e:sub(1,d-1)
local g
local h=-c.TextBox.Position.X.Offset
local i=h+c.View.AbsoluteSize.X

local j=TextService:GetTextSize(e,c.TextBox.TextSize,c.TextBox.Font,Vector2.new(999999999,100)).X
local k=TextService:GetTextSize(f,c.TextBox.TextSize,c.TextBox.Font,Vector2.new(999999999,100)).X

if k>i then
g=math.max(-2,k-c.View.AbsoluteSize.X+2)
elseif k<h then
g=math.max(-2,k-2)
elseif j<i then
g=math.max(-2,j-c.View.AbsoluteSize.X+2)
end

if g then
c.TextBox.Position=UDim2.new(0,-g,0,0)
c.TextBox.Size=UDim2.new(1,g,1,0)
end
end

local c={}
c.__index=b

local function convert(d)
local e=setmetatable({OffsetX=0,TextBox=d},c)

local f=Instance.new"Frame"
f.BackgroundTransparency=d.BackgroundTransparency
f.BackgroundColor3=d.BackgroundColor3
f.BorderSizePixel=d.BorderSizePixel
f.BorderColor3=d.BorderColor3
f.Position=d.Position
f.Size=d.Size
f.ClipsDescendants=true
f.Name=d.Name
f.ZIndex=10
d.BackgroundTransparency=1
d.Position=UDim2.new(0,4,0,0)
d.Size=UDim2.new(1,-8,1,0)
d.TextXAlignment=Enum.TextXAlignment.Left
d.Name="Input"
table.insert(text1,d)
table.insert(shade2,f)

e.View=f

d.Changed:Connect(function(g)
if g=="Text"or g=="CursorPosition"or g=="AbsoluteSize"then
e:Update()
end
end)

e:Update()

f.Parent=d.Parent
d.Parent=f

return e
end

return{convert=convert}
end)()

ViewportTextBox.convert(Cmdbar).View.ZIndex=10
ViewportTextBox.convert(Cmdbar_2).View.ZIndex=10
ViewportTextBox.convert(Cmdbar_3).View.ZIndex=10

function writefileExploit()
if writefile then
return true
end
end

function readfileExploit()
if readfile then
return true
end
end

function isNumber(b)
if tonumber(b)~=nil or b=='inf'then
return true
end
end

function vtype(b,c)
if b==nil then return false end
if type(b)=="userdata"then return typeof(b)==c end
return type(b)==c
end

function getRoot(b)
local c=b:FindFirstChild'HumanoidRootPart'or b:FindFirstChild'Torso'or b:FindFirstChild'UpperTorso'
return c
end

function tools(b)
if b:FindFirstChildOfClass"Backpack":FindFirstChildOfClass'Tool'or b.Character:FindFirstChildOfClass'Tool'then
return true
end
end

function r15(b)
if b.Character:FindFirstChildOfClass'Humanoid'.RigType==Enum.HumanoidRigType.R15 then
return true
end
end

function toClipboard(b)
if everyClipboard then
everyClipboard(tostring(b))
notify("Clipboard","Copied to clipboard")
else
notify("Clipboard","Your exploit doesn't have the ability to use the clipboard")
end
end

function chatMessage(b)
b=tostring(b)
if not isLegacyChat then
TextChatService.TextChannels.RBXGeneral:SendAsync(b)
else
ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(b,"All")
end
end

function getHierarchy(b)
local c
local d

if string.find(b.Name,' ')then
c='["'..b.Name..'"]'
d=false
else
c=b.Name
d=true
end

local e=b
local f=b
local g=''

if e.Parent~=game then
repeat
e=e.Parent
g=e.ClassName
until e.Parent==game
end

if f.Parent~=e then
repeat
f=f.Parent
if string.find(tostring(f),' ')then
if d then
c='["'..f.Name..'"].'..c
else
c='["'..f.Name..'"]'..c
end
d=false
else
if d then
c=f.Name..'.'..c
else
c=f.Name..''..c
end
d=true
end
until f.Parent==e
elseif string.find(tostring(f),' ')then
c='["'..f.Name..'"]'
d=false
end

if d then
return'game:GetService("'..g..'").'..c
else
return'game:GetService("'..g..'")'..c
end
end

AllWaypoints={}

local b=false
function writefileCooldown(c,d)
task.spawn(function()
if not b then
b=true
writefile(c,d,true)
else
repeat wait()until b==false
writefileCooldown(c,d)
end
wait(3)
b=false
end)
end

function dragGUI(c)
task.spawn(function()
local d
local e
local f=Vector3.new(0,0,0)
local g
local function update(h)
local i=h.Position-f
local j=UDim2.new(g.X.Scale,g.X.Offset+i.X,g.Y.Scale,g.Y.Offset+i.Y)
TweenService:Create(c,TweenInfo.new(.20),{Position=j}):Play()
end
c.InputBegan:Connect(function(h)
if h.UserInputType==Enum.UserInputType.MouseButton1 or h.UserInputType==Enum.UserInputType.Touch then
d=true
f=h.Position
g=c.Position

h.Changed:Connect(function()
if h.UserInputState==Enum.UserInputState.End then
d=false
end
end)
end
end)
c.InputChanged:Connect(function(h)
if h.UserInputType==Enum.UserInputType.MouseMovement or h.UserInputType==Enum.UserInputType.Touch then
e=h
end
end)
UserInputService.InputChanged:Connect(function(h)
if h==e and d then
update(h)
end
end)
end)
end

dragGUI(logs)
dragGUI(KeybindEditor)
dragGUI(PluginEditor)
dragGUI(ToPartFrame)

eventEditor=(function()
local c={}

local function registerEvent(d,e)
c[d]={
commands={},
sets=e or{}
}
end

local d

local function fireEvent(e,...)
local f={...}
local g=c[e]
if g then
for h,i in pairs(g.commands)do
local j=true
for k,l in pairs(g.sets)do
local m=f[k]
local n=i[2][k]
local o=l.Type
if o=="Player"then
if n==0 then
j=j and(tostring(Players.LocalPlayer)==m)
elseif n~=1 then
j=j and table.find(getPlayer(n,Players.LocalPlayer),m)
end
elseif o=="String"then
if n~=0 then
j=j and string.find(m:lower(),n:lower())
end
elseif o=="Number"then
if n~=0 then
j=j and tonumber(m)<=tonumber(n)
end
end
if not j then break end
end

if j then
pcall(task.spawn(function()
local k=i[1]
for l,m in pairs(f)do
k=k:gsub("%$"..l,m)
end
wait(i[3]or 0)
execCmd(k)
end))
end
end
end
end

local e=create{
{1,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderSizePixel=0,Name="EventEditor",Position=UDim2.new(0.5,-175,0,-500),Size=UDim2.new(0,350,0,20),ZIndex=10,}},
{2,"Frame",{BackgroundColor3=currentShade2,BorderSizePixel=0,Name="TopBar",Parent={1},Size=UDim2.new(1,0,0,20),ZIndex=10,}},
{3,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={2},Position=UDim2.new(0,0,0,0),Size=UDim2.new(1,0,0.95,0),Text="Event Editor",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=Enum.TextXAlignment.Center,ZIndex=10,}},
{4,"TextButton",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Close",Parent={2},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
{5,"ImageLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Image=getcustomasset"infiniteyield/assets/close.png",Parent={4},Position=UDim2.new(0,5,0,5),Size=UDim2.new(0,10,0,10),ZIndex=10,}},
{6,"Frame",{BackgroundColor3=currentShade1,BorderSizePixel=0,Name="Content",Parent={1},Position=UDim2.new(0,0,0,20),Size=UDim2.new(1,0,0,202),ZIndex=10,}},
{7,"ScrollingFrame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png",CanvasSize=UDim2.new(0,0,0,100),Name="List",Parent={6},Position=UDim2.new(0,5,0,5),ScrollBarImageColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),ScrollBarThickness=8,Size=UDim2.new(1,-10,1,-10),TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png",ZIndex=10,}},
{8,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Holder",Parent={7},Size=UDim2.new(1,0,1,0),ZIndex=10,}},
{9,"UIListLayout",{Parent={8},SortOrder=2,}},
{10,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderColor3=Color3.new(0.3137255012989,0.3137255012989,0.3137255012989),BorderSizePixel=0,ClipsDescendants=true,Name="Settings",Parent={6},Position=UDim2.new(1,0,0,0),Size=UDim2.new(0,150,1,0),ZIndex=10,}},
{11,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),Name="Slider",Parent={10},Position=UDim2.new(0,-150,0,0),Size=UDim2.new(1,0,1,0),ZIndex=10,}},
{12,"Frame",{BackgroundColor3=Color3.new(0.23529413342476,0.23529413342476,0.23529413342476),BorderColor3=Color3.new(0.3137255012989,0.3137255012989,0.3137255012989),BorderSizePixel=0,Name="Line",Parent={11},Size=UDim2.new(0,1,1,0),ZIndex=10,}},
{13,"ScrollingFrame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png",CanvasSize=UDim2.new(0,0,0,100),Name="List",Parent={11},Position=UDim2.new(0,0,0,25),ScrollBarImageColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),ScrollBarThickness=8,Size=UDim2.new(1,0,1,-25),TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png",ZIndex=10,}},
{14,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Holder",Parent={13},Size=UDim2.new(1,0,1,0),ZIndex=10,}},
{15,"UIListLayout",{Parent={14},SortOrder=2,}},
{16,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={11},Size=UDim2.new(1,0,0,20),Text="Event Settings",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
{17,"TextButton",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),Font=3,Name="Close",BorderSizePixel=0,Parent={11},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),Text="<",TextColor3=Color3.new(1,1,1),TextSize=18,ZIndex=10,}},
{18,"Folder",{Name="Templates",Parent={10},}},
{19,"Frame",{BackgroundColor3=Color3.new(0.19607844948769,0.19607844948769,0.19607844948769),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),Name="Players",Parent={18},Position=UDim2.new(0,0,0,25),Size=UDim2.new(1,0,0,86),Visible=false,ZIndex=10,}},
{20,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={19},Size=UDim2.new(1,0,0,20),Text="Choose Players",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
{21,"TextLabel",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="Any",Parent={19},Position=UDim2.new(0,5,0,42),Size=UDim2.new(1,-10,0,20),Text="Any Player",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
{22,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="Button",Parent={21},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
{23,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={22},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
{24,"TextLabel",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="Me",Parent={19},Position=UDim2.new(0,5,0,20),Size=UDim2.new(1,-10,0,20),Text="Me Only",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
{25,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="Button",Parent={24},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
{26,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={25},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
{27,"TextBox",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,ClearTextOnFocus=false,Font=3,Name="Custom",Parent={19},PlaceholderColor3=Color3.new(0.47058826684952,0.47058826684952,0.47058826684952),PlaceholderText="Custom Player Set",Position=UDim2.new(0,5,0,64),Size=UDim2.new(1,-35,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
{28,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="CustomButton",Parent={19},Position=UDim2.new(1,-25,0,64),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
{29,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={28},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
{30,"Frame",{BackgroundColor3=Color3.new(0.19607844948769,0.19607844948769,0.19607844948769),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),Name="Strings",Parent={18},Position=UDim2.new(0,0,0,25),Size=UDim2.new(1,0,0,64),Visible=false,ZIndex=10,}},
{31,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={30},Size=UDim2.new(1,0,0,20),Text="Choose String",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
{32,"TextLabel",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="Any",Parent={30},Position=UDim2.new(0,5,0,20),Size=UDim2.new(1,-10,0,20),Text="Any String",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
{33,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="Button",Parent={32},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
{34,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={33},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
{54,"Frame",{BackgroundColor3=Color3.new(0.19607844948769,0.19607844948769,0.19607844948769),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),Name="Numbers",Parent={18},Position=UDim2.new(0,0,0,25),Size=UDim2.new(1,0,0,64),Visible=false,ZIndex=10,}},
{55,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={54},Size=UDim2.new(1,0,0,20),Text="Choose String",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
{56,"TextLabel",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="Any",Parent={54},Position=UDim2.new(0,5,0,20),Size=UDim2.new(1,-10,0,20),Text="Any Number",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
{57,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="Button",Parent={56},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
{58,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={57},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
{59,"TextBox",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,ClearTextOnFocus=false,Font=3,Name="Custom",Parent={54},PlaceholderColor3=Color3.new(0.47058826684952,0.47058826684952,0.47058826684952),PlaceholderText="Number",Position=UDim2.new(0,5,0,42),Size=UDim2.new(1,-35,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
{60,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="CustomButton",Parent={54},Position=UDim2.new(1,-25,0,42),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
{61,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={60},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
{35,"TextBox",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,ClearTextOnFocus=false,Font=3,Name="Custom",Parent={30},PlaceholderColor3=Color3.new(0.47058826684952,0.47058826684952,0.47058826684952),PlaceholderText="Match String",Position=UDim2.new(0,5,0,42),Size=UDim2.new(1,-35,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
{36,"Frame",{BackgroundColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),BorderSizePixel=0,Name="CustomButton",Parent={30},Position=UDim2.new(1,-25,0,42),Size=UDim2.new(0,20,0,20),ZIndex=10,}},
{37,"TextButton",{BackgroundColor3=Color3.new(0.58823531866074,0.58823531866074,0.59215688705444),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="On",Parent={36},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),Text="",TextColor3=Color3.new(0,0,0),TextSize=14,ZIndex=10,}},
{38,"Frame",{BackgroundColor3=Color3.new(0.19607844948769,0.19607844948769,0.19607844948769),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),Name="DelayEditor",Parent={18},Position=UDim2.new(0,0,0,25),Size=UDim2.new(1,0,0,24),Visible=false,ZIndex=10,}},
{39,"TextBox",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,Font=3,Name="Secs",Parent={38},PlaceholderColor3=Color3.new(0.47058826684952,0.47058826684952,0.47058826684952),Position=UDim2.new(0,60,0,2),Size=UDim2.new(1,-65,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
{40,"TextLabel",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Font=3,Name="Label",Parent={39},Position=UDim2.new(0,-55,0,0),Size=UDim2.new(1,0,1,0),Text="Delay (s):",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
{41,"Frame",{BackgroundColor3=currentShade1,BorderSizePixel=0,ClipsDescendants=true,Name="EventTemplate",Parent={6},Size=UDim2.new(1,0,0,20),Visible=false,ZIndex=10,}},
{42,"TextButton",{BackgroundColor3=currentText1,BackgroundTransparency=1,Font=3,Name="Expand",Parent={41},Size=UDim2.new(0,20,0,20),Text=">",TextColor3=Color3.new(1,1,1),TextSize=18,ZIndex=10,}},
{43,"TextLabel",{BackgroundColor3=currentText1,BackgroundTransparency=1,Font=3,Name="EventName",Parent={41},Position=UDim2.new(0,25,0,0),Size=UDim2.new(1,-25,0,20),Text="OnSpawn",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
{44,"Frame",{BackgroundColor3=Color3.new(0.19607844948769,0.19607844948769,0.19607844948769),BorderSizePixel=0,BackgroundTransparency=1,ClipsDescendants=true,Name="Cmds",Parent={41},Position=UDim2.new(0,0,0,20),Size=UDim2.new(1,0,1,-20),ZIndex=10,}},
{45,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BorderColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),Name="Add",Parent={44},Position=UDim2.new(0,0,1,-20),Size=UDim2.new(1,0,0,20),ZIndex=10,}},
{46,"TextBox",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,ClearTextOnFocus=false,Font=3,Parent={45},PlaceholderColor3=Color3.new(0.7843137383461,0.7843137383461,0.7843137383461),PlaceholderText="Add new command",Position=UDim2.new(0,5,0,0),Size=UDim2.new(1,-10,1,0),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=0,ZIndex=10,}},
{47,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Holder",Parent={44},Size=UDim2.new(1,0,1,-20),ZIndex=10,}},
{48,"UIListLayout",{Parent={47},SortOrder=2,}},
{49,"Frame",{currentShade1,BorderSizePixel=0,ClipsDescendants=true,Name="CmdTemplate",Parent={6},Size=UDim2.new(1,0,0,20),Visible=false,ZIndex=10,}},
{50,"TextBox",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,ClearTextOnFocus=false,Font=3,Parent={49},PlaceholderColor3=Color3.new(1,1,1),Position=UDim2.new(0,5,0,0),Size=UDim2.new(1,-45,0,20),Text="a\\b\\c\\d",TextColor3=currentText1,TextSize=14,TextXAlignment=0,ZIndex=10,}},
{51,"TextButton",{BackgroundColor3=currentShade1,BorderSizePixel=0,Font=3,Name="Delete",Parent={49},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),Text="X",TextColor3=Color3.new(1,1,1),TextSize=18,ZIndex=10,}},
{52,"TextButton",{BackgroundColor3=currentShade1,BorderSizePixel=0,Font=3,Name="Settings",Parent={49},Position=UDim2.new(1,-40,0,0),Size=UDim2.new(0,20,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=18,ZIndex=10,}},
{53,"ImageLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Image=getcustomasset"infiniteyield/assets/settings.png",Parent={52},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),ZIndex=10,}},
}
e.Name=randomString()
local f=e:WaitForChild"Content"
local g=f:WaitForChild"List"
local h=g:WaitForChild"Holder"
local i=f:WaitForChild"CmdTemplate"
local j=f:WaitForChild"EventTemplate"
local k=f:WaitForChild"Settings":WaitForChild"Slider"
local l=f.Settings:WaitForChild"Templates"
local m=k:WaitForChild"List":WaitForChild"Holder"
table.insert(shade2,e.TopBar)table.insert(shade1,f)table.insert(shade2,j)
table.insert(text1,j.EventName)table.insert(shade1,j.Cmds.Add)table.insert(shade1,i)
table.insert(text1,i.TextBox)table.insert(shade2,i.Delete)table.insert(shade2,i.Settings)
table.insert(scroll,f.List)table.insert(shade1,k)table.insert(shade2,k.Line)
table.insert(shade2,k.Close)table.insert(scroll,k.List)table.insert(shade2,l.DelayEditor.Secs)
table.insert(text1,l.DelayEditor.Secs)table.insert(text1,l.DelayEditor.Secs.Label)table.insert(text1,l.Players.Title)
table.insert(shade3,l.Players.CustomButton)table.insert(shade2,l.Players.Custom)table.insert(text1,l.Players.Custom)
table.insert(shade3,l.Players.Any.Button)table.insert(shade3,l.Players.Me.Button)table.insert(text1,l.Players.Any)
table.insert(text1,l.Players.Me)table.insert(text1,l.Strings.Title)table.insert(text1,l.Strings.Any)
table.insert(shade3,l.Strings.Any.Button)table.insert(shade3,l.Strings.CustomButton)table.insert(text1,l.Strings.Custom)
table.insert(shade2,l.Strings.Custom)
table.insert(text1,l.Players.Me)table.insert(text1,l.Numbers.Title)table.insert(text1,l.Numbers.Any)
table.insert(shade3,l.Numbers.Any.Button)table.insert(shade3,l.Numbers.CustomButton)table.insert(text1,l.Numbers.Custom)
table.insert(shade2,l.Numbers.Custom)

local n=TweenInfo.new(0.25,Enum.EasingStyle.Quart,Enum.EasingDirection.Out)

local o

k:WaitForChild"Close".MouseButton1Click:Connect(function()
k:TweenPosition(UDim2.new(0,-150,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
end)

local function resizeList()
local p=0

for q,r in pairs(h:GetChildren())do
if r.Name=="EventTemplate"then
p=p+20
if r.Expand.Rotation==90 then
p=p+20*(1+(#c[r.EventName:GetAttribute"RawName"].commands or 0))
end
end
end

TweenService:Create(g,n,{CanvasSize=UDim2.new(0,0,0,p)}):Play()

if p>g.AbsoluteSize.Y then
h.Size=UDim2.new(1,-8,1,0)
else
h.Size=UDim2.new(1,0,1,0)
end
end

local function resizeSettingsList()
local p=0

for q,r in pairs(m:GetChildren())do
if r:IsA"Frame"then
p=p+r.AbsoluteSize.Y
end
end

m.Parent.CanvasSize=UDim2.new(0,0,0,p)

if p>m.Parent.AbsoluteSize.Y then
m.Size=UDim2.new(1,-8,1,0)
else
m.Size=UDim2.new(1,0,1,0)
end
end

local function setupCheckbox(p,q)
local r=p.On.BackgroundTransparency==0

local function update()
p.On.BackgroundTransparency=(r and 0 or 1)
end

p.On.MouseButton1Click:Connect(function()
r=not r
update()
if q then q(r)end
end)

return{
Toggle=function(s)r=not r update()if not s and q then q(r)end end,
Enable=function(s)if r then return end r=true update()if not s and q then q(r)end end,
Disable=function(s)if not r then return end r=false update()if not s and q then q(r)end end,
IsEnabled=function()return r end
}
end

local function openSettingsEditor(p,q)
o=q

for r,s in pairs(m:GetChildren())do if s:IsA"Frame"then s:Destroy()end end

local r=l.DelayEditor:Clone()
r.Secs.FocusLost:Connect(function()
q[3]=tonumber(r.Secs.Text)or 0
r.Secs.Text=q[3]
if d then d()end
end)
r.Secs.Text=q[3]
r.Visible=true
table.insert(shade2,r.Secs)
table.insert(text1,r.Secs)
table.insert(text1,r.Secs.Label)
r.Parent=m

for s,t in pairs(p.sets)do
if t.Type=="Player"then
local u=l.Players:Clone()
u.Title.Text=t.Name or"Player"

local v,w,x

v=setupCheckbox(u.Me.Button,function(y)
if not y then return end
w.Disable()
x.Disable()
q[2][s]=0
if d then d()end
end)

w=setupCheckbox(u.Any.Button,function(y)
if not y then return end
v.Disable()
x.Disable()
q[2][s]=1
if d then d()end
end)

local y=u.Custom
x=setupCheckbox(u.CustomButton,function(z)
if not z then return end
v.Disable()
w.Disable()
q[2][s]=y.Text
if d then d()end
end)

ViewportTextBox.convert(y)
y.FocusLost:Connect(function()
if x:IsEnabled()then
q[2][s]=y.Text
if d then d()end
end
end)

local z=q[2][s]
if z==0 then
v:Enable()
elseif z==1 then
w:Enable()
else
x:Enable()
y.Text=z
end

u.Visible=true
table.insert(text1,u.Title)
table.insert(shade3,u.CustomButton)
table.insert(shade3,u.Any.Button)
table.insert(shade3,u.Me.Button)
table.insert(text1,u.Any)
table.insert(text1,u.Me)
u.Parent=m
elseif t.Type=="String"then
local u=l.Strings:Clone()
u.Title.Text=t.Name or"String"

local v,w

v=setupCheckbox(u.Any.Button,function(x)
if not x then return end
w.Disable()
q[2][s]=0
if d then d()end
end)

local x=u.Custom
w=setupCheckbox(u.CustomButton,function(y)
if not y then return end
v.Disable()
q[2][s]=x.Text
if d then d()end
end)

ViewportTextBox.convert(x)
x.FocusLost:Connect(function()
if w:IsEnabled()then
q[2][s]=x.Text
if d then d()end
end
end)

local y=q[2][s]
if y==0 then
v:Enable()
else
w:Enable()
x.Text=y
end

u.Visible=true
table.insert(text1,u.Title)
table.insert(text1,u.Any)
table.insert(shade3,u.Any.Button)
table.insert(shade3,u.CustomButton)
u.Parent=m
elseif t.Type=="Number"then
local u=l.Numbers:Clone()
u.Title.Text=t.Name or"Number"

local v,w

v=setupCheckbox(u.Any.Button,function(x)
if not x then return end
w.Disable()
q[2][s]=0
if d then d()end
end)

local x=u.Custom
w=setupCheckbox(u.CustomButton,function(y)
if not y then return end
v.Disable()
q[2][s]=x.Text
if d then d()end
end)

ViewportTextBox.convert(x)
x.FocusLost:Connect(function()
q[2][s]=tonumber(x.Text)or 0
x.Text=q[2][s]
if w:IsEnabled()then
if d then d()end
end
end)

local y=q[2][s]
if y==0 then
v:Enable()
else
w:Enable()
x.Text=y
end

u.Visible=true
table.insert(text1,u.Title)
table.insert(text1,u.Any)
table.insert(shade3,u.Any.Button)
table.insert(shade3,u.CustomButton)
u.Parent=m
end
end
resizeSettingsList()
k:TweenPosition(UDim2.new(0,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
end

local function defaultSettings(p)
local q={}

for r,s in pairs(p.sets)do
if s.Type=="Player"then
q[#q+1]=s.Default or 0
elseif s.Type=="String"then
q[#q+1]=s.Default or 0
elseif s.Type=="Number"then
q[#q+1]=s.Default or 0
end
end

return q
end

local function refreshList()
for p,q in pairs(h:GetChildren())do if q:IsA"Frame"then q:Destroy()end end

for p,q in pairs(c)do
local r=j:Clone()
r.EventName.Text=p
r.Visible=true
r.EventName:SetAttribute("RawName",p)
table.insert(shade2,r)
table.insert(text1,r.EventName)
table.insert(shade1,r.Cmds.Add)

local s=false
r.Expand.MouseButton1Down:Connect(function()
s=not s
r:TweenSize(UDim2.new(1,0,0,20+(s and 20*#r.Cmds.Holder:GetChildren()or 0)),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
r.Expand.Rotation=s and 90 or 0
resizeList()
end)

local function refreshCommands()
for t,u in pairs(r.Cmds.Holder:GetChildren())do
if u.Name=="CmdTemplate"then
u:Destroy()
end
end

r.EventName.Text=p..(#q.commands>0 and" ("..#q.commands..")"or"")

for t,u in pairs(q.commands)do
local v=i:Clone()
local w=v.TextBox
ViewportTextBox.convert(w)
w.Text=u[1]
v.Visible=true
table.insert(shade1,v)
table.insert(shade2,v.Delete)
table.insert(shade2,v.Settings)

w.FocusLost:Connect(function()
q.commands[t]={w.Text,u[2],u[3]}
if d then d()end
end)

v.Settings.MouseButton1Click:Connect(function()
openSettingsEditor(q,u)
end)

v.Delete.MouseButton1Click:Connect(function()
table.remove(q.commands,t)
refreshCommands()
resizeList()

if o==u then
k:TweenPosition(UDim2.new(0,-150,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
end
if d then d()end
end)

v.Parent=r.Cmds.Holder
end

r:TweenSize(UDim2.new(1,0,0,20+(s and 20*#r.Cmds.Holder:GetChildren()or 0)),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
end

local t=r.Cmds.Add.TextBox
ViewportTextBox.convert(t)
t.FocusLost:Connect(function(u)
if u then
q.commands[#q.commands+1]={t.Text,defaultSettings(q),0}
t.Text=""

refreshCommands()
resizeList()
if d then d()end
end
end)



r.Parent=h

refreshCommands()
end

resizeList()
end

local function saveData()
local p={}
for q,r in pairs(c)do
p[q]=r.commands
end
return HttpService:JSONEncode(p)
end

local function loadData(p)
local q=HttpService:JSONDecode(p)
for r,s in pairs(q)do
if c[r]then
c[r].commands=s
end
end
end

local function addCmd(p,q)
table.insert(c[p].commands,q)
end

local function setOnEdited(p)
if type(p)=="function"then
d=p
end
end

e.TopBar.Close.MouseButton1Click:Connect(function()
e:TweenPosition(UDim2.new(0.5,-175,0,-500),"InOut","Quart",0.5,true,nil)
end)
dragGUI(e)
e.Parent=ScaledHolder

return{
RegisterEvent=registerEvent,
FireEvent=fireEvent,
Refresh=refreshList,
SaveData=saveData,
LoadData=loadData,
AddCmd=addCmd,
Frame=e,
SetOnEdited=setOnEdited
}
end)()

reference=(function()
local c=create{
{1,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,Name="Main",Position=UDim2.new(0.5,-250,0,-500),Size=UDim2.new(0,500,0,20),ZIndex=10,}},
{2,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="TopBar",Parent={1},Size=UDim2.new(1,0,0,20),ZIndex=10,}},
{3,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={2},Size=UDim2.new(1,0,0.94999998807907,0),Text="Reference",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
{4,"TextButton",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Close",Parent={2},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
{5,"ImageLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Image=getcustomasset"infiniteyield/assets/close.png",Parent={4},Position=UDim2.new(0,5,0,5),Size=UDim2.new(0,10,0,10),ZIndex=10,}},
{6,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BorderSizePixel=0,Name="Content",Parent={1},Position=UDim2.new(0,0,0,20),Size=UDim2.new(1,0,0,300),ZIndex=10,}},
{7,"ScrollingFrame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,BottomImage="rbxasset://textures/ui/Scroll/scroll-middle.png",CanvasSize=UDim2.new(0,0,0,1313),Name="List",Parent={6},ScrollBarImageColor3=Color3.new(0.30588236451149,0.30588236451149,0.3098039329052),ScrollBarThickness=8,Size=UDim2.new(1,0,1,0),TopImage="rbxasset://textures/ui/Scroll/scroll-middle.png",VerticalScrollBarInset=2,ZIndex=10,}},
{8,"UIListLayout",{Parent={7},SortOrder=2,}},
{9,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,429),ZIndex=10,}},
{10,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={9},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Special Player Cases",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
{11,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={9},Position=UDim2.new(0,8,0,25),Size=UDim2.new(1,-8,0,20),Text="These keywords can be used to quickly select groups of players in commands:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{12,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={9},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
{13,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Cases",Parent={9},Position=UDim2.new(0,8,0,55),Size=UDim2.new(1,-16,0,342),ZIndex=10,}},
{14,"UIListLayout",{Parent={13},SortOrder=2,}},
{15,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=-4,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{16,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={15},Size=UDim2.new(1,0,1,0),Text="all",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{17,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={15},Position=UDim2.new(0,15,0,0),Size=UDim2.new(1,0,1,0),Text="- includes everyone",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{18,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=-3,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{19,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={18},Size=UDim2.new(1,0,1,0),Text="others",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{20,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={18},Position=UDim2.new(0,37,0,0),Size=UDim2.new(1,0,1,0),Text="- includes everyone except you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{21,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=-2,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{22,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={21},Size=UDim2.new(1,0,1,0),Text="me",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{23,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={21},Position=UDim2.new(0,19,0,0),Size=UDim2.new(1,0,1,0),Text="- includes your player only",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{24,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{25,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={24},Size=UDim2.new(1,0,1,0),Text="#[number]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{26,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={24},Position=UDim2.new(0,59,0,0),Size=UDim2.new(1,0,1,0),Text="- gets a specified amount of random players",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{27,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{28,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={27},Size=UDim2.new(1,0,1,0),Text="random",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{29,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={27},Position=UDim2.new(0,44,0,0),Size=UDim2.new(1,0,1,0),Text="- affects a random player",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{30,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{31,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={30},Size=UDim2.new(1,0,1,0),Text="%[team name]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{32,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={30},Position=UDim2.new(0,78,0,0),Size=UDim2.new(1,0,1,0),Text="- includes everyone on a given team",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{33,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{34,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={33},Size=UDim2.new(1,0,1,0),Text="allies / team",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{35,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={33},Position=UDim2.new(0,63,0,0),Size=UDim2.new(1,0,1,0),Text="- players who are on your team",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{36,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{37,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={36},Size=UDim2.new(1,0,1,0),Text="enemies / nonteam",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{38,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={36},Position=UDim2.new(0,101,0,0),Size=UDim2.new(1,0,1,0),Text="- players who are not on your team",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{39,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{40,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={39},Size=UDim2.new(1,0,1,0),Text="friends",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{41,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={39},Position=UDim2.new(0,40,0,0),Size=UDim2.new(1,0,1,0),Text="- anyone who is friends with you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{42,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{43,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={42},Size=UDim2.new(1,0,1,0),Text="nonfriends",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{44,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={42},Position=UDim2.new(0,61,0,0),Size=UDim2.new(1,0,1,0),Text="- anyone who is not friends with you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{45,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{46,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={45},Size=UDim2.new(1,0,1,0),Text="guests",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{47,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={45},Position=UDim2.new(0,36,0,0),Size=UDim2.new(1,0,1,0),Text="- guest players (obsolete)",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{48,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{49,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={48},Size=UDim2.new(1,0,1,0),Text="bacons",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{50,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={48},Position=UDim2.new(0,40,0,0),Size=UDim2.new(1,0,1,0),Text="- anyone with the \"bacon\" or pal hair",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{51,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{52,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={51},Size=UDim2.new(1,0,1,0),Text="age[number]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{53,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={51},Position=UDim2.new(0,71,0,0),Size=UDim2.new(1,0,1,0),Text="- includes anyone below or at the given age",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{54,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{55,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={54},Size=UDim2.new(1,0,1,0),Text="rad[number]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{56,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={54},Position=UDim2.new(0,70,0,0),Size=UDim2.new(1,0,1,0),Text="- includes anyone within the given radius",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{57,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{58,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={57},Size=UDim2.new(1,0,1,0),Text="nearest",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{59,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={57},Position=UDim2.new(0,43,0,0),Size=UDim2.new(1,0,1,0),Text="- gets the closest player to you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{60,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{61,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={60},Size=UDim2.new(1,0,1,0),Text="farthest",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{62,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={60},Position=UDim2.new(0,46,0,0),Size=UDim2.new(1,0,1,0),Text="- gets the farthest player from you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{63,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{64,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={63},Size=UDim2.new(1,0,1,0),Text="group[ID]",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{65,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={63},Position=UDim2.new(0,55,0,0),Size=UDim2.new(1,0,1,0),Text="- gets players who are in a certain group",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{66,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{67,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={66},Size=UDim2.new(1,0,1,0),Text="alive",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{68,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={66},Position=UDim2.new(0,27,0,0),Size=UDim2.new(1,0,1,0),Text="- gets players who are alive",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{69,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{70,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={69},Size=UDim2.new(1,0,1,0),Text="dead",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{71,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={69},Position=UDim2.new(0,29,0,0),Size=UDim2.new(1,0,1,0),Text="- gets players who are dead",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{72,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BackgroundTransparency=1,BorderSizePixel=0,LayoutOrder=-1,Name="Case",Parent={13},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,0,0,18),ZIndex=10,}},
{73,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="CaseName",Parent={72},Size=UDim2.new(1,0,1,0),Text="@username",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{74,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="CaseDesc",Parent={72},Position=UDim2.new(0,66,0,0),Size=UDim2.new(1,0,1,0),Text="- searches for players by username only (ignores displaynames)",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{75,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,180),ZIndex=10,}},
{76,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={75},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Various Operators",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
{77,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={75},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
{78,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={75},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,16),Text="Use commas to separate multiple expressions:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
{79,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={75},Position=UDim2.new(0,8,0,75),Size=UDim2.new(1,-8,0,16),Text="Use - to exclude, and + to include players in your expression:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
{80,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={75},Position=UDim2.new(0,8,0,91),Size=UDim2.new(1,-8,0,16),Text=";locate %blue-friends (gets players in blue team who aren't your friends)",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
{81,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={75},Position=UDim2.new(0,8,0,46),Size=UDim2.new(1,-8,0,16),Text=";locate noob,noob2,bob",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
{82,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={75},Position=UDim2.new(0,8,0,120),Size=UDim2.new(1,-8,0,16),Text="Put ! before a command to run it with the last arguments it was ran with:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
{83,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={75},Position=UDim2.new(0,8,0,136),Size=UDim2.new(1,-8,0,32),Text="After running ;offset 0 100 0,  you can run !offset anytime to repeat that command with the same arguments that were used to run it last time",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
{84,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,154),ZIndex=10,}},
{85,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={84},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Command Looping",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
{86,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={84},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,20),Text="Form: [How many times it loops]^[delay (optional)]^[command]",TextColor3=Color3.new(1,1,1),TextSize=15,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{87,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={84},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
{88,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={84},Position=UDim2.new(0,8,0,50),Size=UDim2.new(1,-8,0,20),Text="Use the 'breakloops' command to stop all running loops.",TextColor3=Color3.new(1,1,1),TextSize=15,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{89,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={84},Position=UDim2.new(0,8,0,80),Size=UDim2.new(1,-8,0,16),Text="Examples:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
{90,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={84},Position=UDim2.new(0,8,0,98),Size=UDim2.new(1,-8,0,42),Text=";5^btools - gives you 5 sets of btools\n;10^3^drophats - drops your hats every 3 seconds 10 times\n;inf^0.1^animspeed 100 - infinitely loops your animation speed to 100",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
{91,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,120),ZIndex=10,}},
{92,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={91},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Execute Multiple Commands at Once",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
{93,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={91},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,20),Text="You can execute multiple commands at once using \"\\\"",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{94,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={91},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
{95,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={91},Position=UDim2.new(0,8,0,60),Size=UDim2.new(1,-8,0,16),Text="Examples:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
{96,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={91},Position=UDim2.new(0,8,0,78),Size=UDim2.new(1,-8,0,32),Text=";drophats\\respawn - drops your hats and respawns you\n;enable inventory\\enable playerlist\\refresh - enables those coregui items and refreshes you",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
{97,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,75),ZIndex=10,}},
{98,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={97},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Browse Command History",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
{99,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={97},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,32),Text="While focused on the command bar, you can use the up and down arrow keys to browse recently used commands",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{100,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={97},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
{101,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,75),ZIndex=10,}},
{102,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={101},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Autocomplete in the Command Bar",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
{103,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={101},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,32),Text="While focused on the command bar, you can use the tab key to insert the top suggested command into the command bar.",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{104,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={101},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
{105,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,175),ZIndex=10,}},
{106,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={105},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Using Event Binds",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
{107,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={105},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,32),Text="Use event binds to set up commands that get executed when certain events happen. You can edit the conditions for an event command to run (such as which player triggers it).",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{108,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={105},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),ZIndex=10,}},
{109,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={105},Position=UDim2.new(0,8,0,70),Size=UDim2.new(1,-8,0,48),Text="Some events may send arguments; you can use them in your event command by using $ followed by the argument number ($1, $2, etc). You can find out the order and types of these arguments by looking at the settings of the event command.",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{110,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Text",Parent={105},Position=UDim2.new(0,8,0,130),Size=UDim2.new(1,-8,0,16),Text="Example:",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
{111,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={105},Position=UDim2.new(0,8,0,148),Size=UDim2.new(1,-8,0,16),Text="Setting up 'goto $1' on the OnChatted event will teleport you to any player that chats.",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,TextYAlignment=0,ZIndex=10,}},
{112,"Frame",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Name="Section",Parent={7},Size=UDim2.new(1,0,0,105),ZIndex=10,}},
{113,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=4,Name="Header",Parent={112},Position=UDim2.new(0,8,0,5),Size=UDim2.new(1,-8,0,20),Text="Get Further Help",TextColor3=Color3.new(1,1,1),TextSize=20,TextXAlignment=0,ZIndex=10,}},
{114,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Text",Parent={112},Position=UDim2.new(0,8,0,30),Size=UDim2.new(1,-8,0,32),Text="You can join the Discord server to get support with IY,  and read up on more documentation such as the Plugin API.",TextColor3=Color3.new(1,1,1),TextSize=14,TextWrapped=true,TextXAlignment=0,ZIndex=10,}},
{115,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="Line",Parent={112},Position=UDim2.new(0,10,1,-1),Size=UDim2.new(1,-20,0,1),Visible=false,ZIndex=10,}},
{116,"TextButton",{BackgroundColor3=Color3.new(0.48627451062202,0.61960786581039,0.85098040103912),BorderColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),Font=4,Name="InviteButton",Parent={112},Position=UDim2.new(0,5,0,75),Size=UDim2.new(1,-10,0,25),Text="Copy Discord Invite Link (https://dsc.gg/beignet)",TextColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),TextSize=16,ZIndex=10,}},
}
for d,e in pairs(c.Content.List:GetDescendants())do
if e:IsA"TextLabel"then
table.insert(text1,e)
end
end
table.insert(scroll,c.Content.List)
table.insert(shade1,c.Content)
table.insert(shade2,c.TopBar)
c.Name=randomString()
c.TopBar.Close.MouseButton1Click:Connect(function()
c:TweenPosition(UDim2.new(0.5,-250,0,-500),"InOut","Quart",0.5,true,nil)
end)
local d=c:FindFirstChild("InviteButton",true)
local e
d.MouseButton1Click:Connect(function()
if everyClipboard then
toClipboard"https://dsc.gg/beignet"
d.Text="Copied"
else
d.Text="No Clipboard Function, type out the link"
end
local f=tick()
e=f
wait(2)
if e~=f then return end
d.Text="Copy Discord Invite Link (https://dsc.gg/beignet)"
end)
dragGUI(c)
c.Parent=ScaledHolder

ReferenceButton.MouseButton1Click:Connect(function()
c:TweenPosition(UDim2.new(0.5,-250,0.5,-150),"InOut","Quart",0.5,true,nil)
end)
end)()

currentShade1=Color3.fromRGB(36,36,37)
currentShade2=Color3.fromRGB(46,46,47)
currentShade3=Color3.fromRGB(78,78,79)
currentText1=Color3.new(1,1,1)
currentText2=Color3.new(0,0,0)
currentScroll=Color3.fromRGB(78,78,79)

defaultGuiScale=IsOnMobile and 0.9 or 1
defaultsettings={
prefix=';';
StayOpen=false;
guiScale=defaultGuiScale;
espTransparency=0.3;
keepIY=true;
logsEnabled=false;
jLogsEnabled=false;
aliases={};
binds={};
WayPoints={};
PluginsTable={};
currentShade1={currentShade1.R,currentShade1.G,currentShade1.B};
currentShade2={currentShade2.R,currentShade2.G,currentShade2.B};
currentShade3={currentShade3.R,currentShade3.G,currentShade3.B};
currentText1={currentText1.R,currentText1.G,currentText1.B};
currentText2={currentText2.R,currentText2.G,currentText2.B};
currentScroll={currentScroll.R,currentScroll.G,currentScroll.B};
eventBinds=eventEditor.SaveData()
}

defaults=HttpService:JSONEncode(defaultsettings)
nosaves=false
useFactorySettings=function()
prefix=';'
StayOpen=false
guiScale=defaultGuiScale
KeepInfYield=true
espTransparency=0.3
logsEnabled=false
jLogsEnabled=false
logsWebhook=nil
aliases={}
binds={}
WayPoints={}
PluginsTable={}
end

createPopup=function(c)
local d=Instance.new"Frame"
local e=Instance.new"Frame"
local f=Instance.new"TextLabel"
local g=Instance.new"Frame"
local h=Instance.new"TextLabel"
local i=Instance.new"TextButton"
local j=Instance.new"ImageLabel"

d.Name=randomString()
d.Parent=ScaledHolder
d.Active=true
d.BackgroundTransparency=1
d.Position=UDim2.new(0.5,-180,0,290)
d.Size=UDim2.new(0,360,0,20)
d.ZIndex=10

e.Name="background"
e.Parent=d
e.Active=true
e.BackgroundColor3=Color3.fromRGB(36,36,37)
e.BorderSizePixel=0
e.Position=UDim2.new(0,0,0,20)
e.Size=UDim2.new(0,360,0,205)
e.ZIndex=10

f.Name="Directions"
f.Parent=e
f.BackgroundTransparency=1
f.BorderSizePixel=0
f.Position=UDim2.new(0,10,0,10)
f.Size=UDim2.new(0,340,0,185)
f.Font=Enum.Font.SourceSans
f.TextSize=14
f.Text=c
f.TextColor3=Color3.new(1,1,1)
f.TextWrapped=true
f.TextXAlignment=Enum.TextXAlignment.Left
f.TextYAlignment=Enum.TextYAlignment.Top
f.ZIndex=10

g.Name="shadow"
g.Parent=d
g.BackgroundColor3=Color3.fromRGB(46,46,47)
g.BorderSizePixel=0
g.Size=UDim2.new(0,360,0,20)
g.ZIndex=10

h.Name="PopupText"
h.Parent=g
h.BackgroundTransparency=1
h.Size=UDim2.new(1,0,0.95,0)
h.ZIndex=10
h.Font=Enum.Font.SourceSans
h.TextSize=14
h.Text="File Error"
h.TextColor3=Color3.new(1,1,1)
h.TextWrapped=true

i.Name="Exit"
i.Parent=g
i.BackgroundTransparency=1
i.Position=UDim2.new(1,-20,0,0)
i.Size=UDim2.new(0,20,0,20)
i.Text=""
i.ZIndex=10

j.Parent=i
j.BackgroundColor3=Color3.new(1,1,1)
j.BackgroundTransparency=1
j.Position=UDim2.new(0,5,0,5)
j.Size=UDim2.new(0,10,0,10)
j.Image=getcustomasset"infiniteyield/assets/close.png"
j.ZIndex=10

i.MouseButton1Click:Connect(function()
d:Destroy()
end)
end

local c
local d=0
function saves()
if writefileExploit()and readfileExploit()and d<10 then
local e,f=readfile("IY_FE.iy",true)
if e then
if f~=nil and tostring(f):gsub("%s","")~=""then
local g,h=pcall(function()
local g=HttpService:JSONDecode(f)
if vtype(g.prefix,"string")then prefix=g.prefix else prefix=';'end
if vtype(g.StayOpen,"boolean")then StayOpen=g.StayOpen else StayOpen=false end
if vtype(g.guiScale,"number")then guiScale=g.guiScale else guiScale=defaultGuiScale end
if vtype(g.keepIY,"boolean")then KeepInfYield=g.keepIY else KeepInfYield=true end
if vtype(g.espTransparency,"number")then espTransparency=g.espTransparency else espTransparency=0.3 end
if vtype(g.logsEnabled,"boolean")then logsEnabled=g.logsEnabled else logsEnabled=false end
if vtype(g.jLogsEnabled,"boolean")then jLogsEnabled=g.jLogsEnabled else jLogsEnabled=false end
if vtype(g.logsWebhook,"string")then logsWebhook=g.logsWebhook else logsWebhook=nil end
if vtype(g.aliases,"table")then aliases=g.aliases else aliases={}end
if vtype(g.binds,"table")then binds=g.binds else binds={}end
if vtype(g.spawnCmds,"table")then spawnCmds=g.spawnCmds end
if vtype(g.WayPoints,"table")then AllWaypoints=g.WayPoints else WayPoints={}AllWaypoints={}end
if vtype(g.PluginsTable,"table")then PluginsTable=g.PluginsTable else PluginsTable={}end
if vtype(g.currentShade1,"table")then currentShade1=Color3.new(g.currentShade1[1],g.currentShade1[2],g.currentShade1[3])end
if vtype(g.currentShade2,"table")then currentShade2=Color3.new(g.currentShade2[1],g.currentShade2[2],g.currentShade2[3])end
if vtype(g.currentShade3,"table")then currentShade3=Color3.new(g.currentShade3[1],g.currentShade3[2],g.currentShade3[3])end
if vtype(g.currentText1,"table")then currentText1=Color3.new(g.currentText1[1],g.currentText1[2],g.currentText1[3])end
if vtype(g.currentText2,"table")then currentText2=Color3.new(g.currentText2[1],g.currentText2[2],g.currentText2[3])end
if vtype(g.currentScroll,"table")then currentScroll=Color3.new(g.currentScroll[1],g.currentScroll[2],g.currentScroll[3])end
if vtype(g.eventBinds,"string")then c=g.eventBinds end
end)
if not g then
d=d+1
warn("Save Json Error:",h)
warn"Overwriting Save File"
writefile("IY_FE.iy",defaults,true)
wait()
saves()
end
else
writefile("IY_FE.iy",defaults,true)
wait()
local g,h=readfile("IY_FE.iy",true)
if g and h~=nil and tostring(h):gsub("%s","")~=""then
saves()
else
nosaves=true
useFactorySettings()
createPopup"There was a problem writing a save file to your PC.\n\nPlease contact the developer/support team for your exploit and tell them writefile/readfile is not working.\n\nYour settings, keybinds, waypoints, and aliases will not save if you continue.\n\nThings to try:\n> Make sure a 'workspace' folder is located in the same folder as your exploit\n> If your exploit is inside of a zip/rar file, extract it.\n> Rejoin the game and try again or restart your PC and try again."
end
end
else
writefile("IY_FE.iy",defaults,true)
wait()
local g,h=readfile("IY_FE.iy",true)
if g and h~=nil and tostring(h):gsub("%s","")~=""then
saves()
else
nosaves=true
useFactorySettings()
createPopup"There was a problem writing a save file to your PC.\n\nPlease contact the developer/support team for your exploit and tell them writefile/readfile is not working.\n\nYour settings, keybinds, waypoints, and aliases will not save if you continue.\n\nThings to try:\n> Make sure a 'workspace' folder is located in the same folder as your exploit\n> If your exploit is inside of a zip/rar file, extract it.\n> Rejoin the game and try again or restart your PC and try again."
end
end
else
if d>=10 then
nosaves=true
useFactorySettings()
createPopup"Sorry, we have attempted to parse your save file, but it is unreadable!\n\nZero Yield is now using factory settings until your exploit's file system works.\n\nYour save file has not been deleted."
else
nosaves=true
useFactorySettings()
end
end
end

saves()

function updatesaves()
if nosaves==false and writefileExploit()then
local e={
prefix=prefix;
StayOpen=StayOpen;
guiScale=guiScale;
keepIY=KeepInfYield;
espTransparency=espTransparency;
logsEnabled=logsEnabled;
jLogsEnabled=jLogsEnabled;
logsWebhook=logsWebhook;
aliases=aliases;
binds=binds or{};
WayPoints=AllWaypoints;
PluginsTable=PluginsTable;
currentShade1={currentShade1.R,currentShade1.G,currentShade1.B};
currentShade2={currentShade2.R,currentShade2.G,currentShade2.B};
currentShade3={currentShade3.R,currentShade3.G,currentShade3.B};
currentText1={currentText1.R,currentText1.G,currentText1.B};
currentText2={currentText2.R,currentText2.G,currentText2.B};
currentScroll={currentScroll.R,currentScroll.G,currentScroll.B};
eventBinds=eventEditor.SaveData()
}
writefileCooldown("IY_FE.iy",HttpService:JSONEncode(e))
end
end

eventEditor.SetOnEdited(updatesaves)

pWayPoints={}
WayPoints={}

if#AllWaypoints>0 then
for e=1,#AllWaypoints do
if not AllWaypoints[e].GAME or AllWaypoints[e].GAME==PlaceId then
WayPoints[#WayPoints+1]={NAME=AllWaypoints[e].NAME,COORD={AllWaypoints[e].COORD[1],AllWaypoints[e].COORD[2],AllWaypoints[e].COORD[3]},GAME=AllWaypoints[e].GAME}
end
end
end

if type(binds)~="table"then binds={}end

if type(PluginsTable)=="table"then
for e=#PluginsTable,1,-1 do
if string.sub(PluginsTable[e],-3)~=".iy"then
table.remove(PluginsTable,e)
end
end
end

function Time()
local e=math.floor((tick()%86400)/3600)
local f=math.floor((tick()%3600)/60)
local g=math.floor(tick()%60)
local h=e>11 and'PM'or'AM'
e=(e%12==0 and 12 or e%12)
e=e<10 and'0'..e or e
f=f<10 and'0'..f or f
g=g<10 and'0'..g or g
return e..':'..f..':'..g..' '..h
end

PrefixBox.Text=prefix
local e=false
local f=false

if StayOpen==false then
On.BackgroundTransparency=1
else
On.BackgroundTransparency=0
end

if logsEnabled then
Toggle.Text='Enabled'
else
Toggle.Text='Disabled'
end

if jLogsEnabled then
Toggle_2.Text='Enabled'
else
Toggle_2.Text='Disabled'
end

function maximizeHolder()
if StayOpen==false then
Holder:TweenPosition(UDim2.new(1,Holder.Position.X.Offset,1,-220),"InOut","Quart",0.2,true,nil)
end
end

minimizeNum=-20
function minimizeHolder()
if StayOpen==false then
Holder:TweenPosition(UDim2.new(1,Holder.Position.X.Offset,1,minimizeNum),"InOut","Quart",0.5,true,nil)
end
end

function cmdbarHolder()
if StayOpen==false then
Holder:TweenPosition(UDim2.new(1,Holder.Position.X.Offset,1,-45),"InOut","Quart",0.5,true,nil)
end
end

pinNotification=nil
local g=0
function notify(h,i,j)
task.spawn(function()
local k=g+1
local l=false
g=g+1
if pinNotification then pinNotification:Disconnect()end
pinNotification=PinButton.MouseButton1Click:Connect(function()
task.spawn(function()
pinNotification:Disconnect()
l=true
Title_2.BackgroundTransparency=1
wait(0.5)
Title_2.BackgroundTransparency=0
end)
end)
Notification:TweenPosition(UDim2.new(1,Notification.Position.X.Offset,1,0),"InOut","Quart",0.5,true,nil)
wait(0.6)
local m=false
if i then
Title_2.Text=h
Text_2.Text=i
else
Title_2.Text='Notification'
Text_2.Text=h
end
Notification:TweenPosition(UDim2.new(1,Notification.Position.X.Offset,1,-100),"InOut","Quart",0.5,true,nil)
CloseButton.MouseButton1Click:Connect(function()
Notification:TweenPosition(UDim2.new(1,Notification.Position.X.Offset,1,0),"InOut","Quart",0.5,true,nil)
m=true
pinNotification:Disconnect()
end)
if j and isNumber(j)then
wait(j)
else
wait(10)
end
if k==g then
if m==false and l==false then
pinNotification:Disconnect()
Notification:TweenPosition(UDim2.new(1,Notification.Position.X.Offset,1,0),"InOut","Quart",0.5,true,nil)
end
g=0
end
end)
end

local h
local i
local j=1
function CreateLabel(k,l)
if h==k..l then
j=j+1
i.Text=Time()..' - ['..k..']: '..l..' (x'..j..')'
else
if j>1 then j=1 end
if#scroll_2:GetChildren()>=2546 then
scroll_2:ClearAllChildren()
end
local m=0
for n,o in pairs(scroll_2:GetChildren())do
if o then
m=o.Size.Y.Offset+m
end
if not o then
m=0
end
end
local n=Instance.new'TextLabel'
h=k..l
i=n
n.Name=k
n.Parent=scroll_2
n.ZIndex=10
n.RichText=true
n.Text=Time().." - ["..k.."]: "..l
n.Text=n.ContentText
n.Size=UDim2.new(0,322,0,84)
n.BackgroundTransparency=1
n.BorderSizePixel=0
n.Font="SourceSans"
n.Position=UDim2.new(-1,0,0,m)
n.TextTransparency=1
n.TextScaled=false
n.TextSize=14
n.TextWrapped=true
n.TextXAlignment="Left"
n.TextYAlignment="Top"
n.TextColor3=currentText1
n.Size=UDim2.new(0,322,0,n.TextBounds.Y)
table.insert(text1,n)
scroll_2.CanvasSize=UDim2.new(0,0,0,m+n.TextBounds.Y)
scroll_2.CanvasPosition=Vector2.new(0,scroll_2.CanvasPosition.Y+n.TextBounds.Y)
n:TweenPosition(UDim2.new(0,3,0,m),'In','Quint',0.5)
TweenService:Create(n,TweenInfo.new(1.25,Enum.EasingStyle.Linear),{TextTransparency=0}):Play()
end
end

function CreateJoinLabel(k,l)
if#scroll_3:GetChildren()>=2546 then
scroll_3:ClearAllChildren()
end
local m=Instance.new"Frame"
local n=Instance.new"TextLabel"
local o=Instance.new"TextLabel"
local p=Instance.new"ImageLabel"
m.Name=randomString()
m.Parent=scroll_3
m.BackgroundColor3=Color3.new(1,1,1)
m.BackgroundTransparency=1
m.BorderColor3=Color3.new(0.105882,0.164706,0.207843)
m.Size=UDim2.new(1,0,0,50)
n.Name=randomString()
n.Parent=m
n.BackgroundTransparency=1
n.BorderSizePixel=0
n.Position=UDim2.new(0,45,0,0)
n.Size=UDim2.new(0,135,1,0)
n.ZIndex=10
n.Font=Enum.Font.SourceSans
n.FontSize=Enum.FontSize.Size14
n.Text="Username: "..k.Name.."\nJoined Server: "..Time()
n.TextColor3=Color3.new(1,1,1)
n.TextWrapped=true
n.TextXAlignment=Enum.TextXAlignment.Left
o.Name=randomString()
o.Parent=m
o.BackgroundTransparency=1
o.BorderSizePixel=0
o.Position=UDim2.new(0,185,0,0)
o.Size=UDim2.new(0,140,1,-5)
o.ZIndex=10
o.Font=Enum.Font.SourceSans
o.FontSize=Enum.FontSize.Size14
o.Text="User ID: "..l.."\nAccount Age: "..k.AccountAge.."\nJoined Roblox: Loading..."
o.TextColor3=Color3.new(1,1,1)
o.TextWrapped=true
o.TextXAlignment=Enum.TextXAlignment.Left
o.TextYAlignment=Enum.TextYAlignment.Center
p.Parent=m
p.BackgroundTransparency=1
p.BorderSizePixel=0
p.Size=UDim2.new(0,45,1,0)
p.Image=Players:GetUserThumbnailAsync(l,Enum.ThumbnailType.AvatarThumbnail,Enum.ThumbnailSize.Size420x420)
scroll_3.CanvasSize=UDim2.new(0,0,0,listlayout.AbsoluteContentSize.Y)
scroll_3.CanvasPosition=Vector2.new(0,scroll_2.CanvasPosition.Y+m.AbsoluteSize.Y)
wait()
local q=game:HttpGet("https://users.roblox.com/v1/users/"..l)
local r=HttpService:JSONDecode(q)
local s=r.created:sub(1,10)
local t=string.split(s,"-")
o.Text=string.gsub(o.Text,"Loading...",t[2].."/"..t[3].."/"..t[1])
end

IYMouse.KeyDown:Connect(function(k)
if(k==prefix)then
RunService.RenderStepped:Wait()
Cmdbar:CaptureFocus()
maximizeHolder()
end
end)

local k=0
Holder.MouseEnter:Connect(function()
k=0
maximizeHolder()
end)

Holder.MouseLeave:Connect(function()
if not Cmdbar:IsFocused()then
local l=tick()
k=l
wait(1)
if k~=l then return end
if not Cmdbar:IsFocused()then
minimizeHolder()
end
end
end)

function updateColors(l,m)
if m==shade1 then
for n,o in pairs(shade1)do
o.BackgroundColor3=l
end
currentShade1=l
elseif m==shade2 then
for n,o in pairs(shade2)do
o.BackgroundColor3=l
end
currentShade2=l
elseif m==shade3 then
for n,o in pairs(shade3)do
o.BackgroundColor3=l
end
currentShade3=l
elseif m==text1 then
for n,o in pairs(text1)do
o.TextColor3=l
if o:IsA"TextBox"then
o.PlaceholderColor3=l
end
end
currentText1=l
elseif m==text2 then
for n,o in pairs(text2)do
o.TextColor3=l
end
currentText2=l
elseif m==scroll then
for n,o in pairs(scroll)do
o.ScrollBarImageColor3=l
end
currentScroll=l
end
end

local l=false
ColorsButton.MouseButton1Click:Connect(function()
cache_currentShade1=currentShade1
cache_currentShade2=currentShade2
cache_currentShade3=currentShade3
cache_currentText1=currentText1
cache_currentText2=currentText2
cache_currentScroll=currentScroll
if not l then
l=true
picker=game:GetObjects"rbxassetid://4908465318"[1]
picker.Name=randomString()
picker.Parent=ScaledHolder

local m do
m={}

m.new=function()
local n=setmetatable({},{})

local o=picker.ColorPicker
local p=o.TopBar
local q=p.Exit
local r=o.Content
local s=r.ColorSpaceFrame.ColorSpace
local t=r.ColorStrip
local u=r.Preview
local v=r.BasicColors
local w=r.CustomColors
local x=r.Default
local y=r.Cancel
local z=r.Shade1
local A=r.Shade2
local B=r.Shade3
local C=r.Text1
local D=r.Text2
local E=r.Scroll

local F=s.Scope
local G=r.ArrowFrame.Arrow

local H=r.Hue.Input
local I=r.Sat.Input
local J=r.Val.Input

local K=r.Red.Input
local L=r.Green.Input
local M=r.Blue.Input

local N=IYMouse

local O,P,Q=0,0,1
local R,S,T=1,1,1
local U=Color3.new(0,0,0)

local V={Color3.new(0,0,0),Color3.new(0.66666668653488,0,0),Color3.new(0,0.33333334326744,0),Color3.new(0.66666668653488,0.33333334326744,0),Color3.new(0,0.66666668653488,0),Color3.new(0.66666668653488,0.66666668653488,0),Color3.new(0,1,0),Color3.new(0.66666668653488,1,0),Color3.new(0,0,0.49803924560547),Color3.new(0.66666668653488,0,0.49803924560547),Color3.new(0,0.33333334326744,0.49803924560547),Color3.new(0.66666668653488,0.33333334326744,0.49803924560547),Color3.new(0,0.66666668653488,0.49803924560547),Color3.new(0.66666668653488,0.66666668653488,0.49803924560547),Color3.new(0,1,0.49803924560547),Color3.new(0.66666668653488,1,0.49803924560547),Color3.new(0,0,1),Color3.new(0.66666668653488,0,1),Color3.new(0,0.33333334326744,1),Color3.new(0.66666668653488,0.33333334326744,1),Color3.new(0,0.66666668653488,1),Color3.new(0.66666668653488,0.66666668653488,1),Color3.new(0,1,1),Color3.new(0.66666668653488,1,1),Color3.new(0.33333334326744,0,0),Color3.new(1,0,0),Color3.new(0.33333334326744,0.33333334326744,0),Color3.new(1,0.33333334326744,0),Color3.new(0.33333334326744,0.66666668653488,0),Color3.new(1,0.66666668653488,0),Color3.new(0.33333334326744,1,0),Color3.new(1,1,0),Color3.new(0.33333334326744,0,0.49803924560547),Color3.new(1,0,0.49803924560547),Color3.new(0.33333334326744,0.33333334326744,0.49803924560547),Color3.new(1,0.33333334326744,0.49803924560547),Color3.new(0.33333334326744,0.66666668653488,0.49803924560547),Color3.new(1,0.66666668653488,0.49803924560547),Color3.new(0.33333334326744,1,0.49803924560547),Color3.new(1,1,0.49803924560547),Color3.new(0.33333334326744,0,1),Color3.new(1,0,1),Color3.new(0.33333334326744,0.33333334326744,1),Color3.new(1,0.33333334326744,1),Color3.new(0.33333334326744,0.66666668653488,1),Color3.new(1,0.66666668653488,1),Color3.new(0.33333334326744,1,1),Color3.new(1,1,1)}
local W={}

dragGUI(picker)

local function updateColor(X)
local Y,Z,_=219-O*219,199-P*199,199-Q*199
Color3.fromHSV(O,P,Q)

if X==2 or not X then
H.Text=tostring(math.ceil(359*O))
I.Text=tostring(math.ceil(255*P))
J.Text=tostring(math.floor(255*Q))
end
if X==1 or not X then
K.Text=tostring(math.floor(255*R))
L.Text=tostring(math.floor(255*S))
M.Text=tostring(math.floor(255*T))
end

U=Color3.new(R,S,T)

F.Position=UDim2.new(0,Y-9,0,Z-9)
t.ImageColor3=Color3.fromHSV(O,P,1)
G.Position=UDim2.new(0,-2,0,_-4)
u.BackgroundColor3=U

n.Color=U
if n.Changed then n:Changed(U)end
end

local function colorSpaceInput()
local X=N.X-s.AbsolutePosition.X
local Y=N.Y-s.AbsolutePosition.Y

if X<0 then X=0 elseif X>219 then X=219 end
if Y<0 then Y=0 elseif Y>199 then Y=199 end

O=(219-X)/219
P=(199-Y)/199

local Z=Color3.fromHSV(O,P,Q)
R,S,T=Z.r,Z.g,Z.b

updateColor()
end

local function colorStripInput()
local X=N.Y-t.AbsolutePosition.Y

if X<0 then X=0 elseif X>199 then X=199 end

Q=(199-X)/199

local Y=Color3.fromHSV(O,P,Q)
R,S,T=Y.r,Y.g,Y.b

updateColor()
end

local function hookButtons(X,Y)
X.ArrowFrame.Up.InputBegan:Connect(function(Z)
if Z.UserInputType==Enum.UserInputType.MouseMovement then
X.ArrowFrame.Up.BackgroundTransparency=0.5
elseif Z.UserInputType==Enum.UserInputType.MouseButton1 then


local _=tick()
local aa=true
local ab=tonumber(X.Text)

if not ab then return end

releaseEvent=UserInputService.InputEnded:Connect(function(ac)
if ac.UserInputType~=Enum.UserInputType.MouseButton1 then return end
releaseEvent:Disconnect()
aa=false
end)

ab=ab+1
Y(ab)
while aa do
if tick()-_>0.3 then
ab=ab+1
Y(ab)
end
wait(0.1)
end
end
end)

X.ArrowFrame.Up.InputEnded:Connect(function(aa)
if aa.UserInputType==Enum.UserInputType.MouseMovement then
X.ArrowFrame.Up.BackgroundTransparency=1
end
end)

X.ArrowFrame.Down.InputBegan:Connect(function(aa)
if aa.UserInputType==Enum.UserInputType.MouseMovement then
X.ArrowFrame.Down.BackgroundTransparency=0.5
elseif aa.UserInputType==Enum.UserInputType.MouseButton1 then


local ab=tick()
local ac=true
local Z=tonumber(X.Text)

if not Z then return end

releaseEvent=UserInputService.InputEnded:Connect(function(_)
if _.UserInputType~=Enum.UserInputType.MouseButton1 then return end
releaseEvent:Disconnect()
ac=false
end)

Z=Z-1
Y(Z)
while ac do
if tick()-ab>0.3 then
Z=Z-1
Y(Z)
end
wait(0.1)
end
end
end)

X.ArrowFrame.Down.InputEnded:Connect(function(aa)
if aa.UserInputType==Enum.UserInputType.MouseMovement then
X.ArrowFrame.Down.BackgroundTransparency=1
end
end)
end

s.InputBegan:Connect(function(aa)
if aa.UserInputType==Enum.UserInputType.MouseButton1 then
local ab,ac

ab=UserInputService.InputEnded:Connect(function(X)
if X.UserInputType~=Enum.UserInputType.MouseButton1 then return end
ab:Disconnect()
ac:Disconnect()
end)

ac=UserInputService.InputChanged:Connect(function(X)
if X.UserInputType==Enum.UserInputType.MouseMovement then
colorSpaceInput()
end
end)

colorSpaceInput()
end
end)

t.InputBegan:Connect(function(aa)
if aa.UserInputType==Enum.UserInputType.MouseButton1 then
local ab,ac

ab=UserInputService.InputEnded:Connect(function(X)
if X.UserInputType~=Enum.UserInputType.MouseButton1 then return end
ab:Disconnect()
ac:Disconnect()
end)

ac=UserInputService.InputChanged:Connect(function(X)
if X.UserInputType==Enum.UserInputType.MouseMovement then
colorStripInput()
end
end)

colorStripInput()
end
end)

local function updateHue(aa)
local ab=tonumber(aa)
if ab then
O=math.clamp(math.floor(ab),0,359)/359
local ac=Color3.fromHSV(O,P,Q)
R,S,T=ac.r,ac.g,ac.b
H.Text=tostring(O*359)
updateColor(1)
end
end
H.FocusLost:Connect(function()updateHue(H.Text)end)hookButtons(H,updateHue)

local function updateSat(aa)
local ab=tonumber(aa)
if ab then
P=math.clamp(math.floor(ab),0,255)/255
local ac=Color3.fromHSV(O,P,Q)
R,S,T=ac.r,ac.g,ac.b
I.Text=tostring(P*255)
updateColor(1)
end
end
I.FocusLost:Connect(function()updateSat(I.Text)end)hookButtons(I,updateSat)

local function updateVal(aa)
local ab=tonumber(aa)
if ab then
Q=math.clamp(math.floor(ab),0,255)/255
local ac=Color3.fromHSV(O,P,Q)
R,S,T=ac.r,ac.g,ac.b
J.Text=tostring(Q*255)
updateColor(1)
end
end
J.FocusLost:Connect(function()updateVal(J.Text)end)hookButtons(J,updateVal)

local function updateRed(aa)
local ab=tonumber(aa)
if ab then
R=math.clamp(math.floor(ab),0,255)/255
local ac=Color3.new(R,S,T)
O,P,Q=Color3.toHSV(ac)
K.Text=tostring(R*255)
updateColor(2)
end
end
K.FocusLost:Connect(function()updateRed(K.Text)end)hookButtons(K,updateRed)

local function updateGreen(aa)
local ab=tonumber(aa)
if ab then
S=math.clamp(math.floor(ab),0,255)/255
local ac=Color3.new(R,S,T)
O,P,Q=Color3.toHSV(ac)
L.Text=tostring(S*255)
updateColor(2)
end
end
L.FocusLost:Connect(function()updateGreen(L.Text)end)hookButtons(L,updateGreen)

local function updateBlue(aa)
local ab=tonumber(aa)
if ab then
T=math.clamp(math.floor(ab),0,255)/255
local ac=Color3.new(R,S,T)
O,P,Q=Color3.toHSV(ac)
M.Text=tostring(T*255)
updateColor(2)
end
end
M.FocusLost:Connect(function()updateBlue(M.Text)end)hookButtons(M,updateBlue)

local aa=Instance.new"TextButton"
aa.Name="Choice"
aa.Size=UDim2.new(0,25,0,18)
aa.BorderColor3=Color3.new(0.3764705882352941,0.3764705882352941,0.3764705882352941)
aa.Text=""
aa.AutoButtonColor=false
aa.ZIndex=10

local ab=0
local ac=0
for X,Y in pairs(V)do
local Z=aa:Clone()
Z.BackgroundColor3=Y
Z.Position=UDim2.new(0,1+30*ac,0,21+23*ab)

Z.MouseButton1Click:Connect(function()
R,S,T=Y.r,Y.g,Y.b
local _=Color3.new(R,S,T)
O,P,Q=Color3.toHSV(_)
updateColor()
end)

Z.Parent=v
ac=ac+1
if ac==6 then ab=ab+1 ac=0 end
end

ab=0
ac=0
for X=1,12 do
local Y=W[X]or Color3.new(0,0,0)
local Z=aa:Clone()
Z.BackgroundColor3=Y
Z.Position=UDim2.new(0,1+30*ac,0,20+23*ab)

Z.MouseButton1Click:Connect(function()
local _=W[X]or Color3.new(0,0,0)
R,S,T=_.r,_.g,_.b
O,P,Q=Color3.toHSV(_)
updateColor()
end)

Z.MouseButton2Click:Connect(function()
W[X]=U
Z.BackgroundColor3=U
end)

Z.Parent=w
ac=ac+1
if ac==6 then ab=ab+1 ac=0 end
end

z.MouseButton1Click:Connect(function()if n.Confirm then n:Confirm(U,shade1)end end)
z.InputBegan:Connect(function(X)if X.UserInputType==Enum.UserInputType.MouseMovement then z.BackgroundTransparency=0.4 end end)
z.InputEnded:Connect(function(X)if X.UserInputType==Enum.UserInputType.MouseMovement then z.BackgroundTransparency=0 end end)

A.MouseButton1Click:Connect(function()if n.Confirm then n:Confirm(U,shade2)end end)
A.InputBegan:Connect(function(X)if X.UserInputType==Enum.UserInputType.MouseMovement then A.BackgroundTransparency=0.4 end end)
A.InputEnded:Connect(function(X)if X.UserInputType==Enum.UserInputType.MouseMovement then A.BackgroundTransparency=0 end end)

B.MouseButton1Click:Connect(function()if n.Confirm then n:Confirm(U,shade3)end end)
B.InputBegan:Connect(function(X)if X.UserInputType==Enum.UserInputType.MouseMovement then B.BackgroundTransparency=0.4 end end)
B.InputEnded:Connect(function(X)if X.UserInputType==Enum.UserInputType.MouseMovement then B.BackgroundTransparency=0 end end)

C.MouseButton1Click:Connect(function()if n.Confirm then n:Confirm(U,text1)end end)
C.InputBegan:Connect(function(X)if X.UserInputType==Enum.UserInputType.MouseMovement then C.BackgroundTransparency=0.4 end end)
C.InputEnded:Connect(function(X)if X.UserInputType==Enum.UserInputType.MouseMovement then C.BackgroundTransparency=0 end end)

D.MouseButton1Click:Connect(function()if n.Confirm then n:Confirm(U,text2)end end)
D.InputBegan:Connect(function(X)if X.UserInputType==Enum.UserInputType.MouseMovement then D.BackgroundTransparency=0.4 end end)
D.InputEnded:Connect(function(X)if X.UserInputType==Enum.UserInputType.MouseMovement then D.BackgroundTransparency=0 end end)

E.MouseButton1Click:Connect(function()if n.Confirm then n:Confirm(U,scroll)end end)
E.InputBegan:Connect(function(X)if X.UserInputType==Enum.UserInputType.MouseMovement then E.BackgroundTransparency=0.4 end end)
E.InputEnded:Connect(function(X)if X.UserInputType==Enum.UserInputType.MouseMovement then E.BackgroundTransparency=0 end end)

y.MouseButton1Click:Connect(function()if n.Cancel then n:Cancel()end end)
y.InputBegan:Connect(function(X)if X.UserInputType==Enum.UserInputType.MouseMovement then y.BackgroundTransparency=0.4 end end)
y.InputEnded:Connect(function(X)if X.UserInputType==Enum.UserInputType.MouseMovement then y.BackgroundTransparency=0 end end)

x.MouseButton1Click:Connect(function()if n.Default then n:Default()end end)
x.InputBegan:Connect(function(X)if X.UserInputType==Enum.UserInputType.MouseMovement then x.BackgroundTransparency=0.4 end end)
x.InputEnded:Connect(function(X)if X.UserInputType==Enum.UserInputType.MouseMovement then x.BackgroundTransparency=0 end end)

q.MouseButton1Click:Connect(function()
picker:TweenPosition(UDim2.new(0.5,-219,0,-500),"InOut","Quart",0.5,true,nil)
end)

updateColor()

n.SetColor=function(X,Y)
R,S,T=Y.r,Y.g,Y.b
O,P,Q=Color3.toHSV(Y)
updateColor()
end

return n
end
end

picker:TweenPosition(UDim2.new(0.5,-219,0,100),"InOut","Quart",0.5,true,nil)

local aa=m.new()
aa.Confirm=function(ab,ac,n)updateColors(ac,n)wait()updatesaves()end
aa.Cancel=function(ab)
updateColors(cache_currentShade1,shade1)
updateColors(cache_currentShade2,shade2)
updateColors(cache_currentShade3,shade3)
updateColors(cache_currentText1,text1)
updateColors(cache_currentText2,text2)
updateColors(cache_currentScroll,scroll)
wait()
updatesaves()
end
aa.Default=function(ab)
updateColors(Color3.fromRGB(36,36,37),shade1)
updateColors(Color3.fromRGB(46,46,47),shade2)
updateColors(Color3.fromRGB(78,78,79),shade3)
updateColors(Color3.new(1,1,1),text1)
updateColors(Color3.new(0,0,0),text2)
updateColors(Color3.fromRGB(78,78,79),scroll)
wait()
updatesaves()
end
else
picker:TweenPosition(UDim2.new(0.5,-219,0,100),"InOut","Quart",0.5,true,nil)
end
end)


SettingsButton.MouseButton1Click:Connect(function()
if e==false then e=true
Settings:TweenPosition(UDim2.new(0,0,0,45),"InOut","Quart",0.5,true,nil)
CMDsF.Visible=false
else e=false
CMDsF.Visible=true
Settings:TweenPosition(UDim2.new(0,0,0,220),"InOut","Quart",0.5,true,nil)
end
end)

On.MouseButton1Click:Connect(function()
if f==false then
if StayOpen==false then
StayOpen=true
On.BackgroundTransparency=0
else
StayOpen=false
On.BackgroundTransparency=1
end
updatesaves()
end
end)

Clear.MouseButton1Down:Connect(function()
for aa,ab in pairs(scroll_2:GetChildren())do
ab:Destroy()
end
scroll_2.CanvasSize=UDim2.new(0,0,0,10)
end)

Clear_2.MouseButton1Down:Connect(function()
for aa,ab in pairs(scroll_3:GetChildren())do
ab:Destroy()
end
scroll_3.CanvasSize=UDim2.new(0,0,0,10)
end)

Toggle.MouseButton1Down:Connect(function()
if logsEnabled then
logsEnabled=false
Toggle.Text='Disabled'
updatesaves()
else
logsEnabled=true
Toggle.Text='Enabled'
updatesaves()
end
end)

Toggle_2.MouseButton1Down:Connect(function()
if jLogsEnabled then
jLogsEnabled=false
Toggle_2.Text='Disabled'
updatesaves()
else
jLogsEnabled=true
Toggle_2.Text='Enabled'
updatesaves()
end
end)

selectChat.MouseButton1Down:Connect(function()
join.Visible=false
chat.Visible=true
table.remove(shade3,table.find(shade3,selectChat))
table.remove(shade2,table.find(shade2,selectJoin))
table.insert(shade2,selectChat)
table.insert(shade3,selectJoin)
selectJoin.BackgroundColor3=currentShade3
selectChat.BackgroundColor3=currentShade2
end)

selectJoin.MouseButton1Down:Connect(function()
chat.Visible=false
join.Visible=true
table.remove(shade3,table.find(shade3,selectJoin))
table.remove(shade2,table.find(shade2,selectChat))
table.insert(shade2,selectJoin)
table.insert(shade3,selectChat)
selectChat.BackgroundColor3=currentShade3
selectJoin.BackgroundColor3=currentShade2
end)

if not writefileExploit()then
notify("Saves","Your exploit does not support read/write file. Your settings will not save.")
end

avatarcache={}
function sendChatWebhook(aa,ab)
if httprequest and vtype(logsWebhook,"string")then
local ac=aa.UserId
local m=avatarcache[ac]
if not m then
local n=HttpService:JSONDecode(httprequest{
Url="https://thumbnails.roblox.com/v1/users/avatar-headshot?userIds="..ac.."&size=420x420&format=Png&isCircular=false",
Method="GET"
}.Body).data
m=n and n[1].state=="Completed"and n[1].imageUrl or"https://files.catbox.moe/i968v2.jpg"
avatarcache[ac]=m
end
local n=HttpService:JSONEncode{
content=ab,
avatar_url=m,
username=formatUsername(aa),
allowed_mentions={parse={}}
}
httprequest{
Url=logsWebhook,
Method="POST",
Headers={["Content-Type"]="application/json"},
Body=n
}
end
end

ChatLog=function(aa)
aa.Chatted:Connect(function(ab)
if logsEnabled==true then
CreateLabel(aa.Name,ab)
sendChatWebhook(aa,ab)
end
end)
end

JoinLog=function(aa)
if jLogsEnabled==true then
CreateJoinLabel(aa,aa.UserId)
end
end

CleanFileName=function(aa)
return tostring(aa):gsub("[*\\?:<>|]+",""):sub(1,175)
end

SaveChatlogs.MouseButton1Down:Connect(function()
if writefileExploit()then
if#scroll_2:GetChildren()>0 then
notify("Loading",'Hold on a sec')
local aa=CleanFileName(MarketplaceService:GetProductInfo(PlaceId).Name)
local ab='-- Zero Yield Chat logs for "'..aa..'"\n'
for ac,m in pairs(scroll_2:GetChildren())do
ab=ab..'\n'..m.Text
end
local ac=tostring(ab)
local m=0
local function nameFile()
local n
pcall(function()n=readfile(aa..' Chat Logs ('..m..').txt')end)
if n then
m=m+1
nameFile()
else
writefileCooldown(aa..' Chat Logs ('..m..').txt',ac)
end
end
nameFile()
notify('Chat Logs','Saved chat logs to the workspace folder within your exploit folder.')
end
else
notify('Chat Logs','Your exploit does not support write file. You cannot save chat logs.')
end
end)

if isLegacyChat then
for aa,ab in pairs(Players:GetPlayers())do
ChatLog(ab)
end
end

Players.PlayerRemoving:Connect(function(aa)
if ESPenabled or CHMSenabled or COREGUI:FindFirstChild(aa.Name..'_LC')then
for ab,ac in pairs(COREGUI:GetChildren())do
if ac.Name==aa.Name..'_ESP'or ac.Name==aa.Name..'_LC'or ac.Name==aa.Name..'_CHMS'then
ac:Destroy()
end
end
end
if viewing~=nil and aa==viewing then
workspace.CurrentCamera.CameraSubject=Players.LocalPlayer.Character
viewing=nil
if viewDied then
viewDied:Disconnect()
viewChanged:Disconnect()
end
notify('Spectate','View turned off (player left)')
end
eventEditor.FireEvent("OnLeave",aa.Name)
end)

Exit.MouseButton1Down:Connect(function()
logs:TweenPosition(UDim2.new(0,0,1,10),"InOut","Quart",0.3,true,nil)
end)

Hide.MouseButton1Down:Connect(function()
if logs.Position~=UDim2.new(0,0,1,-20)then
logs:TweenPosition(UDim2.new(0,0,1,-20),"InOut","Quart",0.3,true,nil)
else
logs:TweenPosition(UDim2.new(0,0,1,-265),"InOut","Quart",0.3,true,nil)
end
end)

EventBind.MouseButton1Click:Connect(function()
eventEditor.Frame:TweenPosition(UDim2.new(0.5,-175,0.5,-101),"InOut","Quart",0.5,true,nil)
end)

Keybinds.MouseButton1Click:Connect(function()
KeybindsFrame:TweenPosition(UDim2.new(0,0,0,0),"InOut","Quart",0.5,true,nil)
wait(0.5)
SettingsHolder.Visible=false
end)

Close.MouseButton1Click:Connect(function()
SettingsHolder.Visible=true
KeybindsFrame:TweenPosition(UDim2.new(0,0,0,175),"InOut","Quart",0.5,true,nil)
end)

Keybinds.MouseButton1Click:Connect(function()
KeybindsFrame:TweenPosition(UDim2.new(0,0,0,0),"InOut","Quart",0.5,true,nil)
wait(0.5)
SettingsHolder.Visible=false
end)

Add.MouseButton1Click:Connect(function()
KeybindEditor:TweenPosition(UDim2.new(0.5,-180,0,260),"InOut","Quart",0.5,true,nil)
end)

Delete.MouseButton1Click:Connect(function()
binds={}
refreshbinds()
updatesaves()
notify('Keybinds Updated','Removed all keybinds')
end)

Close_2.MouseButton1Click:Connect(function()
SettingsHolder.Visible=true
AliasesFrame:TweenPosition(UDim2.new(0,0,0,175),"InOut","Quart",0.5,true,nil)
end)

Aliases.MouseButton1Click:Connect(function()
AliasesFrame:TweenPosition(UDim2.new(0,0,0,0),"InOut","Quart",0.5,true,nil)
wait(0.5)
SettingsHolder.Visible=false
end)

Close_3.MouseButton1Click:Connect(function()
SettingsHolder.Visible=true
PositionsFrame:TweenPosition(UDim2.new(0,0,0,175),"InOut","Quart",0.5,true,nil)
end)

Positions.MouseButton1Click:Connect(function()
PositionsFrame:TweenPosition(UDim2.new(0,0,0,0),"InOut","Quart",0.5,true,nil)
wait(0.5)
SettingsHolder.Visible=false
end)

local aa=Instance.new"SelectionBox"
aa.Name=randomString()
aa.Color3=Color3.new(255,255,255)
aa.Adornee=nil
aa.Parent=PARENT

local ab=Instance.new"SelectionBox"
ab.Name=randomString()
ab.Color3=Color3.new(0,166,0)
ab.Adornee=nil
ab.Parent=PARENT

local ac
local m
function selectPart()
ToPartFrame:TweenPosition(UDim2.new(0.5,-180,0,335),"InOut","Quart",0.5,true,nil)
local function HighlightPart()
if ab.Adornee~=IYMouse.Target then
aa.Adornee=IYMouse.Target
else
aa.Adornee=nil
end
end
ac=IYMouse.Move:Connect(HighlightPart)
local function SelectPart()
if IYMouse.Target~=nil then
ab.Adornee=IYMouse.Target
Path.Text=getHierarchy(IYMouse.Target)
end
end
m=IYMouse.Button1Down:Connect(SelectPart)
end

Part.MouseButton1Click:Connect(function()
selectPart()
end)

Exit_4.MouseButton1Click:Connect(function()
ToPartFrame:TweenPosition(UDim2.new(0.5,-180,0,-500),"InOut","Quart",0.5,true,nil)
if ac then
ac:Disconnect()
end
if m then
m:Disconnect()
end
aa.Adornee=nil
ab.Adornee=nil
Path.Text=""
end)

CopyPath.MouseButton1Click:Connect(function()
if Path.Text~=""then
toClipboard(Path.Text)
else
notify('Copy Path','Select a part to copy its path')
end
end)

ChoosePart.MouseButton1Click:Connect(function()
if Path.Text~=""then
local n=''
local function handleWpNames()
local o=false
for p,q in pairs(pWayPoints)do
if q.NAME:lower()==ab.Adornee.Name:lower()..n then
o=true
end
end
if not o then
notify('Modified Waypoints',"Created waypoint: "..ab.Adornee.Name..n)
pWayPoints[#pWayPoints+1]={NAME=ab.Adornee.Name..n,COORD={ab.Adornee}}
else
if isNumber(n)then
n=n+1
else
n=1
end
handleWpNames()
end
end
handleWpNames()
refreshwaypoints()
else
notify('Part Selection','Select a part first')
end
end)

cmds={}
customAlias={}
Delete_3.MouseButton1Click:Connect(function()
customAlias={}
aliases={}
notify('Aliases Modified','Removed all aliases')
updatesaves()
refreshaliases()
end)

PrefixBox:GetPropertyChangedSignal"Text":Connect(function()
prefix=PrefixBox.Text
Cmdbar.PlaceholderText="Command Bar ("..prefix..")"
updatesaves()
end)

function CamViewport()
if workspace.CurrentCamera then
return workspace.CurrentCamera.ViewportSize.X
end
end

function UpdateToViewport()
if Holder.Position.X.Offset<-CamViewport()then
Holder:TweenPosition(UDim2.new(1,-CamViewport(),Holder.Position.Y.Scale,Holder.Position.Y.Offset),"InOut","Quart",0.04,true,nil)
Notification:TweenPosition(UDim2.new(1,-CamViewport()+250,Notification.Position.Y.Scale,Notification.Position.Y.Offset),"InOut","Quart",0.04,true,nil)
end
end
CameraChanged=workspace.CurrentCamera:GetPropertyChangedSignal"ViewportSize":Connect(UpdateToViewport)

function updateCamera(n,o)
if o~=workspace then
CamMoved:Disconnect()
CameraChanged:Disconnect()
repeat wait()until workspace.CurrentCamera
CameraChanged=workspace.CurrentCamera:GetPropertyChangedSignal"ViewportSize":Connect(UpdateToViewport)
CamMoved=workspace.CurrentCamera.AncestryChanged:Connect(updateCamera)
end
end
CamMoved=workspace.CurrentCamera.AncestryChanged:Connect(updateCamera)

function dragMain(n,o)
task.spawn(function()
local p
local q
local r=Vector3.new(0,0,0)
local s
local function update(t)
local u=-250
local v=t.Position-r
if s.X.Offset+v.X<=-500 then
local w=UDim2.new(1,-250,Notification.Position.Y.Scale,Notification.Position.Y.Offset)
TweenService:Create(Notification,TweenInfo.new(.20),{Position=w}):Play()
u=250
else
local w=UDim2.new(1,-500,Notification.Position.Y.Scale,Notification.Position.Y.Offset)
TweenService:Create(Notification,TweenInfo.new(.20),{Position=w}):Play()
u=-250
end
if s.X.Offset+v.X<=-250 and-CamViewport()<=s.X.Offset+v.X then
local w=UDim2.new(s.X.Scale,s.X.Offset+v.X,o.Position.Y.Scale,o.Position.Y.Offset)
TweenService:Create(o,TweenInfo.new(.20),{Position=w}):Play()
local x=UDim2.new(s.X.Scale,s.X.Offset+v.X+u,Notification.Position.Y.Scale,Notification.Position.Y.Offset)
TweenService:Create(Notification,TweenInfo.new(.20),{Position=x}):Play()
elseif s.X.Offset+v.X>-500 then
local w=UDim2.new(1,-250,o.Position.Y.Scale,o.Position.Y.Offset)
TweenService:Create(o,TweenInfo.new(.20),{Position=w}):Play()
elseif-CamViewport()>s.X.Offset+v.X then
o:TweenPosition(UDim2.new(1,-CamViewport(),o.Position.Y.Scale,o.Position.Y.Offset),"InOut","Quart",0.04,true,nil)
local w=UDim2.new(1,-CamViewport(),o.Position.Y.Scale,o.Position.Y.Offset)
TweenService:Create(o,TweenInfo.new(.20),{Position=w}):Play()
local x=UDim2.new(1,-CamViewport()+250,Notification.Position.Y.Scale,Notification.Position.Y.Offset)
TweenService:Create(Notification,TweenInfo.new(.20),{Position=x}):Play()
end
end
n.InputBegan:Connect(function(t)
if t.UserInputType==Enum.UserInputType.MouseButton1 or t.UserInputType==Enum.UserInputType.Touch then
p=true
r=t.Position
s=o.Position

t.Changed:Connect(function()
if t.UserInputState==Enum.UserInputState.End then
p=false
end
end)
end
end)
n.InputChanged:Connect(function(t)
if t.UserInputType==Enum.UserInputType.MouseMovement or t.UserInputType==Enum.UserInputType.Touch then
q=t
end
end)
UserInputService.InputChanged:Connect(function(t)
if t==q and p then
update(t)
end
end)
end)
end

dragMain(Title,Holder)

Match=function(n,o)
o=o:gsub("%W","%%%1")
return n:lower():find(o:lower())and true
end

local n=Vector2.new(0,0)
local o
IndexContents=function(p,q,r,s)
CMDsF.CanvasPosition=Vector2.new(0,0)

local t=0
local u=CMDsF
o=nil
local v={}
if p:sub(#p,#p)=="\\"then p=""end
for w in string.gmatch(p,"[^\\]+")do
table.insert(v,w)
end
if#v>0 then p=v[#v]end
if p:sub(1,1)=="!"then p=p:sub(2)end
for w,x in next,u:GetChildren()do
if x:IsA"TextButton"then
if q then
if Match(x.Text,p)then
t=t+1
x.Visible=true
if o==nil then
o=x.Text
end
else
x.Visible=false
end
else
x.Visible=true
if o==nil then
o=x.Text
end
end
end
end
u.CanvasSize=UDim2.new(0,0,0,cmdListLayout.AbsoluteContentSize.Y)
if not s then
if t==0 or string.find(p," ")then
if not r then
minimizeHolder()
elseif r then
cmdbarHolder()
end
else
maximizeHolder()
end
else
minimizeHolder()
end
end

task.spawn(function()
if not isLegacyChat then return end
local p local
q=pcall(function()p=PlayerGui:WaitForChild"Chat".Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar end)
if q then
local function chatboxFocused()
n=CMDsF.CanvasPosition
end
local r=p.Focused:Connect(chatboxFocused)

local function Index()
if p.Text:lower():sub(1,1)==prefix then
if e==true then
wait(0.2)
CMDsF.Visible=true
Settings:TweenPosition(UDim2.new(0,0,0,220),"InOut","Quart",0.2,true,nil)
end
IndexContents(PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar.Text:lower():sub(2),true)
else
minimizeHolder()
if e==true then
wait(0.2)
Settings:TweenPosition(UDim2.new(0,0,0,45),"InOut","Quart",0.2,true,nil)
CMDsF.Visible=false
end
end
end
local s=p:GetPropertyChangedSignal"Text":Connect(Index)

local function chatboxFocusLost(t)
if not t or p.Text:lower():sub(1,1)~=prefix then
IndexContents('',true)
end
CMDsF.CanvasPosition=n
minimizeHolder()
end
local t=p.FocusLost:Connect(chatboxFocusLost)

PlayerGui:WaitForChild"Chat".Frame.ChatBarParentFrame.ChildAdded:Connect(function(u)
wait()
if u:FindFirstChild'BoxFrame'then
p=PlayerGui:WaitForChild"Chat".Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
if r then r:Disconnect()end
r=p.Focused:Connect(chatboxFocused)
if s then s:Disconnect()end
s=p:GetPropertyChangedSignal"Text":Connect(Index)
if t then t:Disconnect()end
t=p.FocusLost:Connect(chatboxFocusLost)
end
end)


end
end)

function autoComplete(p,q)
local r={"[","/","("," "}
local s=0
for t=1,#p do
local u=p:sub(t,t)
if table.find(r,u)then
s=t
break
end
end
q=q or Cmdbar.Text
local t=0
local u=1
local v=string.find(q,"\\",u)
while v do
t=v
u=v+1
v=string.find(q,"\\",u)
end
if q:sub(t+1,t+1)=="!"then t=t+1 end
Cmdbar.Text=q:sub(1,t)..p:sub(1,s-1)..' '
RunService.RenderStepped:Wait()
Cmdbar.Text=Cmdbar.Text:gsub('\t','')
Cmdbar.CursorPosition=#Cmdbar.Text+1
end

CMDs={}
CMDs[#CMDs+1]={NAME='discord / support / help',DESC='Invite to the Zero Yield support server.'}
CMDs[#CMDs+1]={NAME='guiscale [number]',DESC='Changes the size of the gui. [number] accepts both decimals and whole numbers. Min is 0.4 and Max is 2'}
CMDs[#CMDs+1]={NAME='console',DESC='Loads Roblox console'}
CMDs[#CMDs+1]={NAME='oldconsole',DESC='Loads old Roblox console'}
CMDs[#CMDs+1]={NAME='explorer / dex',DESC='Opens DEX by Moon'}
CMDs[#CMDs+1]={NAME='olddex / odex',DESC='Opens Old DEX by Moon'}
CMDs[#CMDs+1]={NAME='remotespy / rspy',DESC='Opens Simple Spy V3'}
CMDs[#CMDs+1]={NAME='audiologger / alogger',DESC='Opens Edges audio logger'}
CMDs[#CMDs+1]={NAME='serverinfo / info',DESC='Gives you info about the server'}
CMDs[#CMDs+1]={NAME='jobid',DESC='Copies the games JobId to your clipboard'}
CMDs[#CMDs+1]={NAME='notifyjobid',DESC='Notifies you the games JobId'}
CMDs[#CMDs+1]={NAME='rejoin / rj',DESC='Makes you rejoin the game'}
CMDs[#CMDs+1]={NAME='autorejoin / autorj',DESC='Automatically rejoins the server if you get kicked/disconnected'}
CMDs[#CMDs+1]={NAME='serverhop / shop',DESC='Teleports you to a different server'}
CMDs[#CMDs+1]={NAME='gameteleport / gametp [place ID]',DESC='Joins a game by ID'}
CMDs[#CMDs+1]={NAME='antiidle / antiafk',DESC='Prevents the game from kicking you for being idle/afk'}
CMDs[#CMDs+1]={NAME='datalimit [num]',DESC='Set outgoing KBPS limit'}
CMDs[#CMDs+1]={NAME='replicationlag / backtrack [num]',DESC='Set IncomingReplicationLag'}
CMDs[#CMDs+1]={NAME='creatorid / creator',DESC='Notifies you the creators ID'}
CMDs[#CMDs+1]={NAME='copycreatorid / copycreator',DESC='Copies the creators ID to your clipboard'}
CMDs[#CMDs+1]={NAME='setcreatorid / setcreator',DESC='Sets your userid to the creators ID'}
CMDs[#CMDs+1]={NAME='noprompts',DESC='Prevents the game from showing you purchase/premium prompts'}
CMDs[#CMDs+1]={NAME='showprompts',DESC='Allows the game to show purchase/premium prompts again'}
CMDs[#CMDs+1]={NAME='enable [inventory/playerlist/chat/reset/emotes/all]',DESC='Toggles visibility of coregui items'}
CMDs[#CMDs+1]={NAME='disable [inventory/playerlist/chat/reset/emotes/all]',DESC='Toggles visibility of coregui items'}
CMDs[#CMDs+1]={NAME='showguis',DESC='Shows any invisible GUIs'}
CMDs[#CMDs+1]={NAME='unshowguis',DESC='Undoes showguis'}
CMDs[#CMDs+1]={NAME='hideguis',DESC='Hides any GUIs in PlayerGui'}
CMDs[#CMDs+1]={NAME='unhideguis',DESC='Undoes hideguis'}
CMDs[#CMDs+1]={NAME='guidelete',DESC='Enables backspace to delete GUI'}
CMDs[#CMDs+1]={NAME='unguidelete / noguidelete',DESC='Disables guidelete'}
CMDs[#CMDs+1]={NAME='hideiy',DESC='Hides the main IY GUI'}
CMDs[#CMDs+1]={NAME='showiy / unhideiy',DESC='Shows IY again'}
CMDs[#CMDs+1]={NAME='keepiy',DESC='Auto execute IY when you teleport through servers'}
CMDs[#CMDs+1]={NAME='unkeepiy',DESC='Disable keepiy'}
CMDs[#CMDs+1]={NAME='togglekeepiy',DESC='Toggles keepiy'}
CMDs[#CMDs+1]={NAME='savegame / saveplace',DESC='Uses saveinstance to save the game'}
CMDs[#CMDs+1]={NAME='clearerror',DESC='Clears the annoying box and blur when a game kicks you'}
CMDs[#CMDs+1]={NAME='clientantikick / antikick (CLIENT)',DESC='Prevents localscripts from kicking you'}
CMDs[#CMDs+1]={NAME='clientantiteleport / antiteleport (CLIENT)',DESC='Prevents localscripts from teleporting you'}
CMDs[#CMDs+1]={NAME='allowrejoin / allowrj [true/false] (CLIENT)',DESC='Changes if antiteleport allows you to rejoin or not'}
CMDs[#CMDs+1]={NAME='cancelteleport / canceltp',DESC='Cancels teleports in progress'}
CMDs[#CMDs+1]={NAME='volume / vol [0-10]',DESC='Adjusts your game volume on a scale of 0 to 10'}
CMDs[#CMDs+1]={NAME='antilag / boostfps / lowgraphics',DESC='Lowers game quality to boost FPS'}
CMDs[#CMDs+1]={NAME='record / rec',DESC='Starts Roblox recorder'}
CMDs[#CMDs+1]={NAME='screenshot / scrnshot',DESC='Takes a screenshot'}
CMDs[#CMDs+1]={NAME='togglefullscreen / togglefs',DESC='Toggles fullscreen'}
CMDs[#CMDs+1]={NAME='notify [text]',DESC='Sends you a notification with the provided text'}
CMDs[#CMDs+1]={NAME='lastcommand / lastcmd',DESC='Executes the previous command used'}
CMDs[#CMDs+1]={NAME='exit',DESC='Kills roblox process'}
CMDs[#CMDs+1]={NAME='',DESC=''}
CMDs[#CMDs+1]={NAME='noclip',DESC='Go through objects'}
CMDs[#CMDs+1]={NAME='unnoclip / clip',DESC='Disables noclip'}
CMDs[#CMDs+1]={NAME='fly [speed]',DESC='Makes you fly'}
CMDs[#CMDs+1]={NAME='unfly',DESC='Disables fly'}
CMDs[#CMDs+1]={NAME='flyspeed [num]',DESC='Set fly speed (default is 20)'}
CMDs[#CMDs+1]={NAME='vehiclefly / vfly [speed]',DESC='Makes you fly in a vehicle'}
CMDs[#CMDs+1]={NAME='unvehiclefly / unvfly',DESC='Disables vehicle fly'}
CMDs[#CMDs+1]={NAME='vehicleflyspeed  / vflyspeed [num]',DESC='Set vehicle fly speed'}
CMDs[#CMDs+1]={NAME='cframefly / cfly [speed]',DESC='Makes you fly, bypassing some anti cheats (works on mobile)'}
CMDs[#CMDs+1]={NAME='uncframefly / uncfly',DESC='Disables cfly'}
CMDs[#CMDs+1]={NAME='cframeflyspeed  / cflyspeed [num]',DESC='Sets cfly speed'}
CMDs[#CMDs+1]={NAME='qefly [true / false]',DESC='Enables or disables the Q and E hotkeys for fly'}
CMDs[#CMDs+1]={NAME='vehiclenoclip / vnoclip',DESC='Turns off vehicle collision'}
CMDs[#CMDs+1]={NAME='vehicleclip / vclip / unvnoclip',DESC='Enables vehicle collision'}
CMDs[#CMDs+1]={NAME='float /  platform',DESC='Spawns a platform beneath you causing you to float'}
CMDs[#CMDs+1]={NAME='unfloat / noplatform',DESC='Removes the platform'}
CMDs[#CMDs+1]={NAME='swim',DESC='Allows you to swim in the air'}
CMDs[#CMDs+1]={NAME='unswim / noswim',DESC='Stops you from swimming everywhere'}
CMDs[#CMDs+1]={NAME='toggleswim',DESC='Toggles swimming'}
CMDs[#CMDs+1]={NAME='',DESC=''}
CMDs[#CMDs+1]={NAME='setwaypoint / swp [name]',DESC='Sets a waypoint at your position'}
CMDs[#CMDs+1]={NAME='waypointpos / wpp [name] [X Y Z]',DESC='Sets a waypoint with specified coordinates'}
CMDs[#CMDs+1]={NAME='waypoints',DESC='Shows a list of currently active waypoints'}
CMDs[#CMDs+1]={NAME='showwaypoints / showwp',DESC='Shows all currently set waypoints'}
CMDs[#CMDs+1]={NAME='hidewaypoints / hidewp',DESC='Hides shown waypoints'}
CMDs[#CMDs+1]={NAME='waypoint / wp [name]',DESC='Teleports player to a waypoint'}
CMDs[#CMDs+1]={NAME='tweenwaypoint / twp [name]',DESC='Tweens player to a waypoint'}
CMDs[#CMDs+1]={NAME='walktowaypoint / wtwp [name]',DESC='Walks player to a waypoint'}
CMDs[#CMDs+1]={NAME='deletewaypoint / dwp [name]',DESC='Deletes a waypoint'}
CMDs[#CMDs+1]={NAME='clearwaypoints / cwp',DESC='Clears all waypoints'}
CMDs[#CMDs+1]={NAME='cleargamewaypoints / cgamewp',DESC='Clears all waypoints for the game you are in'}
CMDs[#CMDs+1]={NAME='',DESC=''}
CMDs[#CMDs+1]={NAME='goto [player]',DESC='Go to a player'}
CMDs[#CMDs+1]={NAME='tweengoto / tgoto [player]',DESC='Tween to a player (bypasses some anti cheats)'}
CMDs[#CMDs+1]={NAME='tweenspeed / tspeed [num]',DESC='Sets how fast all tween commands go (default is 1)'}
CMDs[#CMDs+1]={NAME='vehiclegoto / vgoto [player]',DESC='Go to a player while in a vehicle'}
CMDs[#CMDs+1]={NAME='loopgoto [player] [distance] [delay]',DESC='Loop teleport to a player'}
CMDs[#CMDs+1]={NAME='unloopgoto',DESC='Stops teleporting you to a player'}
CMDs[#CMDs+1]={NAME='pulsetp / ptp [player] [seconds]',DESC='Teleports you to a player for a specified amount of time'}
CMDs[#CMDs+1]={NAME='clientbring / cbring [player] (CLIENT)',DESC='Bring a player'}
CMDs[#CMDs+1]={NAME='loopbring [player] [distance] [delay] (CLIENT)',DESC='Loop brings a player to you (useful for killing)'}
CMDs[#CMDs+1]={NAME='unloopbring [player]',DESC='Undoes loopbring'}
CMDs[#CMDs+1]={NAME='freeze / fr [player] (CLIENT)',DESC='Freezes a player'}
CMDs[#CMDs+1]={NAME='freezeanims',DESC='Freezes your animations / pauses your animations - Does not work on default animations'}
CMDs[#CMDs+1]={NAME='unfreezeanims',DESC='Unfreezes your animations / plays your animations'}
CMDs[#CMDs+1]={NAME='thaw / unfr [player] (CLIENT)',DESC='Unfreezes a player'}
CMDs[#CMDs+1]={NAME='tpposition / tppos [X Y Z]',DESC='Teleports you to certain coordinates'}
CMDs[#CMDs+1]={NAME='tweentpposition / ttppos [X Y Z]',DESC='Tween to coordinates (bypasses some anti cheats)'}
CMDs[#CMDs+1]={NAME='offset [X Y Z]',DESC='Offsets you by certain coordinates'}
CMDs[#CMDs+1]={NAME='tweenoffset / toffset [X Y Z]',DESC='Tween offset (bypasses some anti cheats)'}
CMDs[#CMDs+1]={NAME='notifyposition / notifypos [player]',DESC='Notifies you the coordinates of a character'}
CMDs[#CMDs+1]={NAME='copyposition / copypos [player]',DESC='Copies the coordinates of a character to your clipboard'}
CMDs[#CMDs+1]={NAME='walktoposition / walktopos [X Y Z]',DESC='Makes you walk to a coordinate'}
CMDs[#CMDs+1]={NAME='spawnpoint / spawn [delay]',DESC='Sets a position where you will spawn'}
CMDs[#CMDs+1]={NAME='nospawnpoint / nospawn',DESC='Removes your custom spawn point'}
CMDs[#CMDs+1]={NAME='flashback / diedtp',DESC='Teleports you to where you last died'}
CMDs[#CMDs+1]={NAME='walltp',DESC='Teleports you above/over any wall you run into'}
CMDs[#CMDs+1]={NAME='nowalltp / unwalltp',DESC='Disables walltp'}
CMDs[#CMDs+1]={NAME='teleporttool / tptool',DESC='Gives you a teleport tool'}
CMDs[#CMDs+1]={NAME='',DESC=''}
CMDs[#CMDs+1]={NAME='logs',DESC='Opens the logs GUI'}
CMDs[#CMDs+1]={NAME='chatlogs / clogs',DESC='Log what people say or whisper'}
CMDs[#CMDs+1]={NAME='joinlogs / jlogs',DESC='Log when people join'}
CMDs[#CMDs+1]={NAME='chatlogswebhook / logswebhook [url]',DESC='Set a discord webhook for chatlogs to go to (provide no url to disable this)'}
CMDs[#CMDs+1]={NAME='antichatlogs / antichatlogger',DESC='Prevents Roblox from banning you for your silly chat messages (game needs the legacy chat)'}
CMDs[#CMDs+1]={NAME='chat / say [text]',DESC='Makes you chat a string (possible mute bypass)'}
CMDs[#CMDs+1]={NAME='spam [text]',DESC='Makes you spam the chat'}
CMDs[#CMDs+1]={NAME='unspam',DESC='Turns off spam'}
CMDs[#CMDs+1]={NAME='whisper / pm [player] [text]',DESC='Makes you whisper a string to someone (possible mute bypass)'}
CMDs[#CMDs+1]={NAME='pmspam [player] [text]',DESC='Makes you spam a players whispers'}
CMDs[#CMDs+1]={NAME='unpmspam [player]',DESC='Turns off pm spam'}
CMDs[#CMDs+1]={NAME='spamspeed [num]',DESC='How quickly you spam (default is 1)'}
CMDs[#CMDs+1]={NAME='bubblechat (CLIENT)',DESC='Enables bubble chat for your client'}
CMDs[#CMDs+1]={NAME='unbubblechat / nobubblechat',DESC='Disables the bubblechat command'}
CMDs[#CMDs+1]={NAME='chatwindow',DESC='Enables the chat window for your client'}
CMDs[#CMDs+1]={NAME='unchatwindow / nochatwindow',DESC='Disables the chat window for your client'}
CMDs[#CMDs+1]={NAME='',DESC=''}
CMDs[#CMDs+1]={NAME='esp',DESC='View all players and their status'}
CMDs[#CMDs+1]={NAME='espteam',DESC='ESP but teammates are green and bad guys are red'}
CMDs[#CMDs+1]={NAME='noesp / unesp / unespteam',DESC='Removes ESP'}
CMDs[#CMDs+1]={NAME='esptransparency [number]',DESC='Changes the transparency of ESP related commands'}
CMDs[#CMDs+1]={NAME='partesp [part name]',DESC='Highlights a part'}
CMDs[#CMDs+1]={NAME='unpartesp / nopartesp [part name]',DESC='removes partesp'}
CMDs[#CMDs+1]={NAME='chams',DESC='ESP but without text in the way'}
CMDs[#CMDs+1]={NAME='nochams / unchams',DESC='Removes chams'}
CMDs[#CMDs+1]={NAME='locate [player]',DESC='View a single player and their status'}
CMDs[#CMDs+1]={NAME='unlocate / nolocate [player]',DESC='Removes locate'}
CMDs[#CMDs+1]={NAME='xray',DESC='Makes all parts in workspace transparent'}
CMDs[#CMDs+1]={NAME='unxray / noxray',DESC='Restores transparency to all parts in workspace'}
CMDs[#CMDs+1]={NAME='loopxray',DESC='Makes all parts in workspace transparent but looped'}
CMDs[#CMDs+1]={NAME='unloopxray',DESC='Unloops xray'}
CMDs[#CMDs+1]={NAME='togglexray',DESC='Toggles xray'}
CMDs[#CMDs+1]={NAME='',DESC=''}
CMDs[#CMDs+1]={NAME='spectate / view [player]',DESC='View a player'}
CMDs[#CMDs+1]={NAME='viewpart / viewp [part name]',DESC='View a part'}
CMDs[#CMDs+1]={NAME='unspectate / unview',DESC='Stops viewing player'}
CMDs[#CMDs+1]={NAME='freecam / fc',DESC='Allows you to freely move camera around the game'}
CMDs[#CMDs+1]={NAME='freecampos / fcpos [X Y Z]',DESC='Moves / opens freecam in a certain position'}
CMDs[#CMDs+1]={NAME='freecamwaypoint / fcwp [name]',DESC='Moves / opens freecam to a waypoint'}
CMDs[#CMDs+1]={NAME='freecamgoto / fcgoto / fctp [player]',DESC='Moves / opens freecam to a player'}
CMDs[#CMDs+1]={NAME='unfreecam / unfc',DESC='Disables freecam'}
CMDs[#CMDs+1]={NAME='freecamspeed / fcspeed [num]',DESC='Adjusts freecam speed (default is 1)'}
CMDs[#CMDs+1]={NAME='notifyfreecamposition / notifyfcpos',DESC='Noitifies you your freecam coordinates'}
CMDs[#CMDs+1]={NAME='copyfreecamposition / copyfcpos',DESC='Copies your freecam coordinates to your clipboard'}
CMDs[#CMDs+1]={NAME='gotocamera / gotocam',DESC='Teleports you to the location of your camera'}
CMDs[#CMDs+1]={NAME='tweengotocam / tgotocam',DESC='Tweens you to the location of your camera'}
CMDs[#CMDs+1]={NAME='firstp',DESC='Forces camera to go into first person'}
CMDs[#CMDs+1]={NAME='thirdp',DESC='Allows camera to go into third person'}
CMDs[#CMDs+1]={NAME='noclipcam / nccam',DESC='Allows camera to go through objects like walls'}
CMDs[#CMDs+1]={NAME='maxzoom [num]',DESC='Maximum camera zoom'}
CMDs[#CMDs+1]={NAME='minzoom [num]',DESC='Minimum camera zoom'}
CMDs[#CMDs+1]={NAME='camdistance [num]',DESC='Changes camera distance from your player'}
CMDs[#CMDs+1]={NAME='fov [num]',DESC='Adjusts field of view (default is 70)'}
CMDs[#CMDs+1]={NAME='fixcam / restorecam',DESC='Fixes camera'}
CMDs[#CMDs+1]={NAME='enableshiftlock / enablesl',DESC='Enables the shift lock option'}
CMDs[#CMDs+1]={NAME='lookat [player]',DESC='Moves your camera view to a player'}
CMDs[#CMDs+1]={NAME='',DESC=''}
CMDs[#CMDs+1]={NAME='btools (CLIENT)',DESC='Gives you building tools (DOES NOT REPLICATE)'}
CMDs[#CMDs+1]={NAME='f3x (CLIENT)',DESC='Gives you F3X building tools (DOES NOT REPLICATE)'}
CMDs[#CMDs+1]={NAME='partname / partpath',DESC='Allows you to click a part to see its path & name'}
CMDs[#CMDs+1]={NAME='delete [instance name] (CLIENT)',DESC='Removes any part with a certain name from the workspace (DOES NOT REPLICATE)'}
CMDs[#CMDs+1]={NAME='deleteclass / dc [class name] (CLIENT)',DESC='Removes any part with a certain classname from the workspace (DOES NOT REPLICATE)'}
CMDs[#CMDs+1]={NAME='lockworkspace / lockws',DESC='Locks the whole workspace'}
CMDs[#CMDs+1]={NAME='unlockworkspace / unlockws',DESC='Unlocks the whole workspace'}
CMDs[#CMDs+1]={NAME='invisibleparts / invisparts (CLIENT)',DESC='Shows invisible parts'}
CMDs[#CMDs+1]={NAME='uninvisibleparts / uninvisparts (CLIENT)',DESC='Makes parts affected by invisparts return to normal'}
CMDs[#CMDs+1]={NAME='deleteinvisparts / dip (CLIENT)',DESC='Deletes invisible parts'}
CMDs[#CMDs+1]={NAME='gotopart [part name]',DESC='Moves your character to a part or multiple parts'}
CMDs[#CMDs+1]={NAME='tweengotopart / tgotopart [part name]',DESC='Tweens your character to a part or multiple parts'}
CMDs[#CMDs+1]={NAME='gotopartclass / gpc [class name]',DESC='Moves your character to a part or multiple parts based on classname'}
CMDs[#CMDs+1]={NAME='tweengotopartclass / tgpc [class name]',DESC='Tweens your character to a part or multiple parts based on classname'}
CMDs[#CMDs+1]={NAME='gotomodel [part name]',DESC='Moves your character to a model or multiple models'}
CMDs[#CMDs+1]={NAME='tweengotomodel / tgotomodel [part name]',DESC='Tweens your character to a model or multiple models'}
CMDs[#CMDs+1]={NAME='gotopartdelay / gotomodeldelay [num]',DESC='Adjusts how quickly you teleport to each part (default is 0.1)'}
CMDs[#CMDs+1]={NAME='bringpart [part name] (CLIENT)',DESC='Moves a part or multiple parts to your character'}
CMDs[#CMDs+1]={NAME='bringpartclass / bpc [class name] (CLIENT)',DESC='Moves a part or multiple parts to your character based on classname'}
CMDs[#CMDs+1]={NAME='noclickdetectorlimits / nocdlimits',DESC='Sets all click detectors MaxActivationDistance to math.huge'}
CMDs[#CMDs+1]={NAME='fireclickdetectors / firecd [name]',DESC='Uses all click detectors in a game or uses the optional name'}
CMDs[#CMDs+1]={NAME='firetouchinterests / touchinterests [name]',DESC='Uses all touchinterests in a game or uses the optional name'}
CMDs[#CMDs+1]={NAME='noproximitypromptlimits / nopplimits',DESC='Sets all proximity prompts MaxActivationDistance to math.huge'}
CMDs[#CMDs+1]={NAME='fireproximityprompts / firepp [name]',DESC='Uses all proximity prompts in a game or uses the optional name'}
CMDs[#CMDs+1]={NAME='instantproximityprompts / instantpp',DESC='Disable the cooldown for proximity prompts'}
CMDs[#CMDs+1]={NAME='uninstantproximityprompts / uninstantpp',DESC='Undo the cooldown removal'}
CMDs[#CMDs+1]={NAME='tpunanchored / tpua [player]',DESC='Teleports unanchored parts to a player'}
CMDs[#CMDs+1]={NAME='animsunanchored / freezeua',DESC='Freezes unanchored parts'}
CMDs[#CMDs+1]={NAME='thawunanchored / thawua / unfreezeua',DESC='Thaws unanchored parts'}
CMDs[#CMDs+1]={NAME='removeterrain / rterrain / noterrain',DESC='Removes all terrain'}
CMDs[#CMDs+1]={NAME='clearnilinstances / nonilinstances / cni',DESC='Removes nil instances'}
CMDs[#CMDs+1]={NAME='destroyheight / dh [num]',DESC='Sets FallenPartsDestroyHeight'}
CMDs[#CMDs+1]={NAME='fakeout',DESC='Tp to the void and then back (useful to kill people attached to you)'}
CMDs[#CMDs+1]={NAME='antivoid',DESC='Prevents you from falling into the void by launching you upwards'}
CMDs[#CMDs+1]={NAME='unantivoid / noantivoid',DESC='Disables antivoid'}
CMDs[#CMDs+1]={NAME='',DESC=''}
CMDs[#CMDs+1]={NAME='fullbright / fb (CLIENT)',DESC='Makes the map brighter / more visible'}
CMDs[#CMDs+1]={NAME='loopfullbright / loopfb (CLIENT)',DESC='Makes the map brighter / more visible but looped'}
CMDs[#CMDs+1]={NAME='unloopfullbright / unloopfb',DESC='Unloops fullbright'}
CMDs[#CMDs+1]={NAME='ambient [num] [num] [num] (CLIENT)',DESC='Changes ambient'}
CMDs[#CMDs+1]={NAME='day (CLIENT)',DESC='Changes the time to day for the client'}
CMDs[#CMDs+1]={NAME='night (CLIENT)',DESC='Changes the time to night for the client'}
CMDs[#CMDs+1]={NAME='nofog (CLIENT)',DESC='Removes fog'}
CMDs[#CMDs+1]={NAME='brightness [num] (CLIENT)',DESC='Changes the brightness lighting property'}
CMDs[#CMDs+1]={NAME='globalshadows / gshadows (CLIENT)',DESC='Enables global shadows'}
CMDs[#CMDs+1]={NAME='noglobalshadows / nogshadows (CLIENT)',DESC='Disables global shadows'}
CMDs[#CMDs+1]={NAME='restorelighting / rlighting',DESC='Restores Lighting properties'}
CMDs[#CMDs+1]={NAME='light [radius] [brightness] (CLIENT)',DESC='Gives your player dynamic light'}
CMDs[#CMDs+1]={NAME='nolight / unlight',DESC='Removes dynamic light from your player'}
CMDs[#CMDs+1]={NAME='',DESC=''}
CMDs[#CMDs+1]={NAME='inspect / examine [player]',DESC='Opens InspectMenu for a certain player'}
CMDs[#CMDs+1]={NAME='age [player]',DESC='Tells you the age of a player'}
CMDs[#CMDs+1]={NAME='chatage [player]',DESC='Chats the age of a player'}
CMDs[#CMDs+1]={NAME='joindate / jd [player]',DESC='Tells you the date the player joined Roblox'}
CMDs[#CMDs+1]={NAME='chatjoindate / cjd [player]',DESC='Chats the date the player joined Roblox'}
CMDs[#CMDs+1]={NAME='copyname / copyuser [player]',DESC='Copies a players full username to your clipboard'}
CMDs[#CMDs+1]={NAME='userid / id [player]',DESC='Notifies a players user ID'}
CMDs[#CMDs+1]={NAME='copyplaceid / placeid',DESC='Copies the current place id to your clipboard'}
CMDs[#CMDs+1]={NAME='copygameid / gameid',DESC='Copies the current game id to your clipboard'}
CMDs[#CMDs+1]={NAME='copyuserid / copyid [player]',DESC='Copies a players user ID to your clipboard'}
CMDs[#CMDs+1]={NAME='appearanceid / aid [player]',DESC='Notifies a players appearance ID'}
CMDs[#CMDs+1]={NAME='copyappearanceid / caid [player]',DESC='Copies a players appearance ID to your clipboard'}
CMDs[#CMDs+1]={NAME='bang [player] [speed]',DESC='owo'}
CMDs[#CMDs+1]={NAME='unbang',DESC='uwu'}
CMDs[#CMDs+1]={NAME='carpet [player]',DESC='Be someones carpet'}
CMDs[#CMDs+1]={NAME='uncarpet',DESC='Undoes carpet'}
CMDs[#CMDs+1]={NAME='friend [player]',DESC='Sends a friend request to certain players'}
CMDs[#CMDs+1]={NAME='unfriend [player]',DESC='Unfriends certain players'}
CMDs[#CMDs+1]={NAME='headsit [player]',DESC='Sit on a players head'}
CMDs[#CMDs+1]={NAME='walkto / follow [player]',DESC='Follow a player'}
CMDs[#CMDs+1]={NAME='pathfindwalkto / pathfindfollow [player]',DESC='Follow a player using pathfinding'}
CMDs[#CMDs+1]={NAME='pathfindwalktowaypoint / pathfindwalktowp [waypoint]',DESC='Walk to a waypoint using pathfinding'}
CMDs[#CMDs+1]={NAME='unwalkto / unfollow',DESC='Stops following a player'}
CMDs[#CMDs+1]={NAME='orbit [player] [speed] [distance]',DESC='Makes your character orbit around a player with an optional speed and an optional distance'}
CMDs[#CMDs+1]={NAME='unorbit',DESC='Disables orbit'}
CMDs[#CMDs+1]={NAME='stareat / stare [player]',DESC='Stare / look at a player'}
CMDs[#CMDs+1]={NAME='unstareat / unstare [player]',DESC='Disables stareat'}
CMDs[#CMDs+1]={NAME='rolewatch [group id] [role name]',DESC='Notify if someone from a watched group joins the server'}
CMDs[#CMDs+1]={NAME='rolewatchstop / unrolewatch',DESC='Disable Rolewatch'}
CMDs[#CMDs+1]={NAME='rolewatchleave',DESC='Toggle if you should leave the game if someone from a watched group joins the server'}
CMDs[#CMDs+1]={NAME='staffwatch',DESC='Notify if a staff member of the game joins the server'}
CMDs[#CMDs+1]={NAME='unstaffwatch',DESC='Disable Staffwatch'}
CMDs[#CMDs+1]={NAME='handlekill / hkill [player] [radius] (TOOL)',DESC='Kills a player using tool damage (YOU NEED A TOOL)'}
CMDs[#CMDs+1]={NAME='fling',DESC='Flings anyone you touch'}
CMDs[#CMDs+1]={NAME='unfling',DESC='Disables the fling command'}
CMDs[#CMDs+1]={NAME='flyfling [speed]',DESC='Basically the invisfling command but not invisible'}
CMDs[#CMDs+1]={NAME='unflyfling',DESC='Disables the flyfling command'}
CMDs[#CMDs+1]={NAME='walkfling',DESC='Basically fling but no spinning'}
CMDs[#CMDs+1]={NAME='unwalkfling / nowalkfling',DESC='Disables walkfling'}
CMDs[#CMDs+1]={NAME='invisfling',DESC='Enables invisible fling (the invis part is patched, try using the god command before using this)'}
CMDs[#CMDs+1]={NAME='antifling',DESC='Disables player collisions to prevent you from being flung'}
CMDs[#CMDs+1]={NAME='unantifling',DESC='Disables antifling'}
CMDs[#CMDs+1]={NAME='loopoof',DESC='Loops everyones character sounds (everyone can hear)'}
CMDs[#CMDs+1]={NAME='unloopoof',DESC='Stops the oof chaos'}
CMDs[#CMDs+1]={NAME='muteboombox [player]',DESC='Mutes someones boombox'}
CMDs[#CMDs+1]={NAME='unmuteboombox [player]',DESC='Unmutes someones boombox'}
CMDs[#CMDs+1]={NAME='hitbox [player] [size] [transparency]',DESC='Expands the hitbox for players HumanoidRootPart (default is 1)'}
CMDs[#CMDs+1]={NAME='headsize [player] [size]',DESC='Expands the head size for players Head (default is 1)'}
CMDs[#CMDs+1]={NAME='',DESC=''}
CMDs[#CMDs+1]={NAME='reset',DESC='Resets your character normally'}
CMDs[#CMDs+1]={NAME='respawn',DESC='Respawns you'}
CMDs[#CMDs+1]={NAME='refresh / re',DESC='Respawns and brings you back to the same position'}
CMDs[#CMDs+1]={NAME='god',DESC='Makes your character difficult to kill in most games'}
CMDs[#CMDs+1]={NAME='permadeath',DESC='Makes you unable to respawn after death'}
CMDs[#CMDs+1]={NAME='invisible / invis',DESC='Makes you invisible to other players'}
CMDs[#CMDs+1]={NAME='visible / vis',DESC='Makes you visible to other players'}
CMDs[#CMDs+1]={NAME='toolinvisible / toolinvis / tinvis',DESC='Makes you invisible to other players and able to use tools'}
CMDs[#CMDs+1]={NAME='speed / ws / walkspeed [num]',DESC='Change your walkspeed (default is 16)'}
CMDs[#CMDs+1]={NAME='spoofspeed / spoofws [num]',DESC='Spoofs your WalkSpeed on the Client'}
CMDs[#CMDs+1]={NAME='loopspeed / loopws [num]',DESC='Loops your walkspeed'}
CMDs[#CMDs+1]={NAME='unloopspeed / unloopws',DESC='Turns off loopspeed'}
CMDs[#CMDs+1]={NAME='hipheight / hheight [num]',DESC='Adjusts hip height'}
CMDs[#CMDs+1]={NAME='jumppower / jpower / jp [num]',DESC='Change a players jump height (default is 50)'}
CMDs[#CMDs+1]={NAME='spoofjumppower / spoofjp [num]',DESC='Spoofs your JumpPower on the Client'}
CMDs[#CMDs+1]={NAME='loopjumppower / loopjp [num]',DESC='Loops your jump height'}
CMDs[#CMDs+1]={NAME='unloopjumppower / unloopjp',DESC='Turns off loopjumppower'}
CMDs[#CMDs+1]={NAME='maxslopeangle / msa [num]',DESC='Adjusts MaxSlopeAngle'}
CMDs[#CMDs+1]={NAME='gravity / grav [num] (CLIENT)',DESC='Change your gravity'}
CMDs[#CMDs+1]={NAME='sit',DESC='Makes your character sit'}
CMDs[#CMDs+1]={NAME='lay / laydown',DESC='Makes your character lay down'}
CMDs[#CMDs+1]={NAME='sitwalk',DESC='Makes your character sit while still being able to walk'}
CMDs[#CMDs+1]={NAME='nosit',DESC='Prevents your character from sitting'}
CMDs[#CMDs+1]={NAME='unnosit',DESC='Disables nosit'}
CMDs[#CMDs+1]={NAME='jump',DESC='Makes your character jump'}
CMDs[#CMDs+1]={NAME='infinitejump / infjump',DESC='Allows you to jump before hitting the ground'}
CMDs[#CMDs+1]={NAME='uninfinitejump / uninfjump',DESC='Disables infjump'}
CMDs[#CMDs+1]={NAME='flyjump',DESC='Allows you to hold space to fly up'}
CMDs[#CMDs+1]={NAME='unflyjump',DESC='Disables flyjump'}
CMDs[#CMDs+1]={NAME='autojump / ajump',DESC='Automatically jumps when you run into an object'}
CMDs[#CMDs+1]={NAME='unautojump / unajump',DESC='Disables autojump'}
CMDs[#CMDs+1]={NAME='edgejump / ejump',DESC='Automatically jumps when you get to the edge of an object'}
CMDs[#CMDs+1]={NAME='unedgejump / unejump',DESC='Disables edgejump'}
CMDs[#CMDs+1]={NAME='platformstand / stun',DESC='Enables PlatformStand'}
CMDs[#CMDs+1]={NAME='unplatformstand / unstun',DESC='Disables PlatformStand'}
CMDs[#CMDs+1]={NAME='norotate / noautorotate',DESC='Disables AutoRotate'}
CMDs[#CMDs+1]={NAME='unnorotate / autorotate',DESC='Enables AutoRotate'}
CMDs[#CMDs+1]={NAME='enablestate [StateType]',DESC='Enables a humanoid state type'}
CMDs[#CMDs+1]={NAME='disablestate [StateType]',DESC='Disables a humanoid state type'}
CMDs[#CMDs+1]={NAME='team [team name] (CLIENT)',DESC='Changes your team. Sometimes fools localscripts.'}
CMDs[#CMDs+1]={NAME='nobillboardgui / nobgui / noname',DESC='Removes billboard and surface GUIs from your players (i.e. name GUIs at cafes)'}
CMDs[#CMDs+1]={NAME='loopnobgui / loopnoname',DESC='Loop removes billboard and surface GUIs from your players (i.e. name GUIs at cafes)'}
CMDs[#CMDs+1]={NAME='unloopnobgui / unloopnoname',DESC='Disables loopnobgui'}
CMDs[#CMDs+1]={NAME='noarms',DESC='Removes your arms'}
CMDs[#CMDs+1]={NAME='nolegs',DESC='Removes your legs'}
CMDs[#CMDs+1]={NAME='nolimbs',DESC='Removes your limbs'}
CMDs[#CMDs+1]={NAME='naked (CLIENT)',DESC='Removes your clothing'}
CMDs[#CMDs+1]={NAME='noface / removeface',DESC='Removes your face'}
CMDs[#CMDs+1]={NAME='blockhead',DESC='Turns your head into a block'}
CMDs[#CMDs+1]={NAME='blockhats',DESC='Turns your hats into blocks'}
CMDs[#CMDs+1]={NAME='blocktool',DESC='Turns the currently selected tool into a block'}
CMDs[#CMDs+1]={NAME='creeper',DESC='Makes you look like a creeper'}
CMDs[#CMDs+1]={NAME='drophats',DESC='Drops your hats'}
CMDs[#CMDs+1]={NAME='nohats / deletehats / rhats',DESC='Deletes your hats'}
CMDs[#CMDs+1]={NAME='hatspin / spinhats',DESC='Spins your characters accessories'}
CMDs[#CMDs+1]={NAME='unhatspin / unspinhats',DESC='Undoes spinhats'}
CMDs[#CMDs+1]={NAME='clearhats / cleanhats',DESC='Clears hats in the workspace'}
CMDs[#CMDs+1]={NAME='chardelete / cd [instance name]',DESC='Removes any part with a certain name from your character'}
CMDs[#CMDs+1]={NAME='chardeleteclass / cdc [class name]',DESC='Removes any part with a certain classname from your character'}
CMDs[#CMDs+1]={NAME='deletevelocity / dv / removeforces',DESC='Removes any velocity / force instances in your character'}
CMDs[#CMDs+1]={NAME='weaken [num]',DESC='Makes your character less dense'}
CMDs[#CMDs+1]={NAME='unweaken',DESC='Sets your characters CustomPhysicalProperties to default'}
CMDs[#CMDs+1]={NAME='strengthen [num]',DESC='Makes your character more dense (CustomPhysicalProperties)'}
CMDs[#CMDs+1]={NAME='unstrengthen',DESC='Sets your characters CustomPhysicalProperties to default'}
CMDs[#CMDs+1]={NAME='breakvelocity',DESC='Sets your characters velocity to 0'}
CMDs[#CMDs+1]={NAME='spin [speed]',DESC='Spins your character'}
CMDs[#CMDs+1]={NAME='unspin',DESC='Disables spin'}
CMDs[#CMDs+1]={NAME='split',DESC='Splits your character in half'}
CMDs[#CMDs+1]={NAME='nilchar',DESC='Sets your characters parent to nil'}
CMDs[#CMDs+1]={NAME='unnilchar / nonilchar',DESC='Sets your characters parent to workspace'}
CMDs[#CMDs+1]={NAME='noroot / removeroot / rroot',DESC='Removes your characters HumanoidRootPart'}
CMDs[#CMDs+1]={NAME='replaceroot',DESC='Replaces your characters HumanoidRootPart'}
CMDs[#CMDs+1]={NAME='clearcharappearance / clearchar / clrchar',DESC='Removes all accessory, shirt, pants, charactermesh, and bodycolors'}
CMDs[#CMDs+1]={NAME='',DESC=''}
CMDs[#CMDs+1]={NAME='animation / anim [ID] [speed]',DESC='Makes your character perform an animation (must be an animation on the marketplace or by roblox/stickmasterluke to replicate)'}
CMDs[#CMDs+1]={NAME='emote / em [ID] [speed]',DESC='Makes your character perform an emote (must be on the marketplace or by roblox/stickmasterluke to replicate)'}
CMDs[#CMDs+1]={NAME='dance',DESC='Makes you  d a n c e'}
CMDs[#CMDs+1]={NAME='undance',DESC='Stops dance animations'}
CMDs[#CMDs+1]={NAME='spasm',DESC='Makes you  c r a z y'}
CMDs[#CMDs+1]={NAME='unspasm',DESC='Stops spasm'}
CMDs[#CMDs+1]={NAME='headthrow',DESC='Simply makes you throw your head'}
CMDs[#CMDs+1]={NAME='noanim',DESC='Disables your animations'}
CMDs[#CMDs+1]={NAME='reanim',DESC='Restores your animations'}
CMDs[#CMDs+1]={NAME='animspeed [num]',DESC='Changes the speed of your current animation'}
CMDs[#CMDs+1]={NAME='copyanimation / copyanim / copyemote [player]',DESC='Copies someone elses animation'}
CMDs[#CMDs+1]={NAME='copyanimationid / copyanimid / copyemoteid [player]',DESC='Copies your animation id or someone elses to your clipboard'}
CMDs[#CMDs+1]={NAME='loopanimation / loopanim',DESC='Loops your current animation'}
CMDs[#CMDs+1]={NAME='stopanimations / stopanims',DESC='Stops running animations'}
CMDs[#CMDs+1]={NAME='refreshanimations / refreshanims',DESC='Refreshes animations'}
CMDs[#CMDs+1]={NAME='allowcustomanim / allowcustomanimations',DESC='Lets you use custom animation packs instead'}
CMDs[#CMDs+1]={NAME='unallowcustomanim / unallowcustomanimations',DESC='Doesn\'t let you use custom animation packs instead'}
CMDs[#CMDs+1]={NAME='',DESC=''}
CMDs[#CMDs+1]={NAME='autoclick [click delay] [release delay]',DESC='Automatically clicks your mouse with a set delay'}
CMDs[#CMDs+1]={NAME='unautoclick / noautoclick',DESC='Turns off autoclick'}
CMDs[#CMDs+1]={NAME='autokeypress [key] [down delay] [up delay]',DESC='Automatically presses a key with a set delay'}
CMDs[#CMDs+1]={NAME='unautokeypress',DESC='Stops autokeypress'}
CMDs[#CMDs+1]={NAME='hovername',DESC='Shows a players username when your mouse is hovered over them'}
CMDs[#CMDs+1]={NAME='unhovername / nohovername',DESC='Turns off hovername'}
CMDs[#CMDs+1]={NAME='mousesensitivity / ms [0-10]',DESC='Sets your mouse sensitivity (affects first person and right click drag) (default is 1)'}
CMDs[#CMDs+1]={NAME='clickdelete',DESC='Go to Settings > Keybinds > Add for click delete'}
CMDs[#CMDs+1]={NAME='clickteleport',DESC='Go to Settings > Keybinds > Add for click teleport'}
CMDs[#CMDs+1]={NAME='mouseteleport / mousetp',DESC='Teleports your character to your mouse. This is recommended as a keybind'}
CMDs[#CMDs+1]={NAME='',DESC=''}
CMDs[#CMDs+1]={NAME='tools',DESC='Copies tools from ReplicatedStorage and Lighting'}
CMDs[#CMDs+1]={NAME='notools / removetools / deletetools',DESC='Removes tools from character and backpack'}
CMDs[#CMDs+1]={NAME='deleteselectedtool / dst',DESC='Removes any currently selected tools'}
CMDs[#CMDs+1]={NAME='grabtools',DESC='Automatically get tools that are dropped'}
CMDs[#CMDs+1]={NAME='ungrabtools / nograbtools',DESC='Disables grabtools'}
CMDs[#CMDs+1]={NAME='copytools [player] (CLIENT)',DESC='Copies a players tools'}
CMDs[#CMDs+1]={NAME='dupetools / clonetools [num]',DESC='Duplicates your inventory tools a set amount of times'}
CMDs[#CMDs+1]={NAME='droptools',DESC='Drops your tools'}
CMDs[#CMDs+1]={NAME='droppabletools',DESC='Makes your tools droppable'}
CMDs[#CMDs+1]={NAME='equiptools',DESC='Equips every tool in your inventory at once'}
CMDs[#CMDs+1]={NAME='unequiptools',DESC='Unequips every tool you are currently holding at once'}
CMDs[#CMDs+1]={NAME='removespecifictool [name]',DESC='Automatically remove a specific tool from your inventory'}
CMDs[#CMDs+1]={NAME='unremovespecifictool [name]',DESC='Stops removing a specific tool from your inventory'}
CMDs[#CMDs+1]={NAME='clearremovespecifictool',DESC='Stop removing all specific tools from your inventory'}
CMDs[#CMDs+1]={NAME='reach [num]',DESC='Increases the hitbox of your held tool'}
CMDs[#CMDs+1]={NAME='boxreach [num]',DESC='Increases the hitbox of your held tool in a box shape'}
CMDs[#CMDs+1]={NAME='unreach / noreach',DESC='Turns off reach'}
CMDs[#CMDs+1]={NAME='grippos [X Y Z]',DESC='Changes your current tools grip position'}
CMDs[#CMDs+1]={NAME='usetools [amount] [delay]',DESC='Activates all tools in your backpack at the same time'}
CMDs[#CMDs+1]={NAME='',DESC=''}
CMDs[#CMDs+1]={NAME='addalias [cmd] [alias]',DESC='Adds an alias to a command'}
CMDs[#CMDs+1]={NAME='removealias [alias]',DESC='Removes a custom alias'}
CMDs[#CMDs+1]={NAME='clraliases',DESC='Removes all custom aliases'}
CMDs[#CMDs+1]={NAME='',DESC=''}
CMDs[#CMDs+1]={NAME='addplugin / plugin [name]',DESC='Add a plugin via command'}
CMDs[#CMDs+1]={NAME='removeplugin / deleteplugin [name]',DESC='Remove a plugin via command'}
CMDs[#CMDs+1]={NAME='reloadplugin [name]',DESC='Reloads a plugin'}
CMDs[#CMDs+1]={NAME='addallplugins / loadallplugins',DESC='Adds all available plugins from the workspace folder'}
CMDs[#CMDs+1]={NAME='',DESC=''}
CMDs[#CMDs+1]={NAME='breakloops / break (cmd loops)',DESC='Stops any cmd loops (;100^1^cmd)'}
CMDs[#CMDs+1]={NAME='removecmd / deletecmd',DESC='Removes a command until the admin is reloaded'}
CMDs[#CMDs+1]={NAME='tpwalk / teleportwalk [num]',DESC='Teleports you to your move direction'}
CMDs[#CMDs+1]={NAME='untpwalk / unteleportwalk',DESC='Undoes tpwalk / teleportwalk'}
CMDs[#CMDs+1]={NAME='notifyping / ping',DESC='Notify yourself your ping'}
CMDs[#CMDs+1]={NAME='trip',DESC='Makes your character fall over'}
CMDs[#CMDs+1]={NAME='norender',DESC='Disable 3d Rendering to decrease the amount of CPU the client uses'}
CMDs[#CMDs+1]={NAME='render',DESC='Enable 3d Rendering'}
CMDs[#CMDs+1]={NAME='use2022materials / 2022materials',DESC='Enables 2022 material textures'}
CMDs[#CMDs+1]={NAME='unuse2022materials / un2022materials',DESC='Disables 2022 material textures'}
CMDs[#CMDs+1]={NAME='promptr6',DESC='Prompts the game to switch your rig type to R6'}
CMDs[#CMDs+1]={NAME='promptr15',DESC='Prompts the game to switch your rig type to R15'}
CMDs[#CMDs+1]={NAME='wallwalk / walkonwalls',DESC='Walk on walls'}
CMDs[#CMDs+1]={NAME='removeads / adblock',DESC='Automatically removes ad billboards'}
CMDs[#CMDs+1]={NAME='scare / spook [player]',DESC='Teleports in front of a player for half a second'}
CMDs[#CMDs+1]={NAME='alignmentkeys',DESC='Enables the left and right alignment keys (comma and period)'}
CMDs[#CMDs+1]={NAME='unalignmentkeys / noalignmentkeys',DESC='Disables the alignment keys'}
CMDs[#CMDs+1]={NAME='ctrllock',DESC='Binds Shiftlock to LeftControl'}
CMDs[#CMDs+1]={NAME='unctrllock',DESC='Re-binds Shiftlock to LeftShift'}
CMDs[#CMDs+1]={NAME='listento [player]',DESC='Listens to the area around a player. Can also eavesdrop with vc'}
CMDs[#CMDs+1]={NAME='unlistento',DESC='Disables listento'}
CMDs[#CMDs+1]={NAME='jerk',DESC='Makes you jork it'}
CMDs[#CMDs+1]={NAME='unsuspendchat',DESC='Unsuspends you from text chat'}
CMDs[#CMDs+1]={NAME='unsuspendvc',DESC='Unsuspends you from voice chat'}
CMDs[#CMDs+1]={NAME='muteallvcs',DESC='Mutes voice chat for all players'}
CMDs[#CMDs+1]={NAME='unmuteallvcs',DESC='Unmutes voice chat for all players'}
CMDs[#CMDs+1]={NAME='mutevc [player]',DESC='Mutes the voice chat of a player'}
CMDs[#CMDs+1]={NAME='unmutevc [player]',DESC='Unmutes the voice chat of a player'}
CMDs[#CMDs+1]={NAME='phonebook / call',DESC='Prompts the Roblox phonebook UI to let you call your friends'}


for p=1,#CMDs do
local q=Example:Clone()
q.Parent=CMDsF
q.Visible=false
q.Text=CMDs[p].NAME
q.Name="CMD"
table.insert(text1,q)
if CMDs[p].DESC~=""then
q:SetAttribute("Title",CMDs[p].NAME)
q:SetAttribute("Desc",CMDs[p].DESC)
q.MouseButton1Down:Connect(function()
if not IsOnMobile and q.Visible and q.TextTransparency==0 then
local r=Cmdbar.Text
Cmdbar:CaptureFocus()
autoComplete(q.Text,r)
maximizeHolder()
end
end)
end
end

IndexContents("",true)

function checkTT()
local p
local q=COREGUI:GetGuiObjectsAtPosition(IYMouse.X,IYMouse.Y)

for r,s in pairs(q)do
if s.Parent==CMDsF then
p=s
end
end

if p~=nil and p:GetAttribute"Title"~=nil then
local r=IYMouse.X
local s=IYMouse.Y
local t
local u
if IYMouse.X>200 then
t=r-201
else
t=r+21
end
if IYMouse.Y>(IYMouse.ViewSizeY-96)then
u=s-97
else
u=s
end
Tooltip.Position=UDim2.new(0,t,0,u)
Description.Text=p:GetAttribute"Desc"
if p:GetAttribute"Title"~=nil then
Title_3.Text=p:GetAttribute"Title"
else
Title_3.Text=''
end
Tooltip.Visible=true
else
Tooltip.Visible=false
end
end

function FindInTable(p,q)
if p==nil then return false end
for r,s in pairs(p)do
if s==q then return true end
end
return false
end

function GetInTable(p,q)
for r=1,#p do
if p[r]==q then
return r
end
end
return false
end

function permadeath(p)
if replicatesignal then
replicatesignal(p.ConnectDiedSignalBackend)
task.wait(Players.RespawnTime-0.1)
end
end

function respawn(p)
if invisRunning then TurnVisible()end

local q,r=false,false
if gethidden then
q,r=gethidden(workspace,"RejectCharacterDeletions")~=Enum.RejectCharacterDeletions.Disabled
end

if q and replicatesignal then
replicatesignal(p.ConnectDiedSignalBackend)
task.wait(Players.RespawnTime-0.1)
replicatesignal(p.Kill)
elseif q and not replicatesignal then
notify("Incompatible Exploit","Your exploit does not support this command (missing replicatesignal)")
else
local s=p.Character
local t=s:FindFirstChildWhichIsA"Humanoid"
if t then t:ChangeState(Enum.HumanoidStateType.Dead)end
s:ClearAllChildren()
local u=Instance.new"Model"
u.Parent=workspace
p.Character=u
task.wait()
p.Character=s
u:Destroy()
end
end

local p=false
function refresh(q)
p=true
local r=q.Character:WaitForChild"HumanoidRootPart"
local s=r.CFrame
local t=workspace.CurrentCamera.CFrame
respawn(q)
task.spawn(function()
q.CharacterAdded:Wait():WaitForChild"HumanoidRootPart".CFrame,workspace.CurrentCamera.CFrame=s,task.wait()and t
p=false
end)
end

local q

function onDied()
task.spawn(function()
if pcall(function()Players.LocalPlayer.Character:FindFirstChildOfClass'Humanoid'end)and Players.LocalPlayer.Character:FindFirstChildOfClass'Humanoid'then
Players.LocalPlayer.Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
if getRoot(Players.LocalPlayer.Character)then
q=getRoot(Players.LocalPlayer.Character).CFrame
end
end)
else
wait(2)
onDied()
end
end)
end

Clip=true
spDelay=0.1
Players.LocalPlayer.CharacterAdded:Connect(function()
NOFLY()
Floating=false

if not Clip then
execCmd'clip'
end

repeat wait()until getRoot(Players.LocalPlayer.Character)

pcall(function()
if spawnpoint and not p and spawnpos~=nil then
wait(spDelay)
getRoot(Players.LocalPlayer.Character).CFrame=spawnpos
end
end)

onDied()
end)

onDied()

function getstring(r)
local s=r-1
local t=''for u,v in pairs(cargs)do
if u>s then
if t~=''then
t=t..' '..v
else
t=t..v
end
end
end
return t
end

findCmd=function(r)
for s,t in pairs(cmds)do
if t.NAME:lower()==r:lower()or FindInTable(t.ALIAS,r:lower())then
return t
end
end
return customAlias[r:lower()]
end

function splitString(r,s)
local t={}
if s==nil then s=","end
for u in string.gmatch(r,"[^"..s.."]+")do
table.insert(t,u)
end
return t
end

cmdHistory={}
local r={}
local s=0
local t=" "
local u=0
function execCmd(v,w,x)
v=v:gsub("%s+$","")
task.spawn(function()
local y=v
v=string.gsub(v,"\\\\","%%BackSlash%%")
local z=splitString(v,"\\")
for A,B in pairs(z)do
B=string.gsub(B,"%%BackSlash%%","\\")local
C, D, E=B:find"^(%d+)%^"
local F=0
local G=false
if E then
B=B:sub(D+1)local
H, I, J=B:find"^([%d%.]+)%^"
if J then
B=B:sub(I+1)
F=tonumber(J)or 0
end
else
local H,I=B:find"^inf%^"
if H then
G=true
B=B:sub(I+1)local
J, K, L=B:find"^([%d%.]+)%^"
if L then
B=B:sub(K+1)
L=tonumber(L)or 1
F=(L>0 and L or 1)
else
F=1
end
end
end
E=tonumber(E or 1)

if B:sub(1,1)=="!"then
local H=splitString(B:sub(2),t)
if H[1]and r[H[1] ]then B=r[H[1] ]end
end

local H=splitString(B,t)
local I=H[1]
local J=findCmd(I)
if J then
table.remove(H,1)
cargs=H
if not w then w=Players.LocalPlayer end
if x then
if w==Players.LocalPlayer then
if cmdHistory[1]~=y and y:sub(1,11)~='lastcommand'and y:sub(1,7)~='lastcmd'then
table.insert(cmdHistory,1,y)
end
end
if#cmdHistory>30 then table.remove(cmdHistory)end

r[I]=B
end
local K=tick()
if G then
while u<K do
local L,M=pcall(J.FUNC,H,w)
if not L and _G.IY_DEBUG then
warn("Command Error:",I,M)
end
wait(F)
end
else
for L=1,E do
if u>K then break end
local M,N=pcall(function()
J.FUNC(H,w)
end)
if not M and _G.IY_DEBUG then
warn("Command Error:",I,N)
end
if F~=0 then wait(F)end
end
end
end
end
end)
end

function addcmd(v,w,x,y)
cmds[#cmds+1]=
{
NAME=v;
ALIAS=w or{};
FUNC=x;
PLUGIN=y;
}
end

function removecmd(v)
if v~=" "then
for w=#cmds,1,-1 do
if cmds[w].NAME==v or FindInTable(cmds[w].ALIAS,v)then
table.remove(cmds,w)
for x,y in pairs(CMDsF:GetChildren())do
if string.find(y.Text,"^"..v.."$")or string.find(y.Text,"^"..v.." ")or string.find(y.Text," "..v.."$")or string.find(y.Text," "..v.." ")then
y.TextTransparency=0.7
y.MouseButton1Click:Connect(function()
notify(y.Text,"Command has been disabled by you or a plugin")
end)
end
end
end
end
end
end

function overridecmd(v,w)
local x=findCmd(v)
if x and x.FUNC then x.FUNC=w end
end

function addbind(v,w,x,y)
if y then
binds[#binds+1]=
{
COMMAND=v;
KEY=w;
ISKEYUP=x;
TOGGLE=y;
}
else
binds[#binds+1]=
{
COMMAND=v;
KEY=w;
ISKEYUP=x;
}
end
end

function addcmdtext(v,w,x)
local y=Example:Clone()
local z=tostring(v)
local A=tostring(x)
y.Parent=CMDsF
y.Visible=false
y.Text=v
y.Name='PLUGIN_'..w
table.insert(text1,y)
if x and x~=''then
y:SetAttribute("Title",z)
y:SetAttribute("Desc",A)
y.MouseButton1Down:Connect(function()
if y.Visible and y.TextTransparency==0 then
Cmdbar:CaptureFocus()
autoComplete(y.Text)
maximizeHolder()
end
end)
end
end

local v=function(v)
local w=workspace.CurrentCamera:WorldToScreenPoint(v.Position)
return Vector2.new(w.X,w.Y)
end

local w=function()
return Vector2.new(IYMouse.X,IYMouse.Y)
end

local x=function()
local x
local y=math.huge
for z,A in pairs(Players:GetPlayers())do
if A~=Players.LocalPlayer and A.Character and A.Character:FindFirstChildOfClass"Humanoid"then
for B,C in pairs(A.Character:GetChildren())do
if string.find(C.Name,"Torso")then
local D=(v(C)-w()).Magnitude
if D<y then
y=D
x=A
end
end
end
end
end
return x
end

SpecialPlayerCases={all=
function(y)return Players:GetPlayers()end,others=
function(y)
local z={}
for A,B in pairs(Players:GetPlayers())do
if B~=y then
table.insert(z,B)
end
end
return z
end,me=
function(y)return{y}end,
["#(%d+)"]=function(y,z,A)
local B={}
local C=tonumber(z[1])
local D={unpack(A)}
for E=1,C do
if#D==0 then break end
local F=math.random(1,#D)
table.insert(B,D[F])
table.remove(D,F)
end
return B
end,random=
function(y,z,A)
local B=Players:GetPlayers()
local C=Players.LocalPlayer
table.remove(B,table.find(B,C))
return{B[math.random(1,#B)]}
end,
["%%(.+)"]=function(y,z)
local A={}
local B=z[1]
for C,D in pairs(Players:GetPlayers())do
if D.Team and string.sub(string.lower(D.Team.Name),1,#B)==string.lower(B)then
table.insert(A,D)
end
end
return A
end,allies=
function(y)
local z={}
local A=y.Team
for B,C in pairs(Players:GetPlayers())do
if C.Team==A then
table.insert(z,C)
end
end
return z
end,enemies=
function(y)
local z={}
local A=y.Team
for B,C in pairs(Players:GetPlayers())do
if C.Team~=A then
table.insert(z,C)
end
end
return z
end,team=
function(y)
local z={}
local A=y.Team
for B,C in pairs(Players:GetPlayers())do
if C.Team==A then
table.insert(z,C)
end
end
return z
end,nonteam=
function(y)
local z={}
local A=y.Team
for B,C in pairs(Players:GetPlayers())do
if C.Team~=A then
table.insert(z,C)
end
end
return z
end,friends=
function(y,z)
local A={}
for B,C in pairs(Players:GetPlayers())do
if C:IsFriendsWith(y.UserId)and C~=y then
table.insert(A,C)
end
end
return A
end,nonfriends=
function(y,z)
local A={}
for B,C in pairs(Players:GetPlayers())do
if not C:IsFriendsWith(y.UserId)and C~=y then
table.insert(A,C)
end
end
return A
end,guests=
function(y,z)
local A={}
for B,C in pairs(Players:GetPlayers())do
if C.Guest then
table.insert(A,C)
end
end
return A
end,bacons=
function(y,z)
local A={}
for B,C in pairs(Players:GetPlayers())do
if C.Character:FindFirstChild'Pal Hair'or C.Character:FindFirstChild'Kate Hair'then
table.insert(A,C)
end
end
return A
end,
["age(%d+)"]=function(y,z)
local A={}
local B=tonumber(z[1])
if not B==nil then return end
for C,D in pairs(Players:GetPlayers())do
if D.AccountAge<=B then
table.insert(A,D)
end
end
return A
end,nearest=
function(y,z,A)
local B=y.Character
if not B or not getRoot(B)then return end
local C=math.huge
local D
for E,F in pairs(A)do
if F~=y and F.Character then
local G=F:DistanceFromCharacter(getRoot(B).Position)
if G<C then
C=G
D={F}
end
end
end
return D
end,farthest=
function(y,z,A)
local B=y.Character
if not B or not getRoot(B)then return end
local C=0
local D
for E,F in pairs(A)do
if F~=y and F.Character then
local G=F:DistanceFromCharacter(getRoot(B).Position)
if G>C then
C=G
D={F}
end
end
end
return D
end,
["group(%d+)"]=function(y,z)
local A={}
local B=tonumber(z[1])
for C,D in pairs(Players:GetPlayers())do
if D:IsInGroup(B)then
table.insert(A,D)
end
end
return A
end,alive=
function(y,z)
local A={}
for B,C in pairs(Players:GetPlayers())do
if C.Character and C.Character:FindFirstChildOfClass"Humanoid"and C.Character:FindFirstChildOfClass"Humanoid".Health>0 then
table.insert(A,C)
end
end
return A
end,dead=
function(y,z)
local A={}
for B,C in pairs(Players:GetPlayers())do
if(not C.Character or not C.Character:FindFirstChildOfClass"Humanoid")or C.Character:FindFirstChildOfClass"Humanoid".Health<=0 then
table.insert(A,C)
end
end
return A
end,
["rad(%d+)"]=function(y,z)
local A={}
local B=tonumber(z[1])
local C=y.Character
if not C or not getRoot(C)then return end
for D,E in pairs(Players:GetPlayers())do
if E.Character and getRoot(E.Character)then
local F=(getRoot(E.Character).Position-getRoot(C).Position).magnitude
if F<=B then table.insert(A,E)end
end
end
return A
end,cursor=
function(y)
local z={}
local A=x()
if A~=nil then table.insert(z,A)end
return z
end,npcs=
function(y,z)
local A={}
for B,C in pairs(workspace:GetDescendants())do
if C:IsA"Model"and getRoot(C)and C:FindFirstChildWhichIsA"Humanoid"and Players:GetPlayerFromCharacter(C)==nil then
local D=Instance.new"Player"
D.Name=C.Name.." - "..C:FindFirstChildWhichIsA"Humanoid".DisplayName
D.Character=C
table.insert(A,D)
end
end
return A
end,
}

function toTokens(y)
local z={}
for A,B in string.gmatch(y,"([+-])([^+-]+)")do
table.insert(z,{Operator=A,Name=B})
end
return z
end

function onlyIncludeInTable(y,z)
local A={}
local B={}
for C,D in pairs(z)do A[D.Name]=true end
for C,D in pairs(y)do if A[D.Name]then table.insert(B,D)end end
return B
end

function removeTableMatches(y,z)
local A={}
local B={}
for C,D in pairs(z)do A[D.Name]=true end
for C,D in pairs(y)do if not A[D.Name]then table.insert(B,D)end end
return B
end

function getPlayersByName(y)
local z,A,B=string.lower(y),#y,{}
for C,D in pairs(Players:GetPlayers())do
if z:sub(0,1)=='@'then
if string.sub(string.lower(D.Name),1,A-1)==z:sub(2)then
table.insert(B,D)
end
else
if string.sub(string.lower(D.Name),1,A)==z or string.sub(string.lower(D.DisplayName),1,A)==z then
table.insert(B,D)
end
end
end
return B
end

function getPlayer(y,z)
if y==nil then return{z.Name}end
local A=splitString(y,",")

local B={}

for C,D in pairs(A)do
if string.sub(D,1,1)~="+"and string.sub(D,1,1)~="-"then D="+"..D end
local E=toTokens(D)
local F=Players:GetPlayers()

for G,H in pairs(E)do
if H.Operator=="+"then
local I=H.Name
local J=false
for K,L in pairs(SpecialPlayerCases)do
local M={string.match(I,"^"..K.."$")}
if#M>0 then
J=true
F=onlyIncludeInTable(F,L(z,M,F))
end
end
if not J then
F=onlyIncludeInTable(F,getPlayersByName(I))
end
else
local I=H.Name
local J=false
for K,L in pairs(SpecialPlayerCases)do
local M={string.match(I,"^"..K.."$")}
if#M>0 then
J=true
F=removeTableMatches(F,L(z,M,F))
end
end
if not J then
F=removeTableMatches(F,getPlayersByName(I))
end
end
end

for G,H in pairs(F)do table.insert(B,H)end
end

local C={}
for D,E in pairs(B)do table.insert(C,E.Name)end

return C
end

function formatUsername(y)
if y.DisplayName~=y.Name then
return string.format("%s (%s)",y.Name,y.DisplayName)
end
return y.Name
end

getprfx=function(y)
if y:sub(1,string.len(prefix))==prefix then return{'cmd',string.len(prefix)+1}
end return
end

function do_exec(y,z)
y=y:gsub('/e ','')
local A=getprfx(y)
if not A then return end
y=y:sub(A[2])
if A[1]=='cmd'then
execCmd(y,z,true)
IndexContents('',true,false,true)
CMDsF.CanvasPosition=n
end
end

lastTextBoxString,lastTextBoxCon,lastEnteredString=nil,nil,nil

UserInputService.TextBoxFocused:Connect(function(y)
if lastTextBoxCon then lastTextBoxCon:Disconnect()end
if y==Cmdbar then lastTextBoxString=nil return end
lastTextBoxString=y.Text
lastTextBoxCon=y:GetPropertyChangedSignal"Text":Connect(function()
if not(UserInputService:IsKeyDown(Enum.KeyCode.Return)or UserInputService:IsKeyDown(Enum.KeyCode.KeypadEnter))then
lastTextBoxString=y.Text
end
end)
end)

UserInputService.InputBegan:Connect(function(y,z)
if z then
if Cmdbar and Cmdbar:IsFocused()then
if y.KeyCode==Enum.KeyCode.Up then
s=s+1
if s>#cmdHistory then s=#cmdHistory end
Cmdbar.Text=cmdHistory[s]or""
Cmdbar.CursorPosition=1020
elseif y.KeyCode==Enum.KeyCode.Down then
s=s-1
if s<0 then s=0 end
Cmdbar.Text=cmdHistory[s]or""
Cmdbar.CursorPosition=1020
end
elseif y.KeyCode==Enum.KeyCode.Return or y.KeyCode==Enum.KeyCode.KeypadEnter then
lastEnteredString=lastTextBoxString
end
end
end)

Players.LocalPlayer.Chatted:Connect(function()
wait()
if lastEnteredString then
local y=lastEnteredString
lastEnteredString=nil
do_exec(y,Players.LocalPlayer)
end
end)

Cmdbar.PlaceholderText="Command Bar ("..prefix..")"
Cmdbar:GetPropertyChangedSignal"Text":Connect(function()
if Cmdbar:IsFocused()then
IndexContents(Cmdbar.Text,true,true)
end
end)

local y
tabAllowed=true
Cmdbar.FocusLost:Connect(function(z)
if z then
local A=Cmdbar.Text:gsub("^"..prefix,"")
execCmd(A,Players.LocalPlayer,true)
end
if y then y:Disconnect()end
wait()
if not Cmdbar:IsFocused()then
Cmdbar.Text=""
IndexContents('',true,false,true)
if e==true then
wait(0.2)
Settings:TweenPosition(UDim2.new(0,0,0,45),"InOut","Quart",0.2,true,nil)
CMDsF.Visible=false
end
end
CMDsF.CanvasPosition=n
end)

Cmdbar.Focused:Connect(function()
s=0
n=CMDsF.CanvasPosition
if e==true then
wait(0.2)
CMDsF.Visible=true
Settings:TweenPosition(UDim2.new(0,0,0,220),"InOut","Quart",0.2,true,nil)
end
y=UserInputService.InputBegan:Connect(function(z,A)
if Cmdbar:IsFocused()then
if tabAllowed==true and z.KeyCode==Enum.KeyCode.Tab and o~=nil then
autoComplete(o)
end
else
y:Disconnect()
end
end)
end)

ESPenabled=false
CHMSenabled=false

function round(z,A)
local B=10^(A or 0)
return math.floor(z*B+0.5)/B
end

function ESP(z,A)
task.spawn(function()
for B,C in pairs(COREGUI:GetChildren())do
if C.Name==z.Name..'_ESP'then
C:Destroy()
end
end
wait()
if z.Character and z.Name~=Players.LocalPlayer.Name and not COREGUI:FindFirstChild(z.Name..'_ESP')then
local B=Instance.new"Folder"
B.Name=z.Name..'_ESP'
B.Parent=COREGUI
repeat wait(1)until z.Character and getRoot(z.Character)and z.Character:FindFirstChildOfClass"Humanoid"
for C,D in pairs(z.Character:GetChildren())do
if(D:IsA"BasePart")then
local E=Instance.new"BoxHandleAdornment"
E.Name=z.Name
E.Parent=B
E.Adornee=D
E.AlwaysOnTop=true
E.ZIndex=10
E.Size=D.Size
E.Transparency=espTransparency
if A==true then
E.Color=BrickColor.new(z.TeamColor==Players.LocalPlayer.TeamColor and"Bright green"or"Bright red")
else
E.Color=z.TeamColor
end
end
end
if z.Character and z.Character:FindFirstChild'Head'then
local C=Instance.new"BillboardGui"
local D=Instance.new"TextLabel"
C.Adornee=z.Character.Head
C.Name=z.Name
C.Parent=B
C.Size=UDim2.new(0,100,0,150)
C.StudsOffset=Vector3.new(0,1,0)
C.AlwaysOnTop=true
D.Parent=C
D.BackgroundTransparency=1
D.Position=UDim2.new(0,0,0,-50)
D.Size=UDim2.new(0,100,0,100)
D.Font=Enum.Font.SourceSansSemibold
D.TextSize=20
D.TextColor3=Color3.new(1,1,1)
D.TextStrokeTransparency=0
D.TextYAlignment=Enum.TextYAlignment.Bottom
D.Text='Name: '..z.Name
D.ZIndex=10
local E
local F
local G
G=z.CharacterAdded:Connect(function()
if ESPenabled then
E:Disconnect()
F:Disconnect()
B:Destroy()
repeat wait(1)until getRoot(z.Character)and z.Character:FindFirstChildOfClass"Humanoid"
ESP(z,A)
G:Disconnect()
else
F:Disconnect()
G:Disconnect()
end
end)
F=z:GetPropertyChangedSignal"TeamColor":Connect(function()
if ESPenabled then
E:Disconnect()
G:Disconnect()
B:Destroy()
repeat wait(1)until getRoot(z.Character)and z.Character:FindFirstChildOfClass"Humanoid"
ESP(z,A)
F:Disconnect()
else
F:Disconnect()
end
end)
local function espLoop()
if COREGUI:FindFirstChild(z.Name..'_ESP')then
if z.Character and getRoot(z.Character)and z.Character:FindFirstChildOfClass"Humanoid"and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character)and Players.LocalPlayer.Character:FindFirstChildOfClass"Humanoid"then
local H=math.floor((getRoot(Players.LocalPlayer.Character).Position-getRoot(z.Character).Position).magnitude)
D.Text='Name: '..z.Name..' | Health: '..round(z.Character:FindFirstChildOfClass'Humanoid'.Health,1)..' | Studs: '..H
end
else
F:Disconnect()
G:Disconnect()
E:Disconnect()
end
end
E=RunService.RenderStepped:Connect(espLoop)
end
end
end)
end

function CHMS(z)
task.spawn(function()
for A,B in pairs(COREGUI:GetChildren())do
if B.Name==z.Name..'_CHMS'then
B:Destroy()
end
end
wait()
if z.Character and z.Name~=Players.LocalPlayer.Name and not COREGUI:FindFirstChild(z.Name..'_CHMS')then
local A=Instance.new"Folder"
A.Name=z.Name..'_CHMS'
A.Parent=COREGUI
repeat wait(1)until z.Character and getRoot(z.Character)and z.Character:FindFirstChildOfClass"Humanoid"
for B,C in pairs(z.Character:GetChildren())do
if(C:IsA"BasePart")then
local D=Instance.new"BoxHandleAdornment"
D.Name=z.Name
D.Parent=A
D.Adornee=C
D.AlwaysOnTop=true
D.ZIndex=10
D.Size=C.Size
D.Transparency=espTransparency
D.Color=z.TeamColor
end
end
local B
local C
local D
B=z.CharacterAdded:Connect(function()
if CHMSenabled then
A:Destroy()
C:Disconnect()
repeat wait(1)until getRoot(z.Character)and z.Character:FindFirstChildOfClass"Humanoid"
CHMS(z)
B:Disconnect()
else
C:Disconnect()
B:Disconnect()
end
end)
C=z:GetPropertyChangedSignal"TeamColor":Connect(function()
if CHMSenabled then
A:Destroy()
B:Disconnect()
repeat wait(1)until getRoot(z.Character)and z.Character:FindFirstChildOfClass"Humanoid"
CHMS(z)
C:Disconnect()
else
C:Disconnect()
end
end)
D=A.AncestryChanged:Connect(function()
C:Disconnect()
B:Disconnect()
D:Disconnect()
end)
end
end)
end

function Locate(z)
task.spawn(function()
for A,B in pairs(COREGUI:GetChildren())do
if B.Name==z.Name..'_LC'then
B:Destroy()
end
end
wait()
if z.Character and z.Name~=Players.LocalPlayer.Name and not COREGUI:FindFirstChild(z.Name..'_LC')then
local A=Instance.new"Folder"
A.Name=z.Name..'_LC'
A.Parent=COREGUI
repeat wait(1)until z.Character and getRoot(z.Character)and z.Character:FindFirstChildOfClass"Humanoid"
for B,C in pairs(z.Character:GetChildren())do
if(C:IsA"BasePart")then
local D=Instance.new"BoxHandleAdornment"
D.Name=z.Name
D.Parent=A
D.Adornee=C
D.AlwaysOnTop=true
D.ZIndex=10
D.Size=C.Size
D.Transparency=espTransparency
D.Color=z.TeamColor
end
end
if z.Character and z.Character:FindFirstChild'Head'then
local B=Instance.new"BillboardGui"
local C=Instance.new"TextLabel"
B.Adornee=z.Character.Head
B.Name=z.Name
B.Parent=A
B.Size=UDim2.new(0,100,0,150)
B.StudsOffset=Vector3.new(0,1,0)
B.AlwaysOnTop=true
C.Parent=B
C.BackgroundTransparency=1
C.Position=UDim2.new(0,0,0,-50)
C.Size=UDim2.new(0,100,0,100)
C.Font=Enum.Font.SourceSansSemibold
C.TextSize=20
C.TextColor3=Color3.new(1,1,1)
C.TextStrokeTransparency=0
C.TextYAlignment=Enum.TextYAlignment.Bottom
C.Text='Name: '..z.Name
C.ZIndex=10
local D
local E
local F
E=z.CharacterAdded:Connect(function()
if A~=nil and A.Parent~=nil then
D:Disconnect()
F:Disconnect()
A:Destroy()
repeat wait(1)until getRoot(z.Character)and z.Character:FindFirstChildOfClass"Humanoid"
Locate(z)
E:Disconnect()
else
F:Disconnect()
E:Disconnect()
end
end)
F=z:GetPropertyChangedSignal"TeamColor":Connect(function()
if A~=nil and A.Parent~=nil then
D:Disconnect()
E:Disconnect()
A:Destroy()
repeat wait(1)until getRoot(z.Character)and z.Character:FindFirstChildOfClass"Humanoid"
Locate(z)
F:Disconnect()
else
F:Disconnect()
end
end)
local function lcLoop()
if COREGUI:FindFirstChild(z.Name..'_LC')then
if z.Character and getRoot(z.Character)and z.Character:FindFirstChildOfClass"Humanoid"and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character)and Players.LocalPlayer.Character:FindFirstChildOfClass"Humanoid"then
local G=math.floor((getRoot(Players.LocalPlayer.Character).Position-getRoot(z.Character).Position).magnitude)
C.Text='Name: '..z.Name..' | Health: '..round(z.Character:FindFirstChildOfClass'Humanoid'.Health,1)..' | Studs: '..G
end
else
F:Disconnect()
E:Disconnect()
D:Disconnect()
end
end
D=RunService.RenderStepped:Connect(lcLoop)
end
end
end)
end


local z=false
local A=false

function refreshbinds()
if Holder_2 then
Holder_2:ClearAllChildren()
Holder_2.CanvasSize=UDim2.new(0,0,0,10)
for B=1,#binds do
local C=25
local D=((B*C)-C)
local E=Example_2:Clone()
E.Parent=Holder_2
E.Visible=true
E.Position=UDim2.new(0,0,0,D+5)
table.insert(shade2,E)
table.insert(shade2,E.Text)
table.insert(text1,E.Text)
table.insert(shade3,E.Text.Delete)
table.insert(text2,E.Text.Delete)
local F=tostring(binds[B].KEY)
local G
if F=='RightClick'or F=='LeftClick'then
G=F
else
G=F:sub(14)
end
if binds[B].TOGGLE then
E.Text.Text=G.." > "..binds[B].COMMAND.." / "..binds[B].TOGGLE
else
E.Text.Text=G.." > "..binds[B].COMMAND.."  "..(binds[B].ISKEYUP and"(keyup)"or"(keydown)")
end
Holder_2.CanvasSize=UDim2.new(0,0,0,D+30)
E.Text.Delete.MouseButton1Click:Connect(function()
unkeybind(binds[B].COMMAND,binds[B].KEY)
end)
end
end
end

refreshbinds()

toggleOn={}

function unkeybind(B,C)
for D=#binds,1,-1 do
if binds[D].COMMAND==B and binds[D].KEY==C then
toggleOn[binds[D] ]=nil
table.remove(binds,D)
end
end
refreshbinds()
updatesaves()
if C=='RightClick'or C=='LeftClick'then
notify('Keybinds Updated','Unbinded '..C..' from '..B)
else
notify('Keybinds Updated','Unbinded '..C:sub(14)..' from '..B)
end
end

PositionsFrame.Delete.MouseButton1Click:Connect(function()
execCmd'cpos'
end)

function refreshwaypoints()
if#WayPoints>0 or#pWayPoints>0 then
PositionsHint:Destroy()
end
if Holder_4 then
Holder_4:ClearAllChildren()
Holder_4.CanvasSize=UDim2.new(0,0,0,10)
local B=25
local C=1
for D=1,#WayPoints do
local E=((C*B)-B)
local F=Example_4:Clone()
F.Parent=Holder_4
F.Visible=true
F.Position=UDim2.new(0,0,0,E+5)
F.Text.Text=WayPoints[D].NAME
table.insert(shade2,F)
table.insert(shade2,F.Text)
table.insert(text1,F.Text)
table.insert(shade3,F.Text.Delete)
table.insert(text2,F.Text.Delete)
table.insert(shade3,F.Text.TP)
table.insert(text2,F.Text.TP)
Holder_4.CanvasSize=UDim2.new(0,0,0,E+30)
F.Text.Delete.MouseButton1Click:Connect(function()
execCmd('dpos '..WayPoints[D].NAME)
end)
F.Text.TP.MouseButton1Click:Connect(function()
execCmd("loadpos "..WayPoints[D].NAME)
end)
C=C+1
end
for D=1,#pWayPoints do
local E=((C*B)-B)
local F=Example_4:Clone()
F.Parent=Holder_4
F.Visible=true
F.Position=UDim2.new(0,0,0,E+5)
F.Text.Text=pWayPoints[D].NAME
table.insert(shade2,F)
table.insert(shade2,F.Text)
table.insert(text1,F.Text)
table.insert(shade3,F.Text.Delete)
table.insert(text2,F.Text.Delete)
table.insert(shade3,F.Text.TP)
table.insert(text2,F.Text.TP)
Holder_4.CanvasSize=UDim2.new(0,0,0,E+30)
F.Text.Delete.MouseButton1Click:Connect(function()
execCmd('dpos '..pWayPoints[D].NAME)
end)
F.Text.TP.MouseButton1Click:Connect(function()
execCmd("loadpos "..pWayPoints[D].NAME)
end)
C=C+1
end
end
end

refreshwaypoints()

function refreshaliases()
if#aliases>0 then
AliasHint:Destroy()
end
if Holder_3 then
Holder_3:ClearAllChildren()
Holder_3.CanvasSize=UDim2.new(0,0,0,10)
for B=1,#aliases do
local C=25
local D=((B*C)-C)
local E=Example_3:Clone()
E.Parent=Holder_3
E.Visible=true
E.Position=UDim2.new(0,0,0,D+5)
E.Text.Text=aliases[B].CMD.." > "..aliases[B].ALIAS
table.insert(shade2,E)
table.insert(shade2,E.Text)
table.insert(text1,E.Text)
table.insert(shade3,E.Text.Delete)
table.insert(text2,E.Text.Delete)
Holder_3.CanvasSize=UDim2.new(0,0,0,D+30)
E.Text.Delete.MouseButton1Click:Connect(function()
execCmd('removealias '..aliases[B].ALIAS)
end)
end
end
end

local B=false

BindTo.MouseButton1Click:Connect(function()
z=true
BindTo.Text='Press something'
end)

BindTriggerSelect.MouseButton1Click:Connect(function()
B=not B
BindTriggerSelect.Text=B and"KeyUp"or"KeyDown"
end)

newToggle=false
Cmdbar_3.Parent.Visible=false
On_2.MouseButton1Click:Connect(function()
if newToggle==false then newToggle=true
On_2.BackgroundTransparency=0
Cmdbar_3.Parent.Visible=true
BindTriggerSelect.Visible=false
else newToggle=false
On_2.BackgroundTransparency=1
Cmdbar_3.Parent.Visible=false
BindTriggerSelect.Visible=true
end
end)

Add_2.MouseButton1Click:Connect(function()
if A then
if string.find(Cmdbar_2.Text,"\\\\")or string.find(Cmdbar_3.Text,"\\\\")then
notify('Keybind Error','Only use one backslash to keybind multiple commands into one keybind or command')
else
if newToggle and Cmdbar_3.Text~=''and Cmdbar_2.text~=''then
addbind(Cmdbar_2.Text,keyPressed,false,Cmdbar_3.Text)
elseif not newToggle and Cmdbar_2.text~=''then
addbind(Cmdbar_2.Text,keyPressed,B)
else
return
end
refreshbinds()
updatesaves()
if keyPressed=='RightClick'or keyPressed=='LeftClick'then
notify('Keybinds Updated','Binded '..keyPressed..' to '..Cmdbar_2.Text..(newToggle and" / "..Cmdbar_3.Text or""))
else
notify('Keybinds Updated','Binded '..keyPressed:sub(14)..' to '..Cmdbar_2.Text..(newToggle and" / "..Cmdbar_3.Text or""))
end
end
end
end)

Exit_2.MouseButton1Click:Connect(function()
Cmdbar_2.Text='Command'
Cmdbar_3.Text='Command 2'
BindTo.Text='Click to bind'
B=false
BindTriggerSelect.Text="KeyDown"
A=false
KeybindEditor:TweenPosition(UDim2.new(0.5,-180,0,-500),"InOut","Quart",0.5,true,nil)
end)

function onInputBegan(C,D)
if z then
if C.UserInputType==Enum.UserInputType.Keyboard then
keyPressed=tostring(C.KeyCode)
BindTo.Text=keyPressed:sub(14)
elseif C.UserInputType==Enum.UserInputType.MouseButton1 then
keyPressed='LeftClick'
BindTo.Text='LeftClick'
elseif C.UserInputType==Enum.UserInputType.MouseButton2 then
keyPressed='RightClick'
BindTo.Text='RightClick'
end
z=false
A=true
end
if not D and#binds>0 then
for E,F in pairs(binds)do
if not F.ISKEYUP then
if(C.UserInputType==Enum.UserInputType.Keyboard and F.KEY:lower()==tostring(C.KeyCode):lower())or(C.UserInputType==Enum.UserInputType.MouseButton1 and F.KEY:lower()=='leftclick')or(C.UserInputType==Enum.UserInputType.MouseButton2 and F.KEY:lower()=='rightclick')then
if F.TOGGLE then
local G=toggleOn[F]==true
toggleOn[F]=not G
if G then
execCmd(F.TOGGLE,Players.LocalPlayer)
else
execCmd(F.COMMAND,Players.LocalPlayer)
end
else
execCmd(F.COMMAND,Players.LocalPlayer)
end
end
end
end
end
end

function onInputEnded(C,D)
if not D and#binds>0 then
for E,F in pairs(binds)do
if F.ISKEYUP then
if(C.UserInputType==Enum.UserInputType.Keyboard and F.KEY:lower()==tostring(C.KeyCode):lower())or(C.UserInputType==Enum.UserInputType.MouseButton1 and F.KEY:lower()=='leftclick')or(C.UserInputType==Enum.UserInputType.MouseButton2 and F.KEY:lower()=='rightclick')then
execCmd(F.COMMAND,Players.LocalPlayer)
end
end
end
end
end

UserInputService.InputBegan:Connect(onInputBegan)
UserInputService.InputEnded:Connect(onInputEnded)

ClickTP.Select.MouseButton1Click:Connect(function()
if A then
addbind('clicktp',keyPressed,B)
refreshbinds()
updatesaves()
if keyPressed=='RightClick'or keyPressed=='LeftClick'then
notify('Keybinds Updated','Binded '..keyPressed..' to click tp')
else
notify('Keybinds Updated','Binded '..keyPressed:sub(14)..' to click tp')
end
end
end)

ClickDelete.Select.MouseButton1Click:Connect(function()
if A then
addbind('clickdel',keyPressed,B)
refreshbinds()
updatesaves()
if keyPressed=='RightClick'or keyPressed=='LeftClick'then
notify('Keybinds Updated','Binded '..keyPressed..' to click delete')
else
notify('Keybinds Updated','Binded '..keyPressed:sub(14)..' to click delete')
end
end
end)

local function clicktpFunc()
pcall(function()
local C=Players.LocalPlayer.Character
local D=C:FindFirstChildOfClass"Humanoid"
if D and D.SeatPart then
D.Sit=false
wait(0.1)
end

local E=D and D.HipHeight>0 and(D.HipHeight+1)
local F=getRoot(C)
local G=F.Position
local H=IYMouse.Hit.Position
local I=CFrame.new(
H,
Vector3.new(G.X,H.Y,G.Z)
)*CFrame.Angles(0,math.pi,0)

F.CFrame=I+Vector3.new(0,E or 4,0)
end)
end

IYMouse.Button1Down:Connect(function()
for C,D in pairs(binds)do
if D.COMMAND=='clicktp'then
local E=D.KEY
if E=='RightClick'and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)and Players.LocalPlayer.Character then
clicktpFunc()
elseif E=='LeftClick'and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)and Players.LocalPlayer.Character then
clicktpFunc()
elseif UserInputService:IsKeyDown(Enum.KeyCode[E:sub(14)])and Players.LocalPlayer.Character then
clicktpFunc()
end
elseif D.COMMAND=='clickdel'then
local E=D.KEY
if E=='RightClick'and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)then
pcall(function()IYMouse.Target:Destroy()end)
elseif E=='LeftClick'and UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton1)then
pcall(function()IYMouse.Target:Destroy()end)
elseif UserInputService:IsKeyDown(Enum.KeyCode[E:sub(14)])then
pcall(function()IYMouse.Target:Destroy()end)
end
end
end
end)

PluginsGUI=PluginEditor.background

function addPlugin(C)
if C:lower()=='plugin file name'or C:lower()=='iy_fe.iy'or C=='iy_fe'then
notify('Plugin Error','Please enter a valid plugin')
else
local D
local E
if C:sub(-3)=='.iy'then
pcall(function()D=readfile(C)end)
E=C
else
pcall(function()D=readfile(C..'.iy')end)
E=C..'.iy'
end
if D then
if not FindInTable(PluginsTable,E)then
table.insert(PluginsTable,E)
LoadPlugin(E)
refreshplugins()
pcall(eventEditor.Refresh)
else
notify('Plugin Error','This plugin is already added')
end
else
notify('Plugin Error','Cannot locate file "'..E..'". Is the file in the correct folder?')
end
end
end

function deletePlugin(C)
local D=C..'.iy'
if C:sub(-3)=='.iy'then
D=C
end
for E=#cmds,1,-1 do
if cmds[E].PLUGIN==D then
table.remove(cmds,E)
end
end
for E,F in pairs(CMDsF:GetChildren())do
if F.Name=='PLUGIN_'..D then
F:Destroy()
end
end
for E,F in pairs(PluginsTable)do
if F==D then
table.remove(PluginsTable,E)
notify('Removed Plugin',D..' was removed')
end
end
IndexContents('',true)
refreshplugins()
end

function refreshplugins(C)
if#PluginsTable>0 then
PluginsHint:Destroy()
end
if Holder_5 then
Holder_5:ClearAllChildren()
Holder_5.CanvasSize=UDim2.new(0,0,0,10)
for D,E in pairs(PluginsTable)do
local F=E
local G=25
local H=((D*G)-G)
local I=Example_5:Clone()
I.Parent=Holder_5
I.Visible=true
I.Position=UDim2.new(0,0,0,H+5)
I.Text.Text=F
table.insert(shade2,I)
table.insert(shade2,I.Text)
table.insert(text1,I.Text)
table.insert(shade3,I.Text.Delete)
table.insert(text2,I.Text.Delete)
Holder_5.CanvasSize=UDim2.new(0,0,0,H+30)
I.Text.Delete.MouseButton1Click:Connect(function()
deletePlugin(F)
end)
end
if not C then
updatesaves()
end
end
end


function LoadPlugin(C,D)
local E

function CatchedPluginLoad()
E=loadfile(C)()
end

function handlePluginError(F)
notify('Plugin Error','An error occurred with the plugin, "'..C..'" and it could not be loaded')
if FindInTable(PluginsTable,C)then
for G,H in pairs(PluginsTable)do
if H==C then
table.remove(PluginsTable,G)
end
end
end
updatesaves()

print("Original Error: "..tostring(F))
print("Plugin Error, stack traceback: "..tostring(debug.traceback()))

E=nil

return false
end

xpcall(CatchedPluginLoad,handlePluginError)

if E~=nil then
if not D then
notify('Loaded Plugin',"Name: "..E.PluginName.."\n".."Description: "..E.PluginDescription)
end
addcmdtext('',C)
addcmdtext(string.upper('--'..E.PluginName),C,E.PluginDescription)
if E.Commands then
for F,G in pairs(E.Commands)do
local H=''
local I=F
local function handleNames()
I=F
if findCmd(I..H)then
if isNumber(H)then
H=H+1
else
H=1
end
handleNames()
else
I=I..H
end
end
handleNames()
addcmd(I,G.Aliases,G.Function,C)
if G.ListName then
local J=G.ListName
local K={F,unpack(G.Aliases)}
for L,M in pairs(K)do
J=J:gsub(M,M..H)
end
addcmdtext(J,C,G.Description)
else
addcmdtext(I,C,G.Description)
end
end
end
IndexContents('',true)
elseif E==nil then
E=nil
end
end

function FindPlugins()
if PluginsTable~=nil and type(PluginsTable)=="table"then
for C,D in pairs(PluginsTable)do
LoadPlugin(D,true)
end
refreshplugins(true)
end
end

AddPlugin.MouseButton1Click:Connect(function()
addPlugin(PluginsGUI.FileName.Text)
end)

Exit_3.MouseButton1Click:Connect(function()
PluginEditor:TweenPosition(UDim2.new(0.5,-180,0,-500),"InOut","Quart",0.5,true,nil)
FileName.Text='Plugin File Name'
end)

Add_3.MouseButton1Click:Connect(function()
PluginEditor:TweenPosition(UDim2.new(0.5,-180,0,310),"InOut","Quart",0.5,true,nil)
end)

Plugins.MouseButton1Click:Connect(function()
if writefileExploit()then
PluginsFrame:TweenPosition(UDim2.new(0,0,0,0),"InOut","Quart",0.5,true,nil)
wait(0.5)
SettingsHolder.Visible=false
else
notify('Incompatible Exploit','Your exploit is unable to use plugins (missing read/writefile)')
end
end)

Close_4.MouseButton1Click:Connect(function()
SettingsHolder.Visible=true
PluginsFrame:TweenPosition(UDim2.new(0,0,0,175),"InOut","Quart",0.5,true,nil)
end)

local C=false
Players.LocalPlayer.OnTeleport:Connect(function(D)
if KeepInfYield and(not C)and queueteleport then
C=true
queueteleport"loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()"
end
end)

addcmd('addalias',{},function(D,E)
if#D<2 then return end
local F=string.lower(D[1])
local G=string.lower(D[2])
for H,I in pairs(cmds)do
if I.NAME:lower()==F or FindInTable(I.ALIAS,F)then
customAlias[G]=I
aliases[#aliases+1]={CMD=F,ALIAS=G}
notify('Aliases Modified',"Added "..G.." as an alias to "..F)
updatesaves()
refreshaliases()
break
end
end
end)

addcmd('removealias',{},function(D,E)
if#D<1 then return end
local F=string.lower(D[1])
if customAlias[F]then
local G=customAlias[F].NAME
customAlias[F]=nil
for H=#aliases,1,-1 do
if aliases[H].ALIAS==tostring(F)then
table.remove(aliases,H)
end
end
notify('Aliases Modified',"Removed the alias "..F.." from "..G)
updatesaves()
refreshaliases()
end
end)

addcmd('clraliases',{},function(D,E)
customAlias={}
aliases={}
notify('Aliases Modified','Removed all aliases')
updatesaves()
refreshaliases()
end)

addcmd('discord',{'support','help'},function(D,E)
if everyClipboard then
toClipboard'https://discord.com/invite/dYHag43eeU'
notify('Discord Invite','Copied to clipboard!\ndiscord.gg/dYHag43eeU')
else
notify('Discord Invite','discord.gg/dYHag43eeU')
end
if httprequest then
httprequest{
Url='http://127.0.0.1:6463/rpc?v=1',
Method='POST',
Headers={
['Content-Type']='application/json',
Origin='https://discord.com'
},
Body=HttpService:JSONEncode{
cmd='INVITE_BROWSER',
nonce=HttpService:GenerateGUID(false),
args={code='dYHag43eeU'}
}
}
end
end)

addcmd('keepiy',{},function(D,E)
if queueteleport then
KeepInfYield=true
updatesaves()
else
notify('Incompatible Exploit','Your exploit does not support this command (missing queue_on_teleport)')
end
end)

addcmd('unkeepiy',{},function(D,E)
if queueteleport then
KeepInfYield=false
updatesaves()
else
notify('Incompatible Exploit','Your exploit does not support this command (missing queue_on_teleport)')
end
end)

addcmd('togglekeepiy',{},function(D,E)
if queueteleport then
KeepInfYield=not KeepInfYield
updatesaves()
else
notify('Incompatible Exploit','Your exploit does not support this command (missing queue_on_teleport)')
end
end)

local D=true
addcmd('serverinfo',{'info','sinfo'},function(E,F)
if not D then return end
D=false
task.spawn(function()
local G=Instance.new"Frame"
local H=Instance.new"Frame"
local I=Instance.new"TextLabel"
local J=Instance.new"TextButton"
local K=Instance.new"ImageLabel"
local L=Instance.new"Frame"
local M=Instance.new"TextLabel"
local N=Instance.new"TextLabel"
local O=Instance.new"TextLabel"
local P=Instance.new"TextLabel"
local Q=Instance.new"TextLabel"
local R=Instance.new"TextLabel"
local S=Instance.new"TextLabel"
local T=Instance.new"TextLabel"
local U=Instance.new"TextLabel"
local V=Instance.new"TextLabel"
local W=Instance.new"TextButton"
local X=Instance.new"TextButton"
local Y=Instance.new"TextButton"
local Z=Instance.new"TextButton"

G.Name=randomString()
G.Parent=ScaledHolder
G.Active=true
G.BackgroundTransparency=1
G.Position=UDim2.new(0.5,-130,0,-500)
G.Size=UDim2.new(0,250,0,20)
G.ZIndex=10
dragGUI(G)

H.Name="shadow"
H.Parent=G
H.BackgroundColor3=currentShade2
H.BorderSizePixel=0
H.Size=UDim2.new(0,250,0,20)
H.ZIndex=10
table.insert(shade2,H)

I.Name="PopupText"
I.Parent=H
I.BackgroundTransparency=1
I.Size=UDim2.new(1,0,0.95,0)
I.ZIndex=10
I.Font=Enum.Font.SourceSans
I.TextSize=14
I.Text="Server"
I.TextColor3=currentText1
I.TextWrapped=true
table.insert(text1,I)

J.Name="Exit"
J.Parent=H
J.BackgroundTransparency=1
J.Position=UDim2.new(1,-20,0,0)
J.Size=UDim2.new(0,20,0,20)
J.Text=""
J.ZIndex=10

K.Parent=J
K.BackgroundColor3=Color3.new(1,1,1)
K.BackgroundTransparency=1
K.Position=UDim2.new(0,5,0,5)
K.Size=UDim2.new(0,10,0,10)
K.Image=getcustomasset"infiniteyield/assets/close.png"
K.ZIndex=10

L.Name="background"
L.Parent=G
L.Active=true
L.BackgroundColor3=currentShade1
L.BorderSizePixel=0
L.Position=UDim2.new(0,0,1,0)
L.Size=UDim2.new(0,250,0,250)
L.ZIndex=10
table.insert(shade1,L)

M.Name="Text Label"
M.Parent=L
M.BackgroundTransparency=1
M.BorderSizePixel=0
M.Position=UDim2.new(0,5,0,80)
M.Size=UDim2.new(0,100,0,20)
M.ZIndex=10
M.Font=Enum.Font.SourceSansLight
M.TextSize=20
M.Text="Run Time:"
M.TextColor3=currentText1
M.TextXAlignment=Enum.TextXAlignment.Left
table.insert(text1,M)

N.Name="Text Label2"
N.Parent=L
N.BackgroundTransparency=1
N.BorderSizePixel=0
N.Position=UDim2.new(0,5,0,130)
N.Size=UDim2.new(0,100,0,20)
N.ZIndex=10
N.Font=Enum.Font.SourceSansLight
N.TextSize=20
N.Text="Statistics:"
N.TextColor3=currentText1
N.TextXAlignment=Enum.TextXAlignment.Left
table.insert(text1,N)

O.Name="Text Label3"
O.Parent=L
O.BackgroundTransparency=1
O.BorderSizePixel=0
O.Position=UDim2.new(0,5,0,10)
O.Size=UDim2.new(0,100,0,20)
O.ZIndex=10
O.Font=Enum.Font.SourceSansLight
O.TextSize=20
O.Text="Local Player:"
O.TextColor3=currentText1
O.TextXAlignment=Enum.TextXAlignment.Left
table.insert(text1,O)

P.Name="Time"
P.Parent=L
P.BackgroundTransparency=1
P.BorderSizePixel=0
P.Position=UDim2.new(0,5,0,105)
P.Size=UDim2.new(0,100,0,20)
P.ZIndex=10
P.Font=Enum.Font.SourceSans
P.FontSize=Enum.FontSize.Size14
P.Text="LOADING"
P.TextColor3=currentText1
P.TextXAlignment=Enum.TextXAlignment.Left
table.insert(text1,P)

Q.Name="appearance"
Q.Parent=L
Q.BackgroundTransparency=1
Q.BorderSizePixel=0
Q.Position=UDim2.new(0,5,0,55)
Q.Size=UDim2.new(0,100,0,20)
Q.ZIndex=10
Q.Font=Enum.Font.SourceSans
Q.FontSize=Enum.FontSize.Size14
Q.Text="Appearance: LOADING"
Q.TextColor3=currentText1
Q.TextXAlignment=Enum.TextXAlignment.Left
table.insert(text1,Q)

R.Name="maxplayers"
R.Parent=L
R.BackgroundTransparency=1
R.BorderSizePixel=0
R.Position=UDim2.new(0,5,0,175)
R.Size=UDim2.new(0,100,0,20)
R.ZIndex=10
R.Font=Enum.Font.SourceSans
R.FontSize=Enum.FontSize.Size14
R.Text="LOADING"
R.TextColor3=currentText1
R.TextXAlignment=Enum.TextXAlignment.Left
table.insert(text1,R)

S.Name="name"
S.Parent=L
S.BackgroundTransparency=1
S.BorderSizePixel=0
S.Position=UDim2.new(0,5,0,215)
S.Size=UDim2.new(0,240,0,30)
S.ZIndex=10
S.Font=Enum.Font.SourceSans
S.FontSize=Enum.FontSize.Size14
S.Text="Place Name: LOADING"
S.TextColor3=currentText1
S.TextWrapped=true
S.TextXAlignment=Enum.TextXAlignment.Left
S.TextYAlignment=Enum.TextYAlignment.Top
table.insert(text1,S)

T.Name="placeid"
T.Parent=L
T.BackgroundTransparency=1
T.BorderSizePixel=0
T.Position=UDim2.new(0,5,0,195)
T.Size=UDim2.new(0,100,0,20)
T.ZIndex=10
T.Font=Enum.Font.SourceSans
T.FontSize=Enum.FontSize.Size14
T.Text="Place ID: LOADING"
T.TextColor3=currentText1
T.TextXAlignment=Enum.TextXAlignment.Left
table.insert(text1,T)

U.Name="playerid"
U.Parent=L
U.BackgroundTransparency=1
U.BorderSizePixel=0
U.Position=UDim2.new(0,5,0,35)
U.Size=UDim2.new(0,100,0,20)
U.ZIndex=10
U.Font=Enum.Font.SourceSans
U.FontSize=Enum.FontSize.Size14
U.Text="Player ID: LOADING"
U.TextColor3=currentText1
U.TextXAlignment=Enum.TextXAlignment.Left
table.insert(text1,U)

V.Name="players"
V.Parent=L
V.BackgroundTransparency=1
V.BorderSizePixel=0
V.Position=UDim2.new(0,5,0,155)
V.Size=UDim2.new(0,100,0,20)
V.ZIndex=10
V.Font=Enum.Font.SourceSans
V.FontSize=Enum.FontSize.Size14
V.Text="LOADING"
V.TextColor3=currentText1
V.TextXAlignment=Enum.TextXAlignment.Left
table.insert(text1,V)

W.Name="CopyApp"
W.Parent=L
W.BackgroundColor3=currentShade2
W.BorderSizePixel=0
W.Position=UDim2.new(0,210,0,55)
W.Size=UDim2.new(0,35,0,20)
W.Font=Enum.Font.SourceSans
W.TextSize=14
W.Text="Copy"
W.TextColor3=currentText1
W.ZIndex=10
table.insert(shade2,W)
table.insert(text1,W)

X.Name="CopyPlrID"
X.Parent=L
X.BackgroundColor3=currentShade2
X.BorderSizePixel=0
X.Position=UDim2.new(0,210,0,35)
X.Size=UDim2.new(0,35,0,20)
X.Font=Enum.Font.SourceSans
X.TextSize=14
X.Text="Copy"
X.TextColor3=currentText1
X.ZIndex=10
table.insert(shade2,X)
table.insert(text1,X)

Y.Name="CopyPlcID"
Y.Parent=L
Y.BackgroundColor3=currentShade2
Y.BorderSizePixel=0
Y.Position=UDim2.new(0,210,0,195)
Y.Size=UDim2.new(0,35,0,20)
Y.Font=Enum.Font.SourceSans
Y.TextSize=14
Y.Text="Copy"
Y.TextColor3=currentText1
Y.ZIndex=10
table.insert(shade2,Y)
table.insert(text1,Y)

Z.Name="CopyPlcName"
Z.Parent=L
Z.BackgroundColor3=currentShade2
Z.BorderSizePixel=0
Z.Position=UDim2.new(0,210,0,215)
Z.Size=UDim2.new(0,35,0,20)
Z.Font=Enum.Font.SourceSans
Z.TextSize=14
Z.Text="Copy"
Z.TextColor3=currentText1
Z.ZIndex=10
table.insert(shade2,Z)
table.insert(text1,Z)

local _=L
G:TweenPosition(UDim2.new(0.5,-130,0,100),"InOut","Quart",0.5,true,nil)
wait(0.5)
J.MouseButton1Click:Connect(function()
G:TweenPosition(UDim2.new(0.5,-130,0,-500),"InOut","Quart",0.5,true,nil)
wait(0.6)
G:Destroy()
D=true
end)
local ad=MarketplaceService:GetProductInfo(PlaceId)
_.name.Text="Place Name: "..ad.Name
_.playerid.Text="Player ID: "..F.UserId
_.maxplayers.Text=Players.MaxPlayers.." Players Max"
_.placeid.Text="Place ID: "..PlaceId

W.MouseButton1Click:Connect(function()
toClipboard(F.CharacterAppearanceId)
end)
X.MouseButton1Click:Connect(function()
toClipboard(F.UserId)
end)
Y.MouseButton1Click:Connect(function()
toClipboard(PlaceId)
end)
Z.MouseButton1Click:Connect(function()
toClipboard(ad.Name)
end)

repeat
V=Players:GetPlayers()
_.players.Text=#V.." Player(s)"
_.appearance.Text="Appearance: "..F.CharacterAppearanceId
local ae=math.floor(workspace.DistributedGameTime)
local af=math.floor(workspace.DistributedGameTime/60)
local ag=math.floor(workspace.DistributedGameTime/60/60)
local ah=ae-(af*60)
local ai=af-(ag*60)
if ag<1 then if ai<1 then
_.Time.Text=ah.." Second(s)"else
_.Time.Text=ai.." Minute(s), "..ah.." Second(s)"
end
else
_.Time.Text=ag.." Hour(s), "..ai.." Minute(s), "..ah.." Second(s)"
end
wait(1)
until _.Parent==nil
end)
end)

addcmd("jobid",{},function(ad,ag)
toClipboard("roblox://placeId="..PlaceId.."&gameInstanceId="..JobId)
end)

addcmd('notifyjobid',{},function(ad,ag)
notify('JobId / PlaceId',JobId..' / '..PlaceId)
end)

addcmd('breakloops',{'break'},function(ad,ag)
u=tick()
end)

addcmd('gametp',{'gameteleport'},function(ad,ag)
TeleportService:Teleport(ad[1])
end)

addcmd("rejoin",{"rj"},function(ad,ag)
if#Players:GetPlayers()<=1 then
Players.LocalPlayer:Kick"\nRejoining..."
wait()
TeleportService:Teleport(PlaceId,Players.LocalPlayer)
else
TeleportService:TeleportToPlaceInstance(PlaceId,JobId,Players.LocalPlayer)
end
end)

addcmd("autorejoin",{"autorj"},function(ad,ag)
GuiService.ErrorMessageChanged:Connect(function()
execCmd"rejoin"
end)
notify("Auto Rejoin","Auto rejoin enabled")
end)

addcmd("serverhop",{"shop"},function(ad,ag)

local ah={}
local ai=game:HttpGet("https://games.roblox.com/v1/games/"..PlaceId.."/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true")
local E=HttpService:JSONDecode(ai)

if E and E.data then
for F,G in next,E.data do
if type(G)=="table"and tonumber(G.playing)and tonumber(G.maxPlayers)and G.playing<G.maxPlayers and G.id~=JobId then
table.insert(ah,1,G.id)
end
end
end

if#ah>0 then
TeleportService:TeleportToPlaceInstance(PlaceId,ah[math.random(1,#ah)],Players.LocalPlayer)
else
return notify("Serverhop","Couldn't find a server.")
end
end)

addcmd("exit",{},function(ad,ag)
game:Shutdown()
end)

local ad
addcmd('noclip',{},function(ag,ah)
Clip=false
wait(0.1)
local function NoclipLoop()
if Clip==false and ah.Character~=nil then
for ai,E in pairs(ah.Character:GetDescendants())do
if E:IsA"BasePart"and E.CanCollide==true and E.Name~=floatName then
E.CanCollide=false
end
end
end
end
ad=RunService.Stepped:Connect(NoclipLoop)
if ag[1]and ag[1]=='nonotify'then return end
notify('Noclip','Noclip Enabled')
end)

addcmd('clip',{'unnoclip'},function(ag,ah)
if ad then
ad:Disconnect()
end
Clip=true
if ag[1]and ag[1]=='nonotify'then return end
notify('Noclip','Noclip Disabled')
end)

addcmd('togglenoclip',{},function(ag,ah)
if Clip then
execCmd'noclip'
else
execCmd'clip'
end
end)

FLYING=false
QEfly=true
iyflyspeed=1
vehicleflyspeed=1
function sFLY(ag)
local ah=Players.LocalPlayer
local ai=ah.Character or ah.CharacterAdded:Wait()
local E=ai:FindFirstChildOfClass"Humanoid"
if not E then
repeat task.wait()until ai:FindFirstChildOfClass"Humanoid"
E=ai:FindFirstChildOfClass"Humanoid"
end

if flyKeyDown or flyKeyUp then
flyKeyDown:Disconnect()
flyKeyUp:Disconnect()
end

local F=getRoot(ai)
local G={F=0,B=0,L=0,R=0,Q=0,E=0}
local H={F=0,B=0,L=0,R=0,Q=0,E=0}
local I=0

local function FLY()
FLYING=true
local J=Instance.new'BodyGyro'
local K=Instance.new'BodyVelocity'
J.P=9e4
J.Parent=F
K.Parent=F
J.MaxTorque=Vector3.new(9e9,9e9,9e9)
J.CFrame=F.CFrame
K.Velocity=Vector3.new(0,0,0)
K.MaxForce=Vector3.new(9e9,9e9,9e9)
task.spawn(function()
repeat task.wait()
local L=workspace.CurrentCamera
if not ag and E then
E.PlatformStand=true
end

if G.L+G.R~=0 or G.F+G.B~=0 or G.Q+G.E~=0 then
I=50
elseif not(G.L+G.R~=0 or G.F+G.B~=0 or G.Q+G.E~=0)and I~=0 then
I=0
end
if(G.L+G.R)~=0 or(G.F+G.B)~=0 or(G.Q+G.E)~=0 then
K.Velocity=((L.CFrame.LookVector*(G.F+G.B))+((L.CFrame*CFrame.new(G.L+G.R,(G.F+G.B+G.Q+G.E)*0.2,0).p)-L.CFrame.p))*I
H={F=G.F,B=G.B,L=G.L,R=G.R}
elseif(G.L+G.R)==0 and(G.F+G.B)==0 and(G.Q+G.E)==0 and I~=0 then
K.Velocity=((L.CFrame.LookVector*(H.F+H.B))+((L.CFrame*CFrame.new(H.L+H.R,(H.F+H.B+G.Q+G.E)*0.2,0).p)-L.CFrame.p))*I
else
K.Velocity=Vector3.new(0,0,0)
end
J.CFrame=L.CFrame
until not FLYING
G={F=0,B=0,L=0,R=0,Q=0,E=0}
H={F=0,B=0,L=0,R=0,Q=0,E=0}
I=0
J:Destroy()
K:Destroy()

if E then E.PlatformStand=false end
end)
end

flyKeyDown=UserInputService.InputBegan:Connect(function(J,K)
if J.KeyCode==Enum.KeyCode.W then
G.F=(ag and vehicleflyspeed or iyflyspeed)
elseif J.KeyCode==Enum.KeyCode.S then
G.B=-(ag and vehicleflyspeed or iyflyspeed)
elseif J.KeyCode==Enum.KeyCode.A then
G.L=-(ag and vehicleflyspeed or iyflyspeed)
elseif J.KeyCode==Enum.KeyCode.D then
G.R=(ag and vehicleflyspeed or iyflyspeed)
elseif J.KeyCode==Enum.KeyCode.E and QEfly then
G.Q=(ag and vehicleflyspeed or iyflyspeed)*2
elseif J.KeyCode==Enum.KeyCode.Q and QEfly then
G.E=-(ag and vehicleflyspeed or iyflyspeed)*2
end
pcall(function()camera.CameraType=Enum.CameraType.Track end)
end)

flyKeyUp=UserInputService.InputEnded:Connect(function(J,K)
if J.KeyCode==Enum.KeyCode.W then
G.F=0
elseif J.KeyCode==Enum.KeyCode.S then
G.B=0
elseif J.KeyCode==Enum.KeyCode.A then
G.L=0
elseif J.KeyCode==Enum.KeyCode.D then
G.R=0
elseif J.KeyCode==Enum.KeyCode.E then
G.Q=0
elseif J.KeyCode==Enum.KeyCode.Q then
G.E=0
end
end)
FLY()
end

function NOFLY()
FLYING=false
if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect()flyKeyUp:Disconnect()end
if Players.LocalPlayer.Character:FindFirstChildOfClass'Humanoid'then
Players.LocalPlayer.Character:FindFirstChildOfClass'Humanoid'.PlatformStand=false
end
pcall(function()workspace.CurrentCamera.CameraType=Enum.CameraType.Custom end)
end

local ag=randomString()
local ah=randomString()
local ai
local E

local F=function(F)
pcall(function()
FLYING=false
local G=getRoot(F.Character)
G:FindFirstChild(ag):Destroy()
G:FindFirstChild(ah):Destroy()
F.Character:FindFirstChildWhichIsA"Humanoid".PlatformStand=false
ai:Disconnect()
E:Disconnect()
end)
end

local G=function(G,H)
F(G)
FLYING=true

local I=getRoot(G.Character)
local J=workspace.CurrentCamera
local K=Vector3.new()
local L=Vector3.new(0,0,0)
local M=Vector3.new(9e9,9e9,9e9)

local N=require(G.PlayerScripts:WaitForChild"PlayerModule":WaitForChild"ControlModule")
local O=Instance.new"BodyVelocity"
O.Name=ag
O.Parent=I
O.MaxForce=L
O.Velocity=L

local P=Instance.new"BodyGyro"
P.Name=ah
P.Parent=I
P.MaxTorque=M
P.P=1000
P.D=50

ai=G.CharacterAdded:Connect(function()
local Q=Instance.new"BodyVelocity"
Q.Name=ag
Q.Parent=I
Q.MaxForce=L
Q.Velocity=L

local R=Instance.new"BodyGyro"
R.Name=ah
R.Parent=I
R.MaxTorque=M
R.P=1000
R.D=50
end)

E=RunService.RenderStepped:Connect(function()
I=getRoot(G.Character)
J=workspace.CurrentCamera
if G.Character:FindFirstChildWhichIsA"Humanoid"and I and I:FindFirstChild(ag)and I:FindFirstChild(ah)then
local Q=G.Character:FindFirstChildWhichIsA"Humanoid"
local R=I:FindFirstChild(ag)
local S=I:FindFirstChild(ah)

R.MaxForce=M
S.MaxTorque=M
if not H then Q.PlatformStand=true end
S.CFrame=J.CoordinateFrame
R.Velocity=K

local T=N:GetMoveVector()
if T.X>0 then
R.Velocity=R.Velocity+J.CFrame.RightVector*(T.X*((H and vehicleflyspeed or iyflyspeed)*50))
end
if T.X<0 then
R.Velocity=R.Velocity+J.CFrame.RightVector*(T.X*((H and vehicleflyspeed or iyflyspeed)*50))
end
if T.Z>0 then
R.Velocity=R.Velocity-J.CFrame.LookVector*(T.Z*((H and vehicleflyspeed or iyflyspeed)*50))
end
if T.Z<0 then
R.Velocity=R.Velocity-J.CFrame.LookVector*(T.Z*((H and vehicleflyspeed or iyflyspeed)*50))
end
end
end)
end

addcmd('fly',{},function(H,I)
if not IsOnMobile then
NOFLY()
wait()
sFLY()
else
G(I)
end
if H[1]and isNumber(H[1])then
iyflyspeed=H[1]
end
end)

addcmd('flyspeed',{'flysp'},function(H,I)
local J=H[1]or 1
if isNumber(J)then
iyflyspeed=J
end
end)

addcmd('unfly',{'nofly','novfly','unvehiclefly','novehiclefly','unvfly'},function(H,I)
if not IsOnMobile then NOFLY()else F(I)end
end)

addcmd('vfly',{'vehiclefly'},function(H,I)
if not IsOnMobile then
NOFLY()
wait()
sFLY(true)
else
G(I,true)
end
if H[1]and isNumber(H[1])then
vehicleflyspeed=H[1]
end
end)

addcmd('togglevfly',{},function(H,I)
if FLYING then
if not IsOnMobile then NOFLY()else F(I)end
else
if not IsOnMobile then sFLY(true)else G(I,true)end
end
end)

addcmd('vflyspeed',{'vflysp','vehicleflyspeed','vehicleflysp'},function(H,I)
local J=H[1]or 1
if isNumber(J)then
vehicleflyspeed=J
end
end)

addcmd('qefly',{'flyqe'},function(H,I)
if H[1]=='false'then
QEfly=false
else
QEfly=true
end
end)

addcmd('togglefly',{},function(H,I)
if FLYING then
if not IsOnMobile then NOFLY()else F(I)end
else
if not IsOnMobile then sFLY()else G(I)end
end
end)

CFspeed=50
addcmd('cframefly',{'cfly'},function(H,I)
if H[1]and isNumber(H[1])then
CFspeed=H[1]
end


I.Character:FindFirstChildOfClass'Humanoid'.PlatformStand=true
local J=I.Character:WaitForChild"Head"
J.Anchored=true
if CFloop then CFloop:Disconnect()end
CFloop=RunService.Heartbeat:Connect(function(K)
local L=I.Character:FindFirstChildOfClass'Humanoid'.MoveDirection*(CFspeed*K)
local M=J.CFrame
local N=workspace.CurrentCamera
local O=N.CFrame
local P=M:ToObjectSpace(O).Position
O=O*CFrame.new(-P.X,-P.Y,-P.Z+1)
local Q=O.Position
local R=M.Position

local S=CFrame.new(Q,Vector3.new(R.X,Q.Y,R.Z)):VectorToObjectSpace(L)
J.CFrame=CFrame.new(R)*(O-Q)*CFrame.new(S)
end)
end)

addcmd('uncframefly',{'uncfly'},function(H,I)
if CFloop then
CFloop:Disconnect()
I.Character:FindFirstChildOfClass'Humanoid'.PlatformStand=false
local J=I.Character:WaitForChild"Head"
J.Anchored=false
end
end)

addcmd('cframeflyspeed',{'cflyspeed'},function(H,I)
if isNumber(H[1])then
CFspeed=H[1]
end
end)

Floating=false
floatName=randomString()
addcmd('float',{'platform'},function(H,I)
Floating=true
local J=I.Character
if J and not J:FindFirstChild(floatName)then
task.spawn(function()
local K=Instance.new'Part'
K.Name=floatName
K.Parent=J
K.Transparency=1
K.Size=Vector3.new(2,0.2,1.5)
K.Anchored=true
local L=-3.1
K.CFrame=getRoot(J).CFrame*CFrame.new(0,L,0)
notify('Float','Float Enabled (Q = down & E = up)')
qUp=IYMouse.KeyUp:Connect(function(M)
if M=='q'then
L=L+0.5
end
end)
eUp=IYMouse.KeyUp:Connect(function(M)
if M=='e'then
L=L-1.5
end
end)
qDown=IYMouse.KeyDown:Connect(function(M)
if M=='q'then
L=L-0.5
end
end)
eDown=IYMouse.KeyDown:Connect(function(M)
if M=='e'then
L=L+1.5
end
end)
floatDied=I.Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
FloatingFunc:Disconnect()
K:Destroy()
qUp:Disconnect()
eUp:Disconnect()
qDown:Disconnect()
eDown:Disconnect()
floatDied:Disconnect()
end)
local function FloatPadLoop()
if J:FindFirstChild(floatName)and getRoot(J)then
K.CFrame=getRoot(J).CFrame*CFrame.new(0,L,0)
else
FloatingFunc:Disconnect()
K:Destroy()
qUp:Disconnect()
eUp:Disconnect()
qDown:Disconnect()
eDown:Disconnect()
floatDied:Disconnect()
end
end
FloatingFunc=RunService.Heartbeat:Connect(FloatPadLoop)
end)
end
end)

addcmd('unfloat',{'nofloat','unplatform','noplatform'},function(H,I)
Floating=false
local J=I.Character
notify('Float','Float Disabled')
if J:FindFirstChild(floatName)then
J:FindFirstChild(floatName):Destroy()
end
if floatDied then
FloatingFunc:Disconnect()
qUp:Disconnect()
eUp:Disconnect()
qDown:Disconnect()
eDown:Disconnect()
floatDied:Disconnect()
end
end)

addcmd('togglefloat',{},function(H,I)
if Floating then
execCmd'unfloat'
else
execCmd'float'
end
end)

swimming=false
local H=workspace.Gravity
local I
addcmd('swim',{},function(J,K)
if not swimming and K and K.Character and K.Character:FindFirstChildWhichIsA"Humanoid"then
H=workspace.Gravity
workspace.Gravity=0
local L=function()
workspace.Gravity=H
swimming=false
end
local M=K.Character:FindFirstChildWhichIsA"Humanoid"
gravReset=M.Died:Connect(L)
local N=Enum.HumanoidStateType:GetEnumItems()
table.remove(N,table.find(N,Enum.HumanoidStateType.None))
for O,P in pairs(N)do
M:SetStateEnabled(P,false)
end
M:ChangeState(Enum.HumanoidStateType.Swimming)
I=RunService.Heartbeat:Connect(function()
pcall(function()
K.Character.HumanoidRootPart.Velocity=((M.MoveDirection~=Vector3.new()or UserInputService:IsKeyDown(Enum.KeyCode.Space))and K.Character.HumanoidRootPart.Velocity or Vector3.new())
end)
end)
swimming=true
end
end)

addcmd('unswim',{'noswim'},function(J,K)
if K and K.Character and K.Character:FindFirstChildWhichIsA"Humanoid"then
workspace.Gravity=H
swimming=false
if gravReset then
gravReset:Disconnect()
end
if I~=nil then
I:Disconnect()
I=nil
end
local L=K.Character:FindFirstChildWhichIsA"Humanoid"
local M=Enum.HumanoidStateType:GetEnumItems()
table.remove(M,table.find(M,Enum.HumanoidStateType.None))
for N,O in pairs(M)do
L:SetStateEnabled(O,true)
end
end
end)

addcmd('toggleswim',{},function(J,K)
if swimming then
execCmd'unswim'
else
execCmd'swim'
end
end)

addcmd('setwaypoint',{'swp','setwp','spos','saveposition','savepos'},function(J,K)
local L=tostring(getstring(1))
if getRoot(K.Character)then
notify('Modified Waypoints',"Created waypoint: "..getstring(1))
local M=getRoot(K.Character)
WayPoints[#WayPoints+1]={NAME=L,COORD={math.floor(M.Position.X),math.floor(M.Position.Y),math.floor(M.Position.Z)},GAME=PlaceId}
if AllWaypoints~=nil then
AllWaypoints[#AllWaypoints+1]={NAME=L,COORD={math.floor(M.Position.X),math.floor(M.Position.Y),math.floor(M.Position.Z)},GAME=PlaceId}
end
end
refreshwaypoints()
updatesaves()
end)

addcmd('waypointpos',{'wpp','setwaypointposition','setpos','setwaypoint','setwaypointpos'},function(J,K)
local L=tostring(getstring(1))
if getRoot(K.Character)then
notify('Modified Waypoints',"Created waypoint: "..getstring(1))
WayPoints[#WayPoints+1]={NAME=L,COORD={J[2],J[3],J[4]},GAME=PlaceId}
if AllWaypoints~=nil then
AllWaypoints[#AllWaypoints+1]={NAME=L,COORD={J[2],J[3],J[4]},GAME=PlaceId}
end
end
refreshwaypoints()
updatesaves()
end)

addcmd('waypoints',{'positions'},function(J,K)
if e==false then e=true
Settings:TweenPosition(UDim2.new(0,0,0,45),"InOut","Quart",0.5,true,nil)
CMDsF.Visible=false
end
KeybindsFrame:TweenPosition(UDim2.new(0,0,0,175),"InOut","Quart",0.5,true,nil)
AliasesFrame:TweenPosition(UDim2.new(0,0,0,175),"InOut","Quart",0.5,true,nil)
PluginsFrame:TweenPosition(UDim2.new(0,0,0,175),"InOut","Quart",0.5,true,nil)
PositionsFrame:TweenPosition(UDim2.new(0,0,0,0),"InOut","Quart",0.5,true,nil)
wait(0.5)
SettingsHolder.Visible=false
maximizeHolder()
end)

waypointParts={}
addcmd('showwaypoints',{'showwp','showwps'},function(J,K)
execCmd'hidewaypoints'
wait()
for L,M in pairs(WayPoints)do
local N=WayPoints[L].COORD[1]
local O=WayPoints[L].COORD[2]
local P=WayPoints[L].COORD[3]
local Q=Instance.new"Part"
Q.Size=Vector3.new(5,5,5)
Q.CFrame=CFrame.new(N,O,P)
Q.Parent=workspace
Q.Anchored=true
Q.CanCollide=false
table.insert(waypointParts,Q)
local R=Instance.new"BoxHandleAdornment"
R.Adornee=Q
R.AlwaysOnTop=true
R.ZIndex=10
R.Size=Q.Size
R.Parent=Q
end
for L,M in pairs(pWayPoints)do
local N=Instance.new"BoxHandleAdornment"
N.Adornee=pWayPoints[L].COORD[1]
N.AlwaysOnTop=true
N.ZIndex=10
N.Size=pWayPoints[L].COORD[1].Size
N.Parent=pWayPoints[L].COORD[1]
table.insert(waypointParts,N)
end
end)

addcmd('hidewaypoints',{'hidewp','hidewps'},function(J,K)
for L,M in pairs(waypointParts)do
M:Destroy()
end
waypointParts={}
end)

addcmd('waypoint',{'wp','lpos','loadposition','loadpos'},function(J,K)
local L=tostring(getstring(1))
if K.Character then
for M,N in pairs(WayPoints)do
if tostring(WayPoints[M].NAME):lower()==tostring(L):lower()then
local O=WayPoints[M].COORD[1]
local P=WayPoints[M].COORD[2]
local Q=WayPoints[M].COORD[3]
getRoot(K.Character).CFrame=CFrame.new(O,P,Q)
end
end
for M,N in pairs(pWayPoints)do
if tostring(pWayPoints[M].NAME):lower()==tostring(L):lower()then
getRoot(K.Character).CFrame=CFrame.new(pWayPoints[M].COORD[1].Position)
end
end
end
end)

tweenSpeed=1
addcmd('tweenspeed',{'tspeed'},function(J,K)
local L=J[1]or 1
if tonumber(L)then
tweenSpeed=tonumber(L)
end
end)

addcmd('tweenwaypoint',{'twp'},function(J,K)
local L=tostring(getstring(1))
if K.Character then
for M,N in pairs(WayPoints)do
local O=WayPoints[M].COORD[1]
local P=WayPoints[M].COORD[2]
local Q=WayPoints[M].COORD[3]
if tostring(WayPoints[M].NAME):lower()==tostring(L):lower()then
TweenService:Create(getRoot(K.Character),TweenInfo.new(tweenSpeed,Enum.EasingStyle.Linear),{CFrame=CFrame.new(O,P,Q)}):Play()
end
end
for M,N in pairs(pWayPoints)do
if tostring(pWayPoints[M].NAME):lower()==tostring(L):lower()then
TweenService:Create(getRoot(K.Character),TweenInfo.new(tweenSpeed,Enum.EasingStyle.Linear),{CFrame=CFrame.new(pWayPoints[M].COORD[1].Position)}):Play()
end
end
end
end)

addcmd('walktowaypoint',{'wtwp'},function(J,K)
local L=tostring(getstring(1))
if K.Character then
for M,N in pairs(WayPoints)do
local O=WayPoints[M].COORD[1]
local P=WayPoints[M].COORD[2]
local Q=WayPoints[M].COORD[3]
if tostring(WayPoints[M].NAME):lower()==tostring(L):lower()then
if K.Character:FindFirstChildOfClass'Humanoid'and K.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
K.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
K.Character:FindFirstChildOfClass'Humanoid'.WalkToPoint=Vector3.new(O,P,Q)
end
end
for M,N in pairs(pWayPoints)do
if tostring(pWayPoints[M].NAME):lower()==tostring(L):lower()then
if K.Character:FindFirstChildOfClass'Humanoid'and K.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
K.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
K.Character:FindFirstChildOfClass'Humanoid'.WalkToPoint=Vector3.new(pWayPoints[M].COORD[1].Position)
end
end
end
end)

addcmd('deletewaypoint',{'dwp','dpos','deleteposition','deletepos'},function(J,K)
for L,M in pairs(WayPoints)do
if M.NAME:lower()==tostring(getstring(1)):lower()then
notify('Modified Waypoints',"Deleted waypoint: "..M.NAME)
table.remove(WayPoints,L)
end
end
if AllWaypoints~=nil and#AllWaypoints>0 then
for L,M in pairs(AllWaypoints)do
if M.NAME:lower()==tostring(getstring(1)):lower()then
if not M.GAME or M.GAME==PlaceId then
table.remove(AllWaypoints,L)
end
end
end
end
for L,M in pairs(pWayPoints)do
if M.NAME:lower()==tostring(getstring(1)):lower()then
notify('Modified Waypoints',"Deleted waypoint: "..M.NAME)
table.remove(pWayPoints,L)
end
end
refreshwaypoints()
updatesaves()
end)

addcmd('clearwaypoints',{'cwp','clearpositions','cpos','clearpos'},function(J,K)
WayPoints={}
pWayPoints={}
refreshwaypoints()
updatesaves()
AllWaypoints={}
notify('Modified Waypoints','Removed all waypoints')
end)

addcmd('cleargamewaypoints',{'cgamewp'},function(J,K)
for L,M in pairs(WayPoints)do
if M.GAME==PlaceId then
table.remove(WayPoints,L)
end
end
if AllWaypoints~=nil and#AllWaypoints>0 then
for L,M in pairs(AllWaypoints)do
if M.GAME==PlaceId then
table.remove(AllWaypoints,L)
end
end
end
for L,M in pairs(pWayPoints)do
if M.GAME==PlaceId then
table.remove(pWayPoints,L)
end
end
refreshwaypoints()
updatesaves()
notify('Modified Waypoints','Deleted game waypoints')
end)


local J={inventory=

Enum.CoreGuiType.Backpack,leaderboard=
Enum.CoreGuiType.PlayerList,emotes=
Enum.CoreGuiType.EmotesMenu
}


for K,L in ipairs(Enum.CoreGuiType:GetEnumItems())do
J[L.Name:lower()]=L
end

addcmd('enable',{},function(K,L)
local M=K[1]and K[1]:lower()
if M then
if M=="reset"then
StarterGui:SetCore("ResetButtonCallback",true)
else
local N=J[M]
if N then
StarterGui:SetCoreGuiEnabled(N,true)
end
end
end
end)

addcmd('disable',{},function(K,L)
local M=K[1]and K[1]:lower()
if M then
if M=="reset"then
StarterGui:SetCore("ResetButtonCallback",false)
else
local N=J[M]
if N then
StarterGui:SetCoreGuiEnabled(N,false)
end
end
end
end)


local K={}
addcmd('showguis',{},function(L,M)
for N,O in pairs(PlayerGui:GetDescendants())do
if(O:IsA"Frame"or O:IsA"ImageLabel"or O:IsA"ScrollingFrame")and not O.Visible then
O.Visible=true
if not FindInTable(K,O)then
table.insert(K,O)
end
end
end
end)

addcmd('unshowguis',{},function(L,M)
for N,O in pairs(K)do
O.Visible=false
end
K={}
end)

local L={}
addcmd('hideguis',{},function(M,N)
for O,P in pairs(PlayerGui:GetDescendants())do
if(P:IsA"Frame"or P:IsA"ImageLabel"or P:IsA"ScrollingFrame")and P.Visible then
P.Visible=false
if not FindInTable(L,P)then
table.insert(L,P)
end
end
end
end)

addcmd('unhideguis',{},function(M,N)
for O,P in pairs(L)do
P.Visible=true
end
L={}
end)

function deleteGuisAtPos()
pcall(function()
local M=PlayerGui:GetGuiObjectsAtPosition(IYMouse.X,IYMouse.Y)
for N,O in pairs(M)do
if O.Visible==true then
O:Destroy()
end
end
end)
end

local M
addcmd('guidelete',{},function(N,O)
M=UserInputService.InputBegan:Connect(function(P,Q)
if not Q then
if P.KeyCode==Enum.KeyCode.Backspace then
deleteGuisAtPos()
end
end
end)
notify('GUI Delete Enabled','Hover over a GUI and press backspace to delete it')
end)

addcmd('unguidelete',{'noguidelete'},function(N,O)
if M then M:Disconnect()end
notify('GUI Delete Disabled','GUI backspace delete has been disabled')
end)

local N=StayOpen
addcmd('hideiy',{},function(O,P)
f=true
N=StayOpen
if StayOpen==true then
StayOpen=false
On.BackgroundTransparency=1
end
minimizeNum=0
minimizeHolder()
if not(O[1]and tostring(O[1])=='nonotify')then notify('IY Hidden','You can press the prefix key to access the command bar')end
end)

addcmd('showiy',{'unhideiy'},function(O,P)
f=false
minimizeNum=-20
if N then
maximizeHolder()
StayOpen=true
On.BackgroundTransparency=0
else
minimizeHolder()
end
end)

addcmd('rec',{'record'},function(O,P)
return COREGUI:ToggleRecording()
end)

addcmd('screenshot',{'scrnshot'},function(O,P)
return COREGUI:TakeScreenshot()
end)

addcmd('togglefs',{'togglefullscreen'},function(O,P)
return GuiService:ToggleFullscreen()
end)

addcmd('inspect',{'examine'},function(O,P)
for Q,R in ipairs(getPlayer(O[1],P))do
GuiService:CloseInspectMenu()
GuiService:InspectPlayerFromUserId(Players[R].UserId)
end
end)

addcmd("savegame",{"saveplace"},function(O,P)
if saveinstance then
notify("Loading","Downloading game. This will take a while")
saveinstance()
notify("Game Saved","Saved place to the workspace folder within your exploit folder.")
else
notify("Incompatible Exploit","Your exploit does not support this command (missing saveinstance)")
end
end)

addcmd('clearerror',{'clearerrors'},function(O,P)
GuiService:ClearError()
end)

addcmd('clientantikick',{'antikick'},function(O,P)
if not hookmetamethod then
return notify('Incompatible Exploit','Your exploit does not support this command (missing hookmetamethod)')
end
local Q=Players.LocalPlayer
local R
local S
local T
if hookfunction then
T=hookfunction(Q.Kick,function()end)
end
R=hookmetamethod(game,"__index",function(U,V)
if U==Q and V:lower()=="kick"then
return error("Expected ':' not '.' calling member function Kick",2)
end
return R(U,V)
end)
S=hookmetamethod(game,"__namecall",function(U,...)
if U==Q and getnamecallmethod():lower()=="kick"then
return
end
return S(U,...)
end)

notify('Client Antikick','Client anti kick is now active (only effective on localscript kick)')
end)

allow_rj=true
addcmd('clientantiteleport',{'antiteleport'},function(O,P)
if not hookmetamethod then
return notify('Incompatible Exploit','Your exploit does not support this command (missing hookmetamethod)')
end
local Q=TeleportService
local R
local S
R=hookmetamethod(game,"__index",function(T,U)
if T==Q then
if U:lower()=="teleport"then
return error("Expected ':' not '.' calling member function Kick",2)
elseif U=="TeleportToPlaceInstance"then
return error("Expected ':' not '.' calling member function TeleportToPlaceInstance",2)
end
end
return R(T,U)
end)
S=hookmetamethod(game,"__namecall",function(T,...)
if T==Q and getnamecallmethod():lower()=="teleport"or getnamecallmethod()=="TeleportToPlaceInstance"then
return
end
return S(T,...)
end)

notify('Client AntiTP','Client anti teleport is now active (only effective on localscript teleport)')
end)

addcmd('allowrejoin',{'allowrj'},function(O,P)
if O[1]and O[1]=='false'then
allow_rj=false
notify('Client AntiTP','Allow rejoin set to false')
else
allow_rj=true
notify('Client AntiTP','Allow rejoin set to true')
end
end)

addcmd("cancelteleport",{"canceltp"},function(O,P)
TeleportService:TeleportCancel()
end)

addcmd("volume",{"vol"},function(O,P)
UserSettings():GetService"UserGameSettings".MasterVolume=O[1]/10
end)

addcmd("antilag",{"boostfps","lowgraphics"},function(O,P)
local Q=workspace:FindFirstChildWhichIsA"Terrain"
Q.WaterWaveSize=0
Q.WaterWaveSpeed=0
Q.WaterReflectance=0
Q.WaterTransparency=1
Lighting.GlobalShadows=false
Lighting.FogEnd=9e9
Lighting.FogStart=9e9
settings().Rendering.QualityLevel=1
for R,S in pairs(game:GetDescendants())do
if S:IsA"BasePart"then
S.CastShadow=false
S.Material="Plastic"
S.Reflectance=0
S.BackSurface="SmoothNoOutlines"
S.BottomSurface="SmoothNoOutlines"
S.FrontSurface="SmoothNoOutlines"
S.LeftSurface="SmoothNoOutlines"
S.RightSurface="SmoothNoOutlines"
S.TopSurface="SmoothNoOutlines"
elseif S:IsA"Decal"then
S.Transparency=1
S.Texture=""
elseif S:IsA"ParticleEmitter"or S:IsA"Trail"then
S.Lifetime=NumberRange.new(0)
end
end
for R,S in pairs(Lighting:GetDescendants())do
if S:IsA"PostEffect"then
S.Enabled=false
end
end
workspace.DescendantAdded:Connect(function(R)
task.spawn(function()
if R:IsA"ForceField"or R:IsA"Sparkles"or R:IsA"Smoke"or R:IsA"Fire"or R:IsA"Beam"then
RunService.Heartbeat:Wait()
R:Destroy()
elseif R:IsA"BasePart"then
R.CastShadow=false
end
end)
end)
end)

addcmd("setfpscap",{"fpscap","maxfps"},function(O,P)
if fpscaploop then
task.cancel(fpscaploop)
fpscaploop=nil
end

local Q=60
local R=tonumber(O[1])or 1e6
if R=="none"then
return
elseif R>0 then
Q=R
else
return notify("Invalid argument","Please provide a number above 0 or 'none'.")
end

if setfpscap and type(setfpscap)=="function"then
setfpscap(Q)
else
fpscaploop=task.spawn(function()
local S=os.clock()
while true do
if os.clock()>=S+1/Q then
S=os.clock()
task.wait()
end
end
end)
end
end)

addcmd('notify',{},function(O,P)
notify(getstring(1))
end)

addcmd('lastcommand',{'lastcmd'},function(O,P)
if cmdHistory[1]:sub(1,11)~='lastcommand'and cmdHistory[1]:sub(1,7)~='lastcmd'then
execCmd(cmdHistory[1])
end
end)

addcmd('esp',{},function(O,P)
if not CHMSenabled then
ESPenabled=true
for Q,R in pairs(Players:GetPlayers())do
if R.Name~=P.Name then
ESP(R)
end
end
else
notify('ESP','Disable chams (nochams) before using esp')
end
end)

addcmd('espteam',{},function(O,P)
if not CHMSenabled then
ESPenabled=true
for Q,R in pairs(Players:GetPlayers())do
if R.Name~=P.Name then
ESP(R,true)
end
end
else
notify('ESP','Disable chams (nochams) before using esp')
end
end)

addcmd('noesp',{'unesp','unespteam'},function(O,P)
ESPenabled=false
for Q,R in pairs(COREGUI:GetChildren())do
if string.sub(R.Name,-4)=='_ESP'then
R:Destroy()
end
end
end)

addcmd('esptransparency',{},function(O,P)
espTransparency=(O[1]and isNumber(O[1])and O[1])or 0.3
updatesaves()
end)

local O={}
local P
function partAdded(Q)
if#O>0 then
if FindInTable(O,Q.Name:lower())then
local R=Instance.new"BoxHandleAdornment"
R.Name=Q.Name:lower().."_PESP"
R.Parent=Q
R.Adornee=Q
R.AlwaysOnTop=true
R.ZIndex=0
R.Size=Q.Size
R.Transparency=espTransparency
R.Color=BrickColor.new"Lime green"
end
else
P:Disconnect()
P=nil
end
end

addcmd('partesp',{},function(Q,R)
local S=getstring(1):lower()
if not FindInTable(O,S)then
table.insert(O,S)
for T,U in pairs(workspace:GetDescendants())do
if U:IsA"BasePart"and U.Name:lower()==S then
local V=Instance.new"BoxHandleAdornment"
V.Name=S.."_PESP"
V.Parent=U
V.Adornee=U
V.AlwaysOnTop=true
V.ZIndex=0
V.Size=U.Size
V.Transparency=espTransparency
V.Color=BrickColor.new"Lime green"
end
end
end
if P==nil then
P=workspace.DescendantAdded:Connect(partAdded)
end
end)

addcmd('unpartesp',{'nopartesp'},function(Q,R)
if Q[1]then
local S=getstring(1):lower()
if FindInTable(O,S)then
table.remove(O,GetInTable(O,S))
end
for T,U in pairs(workspace:GetDescendants())do
if U:IsA"BoxHandleAdornment"and U.Name==S..'_PESP'then
U:Destroy()
end
end
else
P:Disconnect()
P=nil
O={}
for S,T in pairs(workspace:GetDescendants())do
if T:IsA"BoxHandleAdornment"and T.Name:sub(-5)=='_PESP'then
T:Destroy()
end
end
end
end)

addcmd('chams',{},function(Q,R)
if not ESPenabled then
CHMSenabled=true
for S,T in pairs(Players:GetPlayers())do
if T.Name~=R.Name then
CHMS(T)
end
end
else
notify('Chams','Disable ESP (noesp) before using chams')
end
end)

addcmd('nochams',{'unchams'},function(Q,R)
CHMSenabled=false
for S,T in pairs(Players:GetPlayers())do
local U=T
for V,W in pairs(COREGUI:GetChildren())do
if W.Name==U.Name..'_CHMS'then
W:Destroy()
end
end
end
end)

addcmd('locate',{},function(Q,R)
local S=getPlayer(Q[1],R)
for T,U in pairs(S)do
Locate(Players[U])
end
end)

addcmd('nolocate',{'unlocate'},function(Q,R)
local S=getPlayer(Q[1],R)
if Q[1]then
for T,U in pairs(S)do
for V,W in pairs(COREGUI:GetChildren())do
if W.Name==Players[U].Name..'_LC'then
W:Destroy()
end
end
end
else
for T,U in pairs(COREGUI:GetChildren())do
if string.sub(U.Name,-3)=='_LC'then
U:Destroy()
end
end
end
end)

viewing=nil
addcmd('view',{'spectate'},function(Q,R)
StopFreecam()
local S=getPlayer(Q[1],R)
for T,U in pairs(S)do
if viewDied then
viewDied:Disconnect()
viewChanged:Disconnect()
end
viewing=Players[U]
workspace.CurrentCamera.CameraSubject=viewing.Character
notify('Spectate','Viewing '..Players[U].Name)
local function viewDiedFunc()
repeat wait()until Players[U].Character~=nil and getRoot(Players[U].Character)
workspace.CurrentCamera.CameraSubject=viewing.Character
end
viewDied=Players[U].CharacterAdded:Connect(viewDiedFunc)
local function viewChangedFunc()
workspace.CurrentCamera.CameraSubject=viewing.Character
end
viewChanged=workspace.CurrentCamera:GetPropertyChangedSignal"CameraSubject":Connect(viewChangedFunc)
end
end)

addcmd('viewpart',{'viewp'},function(Q,R)
StopFreecam()
if Q[1]then
for S,T in pairs(workspace:GetDescendants())do
if T.Name:lower()==getstring(1):lower()and T:IsA"BasePart"then
wait(0.1)
workspace.CurrentCamera.CameraSubject=T
end
end
end
end)

addcmd('unview',{'unspectate'},function(Q,R)
StopFreecam()
if viewing~=nil then
viewing=nil
notify('Spectate','View turned off')
end
if viewDied then
viewDied:Disconnect()
viewChanged:Disconnect()
end
workspace.CurrentCamera.CameraSubject=R.Character
end)


fcRunning=false
local Q=workspace.CurrentCamera
workspace:GetPropertyChangedSignal"CurrentCamera":Connect(function()
local R=workspace.CurrentCamera
if R then
Q=R
end
end)

local R=Enum.ContextActionPriority.High.Value

Spring={}do
Spring.__index=Spring

function Spring.new(S,T)
local U=setmetatable({},Spring)
U.f=S
U.p=T
U.v=T*0
return U
end

function Spring.Update(S,T,U)
local V=S.f*2*math.pi
local W=S.p
local X=S.v

local Y=U-W
local Z=math.exp(-V*T)

local _=U+(X*T-Y*(V*T+1))*Z
local aj=(V*T*(Y*V-X)+X)*Z

S.p=_
S.v=aj

return _
end

function Spring.Reset(aj,S)
aj.p=S
aj.v=S*0
end
end

local aj=Vector3.new()
local S=Vector2.new()

local T=Spring.new(5,Vector3.new())
local U=Spring.new(5,Vector2.new())

Input={}do

keyboard={
W=0,
A=0,
S=0,
D=0,
E=0,
Q=0,
Up=0,
Down=0,
LeftShift=0,
}

mouse={
Delta=Vector2.new(),
}

NAV_KEYBOARD_SPEED=Vector3.new(1,1,1)
PAN_MOUSE_SPEED=Vector2.new(1,1)*(math.pi/64)
NAV_ADJ_SPEED=0.75
NAV_SHIFT_MUL=0.25

navSpeed=1

function Input.Vel(V)
navSpeed=math.clamp(navSpeed+V*(keyboard.Up-keyboard.Down)*NAV_ADJ_SPEED,0.01,4)

local W=Vector3.new(
keyboard.D-keyboard.A,
keyboard.E-keyboard.Q,
keyboard.S-keyboard.W
)*NAV_KEYBOARD_SPEED

local X=UserInputService:IsKeyDown(Enum.KeyCode.LeftShift)

return(W)*(navSpeed*(X and NAV_SHIFT_MUL or 1))
end

function Input.Pan(V)
local W=mouse.Delta*PAN_MOUSE_SPEED
mouse.Delta=Vector2.new()
return W
end

do
function Keypress(V,W,X)
keyboard[X.KeyCode.Name]=W==Enum.UserInputState.Begin and 1 or 0
return Enum.ContextActionResult.Sink
end

function MousePan(V,W,X)
local Y=X.Delta
mouse.Delta=Vector2.new(-Y.y,-Y.x)
return Enum.ContextActionResult.Sink
end

function Zero(V)
for W,X in pairs(V)do
V[W]=X*0
end
end

function Input.StartCapture()
ContextActionService:BindActionAtPriority("FreecamKeyboard",Keypress,false,R,
Enum.KeyCode.W,
Enum.KeyCode.A,
Enum.KeyCode.S,
Enum.KeyCode.D,
Enum.KeyCode.E,
Enum.KeyCode.Q,
Enum.KeyCode.Up,
Enum.KeyCode.Down
)
ContextActionService:BindActionAtPriority("FreecamMousePan",MousePan,false,R,Enum.UserInputType.MouseMovement)
end

function Input.StopCapture()
navSpeed=1
Zero(keyboard)
Zero(mouse)
ContextActionService:UnbindAction"FreecamKeyboard"
ContextActionService:UnbindAction"FreecamMousePan"
end
end
end

function GetFocusDistance(V)
local W=0.1
local X=Q.ViewportSize
local Y=2*math.tan(cameraFov/2)
local Z=X.x/X.y*Y
local _=V.rightVector
local ak=V.upVector
local al=V.lookVector

local am=Vector3.new()
local an=512

for ao=0,1,0.5 do
for ap=0,1,0.5 do
local aq=(ao-0.5)*Z
local ar=(ap-0.5)*Y
local as=_*aq-ak*ar+al
local at=V.p+as*W local
au, av=workspace:FindPartOnRay(Ray.new(at,as.unit*an))
local aw=(av-at).magnitude
if an>aw then
an=aw
am=as.unit
end
end
end

return al:Dot(am)*an
end

local function StepFreecam(ak)
local al=T:Update(ak,Input.Vel(ak))
local am=U:Update(ak,Input.Pan(ak))

local an=math.sqrt(math.tan(math.rad(35))/math.tan(math.rad(cameraFov/2)))

S=S+am*Vector2.new(0.75,1)*8*(ak/an)
S=Vector2.new(math.clamp(S.x,-math.rad(90),math.rad(90)),S.y%(2*math.pi))

local ao=CFrame.new(aj)*CFrame.fromOrientation(S.x,S.y,0)*CFrame.new(al*Vector3.new(1,1,1)*64*ak)
aj=ao.p

Q.CFrame=ao
Q.Focus=ao*CFrame.new(0,0,-GetFocusDistance(ao))
Q.FieldOfView=cameraFov
end

local ak={}do
mouseBehavior=""
mouseIconEnabled=""
cameraType=""
cameraFocus=""
cameraCFrame=""
cameraFieldOfView=""

function ak.Push()
cameraFieldOfView=Q.FieldOfView
Q.FieldOfView=70

cameraType=Q.CameraType
Q.CameraType=Enum.CameraType.Custom

cameraCFrame=Q.CFrame
cameraFocus=Q.Focus

mouseIconEnabled=UserInputService.MouseIconEnabled
UserInputService.MouseIconEnabled=true

mouseBehavior=UserInputService.MouseBehavior
UserInputService.MouseBehavior=Enum.MouseBehavior.Default
end

function ak.Pop()
Q.FieldOfView=70

Q.CameraType=cameraType
cameraType=nil

Q.CFrame=cameraCFrame
cameraCFrame=nil

Q.Focus=cameraFocus
cameraFocus=nil

UserInputService.MouseIconEnabled=mouseIconEnabled
mouseIconEnabled=nil

UserInputService.MouseBehavior=mouseBehavior
mouseBehavior=nil
end
end

function StartFreecam(al)
if fcRunning then
StopFreecam()
end
local am=Q.CFrame
if al then
am=al
end
S=Vector2.new()
aj=am.p
cameraFov=Q.FieldOfView

T:Reset(Vector3.new())
U:Reset(Vector2.new())

ak.Push()
RunService:BindToRenderStep("Freecam",Enum.RenderPriority.Camera.Value,StepFreecam)
Input.StartCapture()
fcRunning=true
end

function StopFreecam()
if not fcRunning then return end
Input.StopCapture()
RunService:UnbindFromRenderStep"Freecam"
ak.Pop()
workspace.Camera.FieldOfView=70
fcRunning=false
end

addcmd('freecam',{'fc'},function(al,am)
StartFreecam()
end)

addcmd('freecampos',{'fcpos','fcp','freecamposition','fcposition'},function(al,am)
if not al[1]then return end
local an=CFrame.new(al[1],al[2],al[3])
StartFreecam(an)
end)

addcmd('freecamwaypoint',{'fcwp'},function(al,am)
local an=tostring(getstring(1))
if am.Character then
for ao,ap in pairs(WayPoints)do
local aq=WayPoints[ao].COORD[1]
local ar=WayPoints[ao].COORD[2]
local as=WayPoints[ao].COORD[3]
if tostring(WayPoints[ao].NAME):lower()==tostring(an):lower()then
StartFreecam(CFrame.new(aq,ar,as))
end
end
for ao,ap in pairs(pWayPoints)do
if tostring(pWayPoints[ao].NAME):lower()==tostring(an):lower()then
StartFreecam(CFrame.new(pWayPoints[ao].COORD[1].Position))
end
end
end
end)

addcmd('freecamgoto',{'fcgoto','freecamtp','fctp'},function(al,am)
local an=getPlayer(al[1],am)
for ao,ap in pairs(an)do
StartFreecam(getRoot(Players[ap].Character).CFrame)
end
end)

addcmd('unfreecam',{'nofreecam','unfc','nofc'},function(al,am)
StopFreecam()
end)

addcmd('freecamspeed',{'fcspeed'},function(al,am)
local an=al[1]or 1
if isNumber(an)then
NAV_KEYBOARD_SPEED=Vector3.new(an,an,an)
end
end)

addcmd('notifyfreecamposition',{'notifyfcpos'},function(al,am)
if fcRunning then
local an,ao,ap=workspace.CurrentCamera.CFrame.Position.X,workspace.CurrentCamera.CFrame.Position.Y,workspace.CurrentCamera.CFrame.Position.Z
local aq,ar=string.format,math.round
notify("Current Position",aq("%s, %s, %s",ar(an),ar(ao),ar(ap)))
end
end)

addcmd('copyfreecamposition',{'copyfcpos'},function(al,am)
if fcRunning then
local an,ao,ap=workspace.CurrentCamera.CFrame.Position.X,workspace.CurrentCamera.CFrame.Position.Y,workspace.CurrentCamera.CFrame.Position.Z
local aq,ar=string.format,math.round
toClipboard(aq("%s, %s, %s",ar(an),ar(ao),ar(ap)))
end
end)

addcmd('gotocamera',{'gotocam','tocam'},function(al,am)
getRoot(am.Character).CFrame=workspace.Camera.CFrame
end)

addcmd('tweengotocamera',{'tweengotocam','tgotocam','ttocam'},function(al,am)
TweenService:Create(getRoot(am.Character),TweenInfo.new(tweenSpeed,Enum.EasingStyle.Linear),{CFrame=workspace.Camera.CFrame}):Play()
end)

addcmd('fov',{},function(al,am)
local an=al[1]or 70
if isNumber(an)then
workspace.CurrentCamera.FieldOfView=an
end
end)

local al=Players.LocalPlayer.CameraMaxZoomDistance
local am=Players.LocalPlayer.CameraMinZoomDistance
addcmd('lookat',{},function(an,ao)
if ao.CameraMaxZoomDistance~=0.5 then
al=ao.CameraMaxZoomDistance
am=ao.CameraMinZoomDistance
end
ao.CameraMaxZoomDistance=0.5
ao.CameraMinZoomDistance=0.5
wait()
local ap=getPlayer(an[1],ao)
for aq,ar in pairs(ap)do
local as=Players[ar].Character
if as and as:FindFirstChild'Head'then
workspace.CurrentCamera.CFrame=CFrame.new(workspace.CurrentCamera.CFrame.p,as.Head.CFrame.p)
wait(0.1)
end
end
ao.CameraMaxZoomDistance=al
ao.CameraMinZoomDistance=am
end)

addcmd('fixcam',{'restorecam'},function(an,ao)
StopFreecam()
execCmd'unview'
workspace.CurrentCamera:remove()
wait(.1)
repeat wait()until ao.Character~=nil
workspace.CurrentCamera.CameraSubject=ao.Character:FindFirstChildWhichIsA'Humanoid'
workspace.CurrentCamera.CameraType="Custom"
ao.CameraMinZoomDistance=0.5
ao.CameraMaxZoomDistance=400
ao.CameraMode="Classic"
ao.Character.Head.Anchored=false
end)

addcmd("enableshiftlock",{"enablesl","shiftlock"},function(an,ao)
local function enableShiftlock()
ao.DevEnableMouseLock=true
end
ao:GetPropertyChangedSignal"DevEnableMouseLock":Connect(enableShiftlock)
enableShiftlock()
notify("Shiftlock","Shift lock should now be available")
end)

addcmd('firstp',{},function(an,ao)
ao.CameraMode="LockFirstPerson"
end)

addcmd('thirdp',{},function(an,ao)
ao.CameraMode="Classic"
end)

addcmd('noclipcam',{'nccam'},function(an,ao)
local ap=(debug and debug.setconstant)or setconstant
local aq=(debug and debug.getconstants)or getconstants
if not ap or not getgc or not aq then
return notify('Incompatible Exploit','Your exploit does not support this command (missing setconstant or getconstants or getgc)')
end
local ar=ao.PlayerScripts.PlayerModule.CameraModule.ZoomController.Popper
for as,at in pairs(getgc())do
if type(at)=='function'and getfenv(at).script==ar then
for au,av in pairs(aq(at))do
if tonumber(av)==.25 then
ap(at,au,0)
elseif tonumber(av)==0 then
ap(at,au,.25)
end
end
end
end
end)

addcmd('maxzoom',{},function(an,ao)
ao.CameraMaxZoomDistance=an[1]
end)

addcmd('minzoom',{},function(an,ao)
ao.CameraMinZoomDistance=an[1]
end)

addcmd('camdistance',{},function(an,ao)
local ap=ao.CameraMaxZoomDistance
local aq=ao.CameraMinZoomDistance
if ap<tonumber(an[1])then
ap=an[1]
end
ao.CameraMaxZoomDistance=an[1]
ao.CameraMinZoomDistance=an[1]
wait()
ao.CameraMaxZoomDistance=ap
ao.CameraMinZoomDistance=aq
end)

addcmd('unlockws',{'unlockworkspace'},function(an,ao)
for ap,aq in pairs(workspace:GetDescendants())do
if aq:IsA"BasePart"then
aq.Locked=false
end
end
end)

addcmd('lockws',{'lockworkspace'},function(an,ao)
for ap,aq in pairs(workspace:GetDescendants())do
if aq:IsA"BasePart"then
aq.Locked=true
end
end
end)

addcmd('delete',{'remove'},function(an,ao)
for ap,aq in pairs(workspace:GetDescendants())do
if aq.Name:lower()==getstring(1):lower()then
aq:Destroy()
end
end
notify('Item(s) Deleted','Deleted '..getstring(1))
end)

addcmd('deleteclass',{'removeclass','deleteclassname','removeclassname','dc'},function(an,ao)
for ap,aq in pairs(workspace:GetDescendants())do
if aq.ClassName:lower()==getstring(1):lower()then
aq:Destroy()
end
end
notify('Item(s) Deleted','Deleted items with ClassName '..getstring(1))
end)

addcmd('chardelete',{'charremove','cd'},function(an,ao)
for ap,aq in pairs(ao.Character:GetDescendants())do
if aq.Name:lower()==getstring(1):lower()then
aq:Destroy()
end
end
notify('Item(s) Deleted','Deleted '..getstring(1))
end)

addcmd('chardeleteclass',{'charremoveclass','chardeleteclassname','charremoveclassname','cdc'},function(an,ao)
for ap,aq in pairs(ao.Character:GetDescendants())do
if aq.ClassName:lower()==getstring(1):lower()then
aq:Destroy()
end
end
notify('Item(s) Deleted','Deleted items with ClassName '..getstring(1))
end)

addcmd('deletevelocity',{'dv','removevelocity','removeforces'},function(an,ao)
for ap,aq in pairs(ao.Character:GetDescendants())do
if aq:IsA"BodyVelocity"or aq:IsA"BodyGyro"or aq:IsA"RocketPropulsion"or aq:IsA"BodyThrust"or aq:IsA"BodyAngularVelocity"or aq:IsA"AngularVelocity"or aq:IsA"BodyForce"or aq:IsA"VectorForce"or aq:IsA"LineForce"then
aq:Destroy()
end
end
end)

addcmd('deleteinvisparts',{'deleteinvisibleparts','dip'},function(an,ao)
for ap,aq in pairs(workspace:GetDescendants())do
if aq:IsA"BasePart"and aq.Transparency==1 and aq.CanCollide then
aq:Destroy()
end
end
end)

local an={}
addcmd('invisibleparts',{'invisparts'},function(ao,ap)
for aq,ar in pairs(workspace:GetDescendants())do
if ar:IsA"BasePart"and ar.Transparency==1 then
if not table.find(an,ar)then
table.insert(an,ar)
end
ar.Transparency=0
end
end
end)

addcmd('uninvisibleparts',{'uninvisparts'},function(ao,ap)
for aq,ar in pairs(an)do
ar.Transparency=1
end
an={}
end)

addcmd("btools",{},function(ao,ap)
for aq=1,4 do
local ar=Instance.new"HopperBin"
ar.BinType=aq
ar.Name=randomString()
ar.Parent=ap:FindFirstChildWhichIsA"Backpack"
end
end)

addcmd("f3x",{"fex"},function(ao,ap)
loadstring(game:HttpGet"https://raw.githubusercontent.com/infyiff/backup/refs/heads/main/f3x.lua")()
end)

addcmd("partpath",{"partname"},function(ao,ap)
selectPart()
end)

addcmd("antiafk",{"antiidle"},function(ao,ap)
if getconnections then
for aq,ar in pairs(getconnections(ap.Idled))do
if ar.Disable then
ar.Disable(ar)
elseif ar.Disconnect then
ar.Disconnect(ar)
end
end
else
ap.Idled:Connect(function()
Services.VirtualUser:CaptureController()
Services.VirtualUser:ClickButton2(Vector2.new())
end)
end
if not(ao[1]and tostring(ao[1])=="nonotify")then notify("Anti Idle","Anti idle is enabled")end
end)

addcmd("datalimit",{},function(ao,ap)
local aq=tonumber(ao[1])
if aq then
Services.NetworkClient:SetOutgoingKBPSLimit(aq)
end
end)

addcmd("replicationlag",{"backtrack"},function(ao,ap)
if tonumber(ao[1])then
settings():GetService"NetworkSettings".IncomingReplicationLag=ao[1]
end
end)

addcmd("noprompts",{"nopurchaseprompts"},function(ao,ap)
COREGUI.PurchasePromptApp.Enabled=false
end)

addcmd("showprompts",{"showpurchaseprompts"},function(ao,ap)
COREGUI.PurchasePromptApp.Enabled=true
end)

promptNewRig=function(ao,ap)
local aq=ao.Character:FindFirstChildWhichIsA"Humanoid"
if aq then
AvatarEditorService:PromptSaveAvatar(aq.HumanoidDescription,Enum.HumanoidRigType[ap])
local ar=AvatarEditorService.PromptSaveAvatarCompleted:Wait()
if ar==Enum.AvatarPromptResult.Success then
execCmd"reset"
end
end
end

addcmd("promptr6",{},function(ao,ap)
promptNewRig(ap,"R6")
end)

addcmd("promptr15",{},function(ao,ap)
promptNewRig(ap,"R15")
end)

addcmd("wallwalk",{"walkonwalls"},function(ao,ap)
loadstring(game:HttpGet"https://raw.githubusercontent.com/infyiff/backup/main/wallwalker.lua")()
end)

addcmd('age',{},function(ao,ap)
local aq=getPlayer(ao[1],ap)
local ar={}
for as,at in pairs(aq)do
local au=Players[at]
table.insert(ar,au.Name.."'s age is: "..au.AccountAge)
end
notify('Account Age',table.concat(ar,',\n'))
end)

addcmd('chatage',{},function(ao,ap)
local aq=getPlayer(ao[1],ap)
local ar={}
for as,at in pairs(aq)do
local au=Players[at]
table.insert(ar,au.Name.."'s age is: "..au.AccountAge)
end
local as=table.concat(ar,', ')
chatMessage(as)
end)

addcmd('joindate',{'jd'},function(ao,ap)
local aq=getPlayer(ao[1],ap)
local ar={}
for as,at in pairs(aq)do
local au=Players[at]

local av=au.AccountAge*24*60*60
local aw=os.time()
local V=au.Name.." joined: "..os.date("%m/%d/%y",aw-av)

table.insert(ar,V)
end
notify('Join Date (Month/Day/Year)',table.concat(ar,',\n'))
end)

addcmd('chatjoindate',{'cjd'},function(ao,ap)
local aq=getPlayer(ao[1],ap)
local ar={}
for as,at in pairs(aq)do
local au=Players[at]

local av=au.AccountAge*24*60*60
local aw=os.time()
local V=au.Name.." joined: "..os.date("%m/%d/%y",aw-av)

table.insert(ar,V)
end
local as=table.concat(ar,', ')
chatMessage(as)
end)

addcmd('copyname',{'copyuser'},function(ao,ap)
local aq=getPlayer(ao[1],ap)
for ar,as in pairs(aq)do
local at=tostring(Players[as].Name)
toClipboard(at)
end
end)

addcmd('userid',{'id'},function(ao,ap)
local aq=getPlayer(ao[1],ap)
for ar,as in pairs(aq)do
local at=tostring(Players[as].UserId)
notify('User ID',at)
end
end)

addcmd("copyplaceid",{"placeid"},function(ao,ap)
toClipboard(PlaceId)
end)

addcmd("copygameid",{"gameid"},function(ao,ap)
toClipboard(game.GameId)
end)

addcmd('copyid',{'copyuserid'},function(ao,ap)
local aq=getPlayer(ao[1],ap)
for ar,as in pairs(aq)do
local at=tostring(Players[as].UserId)
toClipboard(at)
end
end)

addcmd('creatorid',{'creator'},function(ao,ap)
if game.CreatorType==Enum.CreatorType.User then
notify('Creator ID',game.CreatorId)
elseif game.CreatorType==Enum.CreatorType.Group then
local aq=GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id
ap.UserId=aq
notify('Creator ID',aq)
end
end)

addcmd('copycreatorid',{'copycreator'},function(ao,ap)
if game.CreatorType==Enum.CreatorType.User then
toClipboard(game.CreatorId)
notify('Copied ID','Copied creator ID to clipboard')
elseif game.CreatorType==Enum.CreatorType.Group then
local aq=GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id
toClipboard(aq)
notify('Copied ID','Copied creator ID to clipboard')
end
end)

addcmd('setcreatorid',{'setcreator'},function(ao,ap)
if game.CreatorType==Enum.CreatorType.User then
ap.UserId=game.CreatorId
notify('Set ID','Set UserId to '..game.CreatorId)
elseif game.CreatorType==Enum.CreatorType.Group then
local aq=GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id
ap.UserId=aq
notify('Set ID','Set UserId to '..aq)
end
end)

addcmd('appearanceid',{'aid'},function(ao,ap)
local aq=getPlayer(ao[1],ap)
for ar,as in pairs(aq)do
local at=tostring(Players[as].CharacterAppearanceId)
notify('Appearance ID',at)
end
end)

addcmd('copyappearanceid',{'caid'},function(ao,ap)
local aq=getPlayer(ao[1],ap)
for ar,as in pairs(aq)do
local at=tostring(Players[as].CharacterAppearanceId)
toClipboard(at)
end
end)

addcmd('norender',{},function(ao,ap)
RunService:Set3dRenderingEnabled(false)
end)

addcmd('render',{},function(ao,ap)
RunService:Set3dRenderingEnabled(true)
end)

addcmd('2022materials',{'use2022materials'},function(ao,ap)
if sethidden then
sethidden(MaterialService,"Use2022Materials",true)
else
notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
end
end)

addcmd('un2022materials',{'unuse2022materials'},function(ao,ap)
if sethidden then
sethidden(MaterialService,"Use2022Materials",false)
else
notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
end
end)

addcmd('goto',{'to'},function(ao,ap)
local aq=getPlayer(ao[1],ap)
for ar,as in pairs(aq)do
if Players[as].Character~=nil then
if ap.Character:FindFirstChildOfClass'Humanoid'and ap.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
ap.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
getRoot(ap.Character).CFrame=getRoot(Players[as].Character).CFrame+Vector3.new(3,1,0)
end
end
execCmd'breakvelocity'
end)

addcmd('tweengoto',{'tgoto','tto','tweento'},function(ao,ap)
local aq=getPlayer(ao[1],ap)
for ar,as in pairs(aq)do
if Players[as].Character~=nil then
if ap.Character:FindFirstChildOfClass'Humanoid'and ap.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
ap.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
TweenService:Create(getRoot(ap.Character),TweenInfo.new(tweenSpeed,Enum.EasingStyle.Linear),{CFrame=getRoot(Players[as].Character).CFrame+Vector3.new(3,1,0)}):Play()
end
end
execCmd'breakvelocity'
end)

addcmd('vehiclegoto',{'vgoto','vtp','vehicletp'},function(ao,ap)
local aq=getPlayer(ao[1],ap)
for ar,as in pairs(aq)do
if Players[as].Character~=nil then
local at=ap.Character:FindFirstChildOfClass'Humanoid'.SeatPart
local au=at:FindFirstAncestorWhichIsA"Model"
au:MoveTo(getRoot(Players[as].Character).Position)
end
end
end)

addcmd('pulsetp',{'ptp'},function(ao,ap)
local aq=getPlayer(ao[1],ap)
for ar,as in pairs(aq)do
if Players[as].Character~=nil then
local at=getRoot(ap.Character).CFrame
local au=ao[2]or 1
if ap.Character:FindFirstChildOfClass'Humanoid'and ap.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
ap.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
getRoot(ap.Character).CFrame=getRoot(Players[as].Character).CFrame+Vector3.new(3,1,0)
wait(au)
getRoot(ap.Character).CFrame=at
end
end
execCmd'breakvelocity'
end)

local ao={}
addcmd('vehiclenoclip',{'vnoclip'},function(ap,aq)
ao={}
local ar=aq.Character:FindFirstChildOfClass'Humanoid'.SeatPart
local as=ar.Parent
repeat
if as.ClassName~="Model"then
as=as.Parent
end
until as.ClassName=="Model"
wait(0.1)
execCmd'noclip'
for at,au in pairs(as:GetDescendants())do
if au:IsA"BasePart"and au.CanCollide then
table.insert(ao,au)
au.CanCollide=false
end
end
end)

addcmd("vehicleclip",{"vclip","unvnoclip","unvehiclenoclip"},function(ap,aq)
execCmd"clip"
for ar,as in pairs(ao)do
as.CanCollide=true
end
ao={}
end)

addcmd("togglevnoclip",{},function(ap,aq)
execCmd(Clip and"vnoclip"or"vclip")
end)

addcmd('clientbring',{'cbring'},function(ap,aq)
local ar=getPlayer(ap[1],aq)
for as,at in pairs(ar)do
if Players[at].Character~=nil then
if Players[at].Character:FindFirstChildOfClass'Humanoid'then
Players[at].Character:FindFirstChildOfClass'Humanoid'.Sit=false
end
wait()
getRoot(Players[at].Character).CFrame=getRoot(aq.Character).CFrame+Vector3.new(3,1,0)
end
end
end)

local ap={}
addcmd('loopbring',{},function(aq,ar)
local as=getPlayer(aq[1],ar)
for at,au in pairs(as)do
task.spawn(function()
if Players[au].Name~=ar.Name and not FindInTable(ap,Players[au].Name)then
table.insert(ap,Players[au].Name)
local av=Players[au].Name
local aw=Players[au].Character
local V=3
if aq[2]and isNumber(aq[2])then
V=aq[2]
end
local W=0
if aq[3]and isNumber(aq[3])then
W=aq[3]
end
repeat
for X,Y in pairs(as)do
if Players:FindFirstChild(au)then
aw=Players[au].Character
if aw~=nil and Players[au].Character~=nil and getRoot(aw)and ar.Character~=nil and getRoot(ar.Character)then
getRoot(aw).CFrame=getRoot(ar.Character).CFrame+Vector3.new(V,1,0)
end
wait(W)
else
for Z,_ in pairs(ap)do if _==av then table.remove(ap,Z)end end
end
end
until not FindInTable(ap,av)
end
end)
end
end)

addcmd('unloopbring',{'noloopbring'},function(aq,ar)
local as=getPlayer(aq[1],ar)
for at,au in pairs(as)do
task.spawn(function()
for av,aw in pairs(ap)do if aw==Players[au].Name then table.remove(ap,av)end end
end)
end
end)

local aq=false
local ar=false
addcmd('walkto',{'follow'},function(as,at)
local au=getPlayer(as[1],at)
for av,aw in pairs(au)do
if Players[aw].Character~=nil then
if at.Character:FindFirstChildOfClass'Humanoid'and at.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
at.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
aq=true
repeat wait()
at.Character:FindFirstChildOfClass'Humanoid':MoveTo(getRoot(Players[aw].Character).Position)
until Players[aw].Character==nil or not getRoot(Players[aw].Character)or aq==false
end
end
end)

addcmd('pathfindwalkto',{'pathfindfollow'},function(as,at)
aq=false
wait()
local au=getPlayer(as[1],at)
local av=Players.LocalPlayer.Character:FindFirstChildOfClass"Humanoid"
local aw=PathService:CreatePath()
for V,W in pairs(au)do
if Players[W].Character~=nil then
if at.Character:FindFirstChildOfClass'Humanoid'and at.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
at.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
aq=true
repeat wait()local
ax=pcall(function()
aw:ComputeAsync(getRoot(at.Character).Position,getRoot(Players[W].Character).Position)
local X=aw:GetWaypoints()
local Y
for Z,_ in pairs(X)do
local ax=_.Position
av:MoveTo(ax)
repeat
Y=(ax-av.Parent.PrimaryPart.Position).magnitude
wait()
until
Y<=5
end
end)
if not ax then
at.Character:FindFirstChildOfClass'Humanoid':MoveTo(getRoot(Players[W].Character).Position)
end
until Players[W].Character==nil or not getRoot(Players[W].Character)or aq==false
end
end
end)

addcmd('pathfindwalktowaypoint',{'pathfindwalktowp'},function(as,at)
ar=false
wait()
local au=tostring(getstring(1))
local av=Players.LocalPlayer.Character:FindFirstChildOfClass"Humanoid"
local aw=PathService:CreatePath()
if at.Character then
for ax,V in pairs(WayPoints)do
if tostring(WayPoints[ax].NAME):lower()==tostring(au):lower()then
if at.Character:FindFirstChildOfClass'Humanoid'and at.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
at.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
local W=Vector3.new(WayPoints[ax].COORD[1],WayPoints[ax].COORD[2],WayPoints[ax].COORD[3])
ar=true
repeat wait()local
ay=pcall(function()
aw:ComputeAsync(getRoot(at.Character).Position,W)
local X=aw:GetWaypoints()
local Y
for Z,_ in pairs(X)do
local ay=_.Position
av:MoveTo(ay)
repeat
Y=(ay-av.Parent.PrimaryPart.Position).magnitude
wait()
until
Y<=5
end
end)
if not ay then
at.Character:FindFirstChildOfClass'Humanoid':MoveTo(W)
end
until not at.Character or ar==false
end
end
for ax,ay in pairs(pWayPoints)do
if tostring(pWayPoints[ax].NAME):lower()==tostring(au):lower()then
if at.Character:FindFirstChildOfClass'Humanoid'and at.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
at.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
local V=pWayPoints[ax].COORD[1].Position
ar=true
repeat wait()local
W=pcall(function()
aw:ComputeAsync(getRoot(at.Character).Position,V)
local W=aw:GetWaypoints()
local X
for Y,Z in pairs(W)do
local _=Z.Position
av:MoveTo(_)
repeat
X=(_-av.Parent.PrimaryPart.Position).magnitude
wait()
until
X<=5
end
end)
if not W then
at.Character:FindFirstChildOfClass'Humanoid':MoveTo(V)
end
until not at.Character or ar==false
end
end
end
end)

addcmd('unwalkto',{'nowalkto','unfollow','nofollow'},function(as,at)
aq=false
ar=false
end)

addcmd("orbit",{},function(as,at)
execCmd"unorbit nonotify"
local au=Players:FindFirstChild(getPlayer(as[1],at)[1])
local av=getRoot(at.Character)
local aw=at.Character:FindFirstChildWhichIsA"Humanoid"
if au and au.Character and getRoot(au.Character)and av and aw then
local ax=0
local ay=tonumber(as[2])or 0.2
local V=tonumber(as[3])or 6
orbit1=RunService.Heartbeat:Connect(function()
pcall(function()
ax=ax+ay
av.CFrame=CFrame.new(getRoot(au.Character).Position)*CFrame.Angles(0,math.rad(ax),0)*CFrame.new(V,0,0)
end)
end)
orbit2=RunService.RenderStepped:Connect(function()
pcall(function()
av.CFrame=CFrame.new(av.Position,getRoot(au.Character).Position)
end)
end)
orbit3=aw.Died:Connect(function()execCmd"unorbit"end)
orbit4=aw.Seated:Connect(function(W)if W then execCmd"unorbit"end end)
notify("Orbit","Started orbiting "..formatUsername(au))
end
end)

addcmd("unorbit",{},function(as,at)
if orbit1 then orbit1:Disconnect()end
if orbit2 then orbit2:Disconnect()end
if orbit3 then orbit3:Disconnect()end
if orbit4 then orbit4:Disconnect()end
if as[1]~="nonotify"then notify("Orbit","Stopped orbiting player")end
end)

addcmd('freeze',{'fr'},function(as,at)
local au=getPlayer(as[1],at)
if au~=nil then
for av,aw in pairs(au)do
task.spawn(function()
for ax,ay in next,Players[aw].Character:GetDescendants()do
if ay:IsA"BasePart"and not ay.Anchored then
ay.Anchored=true
end
end
end)
end
end
end)


addcmd('thaw',{'unfreeze','unfr'},function(as,at)
local au=getPlayer(as[1],at)
if au~=nil then
for av,aw in pairs(au)do
task.spawn(function()
for ax,ay in next,Players[aw].Character:GetDescendants()do
if ay.Name~=floatName and ay:IsA"BasePart"and ay.Anchored then
ay.Anchored=false
end
end
end)
end
end
end)

oofing=false
addcmd('loopoof',{},function(as,at)
oofing=true
repeat wait(0.1)
for au,av in pairs(Players:GetPlayers())do
if av.Character~=nil and av.Character:FindFirstChild'Head'then
for aw,ax in pairs(av.Character.Head:GetChildren())do
if ax:IsA'Sound'then ax.Playing=true end
end
end
end
until oofing==false
end)

addcmd('unloopoof',{},function(as,at)
oofing=false
end)

local as=false
addcmd('muteboombox',{},function(at,au)
if not as and SoundService.RespectFilteringEnabled then as=true notify('RespectFilteringEnabled','RespectFilteringEnabled is set to true (the command will still work but may only be clientsided)')end
local av=getPlayer(at[1],au)
if av~=nil then
for aw,ax in pairs(av)do
task.spawn(function()
for ay,V in next,Players[ax].Character:GetDescendants()do
if V:IsA"Sound"and V.Playing==true then
V.Playing=false
end
end
for ay,V in next,Players[ax]:FindFirstChildOfClass"Backpack":GetDescendants()do
if V:IsA"Sound"and V.Playing==true then
V.Playing=false
end
end
end)
end
end
end)

addcmd('unmuteboombox',{},function(at,au)
if not as and SoundService.RespectFilteringEnabled then as=true notify('RespectFilteringEnabled','RespectFilteringEnabled is set to true (the command will still work but may only be clientsided)')end
local av=getPlayer(at[1],au)
if av~=nil then
for aw,ax in pairs(av)do
task.spawn(function()
for ay,V in next,Players[ax].Character:GetDescendants()do
if V:IsA"Sound"and V.Playing==false then
V.Playing=true
end
end
end)
end
end
end)

addcmd("reset",{},function(at,au)
local av=au.Character and au.Character:FindFirstChildWhichIsA"Humanoid"
if replicatesignal then
replicatesignal(au.Kill)
elseif av then
av:ChangeState(Enum.HumanoidStateType.Dead)
else
au.Character:BreakJoints()
end
end)

addcmd('freezeanims',{},function(at,au)
local av=au.Character:FindFirstChildOfClass"Humanoid"or au.Character:FindFirstChildOfClass"AnimationController"
local aw=av:GetPlayingAnimationTracks()
for ax,ay in pairs(aw)do
ay:AdjustSpeed(0)
end
end)

addcmd('unfreezeanims',{},function(at,au)
local av=au.Character:FindFirstChildOfClass"Humanoid"or au.Character:FindFirstChildOfClass"AnimationController"
local aw=av:GetPlayingAnimationTracks()
for ax,ay in pairs(aw)do
ay:AdjustSpeed(1)
end
end)

addcmd("respawn",{},function(at,au)
respawn(au)
end)

addcmd("refresh",{"re"},function(at,au)
refresh(au)
end)

addcmd("god",{},function(at,au)
permadeath(au)
local av=workspace.CurrentCamera local
aw, ax=au.Character, av.CFrame
local ay=aw and aw:FindFirstChildWhichIsA"Humanoid"
local V=ay:Clone()
V.Parent=char
au.Character=nil
V:SetStateEnabled(15,false)
V:SetStateEnabled(1,false)
V:SetStateEnabled(0,false)
V.BreakJointsOnDeath=true
ay:Destroy()
au.Character=char
av.CameraSubject=V
av.CFrame=task.wait()and pos
V.DisplayDistanceType=Enum.HumanoidDisplayDistanceType.None
local W=aw:FindFirstChild"Animate"
if W then
W.Disabled=true
task.wait()
W.Disabled=false
end
V.Health=V.MaxHealth
end)

invisRunning=false
addcmd('invisible',{'invis'},function(at,au)
if invisRunning then return end
invisRunning=true

local av=au
repeat wait(.1)until av.Character
local aw=av.Character
aw.Archivable=true
local ax=false
local ay=true
local V=aw:Clone()
V.Parent=Lighting
local W=workspace.FallenPartsDestroyHeight
V.Name=""
local X

local az=RunService.Stepped:Connect(function()
pcall(function()
local Y
if tostring(W):find'-'then
Y=true
else
Y=false
end
local Z=av.Character.HumanoidRootPart.Position
local _=tostring(Z)
local az=_:split', '
tonumber(az[1])
local aA=tonumber(az[2])
tonumber(az[3])
if Y==true then
if aA<=W then
Respawn()
end
elseif Y==false then
if aA>=W then
Respawn()
end
end
end)
end)

for aA,Y in pairs(V:GetDescendants())do
if Y:IsA"BasePart"then
if Y.Name=="HumanoidRootPart"then
Y.Transparency=1
else
Y.Transparency=.5
end
end
end

function Respawn()
ay=false
if ax==true then
pcall(function()
av.Character=aw
wait()
aw.Parent=workspace
aw:FindFirstChildWhichIsA'Humanoid':Destroy()
ax=false
V.Parent=nil
invisRunning=false
end)
elseif ax==false then
pcall(function()
av.Character=aw
wait()
aw.Parent=workspace
aw:FindFirstChildWhichIsA'Humanoid':Destroy()
TurnVisible()
end)
end
end

local aA
aA=V:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
Respawn()
aA:Disconnect()
end)

if ax==true then return end
ax=true
X=workspace.CurrentCamera.CFrame
local Y=av.Character.HumanoidRootPart.CFrame
aw:MoveTo(Vector3.new(0,math.pi*1000000,0))
workspace.CurrentCamera.CameraType=Enum.CameraType.Scriptable
wait(.2)
workspace.CurrentCamera.CameraType=Enum.CameraType.Custom
V=V
aw.Parent=Lighting
V.Parent=workspace
V.HumanoidRootPart.CFrame=Y
av.Character=V
execCmd'fixcam'
av.Character.Animate.Disabled=true
av.Character.Animate.Disabled=false

function TurnVisible()
if ax==false then return end
az:Disconnect()
aA:Disconnect()
X=workspace.CurrentCamera.CFrame
aw=aw
local Z=av.Character.HumanoidRootPart.CFrame
aw.HumanoidRootPart.CFrame=Z
V:Destroy()
av.Character=aw
aw.Parent=workspace
ax=false
av.Character.Animate.Disabled=true
av.Character.Animate.Disabled=false
aA=aw:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
Respawn()
aA:Disconnect()
end)
invisRunning=false
end
notify('Invisible','You now appear invisible to other players')
end)

addcmd("visible",{"vis","uninvisible"},function(at,au)
TurnVisible()
end)

addcmd("toggleinvis",{},function(at,au)
execCmd(invisRunning and"visible"or"invisible")
end)

addcmd('toolinvisible',{'toolinvis','tinvis'},function(at,au)
local av=Players.LocalPlayer.Character
local aw=false

local ax=Instance.new'Part'
ax.Anchored=true
ax.CanCollide=true
ax.Size=Vector3.new(10,1,10)
ax.Position=Vector3.new(0,10000,0)
ax.Parent=workspace
local ay=ax.Touched:connect(function(ay)
if(ay.Parent.Name==Players.LocalPlayer.Name)then
if aw==false then
aw=true
local function apply()
local az=av.HumanoidRootPart:Clone()
wait(.25)
av.HumanoidRootPart:Destroy()
az.Parent=av
av:MoveTo(loc)
aw=false
end
if av then
apply()
end
end
end
end)
repeat wait()until av
local az
az=Players.LocalPlayer.CharacterAdded:connect(function(aA)
ay:Disconnect()
ax:Destroy()
az:Disconnect()
end)
loc=av.HumanoidRootPart.Position
av:MoveTo(ax.Position+Vector3.new(0,.5,0))
end)

addcmd("strengthen",{},function(at,au)
for av,aw in pairs(au.Character:GetDescendants())do
if aw.ClassName=="Part"then
if at[1]then
aw.CustomPhysicalProperties=PhysicalProperties.new(at[1],0.3,0.5)
else
aw.CustomPhysicalProperties=PhysicalProperties.new(100,0.3,0.5)
end
end
end
end)

addcmd("weaken",{},function(at,au)
for av,aw in pairs(au.Character:GetDescendants())do
if aw.ClassName=="Part"then
if at[1]then
aw.CustomPhysicalProperties=PhysicalProperties.new(-at[1],0.3,0.5)
else
aw.CustomPhysicalProperties=PhysicalProperties.new(0,0.3,0.5)
end
end
end
end)

addcmd("unweaken",{"unstrengthen"},function(at,au)
for av,aw in pairs(au.Character:GetDescendants())do
if aw.ClassName=="Part"then
aw.CustomPhysicalProperties=PhysicalProperties.new(0.7,0.3,0.5)
end
end
end)

addcmd("breakvelocity",{},function(at,au)
local av,aw=false,Vector3.new(0,0,0)
delay(1,function()
av=true
end)
while not av do
for ax,ay in ipairs(au.Character:GetDescendants())do
if ay:IsA"BasePart"then
ay.Velocity,ay.RotVelocity=aw,aw
end
end
wait()
end
end)

addcmd('jpower',{'jumppower','jp'},function(at,au)
local av=at[1]or 50
if isNumber(av)then
if au.Character:FindFirstChildOfClass'Humanoid'.UseJumpPower then
au.Character:FindFirstChildOfClass'Humanoid'.JumpPower=av
else
au.Character:FindFirstChildOfClass'Humanoid'.JumpHeight=av
end
end
end)

addcmd("maxslopeangle",{"msa"},function(at,au)
local av=at[1]or 89
if isNumber(av)then
au.Character:FindFirstChildWhichIsA"Humanoid".MaxSlopeAngle=av
end
end)

addcmd("gravity",{"grav"},function(at,au)
local av=at[1]or H
if isNumber(av)then
workspace.Gravity=av
end
end)

addcmd("hipheight",{"hheight"},function(at,au)
local av=at[1]or(r15(au)and 2.1 or 0)
if isNumber(av)then
au.Character:FindFirstChildWhichIsA"Humanoid".HipHeight=av
end
end)

addcmd("dance",{},function(at,au)
pcall(execCmd,"undance")
local av={"27789359","30196114","248263260","45834924","33796059","28488254","52155728"}
if r15(au)then
av={"3333432454","4555808220","4049037604","4555782893","10214311282","10714010337","10713981723","10714372526","10714076981","10714392151","11444443576"}
end
local aw=Instance.new"Animation"
aw.AnimationId="rbxassetid://"..av[math.random(1,#av)]
danceTrack=au.Character:FindFirstChildWhichIsA"Humanoid":LoadAnimation(aw)
danceTrack.Looped=true
danceTrack:Play()
end)

addcmd("undance",{"nodance"},function(at,au)
danceTrack:Stop()
danceTrack:Destroy()
end)

addcmd('nolimbs',{'rlimbs'},function(at,au)
if r15(au)then
for av,aw in pairs(au.Character:GetChildren())do
if aw:IsA"BasePart"and
aw.Name=="RightUpperLeg"or
aw.Name=="LeftUpperLeg"or
aw.Name=="RightUpperArm"or
aw.Name=="LeftUpperArm"then
aw:Destroy()
end
end
else
for av,aw in pairs(au.Character:GetChildren())do
if aw:IsA"BasePart"and
aw.Name=="Right Leg"or
aw.Name=="Left Leg"or
aw.Name=="Right Arm"or
aw.Name=="Left Arm"then
aw:Destroy()
end
end
end
end)

addcmd('noarms',{'rarms'},function(at,au)
if r15(au)then
for av,aw in pairs(au.Character:GetChildren())do
if aw:IsA"BasePart"and
aw.Name=="RightUpperArm"or
aw.Name=="LeftUpperArm"then
aw:Destroy()
end
end
else
for av,aw in pairs(au.Character:GetChildren())do
if aw:IsA"BasePart"and
aw.Name=="Right Arm"or
aw.Name=="Left Arm"then
aw:Destroy()
end
end
end
end)

addcmd('nolegs',{'rlegs'},function(at,au)
if r15(au)then
for av,aw in pairs(au.Character:GetChildren())do
if aw:IsA"BasePart"and
aw.Name=="RightUpperLeg"or
aw.Name=="LeftUpperLeg"then
aw:Destroy()
end
end
else
for av,aw in pairs(au.Character:GetChildren())do
if aw:IsA"BasePart"and
aw.Name=="Right Leg"or
aw.Name=="Left Leg"then
aw:Destroy()
end
end
end
end)

addcmd("sit",{},function(at,au)
au.Character:FindFirstChildWhichIsA"Humanoid".Sit=true
end)

addcmd("lay",{"laydown"},function(at,au)
local av=au.Character:FindFirstChildWhichIsA"Humanoid"
av.Sit=true
task.wait(0.1)
av.RootPart.CFrame=av.RootPart.CFrame*CFrame.Angles(math.pi*0.5,0,0)
for aw,ax in ipairs(av:GetPlayingAnimationTracks())do
ax:Stop()
end
end)

addcmd("sitwalk",{},function(at,au)
local av=au.Character.Animate
local aw=av.sit:FindFirstChildWhichIsA"Animation".AnimationId
av.idle:FindFirstChildWhichIsA"Animation".AnimationId=aw
av.walk:FindFirstChildWhichIsA"Animation".AnimationId=aw
av.run:FindFirstChildWhichIsA"Animation".AnimationId=aw
av.jump:FindFirstChildWhichIsA"Animation".AnimationId=aw
au.Character:FindFirstChildWhichIsA"Humanoid".HipHeight=not r15(au)and-1.5 or 0.5
end)

addcmd("nosit",{},function(at,au)
au.Character:FindFirstChildWhichIsA"Humanoid":SetStateEnabled(Enum.HumanoidStateType.Seated,false)
end)

addcmd("unnosit",{},function(at,au)
au.Character:FindFirstChildWhichIsA"Humanoid":SetStateEnabled(Enum.HumanoidStateType.Seated,true)
end)

addcmd("jump",{},function(at,au)
au.Character:FindFirstChildWhichIsA"Humanoid":ChangeState(Enum.HumanoidStateType.Jumping)
end)

local at
infJumpDebounce=false
addcmd("infjump",{"infinitejump"},function(au,av)
if at then at:Disconnect()end
infJumpDebounce=false
at=UserInputService.JumpRequest:Connect(function()
if not infJumpDebounce then
infJumpDebounce=true
av.Character:FindFirstChildWhichIsA"Humanoid":ChangeState(Enum.HumanoidStateType.Jumping)
wait()
infJumpDebounce=false
end
end)
end)

addcmd("uninfjump",{"uninfinitejump","noinfjump","noinfinitejump"},function(au,av)
if at then at:Disconnect()end
infJumpDebounce=false
end)

local au
addcmd("flyjump",{},function(av,aw)
if au then au:Disconnect()end
au=UserInputService.JumpRequest:Connect(function()
aw.Character:FindFirstChildWhichIsA"Humanoid":ChangeState(Enum.HumanoidStateType.Jumping)
end)
end)

addcmd("unflyjump",{"noflyjump"},function(av,aw)
if au then au:Disconnect()end
end)

local av={}
addcmd('autojump',{'ajump'},function(aw,ax)
local ay=ax.Character
local az=ay and ay:FindFirstChildWhichIsA"Humanoid"
local function autoJump()
if ay and az then
local aA=workspace:FindPartOnRay(Ray.new(az.RootPart.Position-Vector3.new(0,1.5,0),az.RootPart.CFrame.lookVector*3),az.Parent)
local V=workspace:FindPartOnRay(Ray.new(az.RootPart.Position+Vector3.new(0,1.5,0),az.RootPart.CFrame.lookVector*3),az.Parent)
if aA or V then
az.Jump=true
end
end
end
autoJump()
av.ajLoop=(av.ajLoop and av.ajLoop:Disconnect()and false)or RunService.RenderStepped:Connect(autoJump)
av.ajCA=(av.ajCA and av.ajCA:Disconnect()and false)or ax.CharacterAdded:Connect(function(aA)
ay,az=aA,aA:WaitForChild"Humanoid"
autoJump()
av.ajLoop=(av.ajLoop and av.ajLoop:Disconnect()and false)or RunService.RenderStepped:Connect(autoJump)
end)
end)

addcmd('unautojump',{'noautojump','noajump','unajump'},function(aw,ax)
av.ajLoop=(av.ajLoop and av.ajLoop:Disconnect()and false)or nil
av.ajCA=(av.ajCA and av.ajCA:Disconnect()and false)or nil
end)

addcmd('edgejump',{'ejump'},function(aw,ax)
local ay=ax.Character
local az=ay and ay:FindFirstChildWhichIsA"Humanoid"

local aA
local V
local W
local function edgejump()
if ay and az then
V=aA
aA=az:GetState()
if V~=aA and aA==Enum.HumanoidStateType.Freefall and V~=Enum.HumanoidStateType.Jumping then
ay.HumanoidRootPart.CFrame=W
ay.HumanoidRootPart.Velocity=Vector3.new(ay.HumanoidRootPart.Velocity.X,az.JumpPower or az.JumpHeight,ay.HumanoidRootPart.Velocity.Z)
end
W=ay.HumanoidRootPart.CFrame
end
end
edgejump()
av.ejLoop=(av.ejLoop and av.ejLoop:Disconnect()and false)or RunService.RenderStepped:Connect(edgejump)
av.ejCA=(av.ejCA and av.ejCA:Disconnect()and false)or ax.CharacterAdded:Connect(function(X)
ay,az=X,X:WaitForChild"Humanoid"
edgejump()
av.ejLoop=(av.ejLoop and av.ejLoop:Disconnect()and false)or RunService.RenderStepped:Connect(edgejump)
end)
end)

addcmd('unedgejump',{'noedgejump','noejump','unejump'},function(aw,ax)
av.ejLoop=(av.ejLoop and av.ejLoop:Disconnect()and false)or nil
av.ejCA=(av.ejCA and av.ejCA:Disconnect()and false)or nil
end)

addcmd("team",{},function(aw,ax)
local ay=getstring(1)
local az
local aA=ax.Character and getRoot(ax.Character)
for V,W in ipairs(Teams:GetChildren())do
if W.Name:lower():match(ay:lower())then
az=W
break
end
end
if not az then
return notify("Invalid Team",ay.." is not a valid team")
end
if aA and firetouchinterest then
for V,W in ipairs(workspace:GetDescendants())do
if W:IsA"SpawnLocation"and W.BrickColor==az.TeamColor and W.AllowTeamChangeOnTouch==true then
firetouchinterest(W,aA,0)
firetouchinterest(W,aA,1)
break
end
end
else
ax.Team=az
end
end)

addcmd('nobgui',{'unbgui','nobillboardgui','unbillboardgui','noname','rohg'},function(aw,ax)
for ay,az in pairs(ax.Character:GetDescendants())do
if az:IsA"BillboardGui"or az:IsA"SurfaceGui"then
az:Destroy()
end
end
end)

addcmd('loopnobgui',{'loopunbgui','loopnobillboardgui','loopunbillboardgui','loopnoname','looprohg'},function(aw,ax)
for ay,az in pairs(ax.Character:GetDescendants())do
if az:IsA"BillboardGui"or az:IsA"SurfaceGui"then
az:Destroy()
end
end
local function charPartAdded(ay)
if ay:IsA"BillboardGui"or ay:IsA"SurfaceGui"then
wait()
ay:Destroy()
end
end
charPartTrigger=ax.Character.DescendantAdded:Connect(charPartAdded)
end)

addcmd('unloopnobgui',{'unloopunbgui','unloopnobillboardgui','unloopunbillboardgui','unloopnoname','unlooprohg'},function(aw,ax)
if charPartTrigger then
charPartTrigger:Disconnect()
end
end)

addcmd('spasm',{},function(aw,ax)
if not r15(ax)then
local ay=ax.Character
local az="33796059"
SpasmAnim=Instance.new"Animation"
SpasmAnim.AnimationId="rbxassetid://"..az
Spasm=ay:FindFirstChildOfClass'Humanoid':LoadAnimation(SpasmAnim)
Spasm:Play()
Spasm:AdjustSpeed(99)
else
notify('R6 Required','This command requires the r6 rig type')
end
end)

addcmd('unspasm',{'nospasm'},function(aw,ax)
Spasm:Stop()
SpasmAnim:Destroy()
end)

addcmd('headthrow',{},function(aw,ax)
if not r15(ax)then
local ay="35154961"
local az=Instance.new"Animation"
az.AnimationId="rbxassetid://"..ay
local aA=ax.Character:FindFirstChildOfClass'Humanoid':LoadAnimation(az)
aA:Play(0)
aA:AdjustSpeed(1)
else
notify('R6 Required','This command requires the r6 rig type')
end
end)

local function anim2track(aw)
local ax=game:GetObjects(aw)
for ay=1,#ax do
if ax[ay]:IsA"Animation"then
return ax[ay].AnimationId
end
end
return aw
end

addcmd("animation",{"anim"},function(aw,ax)
local ay=tostring(aw[1])
if not ay:find"rbxassetid://"then
ay="rbxassetid://"..ay
end
ay=anim2track(ay)
local az=Instance.new"Animation"
az.AnimationId=ay
local aA=ax.Character:FindFirstChildWhichIsA"Humanoid":LoadAnimation(az)
aA.Priority=Enum.AnimationPriority.Movement
aA:Play()
if aw[2]then aA:AdjustSpeed(tostring(aw[2]))end
end)

addcmd("emote",{"em"},function(aw,ax)
local ay=humanoid:PlayEmoteAndGetAnimTrackById(aw[1])
if aw[2]then ay:AdjustSpeed(tostring(aw[2]))end
end)


addcmd('noanim',{},function(aw,ax)
ax.Character.Animate.Disabled=true
end)

addcmd('reanim',{},function(aw,ax)
ax.Character.Animate.Disabled=false
end)

addcmd('animspeed',{},function(aw,ax)
local ay=ax.Character
local az=ay:FindFirstChildOfClass"Humanoid"or ay:FindFirstChildOfClass"AnimationController"

for aA,V in next,az:GetPlayingAnimationTracks()do
V:AdjustSpeed(tonumber(aw[1]or 1))
end
end)

addcmd('copyanimation',{'copyanim','copyemote'},function(aw,ax)
local ay=getPlayer(aw[1],ax)
for az,aA in ipairs(ay)do local V=
Players[aA].Character
for W,X in pairs(ax.Character:FindFirstChildOfClass'Humanoid':GetPlayingAnimationTracks())do
X:Stop()
end
for W,X in pairs(Players[aA].Character:FindFirstChildOfClass'Humanoid':GetPlayingAnimationTracks())do
if not string.find(X.Animation.AnimationId,"507768375")then
local Y=ax.Character:FindFirstChildOfClass'Humanoid':LoadAnimation(X.Animation)
Y:Play(.1,1,X.Speed)
Y.TimePosition=X.TimePosition
task.spawn(function()
X.Stopped:Wait()
Y:Stop()
Y:Destroy()
end)
end
end
end
end)

addcmd("copyanimationid",{"copyanimid","copyemoteid"},function(aw,ax)
local ay=function(ay)
local az="Animations Copied"

for aA,V in pairs(ay.Character:FindFirstChildWhichIsA"Humanoid":GetPlayingAnimationTracks())do
local W=V.Animation.AnimationId
local X=W:find"rbxassetid://"and W:match"%d+"

if not string.find(W,"507768375")and not string.find(W,"180435571")then
if X then
local Y,Z=pcall(function()
return MarketplaceService:GetProductInfo(tonumber(X)).Name
end)
local _=Y and Z or"Failed to get name"
az=az.."\n\nName: ".._.."\nAnimation Id: "..W
else
az=az.."\n\nAnimation Id: "..W
end
end
end

if az~="Animations Copied"then
toClipboard(az)
else
notify("Animations","No animations to copy")
end
end

if aw[1]then
ay(Players[getPlayer(aw[1],ax)[1] ])
else
ay(ax)
end
end)

addcmd('stopanimations',{'stopanims','stopanim'},function(aw,ax)
local ay=ax.Character
local az=ay:FindFirstChildOfClass"Humanoid"or ay:FindFirstChildOfClass"AnimationController"

for aA,V in next,az:GetPlayingAnimationTracks()do
V:Stop()
end
end)

addcmd('refreshanimations',{'refreshanimation','refreshanims','refreshanim'},function(aw,ax)
local ay=ax.Character or ax.CharacterAdded:Wait()
local az=ay and ay:WaitForChild('Humanoid',15)
local aA=ay and ay:WaitForChild('Animate',15)
if not az or not aA then
return notify('Refresh Animations','Failed to get Animate/Humanoid')
end
aA.Disabled=true
for V,W in ipairs(az:GetPlayingAnimationTracks())do
W:Stop()
end
aA.Disabled=false
end)

addcmd('allowcustomanim',{'allowcustomanimations'},function(aw,ax)
StarterPlayer.AllowCustomAnimations=true
execCmd'refreshanimations'
end)

addcmd('unallowcustomanim',{'unallowcustomanimations'},function(aw,ax)
StarterPlayer.AllowCustomAnimations=false
execCmd'refreshanimations'
end)

addcmd('loopanimation',{'loopanim'},function(aw,ax)
local ay=ax.Character
local az=ay and ay.FindFirstChildWhichIsA(ay,"Humanoid")
for aA,V in ipairs(az.GetPlayingAnimationTracks(az))do
V.Looped=true
end
end)

addcmd('tpposition',{'tppos'},function(aw,ax)
if#aw<3 then return end
local ay,az,aA=tonumber((aw[1]:gsub(",",""))),tonumber((aw[2]:gsub(",",""))),tonumber((aw[3]:gsub(",","")))
local V=ax.Character
if V and getRoot(V)then
getRoot(V).CFrame=CFrame.new(ay,az,aA)
end
end)

addcmd('tweentpposition',{'ttppos'},function(aw,ax)
if#aw<3 then return end
local ay,az,aA=tonumber((aw[1]:gsub(",",""))),tonumber((aw[2]:gsub(",",""))),tonumber((aw[3]:gsub(",","")))
local V=ax.Character
if V and getRoot(V)then
TweenService:Create(getRoot(ax.Character),TweenInfo.new(tweenSpeed,Enum.EasingStyle.Linear),{CFrame=CFrame.new(ay,az,aA)}):Play()
end
end)

addcmd('offset',{},function(aw,ax)
if#aw<3 then
return
end
if ax.Character then
ax.Character:TranslateBy(Vector3.new(tonumber(aw[1])or 0,tonumber(aw[2])or 0,tonumber(aw[3])or 0))
end
end)

addcmd('tweenoffset',{'toffset'},function(aw,ax)
if#aw<3 then return end
local ay,az,aA=tonumber(aw[1]),tonumber(aw[2]),tonumber(aw[3])
local V=ax.Character
if V and getRoot(V)then
TweenService:Create(getRoot(ax.Character),TweenInfo.new(tweenSpeed,Enum.EasingStyle.Linear),{CFrame=CFrame.new(ay,az,aA)}):Play()
end
end)

addcmd('clickteleport',{},function(aw,ax)
if ax==Players.LocalPlayer then
notify('Click TP','Go to Settings > Keybinds > Add to set up click teleport')
end
end)

addcmd("mouseteleport",{"mousetp"},function(aw,ax)
local ay=getRoot(ax.Character)
local az=IYMouse.Hit
if ay and az then
ay.CFrame=CFrame.new(az.X,az.Y+3,az.Z,select(4,ay.CFrame:components()))
end
end)

addcmd('tptool',{'teleporttool'},function(aw,ax)
local ay=Instance.new"Tool"
ay.Name="Teleport Tool"
ay.RequiresHandle=false
ay.Parent=ax.Backpack
ay.Activated:Connect(function()
local az=ax.Character or workspace:FindFirstChild(ax.Name)
local aA=az and az:FindFirstChild"HumanoidRootPart"
if not az or not aA then
return warn"Failed to find HumanoidRootPart"
end
aA.CFrame=CFrame.new(IYMouse.Hit.X,IYMouse.Hit.Y+3,IYMouse.Hit.Z,select(4,aA.CFrame:components()))
end)
end)

addcmd('clickdelete',{},function(aw,ax)
if ax==Players.LocalPlayer then
notify('Click Delete','Go to Settings > Keybinds > Add to set up click delete')
end
end)

addcmd('getposition',{'getpos','notifypos','notifyposition'},function(aw,ax)
local ay=getPlayer(aw[1],ax)
for az,aA in pairs(ay)do
local V=Players[aA].Character
local W=V and(getRoot(V)or V:FindFirstChildWhichIsA"BasePart")
W=W and W.Position
if not W then
return notify('Getposition Error','Missing character')
end
local X=math.round(W.X)..", "..math.round(W.Y)..", "..math.round(W.Z)
notify('Current Position',X)
end
end)

addcmd('copyposition',{'copypos'},function(aw,ax)
local ay=getPlayer(aw[1],ax)
for az,aA in pairs(ay)do
local V=Players[aA].Character
local W=V and(getRoot(V)or V:FindFirstChildWhichIsA"BasePart")
W=W and W.Position
if not W then
return notify('Getposition Error','Missing character')
end
local X=math.round(W.X)..", "..math.round(W.Y)..", "..math.round(W.Z)
toClipboard(X)
end
end)

addcmd('walktopos',{'walktoposition'},function(aw,ax)
if ax.Character:FindFirstChildOfClass'Humanoid'and ax.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
ax.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
ax.Character:FindFirstChildOfClass'Humanoid'.WalkToPoint=Vector3.new(aw[1],aw[2],aw[3])
end)

addcmd('speed',{'ws','walkspeed'},function(aw,ax)
if aw[2]then
local ay=aw[2]or 16
if isNumber(ay)then
ax.Character:FindFirstChildOfClass'Humanoid'.WalkSpeed=ay
end
else
local ay=aw[1]or 16
if isNumber(ay)then
ax.Character:FindFirstChildOfClass'Humanoid'.WalkSpeed=ay
end
end
end)

addcmd('spoofspeed',{'spoofws','spoofwalkspeed'},function(aw,ax)
if aw[1]and isNumber(aw[1])then
if hookmetamethod then
local ay=ax.Character
local az;
local aA;aA=hookmetamethod(game,"__index",function(V,W)
if not checkcaller()and typeof(V)=="Instance"and V:IsA"Humanoid"and(W=="WalkSpeed"or W=="walkSpeed")and V:IsDescendantOf(ay)then
return az or aw[1]
end
return aA(V,W)
end)
local V;V=hookmetamethod(game,"__newindex",function(W,X,Y)
if not checkcaller()and typeof(W)=="Instance"and W:IsA"Humanoid"and(X=="WalkSpeed"or X=="walkSpeed")and W:IsDescendantOf(ay)then
az=tonumber(Y)
end
return V(W,X,Y)
end)
else
notify('Incompatible Exploit','Your exploit does not support this command (missing hookmetamethod)')
end
end
end)

addcmd('loopspeed',{'loopws'},function(aw,ax)
local ay=aw[1]or 16
if aw[2]then
ay=aw[2]or 16
end
if isNumber(ay)then
local az=ax.Character or workspace:FindFirstChild(ax.Name)
local aA=az and az:FindFirstChildWhichIsA"Humanoid"
local function WalkSpeedChange()
if az and aA then
aA.WalkSpeed=ay
end
end
WalkSpeedChange()
av.wsLoop=(av.wsLoop and av.wsLoop:Disconnect()and false)or aA:GetPropertyChangedSignal"WalkSpeed":Connect(WalkSpeedChange)
av.wsCA=(av.wsCA and av.wsCA:Disconnect()and false)or ax.CharacterAdded:Connect(function(V)
az,aA=V,V:WaitForChild"Humanoid"
WalkSpeedChange()
av.wsLoop=(av.wsLoop and av.wsLoop:Disconnect()and false)or aA:GetPropertyChangedSignal"WalkSpeed":Connect(WalkSpeedChange)
end)
end
end)

addcmd('unloopspeed',{'unloopws'},function(aw,ax)
av.wsLoop=(av.wsLoop and av.wsLoop:Disconnect()and false)or nil
av.wsCA=(av.wsCA and av.wsCA:Disconnect()and false)or nil
end)

addcmd('spoofjumppower',{'spoofjp'},function(aw,ax)
if aw[1]and isNumber(aw[1])then
if hookmetamethod then
local ay=ax.Character
local az;
local aA;aA=hookmetamethod(game,"__index",function(V,W)
if not checkcaller()and typeof(V)=="Instance"and V:IsA"Humanoid"and(W=="JumpPower"or W=="jumpPower")and V:IsDescendantOf(ay)then
return az or aw[1]
end
return aA(V,W)
end)
local V;V=hookmetamethod(game,"__newindex",function(W,X,Y)
if not checkcaller()and typeof(W)=="Instance"and W:IsA"Humanoid"and(X=="JumpPower"or X=="jumpPower")and W:IsDescendantOf(ay)then
az=tonumber(Y)
end
return V(W,X,Y)
end)
else
notify('Incompatible Exploit','Your exploit does not support this command (missing hookmetamethod)')
end
end
end)

addcmd('loopjumppower',{'loopjp','loopjpower'},function(aw,ax)
local ay=aw[1]or 50
if isNumber(ay)then
local az=ax.Character or workspace:FindFirstChild(ax.Name)
local aA=az and az:FindFirstChildWhichIsA"Humanoid"
local function JumpPowerChange()
if az and aA then
if ax.Character:FindFirstChildOfClass'Humanoid'.UseJumpPower then
ax.Character:FindFirstChildOfClass'Humanoid'.JumpPower=ay
else
ax.Character:FindFirstChildOfClass'Humanoid'.JumpHeight=ay
end
end
end
JumpPowerChange()
av.jpLoop=(av.jpLoop and av.jpLoop:Disconnect()and false)or aA:GetPropertyChangedSignal"JumpPower":Connect(JumpPowerChange)
av.jpCA=(av.jpCA and av.jpCA:Disconnect()and false)or ax.CharacterAdded:Connect(function(V)
az,aA=V,V:WaitForChild"Humanoid"
JumpPowerChange()
av.jpLoop=(av.jpLoop and av.jpLoop:Disconnect()and false)or aA:GetPropertyChangedSignal"JumpPower":Connect(JumpPowerChange)
end)
end
end)

addcmd('unloopjumppower',{'unloopjp','unloopjpower'},function(aw,ax)
local ay=ax.Character or workspace:FindFirstChild(ax.Name)
local az=ay and ay:FindFirstChildWhichIsA"Humanoid"
av.jpLoop=(av.jpLoop and av.jpLoop:Disconnect()and false)or nil
av.jpCA=(av.jpCA and av.jpCA:Disconnect()and false)or nil
if ay and az then
if ax.Character:FindFirstChildOfClass'Humanoid'.UseJumpPower then
ax.Character:FindFirstChildOfClass'Humanoid'.JumpPower=50
else
ax.Character:FindFirstChildOfClass'Humanoid'.JumpHeight=50
end
end
end)

addcmd('tools',{'gears'},function(aw,ax)
local function copy(ay)
for az,aA in pairs(ay:GetChildren())do
if aA:IsA'Tool'or aA:IsA'HopperBin'then
aA:Clone().Parent=ax:FindFirstChildOfClass"Backpack"
end
copy(aA)
end
end
copy(Lighting)
local function copy(ay)
for az,aA in pairs(ay:GetChildren())do
if aA:IsA'Tool'or aA:IsA'HopperBin'then
aA:Clone().Parent=ax:FindFirstChildOfClass"Backpack"
end
copy(aA)
end
end
copy(ReplicatedStorage)
notify('Tools','Copied tools from ReplicatedStorage and Lighting')
end)

addcmd('notools',{'rtools','clrtools','removetools','deletetools','dtools'},function(aw,ax)
for ay,az in pairs(ax:FindFirstChildOfClass"Backpack":GetDescendants())do
if az:IsA'Tool'or az:IsA'HopperBin'then
az:Destroy()
end
end
for ay,az in pairs(ax.Character:GetDescendants())do
if az:IsA'Tool'or az:IsA'HopperBin'then
az:Destroy()
end
end
end)

addcmd('deleteselectedtool',{'dst'},function(aw,ax)
for ay,az in pairs(ax.Character:GetDescendants())do
if az:IsA'Tool'or az:IsA'HopperBin'then
az:Destroy()
end
end
end)

addcmd("console",{},function(aw,ax)
StarterGui:SetCore("DevConsoleVisible",true)
end)

addcmd('oldconsole',{},function(aw,ax)

notify("Loading",'Hold on a sec')local
ay, az=pcall(function()
return game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/console.lua",true)
end)local

aA=loadstring(az)
if typeof(aA)~="function"then
return
end

local V,W=pcall(aA)
if(not V)then
if printconsole then
printconsole(W)
elseif printoutput then
printoutput(W)
end
end
wait(1)
notify('Console','Press F9 to open the console')
end)

addcmd("explorer",{"dex"},function(aw,ax)
notify("Loading","Hold on a sec")
loadstring(game:HttpGet"https://raw.githubusercontent.com/infyiff/backup/main/dex.lua")()
end)

addcmd('olddex',{'odex'},function(aw,ax)
notify('Loading old explorer','Hold on a sec')

local ay=function(ay)
local az={}
if ay then
local aA=InsertService:LoadLocalAsset(ay)
if aA then
table.insert(az,aA)
end
end
return az
end

local az=ay"rbxassetid://10055842438"[1]
az.Parent=PARENT

local function Load(aA,V)
local function GiveOwnGlobals(W,X)


local aB,aC,aD={},{
script=X,
getupvalue=function(Y,Z)
return nil
end,
getreg=function()
return{}
end,
getprops=getprops or function(Y)
if getproperties then
local Z=getproperties(Y)
if Z[1]and gethiddenproperty then
local _={}
for aB,aC in pairs(Z)do
local aD,aE=pcall(gethiddenproperty,Y,aC)
if aD then
_[aC]=aE
end
end

return _
end

return Z
end

return{}
end
},{}
aD.__index=function(aE,Y)
return aC[Y]==nil and getgenv()[Y]or aC[Y]
end
aD.__newindex=function(aE,Y,Z)
if aC[Y]==nil then
getgenv()[Y]=Z
else
aC[Y]=Z
end
end
setmetatable(aB,aD)
pcall(setfenv,W,aB)
return W
end

local function LoadScripts(aB,aC)
if aC:IsA"LocalScript"then
task.spawn(function()
GiveOwnGlobals(loadstring(aC.Source,"="..aC:GetFullName()),aC)()
end)
end
table.foreach(aC:GetChildren(),LoadScripts)
end

LoadScripts(nil,aA)
end

Load(az)
end)

addcmd('remotespy',{'rspy'},function(aw,ax)
notify("Loading",'Hold on a sec')


loadstring(game:HttpGet"https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua")()
end)

addcmd('audiologger',{'alogger'},function(aw,ax)
notify("Loading",'Hold on a sec')
loadstring(game:HttpGet(('https://raw.githubusercontent.com/infyiff/backup/main/audiologger.lua'),true))()
end)

local aw
addcmd('loopgoto',{},function(ax,ay)
local az=getPlayer(ax[1],ay)
for aA,aB in pairs(az)do
aw=nil
if ay.Character:FindFirstChildOfClass'Humanoid'and ay.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
ay.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
aw=Players[aB]
local aC=3
if ax[2]and isNumber(ax[2])then
aC=ax[2]
end
local aD=0
if ax[3]and isNumber(ax[3])then
aD=ax[3]
end
repeat
if Players:FindFirstChild(aB)then
if Players[aB].Character~=nil then
getRoot(ay.Character).CFrame=getRoot(Players[aB].Character).CFrame+Vector3.new(aC,1,0)
end
wait(aD)
else
aw=nil
end
until aw~=Players[aB]
end
end)

addcmd('unloopgoto',{'noloopgoto'},function(ax,ay)
aw=nil
end)

addcmd('headsit',{},function(ax,ay)
local az=getPlayer(ax[1],ay)
if headSit then headSit:Disconnect()end
for aA,aB in pairs(az)do
ay.Character:FindFirstChildOfClass'Humanoid'.Sit=true
headSit=RunService.Heartbeat:Connect(function()
if Players:FindFirstChild(Players[aB].Name)and Players[aB].Character~=nil and getRoot(Players[aB].Character)and getRoot(ay.Character)and ay.Character:FindFirstChildOfClass'Humanoid'.Sit==true then
getRoot(ay.Character).CFrame=getRoot(Players[aB].Character).CFrame*CFrame.Angles(0,math.rad(0),0)*CFrame.new(0,1.6,0.4)
else
headSit:Disconnect()
end
end)
end
end)

addcmd('chat',{'say'},function(ax,ay)
local az=getstring(1)
chatMessage(az)
end)


spamming=false
spamspeed=1
addcmd('spam',{},function(ax,ay)
spamming=true
local az=getstring(1)
repeat wait(spamspeed)
chatMessage(az)
until spamming==false
end)

addcmd('nospam',{'unspam'},function(ax,ay)
spamming=false
end)

addcmd('whisper',{'pm'},function(ax,ay)
local az=getPlayer(ax[1],ay)
for aA,aB in pairs(az)do
task.spawn(function()
local aC=Players[aB].Name
local aD=getstring(2)
chatMessage("/w "..aC.." "..aD)
end)
end
end)

pmspamming={}
addcmd('pmspam',{},function(ax,ay)
local az=getPlayer(ax[1],ay)
for aA,aB in pairs(az)do
task.spawn(function()
local aC=Players[aB].Name
if FindInTable(pmspamming,aC)then return end
table.insert(pmspamming,aC)
local aD=getstring(2)
repeat
if Players:FindFirstChild(aB)then
wait(spamspeed)
chatMessage("/w "..aC.." "..aD)
else
for aE,V in pairs(pmspamming)do if V==aC then table.remove(pmspamming,aE)end end
end
until not FindInTable(pmspamming,aC)
end)
end
end)

addcmd('nopmspam',{'unpmspam'},function(ax,ay)
local az=getPlayer(ax[1],ay)
for aA,aB in pairs(az)do
task.spawn(function()
for aC,aD in pairs(pmspamming)do
if aD==Players[aB].Name then
table.remove(pmspamming,aC)
end
end
end)
end
end)

addcmd('spamspeed',{},function(ax,ay)
local az=ax[1]or 1
if isNumber(az)then
spamspeed=az
end
end)

addcmd('bubblechat',{},function(ax,ay)
if isLegacyChat then
ChatService.BubbleChatEnabled=true
else
TextChatService.BubbleChatConfiguration.Enabled=true
end
end)

addcmd('unbubblechat',{'nobubblechat'},function(ax,ay)
if isLegacyChat then
ChatService.BubbleChatEnabled=false
else
TextChatService.BubbleChatConfiguration.Enabled=false
end
end)

addcmd("chatwindow",{},function(ax,ay)
TextChatService.ChatWindowConfiguration.Enabled=true
end)

addcmd("unchatwindow",{"nochatwindow"},function(ax,ay)
TextChatService.ChatWindowConfiguration.Enabled=false
end)

addcmd('blockhead',{},function(ax,ay)
ay.Character.Head:FindFirstChildOfClass"SpecialMesh":Destroy()
end)

addcmd('blockhats',{},function(ax,ay)
for az,aA in pairs(ay.Character:FindFirstChildOfClass'Humanoid':GetAccessories())do
for aB,aC in pairs(aA:GetDescendants())do
if aC:IsA"SpecialMesh"then
aC:Destroy()
end
end
end
end)

addcmd('blocktool',{},function(ax,ay)
for az,aA in pairs(ay.Character:GetChildren())do
if aA:IsA"Tool"or aA:IsA"HopperBin"then
for aB,aC in pairs(aA:GetDescendants())do
if aC:IsA"SpecialMesh"then
aC:Destroy()
end
end
end
end
end)

addcmd('creeper',{},function(ax,ay)
if r15(ay)then
ay.Character.Head:FindFirstChildOfClass"SpecialMesh":Destroy()
ay.Character.LeftUpperArm:Destroy()
ay.Character.RightUpperArm:Destroy()
ay.Character:FindFirstChildOfClass"Humanoid":RemoveAccessories()
else
ay.Character.Head:FindFirstChildOfClass"SpecialMesh":Destroy()
ay.Character["Left Arm"]:Destroy()
ay.Character["Right Arm"]:Destroy()
ay.Character:FindFirstChildOfClass"Humanoid":RemoveAccessories()
end
end)

function getTorso(ax)
ax=ax or Players.LocalPlayer.Character
return ax:FindFirstChild"Torso"or ax:FindFirstChild"UpperTorso"or ax:FindFirstChild"LowerTorso"or ax:FindFirstChild"HumanoidRootPart"
end

addcmd("bang",{"rape"},function(ax,ay)
execCmd"unbang"
wait()
local az=ay.Character:FindFirstChildWhichIsA"Humanoid"
bangAnim=Instance.new"Animation"
bangAnim.AnimationId=not r15(ay)and"rbxassetid://148840371"or"rbxassetid://5918726674"
bang=az:LoadAnimation(bangAnim)
bang:Play(0.1,1,1)
bang:AdjustSpeed(ax[2]or 3)
bangDied=az.Died:Connect(function()
bang:Stop()
bangAnim:Destroy()
bangDied:Disconnect()
bangLoop:Disconnect()
end)
if ax[1]then
local aA=getPlayer(ax[1],ay)
for aB,aC in pairs(aA)do
local aD=Players[aC].Name
local aE=CFrame.new(0,0,1.1)
bangLoop=RunService.Stepped:Connect(function()
pcall(function()
local V=getTorso(Players[aD].Character)
getRoot(ay.Character).CFrame=V.CFrame*aE
end)
end)
end
end
end)

addcmd("unbang",{"unrape"},function(ax,ay)
if bangDied then
bangDied:Disconnect()
bang:Stop()
bangAnim:Destroy()
bangLoop:Disconnect()
end
end)

addcmd('carpet',{},function(ax,ay)
if not r15(ay)then
execCmd'uncarpet'
wait()
local az=getPlayer(ax[1],ay)
for aA,aB in pairs(az)do
carpetAnim=Instance.new"Animation"
carpetAnim.AnimationId="rbxassetid://282574440"
carpet=ay.Character:FindFirstChildOfClass'Humanoid':LoadAnimation(carpetAnim)
carpet:Play(.1,1,1)
local aC=Players[aB].Name
carpetDied=ay.Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
carpetLoop:Disconnect()
carpet:Stop()
carpetAnim:Destroy()
carpetDied:Disconnect()
end)
carpetLoop=RunService.Heartbeat:Connect(function()
pcall(function()
getRoot(Players.LocalPlayer.Character).CFrame=getRoot(Players[aC].Character).CFrame
end)
end)
end
else
notify('R6 Required','This command requires the r6 rig type')
end
end)

addcmd('uncarpet',{'nocarpet'},function(ax,ay)
if carpetLoop then
carpetLoop:Disconnect()
carpetDied:Disconnect()
carpet:Stop()
carpetAnim:Destroy()
end
end)

addcmd('friend',{},function(ax,ay)
local az=getPlayer(ax[1],ay)
for aA,aB in pairs(az)do
ay:RequestFriendship(Players[aB])
end
end)

addcmd('unfriend',{},function(ax,ay)
local az=getPlayer(ax[1],ay)
for aA,aB in pairs(az)do
ay:RevokeFriendship(Players[aB])
end
end)

addcmd('bringpart',{},function(ax,ay)
for az,aA in pairs(workspace:GetDescendants())do
if aA.Name:lower()==getstring(1):lower()and aA:IsA"BasePart"then
aA.CFrame=getRoot(ay.Character).CFrame
end
end
end)

addcmd('bringpartclass',{'bpc'},function(ax,ay)
for az,aA in pairs(workspace:GetDescendants())do
if aA.ClassName:lower()==getstring(1):lower()and aA:IsA"BasePart"then
aA.CFrame=getRoot(ay.Character).CFrame
end
end
end)

gotopartDelay=0.1
addcmd('gotopart',{'topart'},function(ax,ay)
for az,aA in pairs(workspace:GetDescendants())do
if aA.Name:lower()==getstring(1):lower()and aA:IsA"BasePart"then
if ay.Character:FindFirstChildOfClass'Humanoid'and ay.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
ay.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
wait(gotopartDelay)
getRoot(ay.Character).CFrame=aA.CFrame
end
end
end)

addcmd('tweengotopart',{'tgotopart','ttopart'},function(ax,ay)
for az,aA in pairs(workspace:GetDescendants())do
if aA.Name:lower()==getstring(1):lower()and aA:IsA"BasePart"then
if ay.Character:FindFirstChildOfClass'Humanoid'and ay.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
ay.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
wait(gotopartDelay)
TweenService:Create(getRoot(ay.Character),TweenInfo.new(tweenSpeed,Enum.EasingStyle.Linear),{CFrame=aA.CFrame}):Play()
end
end
end)

addcmd('gotopartclass',{'gpc'},function(ax,ay)
for az,aA in pairs(workspace:GetDescendants())do
if aA.ClassName:lower()==getstring(1):lower()and aA:IsA"BasePart"then
if ay.Character:FindFirstChildOfClass'Humanoid'and ay.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
ay.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
wait(gotopartDelay)
getRoot(ay.Character).CFrame=aA.CFrame
end
end
end)

addcmd('tweengotopartclass',{'tgpc'},function(ax,ay)
for az,aA in pairs(workspace:GetDescendants())do
if aA.ClassName:lower()==getstring(1):lower()and aA:IsA"BasePart"then
if ay.Character:FindFirstChildOfClass'Humanoid'and ay.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
ay.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
wait(gotopartDelay)
TweenService:Create(getRoot(ay.Character),TweenInfo.new(tweenSpeed,Enum.EasingStyle.Linear),{CFrame=aA.CFrame}):Play()
end
end
end)

addcmd('gotomodel',{'tomodel'},function(ax,ay)
for az,aA in pairs(workspace:GetDescendants())do
if aA.Name:lower()==getstring(1):lower()and aA:IsA"Model"then
if ay.Character:FindFirstChildOfClass'Humanoid'and ay.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
ay.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
wait(gotopartDelay)
getRoot(ay.Character).CFrame=aA:GetModelCFrame()
end
end
end)

addcmd('tweengotomodel',{'tgotomodel','ttomodel'},function(ax,ay)
for az,aA in pairs(workspace:GetDescendants())do
if aA.Name:lower()==getstring(1):lower()and aA:IsA"Model"then
if ay.Character:FindFirstChildOfClass'Humanoid'and ay.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
ay.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
wait(gotopartDelay)
TweenService:Create(getRoot(ay.Character),TweenInfo.new(tweenSpeed,Enum.EasingStyle.Linear),{CFrame=aA:GetModelCFrame()}):Play()
end
end
end)

addcmd('gotopartdelay',{},function(ax,ay)
local az=ax[1]or 0.1
if isNumber(az)then
gotopartDelay=az
end
end)

addcmd('noclickdetectorlimits',{'nocdlimits','removecdlimits'},function(ax,ay)
for az,aA in ipairs(workspace:GetDescendants())do
if aA:IsA"ClickDetector"then
aA.MaxActivationDistance=math.huge
end
end
end)

addcmd('fireclickdetectors',{'firecd','firecds'},function(ax,ay)
if fireclickdetector then
if ax[1]then
local az=getstring(1)
for aA,aB in ipairs(workspace:GetDescendants())do
if aB:IsA"ClickDetector"and aB.Name==az or aB.Parent.Name==az then
fireclickdetector(aB)
end
end
else
for az,aA in ipairs(workspace:GetDescendants())do
if aA:IsA"ClickDetector"then
fireclickdetector(aA)
end
end
end
else
notify("Incompatible Exploit","Your exploit does not support this command (missing fireclickdetector)")
end
end)

addcmd('noproximitypromptlimits',{'nopplimits','removepplimits'},function(ax,ay)
for az,aA in pairs(workspace:GetDescendants())do
if aA:IsA"ProximityPrompt"then
aA.MaxActivationDistance=math.huge
end
end
end)

addcmd('fireproximityprompts',{'firepp'},function(ax,ay)
if fireproximityprompt then
if ax[1]then
local az=getstring(1)
for aA,aB in ipairs(workspace:GetDescendants())do
if aB:IsA"ProximityPrompt"and aB.Name==az or aB.Parent.Name==az then
fireproximityprompt(aB)
end
end
else
for az,aA in ipairs(workspace:GetDescendants())do
if aA:IsA"ProximityPrompt"then
fireproximityprompt(aA)
end
end
end
else
notify("Incompatible Exploit","Your exploit does not support this command (missing fireproximityprompt)")
end
end)

local ax
addcmd('instantproximityprompts',{'instantpp'},function(ay,az)
if fireproximityprompt then
execCmd"uninstantproximityprompts"
wait(0.1)
ax=ProximityPromptService.PromptButtonHoldBegan:Connect(function(aA)
fireproximityprompt(aA)
end)
else
notify('Incompatible Exploit','Your exploit does not support this command (missing fireproximityprompt)')
end
end)

addcmd('uninstantproximityprompts',{'uninstantpp'},function(ay,az)
if ax~=nil then
ax:Disconnect()
ax=nil
end
end)

addcmd('notifyping',{'ping'},function(ay,az)
notify("Ping",math.round(az:GetNetworkPing()*1000).."ms")
end)

addcmd('grabtools',{},function(ay,az)
local aA=az.Character:FindFirstChildWhichIsA"Humanoid"
for aB,aC in ipairs(workspace:GetChildren())do
if az.Character and aC:IsA"BackpackItem"and aC:FindFirstChild"Handle"then
aA:EquipTool(aC)
end
end

if grabtoolsFunc then
grabtoolsFunc:Disconnect()
end

grabtoolsFunc=workspace.ChildAdded:Connect(function(aB)
if az.Character and aB:IsA"BackpackItem"and aB:FindFirstChild"Handle"then
aA:EquipTool(aB)
end
end)

notify("Grabtools","Picking up any dropped tools")
end)

addcmd('nograbtools',{'ungrabtools'},function(ay,az)
if grabtoolsFunc then
grabtoolsFunc:Disconnect()
end

notify("Grabtools","Grabtools has been disabled")
end)

local ay={}
addcmd('removespecifictool',{},function(az,aA)
if az[1]and aA:FindFirstChildOfClass"Backpack"then
local aB=string.lower(getstring(1))
local aC=RunService.RenderStepped:Connect(function()
if aA:FindFirstChildOfClass"Backpack"then
for aC,aD in pairs(aA:FindFirstChildOfClass"Backpack":GetChildren())do
if aD.Name:lower()==aB then
aD:Remove()
end
end
end
end)
ay[aB]=aC
end
end)

addcmd('unremovespecifictool',{},function(az,aA)
if az[1]then
local aB=string.lower(getstring(1))
if ay[aB]~=nil then
ay[aB]:Disconnect()
ay[aB]=nil
end
end
end)

addcmd('clearremovespecifictool',{},function(az,aA)
for aB in pairs(ay)do
ay[aB]:Disconnect()
ay[aB]=nil
end
end)

addcmd('light',{},function(az,aA)
local aB=Instance.new"PointLight"
aB.Parent=getRoot(aA.Character)
aB.Range=30
if az[1]then
aB.Brightness=az[2]
aB.Range=az[1]
else
aB.Brightness=5
end
end)

addcmd('unlight',{'nolight'},function(az,aA)
for aB,aC in pairs(aA.Character:GetDescendants())do
if aC.ClassName=="PointLight"then
aC:Destroy()
end
end
end)

addcmd('copytools',{},function(az,aA)
local aB=getPlayer(az[1],aA)
for aC,aD in pairs(aB)do
task.spawn(function()
for aE,V in pairs(Players[aD]:FindFirstChildOfClass"Backpack":GetChildren())do
if V:IsA'Tool'or V:IsA'HopperBin'then
V:Clone().Parent=aA:FindFirstChildOfClass"Backpack"
end
end
end)
end
end)

addcmd('naked',{},function(az,aA)
for aB,aC in pairs(aA.Character:GetDescendants())do
if aC:IsA"Clothing"or aC:IsA"ShirtGraphic"then
aC:Destroy()
end
end
end)

addcmd('noface',{'removeface'},function(az,aA)
for aB,aC in pairs(aA.Character:GetDescendants())do
if aC:IsA"Decal"and aC.Name=='face'then
aC:Destroy()
end
end
end)

addcmd('spawnpoint',{'spawn'},function(az,aA)
spawnpos=getRoot(aA.Character).CFrame
spawnpoint=true
spDelay=tonumber(az[1])or 0.1
notify('Spawn Point','Spawn point created at '..tostring(spawnpos))
end)

addcmd('nospawnpoint',{'nospawn','removespawnpoint'},function(az,aA)
spawnpoint=false
notify('Spawn Point','Removed spawn point')
end)

addcmd('flashback',{'diedtp'},function(az,aA)
if q~=nil then
if aA.Character:FindFirstChildOfClass'Humanoid'and aA.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
aA.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
getRoot(aA.Character).CFrame=q
end
end)

addcmd('hatspin',{'spinhats'},function(az,aA)
execCmd'unhatspin'
wait(.5)
for aB,aC in pairs(aA.Character:FindFirstChildOfClass'Humanoid':GetAccessories())do
local aD=Instance.new"BodyPosition"aD.Name=randomString()aD.Parent=aC.Handle
local aE=Instance.new"BodyAngularVelocity"aE.Name=randomString()aE.Parent=aC.Handle
aC.Handle:FindFirstChildOfClass"Weld":Destroy()
if az[1]then
aE.AngularVelocity=Vector3.new(0,az[1],0)
aE.MaxTorque=Vector3.new(0,az[1]*2,0)
else
aE.AngularVelocity=Vector3.new(0,100,0)
aE.MaxTorque=Vector3.new(0,200,0)
end
aD.P=30000
aD.D=50
spinhats=RunService.Stepped:Connect(function()
pcall(function()
aD.Position=Players.LocalPlayer.Character.Head.Position
end)
end)
end
end)

addcmd('unhatspin',{'unspinhats'},function(az,aA)
if spinhats then
spinhats:Disconnect()
end
for aB,aC in pairs(aA.Character:FindFirstChildOfClass'Humanoid':GetAccessories())do
aC.Parent=workspace
for aD,aE in pairs(aC.Handle)do
if aE:IsA"BodyPosition"or aE:IsA"BodyAngularVelocity"then
aE:Destroy()
end
end
wait()
aC.Parent=aA.Character
end
end)

addcmd('clearhats',{'cleanhats'},function(az,aA)
if firetouchinterest then
local aB=Players.LocalPlayer
local aC=aB.Character
local aD=aC:FindFirstChild"HumanoidRootPart".CFrame
local aE={}

for V,W in ipairs(workspace:GetChildren())do
if W:IsA"Accessory"then
table.insert(aE,W)
end
end

for V,W in ipairs(aC:FindFirstChildOfClass"Humanoid":GetAccessories())do
W:Destroy()
end

for V=1,#aE do
repeat RunService.Heartbeat:wait()until aE[V]
firetouchinterest(aE[V].Handle,aC:FindFirstChild"HumanoidRootPart",0)
repeat RunService.Heartbeat:wait()until aC:FindFirstChildOfClass"Accessory"
aC:FindFirstChildOfClass"Accessory":Destroy()
repeat RunService.Heartbeat:wait()until not aC:FindFirstChildOfClass"Accessory"
end

execCmd"reset"

aB.CharacterAdded:Wait()

for V=1,20 do
RunService.Heartbeat:Wait()
if aB.Character:FindFirstChild"HumanoidRootPart"then
aB.Character:FindFirstChild"HumanoidRootPart".CFrame=aD
end
end
else
notify("Incompatible Exploit","Your exploit does not support this command (missing firetouchinterest)")
end
end)

addcmd('split',{},function(az,aA)
if r15(aA)then
aA.Character.UpperTorso.Waist:Destroy()
else
notify('R15 Required','This command requires the r15 rig type')
end
end)

addcmd('nilchar',{},function(az,aA)
if aA.Character~=nil then
aA.Character.Parent=nil
end
end)

addcmd('unnilchar',{'nonilchar'},function(az,aA)
if aA.Character~=nil then
aA.Character.Parent=workspace
end
end)

addcmd('noroot',{'removeroot','rroot'},function(az,aA)
if aA.Character~=nil then
local aB=Players.LocalPlayer.Character
aB.Parent=nil
aB.HumanoidRootPart:Destroy()
aB.Parent=workspace
end
end)

addcmd('replaceroot',{'replacerootpart'},function(az,aA)
if aA.Character~=nil and aA.Character:FindFirstChild"HumanoidRootPart"then
local aB=aA.Character
local aC=aB.Parent
local aD=aB and aB:FindFirstChild"HumanoidRootPart"
local aE=aD.CFrame
aB.Parent=game
local V=aD:Clone()
V.Parent=aB
aD=aD:Destroy()
V.CFrame=aE
aB.Parent=aC
end
end)

addcmd('clearcharappearance',{'clearchar','clrchar'},function(az,aA)
aA:ClearCharacterAppearance()
end)

addcmd('equiptools',{},function(az,aA)
for aB,aC in pairs(aA:FindFirstChildOfClass"Backpack":GetChildren())do
if aC:IsA"Tool"or aC:IsA"HopperBin"then
aC.Parent=aA.Character
end
end
end)

addcmd('unequiptools',{},function(az,aA)
aA.Character:FindFirstChildOfClass'Humanoid':UnequipTools()
end)

local function GetHandleTools(az)
az=az or Players.LocalPlayer
local aA={}
for aB,aC in ipairs(az.Character and az.Character:GetChildren()or{})do
if aC.IsA(aC,"BackpackItem")and aC.FindFirstChild(aC,"Handle")then
aA[#aA+1]=aC
end
end
for aB,aC in ipairs(az.Backpack:GetChildren())do
if aC.IsA(aC,"BackpackItem")and aC.FindFirstChild(aC,"Handle")then
aA[#aA+1]=aC
end
end
return aA
end
addcmd('dupetools',{'clonetools'},function(az,aA)
local aB=tonumber(az[1])or 1
local aC=aA.Character.HumanoidRootPart.Position
local aD,aE={},Vector3.new(math.random(-2E5,2e5),2e5,math.random(-2E5,2e5))
for V=1,aB do
local W=aA.Character:WaitForChild"Humanoid"
wait(.1,W.Parent:MoveTo(aE))
W.RootPart.Anchored=aA:ClearCharacterAppearance(wait(.1))or true
local X=GetHandleTools(aA)
while#X>0 do
for Y,Z in ipairs(X)do
task.spawn(function()
for _=1,25 do
Z.Parent=aA.Character
Z.Handle.Anchored=true
end
for _=1,5 do
Z.Parent=workspace
end
table.insert(aD,Z.Handle)
end)
end
X=GetHandleTools(aA)
end
wait(.1)
aA.Character=aA.Character:Destroy()
aA.CharacterAdded:Wait():WaitForChild"Humanoid".Parent:MoveTo(aB==V and aC or aE,wait(.1))
if V==aB or V%5==0 then
local Y=aA.Character.HumanoidRootPart
if type(firetouchinterest)=="function"then
for Z,_ in ipairs(aD)do
_.Anchored=not firetouchinterest(_,Y,1,firetouchinterest(_,Y,0))and false or false
end
else
for Z,_ in ipairs(aD)do
task.spawn(function()
local aF=_.CanCollide
_.CanCollide=false
_.Anchored=false
for aG=1,10 do
_.CFrame=Y.CFrame
wait()
end
_.CanCollide=aF
end)
end
end
wait(.1)
aD={}
end
aE=aE+Vector3.new(10,math.random(-5,5),0)
end
end)local az=

RunService.RenderStepped

addcmd('touchinterests',{'touchinterest','firetouchinterests','firetouchinterest'},function(aA,aB)
if not firetouchinterest then
notify("Incompatible Exploit","Your exploit does not support this command (missing firetouchinterest)")
return
end

local aC=getRoot(aB.Character)or aB.Character:FindFirstChildWhichIsA"BasePart"

local function touch(aD)
aD=aD:FindFirstAncestorWhichIsA"Part"
if aD then
if firetouchinterest then
task.spawn(function()
firetouchinterest(aD,aC,1)
wait()
firetouchinterest(aD,aC,0)
end)
end
aD.CFrame=aC.CFrame
end
end

if aA[1]then
local aD=getstring(1)
for aE,aF in ipairs(workspace:GetDescendants())do
if aF:IsA"TouchTransmitter"and aF.Name==aD or aF.Parent.Name==aD then
touch(aF)
end
end
else
for aD,aE in ipairs(workspace:GetDescendants())do
if aE:IsA"TouchTransmitter"then
touch(aE)
end
end
end
end)

addcmd('fullbright',{'fb','fullbrightness'},function(aA,aB)
Lighting.Brightness=2
Lighting.ClockTime=14
Lighting.FogEnd=100000
Lighting.GlobalShadows=false
Lighting.OutdoorAmbient=Color3.fromRGB(128,128,128)
end)

addcmd('loopfullbright',{'loopfb'},function(aA,aB)
if brightLoop then
brightLoop:Disconnect()
end
local function brightFunc()
Lighting.Brightness=2
Lighting.ClockTime=14
Lighting.FogEnd=100000
Lighting.GlobalShadows=false
Lighting.OutdoorAmbient=Color3.fromRGB(128,128,128)
end

brightLoop=RunService.RenderStepped:Connect(brightFunc)
end)

addcmd('unloopfullbright',{'unloopfb'},function(aA,aB)
if brightLoop then
brightLoop:Disconnect()
end
end)

addcmd('ambient',{},function(aA,aB)
Lighting.Ambient=Color3.new(aA[1],aA[2],aA[3])
Lighting.OutdoorAmbient=Color3.new(aA[1],aA[2],aA[3])
end)

addcmd('day',{},function(aA,aB)
Lighting.ClockTime=14
end)

addcmd('night',{},function(aA,aB)
Lighting.ClockTime=0
end)

addcmd('nofog',{},function(aA,aB)
Lighting.FogEnd=100000
for aC,aD in pairs(Lighting:GetDescendants())do
if aD:IsA"Atmosphere"then
aD:Destroy()
end
end
end)

addcmd('brightness',{},function(aA,aB)
Lighting.Brightness=aA[1]
end)

addcmd('globalshadows',{'gshadows'},function(aA,aB)
Lighting.GlobalShadows=true
end)

addcmd('unglobalshadows',{'nogshadows','ungshadows','noglobalshadows'},function(aA,aB)
Lighting.GlobalShadows=false
end)

origsettings={abt=Lighting.Ambient,oabt=Lighting.OutdoorAmbient,brt=Lighting.Brightness,time=Lighting.ClockTime,fe=Lighting.FogEnd,fs=Lighting.FogStart,gs=Lighting.GlobalShadows}

addcmd('restorelighting',{'rlighting'},function(aA,aB)
Lighting.Ambient=origsettings.abt
Lighting.OutdoorAmbient=origsettings.oabt
Lighting.Brightness=origsettings.brt
Lighting.ClockTime=origsettings.time
Lighting.FogEnd=origsettings.fe
Lighting.FogStart=origsettings.fs
Lighting.GlobalShadows=origsettings.gs
end)

addcmd('stun',{'platformstand'},function(aA,aB)
aB.Character:FindFirstChildOfClass'Humanoid'.PlatformStand=true
end)

addcmd('unstun',{'nostun','unplatformstand','noplatformstand'},function(aA,aB)
aB.Character:FindFirstChildOfClass'Humanoid'.PlatformStand=false
end)

addcmd('norotate',{'noautorotate'},function(aA,aB)
aB.Character:FindFirstChildOfClass'Humanoid'.AutoRotate=false
end)

addcmd('unnorotate',{'autorotate'},function(aA,aB)
aB.Character:FindFirstChildOfClass'Humanoid'.AutoRotate=true
end)

addcmd('enablestate',{},function(aA,aB)
local aC=aA[1]
if not tonumber(aC)then local aD=
Enum.HumanoidStateType[aA[1] ]
end
aB.Character:FindFirstChildOfClass"Humanoid":SetStateEnabled(aC,true)
end)

addcmd('disablestate',{},function(aA,aB)
local aC=aA[1]
if not tonumber(aC)then local aD=
Enum.HumanoidStateType[aA[1] ]
end
aB.Character:FindFirstChildOfClass"Humanoid":SetStateEnabled(aC,false)
end)

addcmd('drophats',{'drophat'},function(aA,aB)
if aB.Character then
for aC,aD in pairs(aB.Character:FindFirstChildOfClass'Humanoid':GetAccessories())do
aD.Parent=workspace
end
end
end)

addcmd('deletehats',{'nohats','rhats'},function(aA,aB)
for aC,aD in next,aB.Character:GetDescendants()do
if aD:IsA"Accessory"then
for aE,aF in next,aD:GetDescendants()do
if aF:IsA"Weld"then
aF:Destroy()
end
end
end
end
end)

addcmd('droptools',{'droptool'},function(aA,aB)
for aC,aD in pairs(Players.LocalPlayer.Backpack:GetChildren())do
if aD:IsA"Tool"then
aD.Parent=Players.LocalPlayer.Character
end
end
wait()
for aC,aD in pairs(Players.LocalPlayer.Character:GetChildren())do
if aD:IsA"Tool"then
aD.Parent=workspace
end
end
end)

addcmd('droppabletools',{},function(aA,aB)
if aB.Character then
for aC,aD in pairs(aB.Character:GetChildren())do
if aD:IsA"Tool"then
aD.CanBeDropped=true
end
end
end
if aB:FindFirstChildOfClass"Backpack"then
for aC,aD in pairs(aB:FindFirstChildOfClass"Backpack":GetChildren())do
if aD:IsA"Tool"then
aD.CanBeDropped=true
end
end
end
end)

local aA=""
local aB=""
addcmd('reach',{},function(aC,aD)
execCmd'unreach'
wait()
for aE,aF in pairs(aD.Character:GetDescendants())do
if aF:IsA"Tool"then
if aC[1]then
aA=aF.Handle.Size
aB=aF.GripPos
local aG=Instance.new"SelectionBox"
aG.Name="SelectionBoxCreated"
aG.Parent=aF.Handle
aG.Adornee=aF.Handle
aF.Handle.Massless=true
aF.Handle.Size=Vector3.new(0.5,0.5,aC[1])
aF.GripPos=Vector3.new(0,0,0)
aD.Character:FindFirstChildOfClass'Humanoid':UnequipTools()
else
aA=aF.Handle.Size
aB=aF.GripPos
local aG=Instance.new"SelectionBox"
aG.Name="SelectionBoxCreated"
aG.Parent=aF.Handle
aG.Adornee=aF.Handle
aF.Handle.Massless=true
aF.Handle.Size=Vector3.new(0.5,0.5,60)
aF.GripPos=Vector3.new(0,0,0)
aD.Character:FindFirstChildOfClass'Humanoid':UnequipTools()
end
end
end
end)

addcmd("boxreach",{},function(aC,aD)
execCmd"unreach"
wait()
for aE,aF in pairs(aD.Character:GetDescendants())do
if aF:IsA"Tool"then
local aG=tonumber(aC[1])or 60
aA=aF.Handle.Size
aB=aF.GripPos
local V=Instance.new"SelectionBox"
V.Name="SelectionBoxCreated"
V.Parent=aF.Handle
V.Adornee=aF.Handle
aF.Handle.Massless=true
aF.Handle.Size=Vector3.new(aG,aG,aG)
aF.GripPos=Vector3.new(0,0,0)
aD.Character:FindFirstChildOfClass"Humanoid":UnequipTools()
end
end
end)

addcmd('unreach',{'noreach','unboxreach'},function(aC,aD)
for aE,aF in pairs(aD.Character:GetDescendants())do
if aF:IsA"Tool"then
aF.Handle.Size=aA
aF.GripPos=aB
aF.Handle.SelectionBoxCreated:Destroy()
end
end
end)

addcmd('grippos',{},function(aC,aD)
for aE,aF in pairs(aD.Character:GetDescendants())do
if aF:IsA"Tool"then
aF.Parent=aD:FindFirstChildOfClass"Backpack"
aF.GripPos=Vector3.new(aC[1],aC[2],aC[3])
aF.Parent=aD.Character
end
end
end)

addcmd('usetools',{},function(aC,aD)
local aE=aD:FindFirstChildOfClass"Backpack"
local aF=tonumber(aC[1])or 1
local aG=tonumber(aC[2])or false
for V,W in ipairs(aE:GetChildren())do
W.Parent=aD.Character
task.spawn(function()
for X=1,aF do
W:Activate()
if aG then
wait(aG)
end
end
W.Parent=aE
end)
end
end)

addcmd("logs",{},function(aC,aD)
logsEnabled=true
jLogsEnabled=true
Toggle.Text="Enabled"
Toggle_2.Text="Enabled"
logs:TweenPosition(UDim2.new(0,0,1,-265),"InOut","Quart",0.3,true,nil)
end)

addcmd("chatlogs",{"clogs"},function(aC,aD)
logsEnabled=true
join.Visible=false
chat.Visible=true
table.remove(shade3,table.find(shade3,selectChat))
table.remove(shade2,table.find(shade2,selectJoin))
table.insert(shade2,selectChat)
table.insert(shade3,selectJoin)
selectJoin.BackgroundColor3=currentShade3
selectChat.BackgroundColor3=currentShade2
Toggle.Text="Enabled"
logs:TweenPosition(UDim2.new(0,0,1,-265),"InOut","Quart",0.3,true,nil)
end)

addcmd("joinlogs",{"jlogs"},function(aC,aD)
jLogsEnabled=true
chat.Visible=false
join.Visible=true
table.remove(shade3,table.find(shade3,selectJoin))
table.remove(shade2,table.find(shade2,selectChat))
table.insert(shade2,selectJoin)
table.insert(shade3,selectChat)
selectChat.BackgroundColor3=currentShade3
selectJoin.BackgroundColor3=currentShade2
Toggle_2.Text="Enabled"
logs:TweenPosition(UDim2.new(0,0,1,-265),"InOut","Quart",0.3,true,nil)
end)

addcmd("chatlogswebhook",{"logswebhook"},function(aC,aD)
if not httprequest then
return notify("Incompatible Exploit","Your exploit does not support this command (missing request)")
end
logsWebhook=aC[1]or nil
updatesaves()
end)

addcmd("antichatlogs",{"antichatlogger"},function(aC,aD)
if not isLegacyChat then
return notify("antichatlogs","Game needs the legacy chat")
end local
aE=pcall(function()
rawset(require(aD:FindFirstChild"PlayerScripts":FindFirstChild"ChatScript".ChatMain),"MessagePosted",{fire=
function(aE)
return aE
end,wait=
function()
return
end,connect=
function()
return
end
})
end)
notify("antichatlogs",aE and"Enabled"or"Failed to enable antichatlogs")
end)

flinging=false
addcmd('fling',{},function(aC,aD)
flinging=false
for aE,aF in pairs(aD.Character:GetDescendants())do
if aF:IsA"BasePart"then
aF.CustomPhysicalProperties=PhysicalProperties.new(100,0.3,0.5)
end
end
execCmd'noclip'
wait(.1)
local aE=Instance.new"BodyAngularVelocity"
aE.Name=randomString()
aE.Parent=getRoot(aD.Character)
aE.AngularVelocity=Vector3.new(0,99999,0)
aE.MaxTorque=Vector3.new(0,math.huge,0)
aE.P=math.huge
local aF=aD.Character:GetChildren()
for aG,V in next,aF do
if V:IsA"BasePart"then
V.CanCollide=false
V.Massless=true
V.Velocity=Vector3.new(0,0,0)
end
end
flinging=true
local function flingDiedF()
execCmd'unfling'
end
flingDied=aD.Character:FindFirstChildOfClass'Humanoid'.Died:Connect(flingDiedF)
repeat
aE.AngularVelocity=Vector3.new(0,99999,0)
wait(.2)
aE.AngularVelocity=Vector3.new(0,0,0)
wait(.1)
until flinging==false
end)

addcmd('unfling',{'nofling'},function(aC,aD)
execCmd'clip'
if flingDied then
flingDied:Disconnect()
end
flinging=false
wait(.1)
local aE=aD.Character
if not aE or not getRoot(aE)then return end
for aF,aG in pairs(getRoot(aE):GetChildren())do
if aG.ClassName=='BodyAngularVelocity'then
aG:Destroy()
end
end
for aF,aG in pairs(aE:GetDescendants())do
if aG.ClassName=="Part"or aG.ClassName=="MeshPart"then
aG.CustomPhysicalProperties=PhysicalProperties.new(0.7,0.3,0.5)
end
end
end)

addcmd('togglefling',{},function(aC,aD)
if flinging then
execCmd'unfling'
else
execCmd'fling'
end
end)

addcmd("flyfling",{},function(aC,aD)
execCmd"unvehiclefly\\unwalkfling"
task.wait()
vehicleflyspeed=tonumber(aC[1])or vehicleflyspeed
execCmd"vehiclefly\\walkfling"
end)

addcmd("unflyfling",{},function(aC,aD)
execCmd"unvehiclefly\\unwalkfling\\breakvelocity"
end)

addcmd("toggleflyfling",{},function(aC,aD)
execCmd(flinging and"unflyfling"or"flyfling")
end)

walkflinging=false
addcmd("walkfling",{},function(aC,aD)
execCmd"unwalkfling"
local aE=aD.Character:FindFirstChildWhichIsA"Humanoid"
if aE then
aE.Died:Connect(function()
execCmd"unwalkfling"
end)
end

execCmd"noclip nonotify"
walkflinging=true
repeat RunService.Heartbeat:Wait()
local aF=aD.Character
local aG=getRoot(aF)
local V,W=0.1

while not(aF and aF.Parent and aG and aG.Parent)do
RunService.Heartbeat:Wait()
aF=aD.Character
aG=getRoot(aF)
end

W=aG.Velocity
aG.Velocity=W*10000+Vector3.new(0,10000,0)

RunService.RenderStepped:Wait()
if aF and aF.Parent and aG and aG.Parent then
aG.Velocity=W
end

RunService.Stepped:Wait()
if aF and aF.Parent and aG and aG.Parent then
aG.Velocity=W+Vector3.new(0,V,0)
V=V*-1
end
until walkflinging==false
end)

addcmd("unwalkfling",{"nowalkfling"},function(aC,aD)
walkflinging=false
execCmd"unnoclip nonotify"
end)

addcmd("togglewalkfling",{},function(aC,aD)
execCmd(walkflinging and"unwalkfling"or"walkfling")
end)

addcmd('invisfling',{},function(aC,aD)
local aE=aD.Character
aE:FindFirstChildWhichIsA"Humanoid":SetStateEnabled(Enum.HumanoidStateType.Dead,false)
local aF=Instance.new"Model"
aF.Parent=aD.Character
local aG=Instance.new"Part"
aG.Name="Torso"
aG.CanCollide=false
aG.Anchored=true
local V=Instance.new"Part"
V.Name="Head"
V.Parent=aF
V.Anchored=true
V.CanCollide=false
local W=Instance.new"Humanoid"
W.Name="Humanoid"
W.Parent=aF
aG.Position=Vector3.new(0,9999,0)
aD.Character=aF
wait(3)
aD.Character=aE
wait(3)
local X=Instance.new"Humanoid"
V:Clone()
X.Parent=aD.Character
local Y=getRoot(aD.Character)
for Z,_ in pairs(aD.Character:GetChildren())do
if _~=Y and _.Name~="Humanoid"then
_:Destroy()
end
end
Y.Transparency=0
Y.Color=Color3.new(1,1,1)
local Z
Z=RunService.Stepped:Connect(function()
if aD.Character and getRoot(aD.Character)then
getRoot(aD.Character).CanCollide=false
else
Z:Disconnect()
end
end)
sFLY()
workspace.CurrentCamera.CameraSubject=Y
local _=Instance.new"BodyThrust"
_.Parent=getRoot(aD.Character)
_.Force=Vector3.new(99999,999990,99999)
_.Location=getRoot(aD.Character).Position
end)

addcmd("antifling",{},function(aC,aD)
if antifling then
antifling:Disconnect()
antifling=nil
end
antifling=RunService.Stepped:Connect(function()
for aE,aF in pairs(Players:GetPlayers())do
if aF~=aD and aF.Character then
for aG,V in pairs(aF.Character:GetDescendants())do
if V:IsA"BasePart"then
V.CanCollide=false
end
end
end
end
end)
end)

addcmd("unantifling",{},function(aC,aD)
if antifling then
antifling:Disconnect()
antifling=nil
end
end)

addcmd("toggleantifling",{},function(aC,aD)
execCmd(antifling and"unantifling"or"antifling")
end)

function attach(aC,aD)
if tools(aC)then
local aE=aC.Character local aF=
aD.Character
local aG=aC.Character:FindFirstChildOfClass"Humanoid"
local V=getRoot(aC.Character)
local W=getRoot(aD.Character)
aG.Name="1"
local X=aG:Clone()
X.Parent=aE
X.Name="Humanoid"
wait()
aG:Destroy()
workspace.CurrentCamera.CameraSubject=aE
X.DisplayDistanceType="None"
local Y=aC:FindFirstChildOfClass"Backpack":FindFirstChildOfClass"Tool"or aC.Character:FindFirstChildOfClass"Tool"
Y.Parent=aE
V.CFrame=W.CFrame*CFrame.new(0,0,0)*CFrame.new(math.random(-100,100)/200,math.random(-100,100)/200,math.random(-100,100)/200)
local Z=0
repeat
wait(.1)
Z=Z+1
V.CFrame=W.CFrame
until(Y.Parent~=aE or not V or not W or not V.Parent or not W.Parent or Z>250)and Z>2
else
notify('Tool Required','You need to have an item in your inventory to use this command')
end
end

function kill(aC,aD,aE)
if tools(aC)then
if aD~=nil then
local aF=getRoot(aC.Character).CFrame
if not aE then
refresh(aC)
wait()
repeat wait()until aC.Character~=nil and getRoot(aC.Character)
wait(0.3)
end
local aG=getRoot(aC.Character)
attach(aC,aD)
repeat
wait()
aG.CFrame=CFrame.new(999999,workspace.FallenPartsDestroyHeight+5,999999)
until not getRoot(aD.Character)or not getRoot(aC.Character)
aC.CharacterAdded:Wait():WaitForChild"HumanoidRootPart".CFrame=aF
end
else
notify('Tool Required','You need to have an item in your inventory to use this command')
end
end

addcmd("handlekill",{"hkill"},function(aC,aD)
if not firetouchinterest then
return notify("Incompatible Exploit","Your exploit does not support this command (missing firetouchinterest)")
end
if not aD.Character then return end
local aE=aD.Character:FindFirstChildWhichIsA"Tool"
local aF=aE and aE:FindFirstChild"Handle"
if not aF then
return notify("Handle Kill","You need to hold a \"Tool\" that does damage on touch. For example a common Sword tool.")
end
local aG=tonumber(aC[2])or math.huge
if aG~=math.huge then notify("Handle Kill",("Started!\nRadius: %s"):format(tostring(aG):upper()))end

while task.wait()and aD.Character and aE.Parent and aE.Parent==aD.Character do
for V,W in next,getPlayer(aC[1],aD)do
W=Players[W]
if W~=aD and W.Character then
local X=W.Character:FindFirstChildWhichIsA"Humanoid"
local Y=X and getRoot(W.Character)

if Y and X.Health>0 and X:GetState()~=Enum.HumanoidStateType.Dead and aD:DistanceFromCharacter(Y.Position)<=aG then
firetouchinterest(aF,Y,1)
firetouchinterest(aF,Y,0)
end
end
end
end

notify("Handle Kill","Stopped!")
end)

local aC=RunService.Heartbeat
addcmd('tpwalk',{'teleportwalk'},function(aD,aE)
tpwalking=true
local aF=aE.Character
local aG=aF and aF:FindFirstChildWhichIsA"Humanoid"
while tpwalking and aF and aG and aG.Parent do
local V=aC:Wait()
if aG.MoveDirection.Magnitude>0 then
if aD[1]and isNumber(aD[1])then
aF:TranslateBy(aG.MoveDirection*tonumber(aD[1])*V*10)
else
aF:TranslateBy(aG.MoveDirection*V*10)
end
end
end
end)

addcmd('untpwalk',{'unteleportwalk'},function(aD,aE)
tpwalking=false
end)

function bring(aD,aE,aF)
if tools(aD)then
if aE~=nil then
local aG=getRoot(aD.Character).CFrame
if not aF then
refresh(aD)
wait()
repeat wait()until aD.Character~=nil and getRoot(aD.Character)
wait(0.3)
end
local V=getRoot(aD.Character)
attach(aD,aE)
repeat
wait()
V.CFrame=aG
until not getRoot(aE.Character)or not getRoot(aD.Character)
aD.CharacterAdded:Wait():WaitForChild"HumanoidRootPart".CFrame=aG
end
else
notify('Tool Required','You need to have an item in your inventory to use this command')
end
end

function teleport(aD,aE,aF,aG)
if tools(aD)then
if aE~=nil then
local V=getRoot(aD.Character).CFrame
if not aG then
refresh(aD)
wait()
repeat wait()until aD.Character~=nil and getRoot(aD.Character)
wait(0.3)
end
local W=getRoot(aD.Character)
local X=getRoot(aF.Character)
attach(aD,aE)
repeat
wait()
W.CFrame=X.CFrame
until not getRoot(aE.Character)or not getRoot(aD.Character)
wait(1)
aD.CharacterAdded:Wait():WaitForChild"HumanoidRootPart".CFrame=V
end
else
notify('Tool Required','You need to have an item in your inventory to use this command')
end
end

addcmd('spin',{},function(aD,aE)
local aF=20
if aD[1]and isNumber(aD[1])then
aF=aD[1]
end
for aG,V in pairs(getRoot(aE.Character):GetChildren())do
if V.Name=="Spinning"then
V:Destroy()
end
end
local aG=Instance.new"BodyAngularVelocity"
aG.Name="Spinning"
aG.Parent=getRoot(aE.Character)
aG.MaxTorque=Vector3.new(0,math.huge,0)
aG.AngularVelocity=Vector3.new(0,aF,0)
end)

addcmd('unspin',{},function(aD,aE)
for aF,aG in pairs(getRoot(aE.Character):GetChildren())do
if aG.Name=="Spinning"then
aG:Destroy()
end
end
end)

xrayEnabled=false
function xray()
for aD,aE in pairs(workspace:GetDescendants())do
if aE:IsA"BasePart"and not aE.Parent:FindFirstChildWhichIsA"Humanoid"and not aE.Parent.Parent:FindFirstChildWhichIsA"Humanoid"then
aE.LocalTransparencyModifier=xrayEnabled and 0.5 or 0
end
end
end

addcmd("xray",{},function(aD,aE)
xrayEnabled=true
xray()
end)

addcmd("unxray",{"noxray"},function(aD,aE)
xrayEnabled=false
xray()
end)

addcmd("togglexray",{},function(aD,aE)
xrayEnabled=not xrayEnabled
xray()
end)

addcmd("loopxray",{},function(aD,aE)
pcall(function()xrayLoop:Disconnect()end)
xrayLoop=RunService.RenderStepped:Connect(function()
xrayEnabled=true
xray()
end)
end)

addcmd("unloopxray",{},function(aD,aE)
pcall(function()xrayLoop:Disconnect()end)
xrayEnabled=false
xray()
end)

local aD
addcmd('walltp',{},function(aE,aF)
local aG
if r15(aF)then
aG=aF.Character.UpperTorso
else
aG=aF.Character.Torso
end
local function touchedFunc(V)
local W=getRoot(aF.Character)
if V:IsA"BasePart"and V.Position.Y>W.Position.Y-aF.Character:FindFirstChildOfClass'Humanoid'.HipHeight then
local X=getRoot(V.Parent)
if X~=nil then
W.CFrame=V.CFrame*CFrame.new(W.CFrame.lookVector.X,X.Size.Z/2+aF.Character:FindFirstChildOfClass'Humanoid'.HipHeight,W.CFrame.lookVector.Z)
elseif X==nil then
W.CFrame=V.CFrame*CFrame.new(W.CFrame.lookVector.X,V.Size.Y/2+aF.Character:FindFirstChildOfClass'Humanoid'.HipHeight,W.CFrame.lookVector.Z)
end
end
end
aD=aG.Touched:Connect(touchedFunc)
end)

addcmd('unwalltp',{'nowalltp'},function(aE,aF)
if aD then
aD:Disconnect()
end
end)

autoclicking=false
addcmd('autoclick',{},function(aE,aF)
if mouse1press and mouse1release then
execCmd'unautoclick'
wait()
local aG=0.1
local V=0.1
if aE[1]and isNumber(aE[1])then aG=aE[1]end
if aE[2]and isNumber(aE[2])then V=aE[2]end
autoclicking=true
cancelAutoClick=UserInputService.InputBegan:Connect(function(W,X)
if not X then
if(W.KeyCode==Enum.KeyCode.Backspace and UserInputService:IsKeyDown(Enum.KeyCode.Equals))or(W.KeyCode==Enum.KeyCode.Equals and UserInputService:IsKeyDown(Enum.KeyCode.Backspace))then
autoclicking=false
cancelAutoClick:Disconnect()
end
end
end)
notify('Auto Clicker',"Press [backspace] and [=] at the same time to stop")
repeat wait(aG)
mouse1press()
wait(V)
mouse1release()
until autoclicking==false
else
notify('Auto Clicker',"Your exploit doesn't have the ability to use the autoclick")
end
end)

addcmd('unautoclick',{'noautoclick'},function(aE,aF)
autoclicking=false
if cancelAutoClick then cancelAutoClick:Disconnect()end
end)

addcmd('mousesensitivity',{'ms'},function(aE,aF)
UserInputService.MouseDeltaSensitivity=aE[1]
end)

local aE
local aF
addcmd('hovername',{},function(aG,V)
execCmd'unhovername'
wait()
aE=Instance.new"TextLabel"
aE.Name=randomString()
aE.Parent=ScaledHolder
aE.BackgroundTransparency=1
aE.Size=UDim2.new(0,200,0,30)
aE.Font=Enum.Font.Code
aE.TextSize=16
aE.Text=""
aE.TextColor3=Color3.new(1,1,1)
aE.TextStrokeTransparency=0
aE.TextXAlignment=Enum.TextXAlignment.Left
aE.ZIndex=10
aF=Instance.new'SelectionBox'
aF.Name=randomString()
aF.LineThickness=0.03
aF.Color3=Color3.new(1,1,1)
local function updateNameBox()
local W
local X=IYMouse.Target

if X then
local Y=X.Parent:FindFirstChildOfClass"Humanoid"or X.Parent.Parent:FindFirstChildOfClass"Humanoid"
if Y then
W=Y.Parent
end
end

if W~=nil then
local Y=IYMouse.X
local Z=IYMouse.Y
local _

if IYMouse.X>200 then
_=Y-205
aE.TextXAlignment=Enum.TextXAlignment.Right
else
_=Y+25
aE.TextXAlignment=Enum.TextXAlignment.Left
end
aE.Position=UDim2.new(0,_,0,Z)
aE.Text=W.Name
aE.Visible=true
aF.Parent=W
aF.Adornee=W
else
aE.Visible=false
aF.Parent=nil
aF.Adornee=nil
end
end
nbUpdateFunc=IYMouse.Move:Connect(updateNameBox)
end)

addcmd('unhovername',{'nohovername'},function(aG,V)
if nbUpdateFunc then
nbUpdateFunc:Disconnect()
aE:Destroy()
aF:Destroy()
end
end)

addcmd('headsize',{},function(aG,V)
local W=getPlayer(aG[1],V)
for X,Y in pairs(W)do
if Players[Y]~=V and Players[Y].Character:FindFirstChild'Head'then
local Z=tonumber(aG[2])
local _=Vector3.new(Z,Z,Z)
local aH=Players[Y].Character:FindFirstChild'Head'
if aH:IsA"BasePart"then
aH.CanCollide=false
if not aG[2]or Z==1 then
aH.Size=Vector3.new(2,1,1)
else
aH.Size=_
end
end
end
end
end)

addcmd('hitbox',{},function(aG,aH)
local V=getPlayer(aG[1],aH)
local W=aG[3]and tonumber(aG[3])or 0.4
for X,Y in pairs(V)do
if Players[Y]~=aH and Players[Y].Character:FindFirstChild'HumanoidRootPart'then
local Z=tonumber(aG[2])
local _=Vector3.new(Z,Z,Z)
local aI=Players[Y].Character:FindFirstChild'HumanoidRootPart'
if aI:IsA"BasePart"then
aI.CanCollide=false
if not aG[2]or Z==1 then
aI.Size=Vector3.new(2,1,1)
aI.Transparency=W
else
aI.Size=_
aI.Transparency=W
end
end
end
end
end)

addcmd('stareat',{'stare'},function(aG,aH)
local aI=getPlayer(aG[1],aH)
for V,W in pairs(aI)do
if stareLoop then
stareLoop:Disconnect()
end
if not Players.LocalPlayer.Character:FindFirstChild"HumanoidRootPart"and Players[W].Character:FindFirstChild"HumanoidRootPart"then return end
local function stareFunc()
if Players.LocalPlayer.Character.PrimaryPart and Players:FindFirstChild(W)and Players[W].Character~=nil and Players[W].Character:FindFirstChild"HumanoidRootPart"then
local X=Players.LocalPlayer.Character.PrimaryPart.Position
local Y=Players[W].Character:FindFirstChild"HumanoidRootPart".Position
local Z=Vector3.new(Y.X,X.Y,Y.Z)
local _=CFrame.new(X,Z)
Players.LocalPlayer.Character:SetPrimaryPartCFrame(_)
elseif not Players:FindFirstChild(W)then
stareLoop:Disconnect()
end
end

stareLoop=RunService.RenderStepped:Connect(stareFunc)
end
end)

addcmd('unstareat',{'unstare','nostare','nostareat'},function(aG,aH)
if stareLoop then
stareLoop:Disconnect()
end
end)

RolewatchData={Group=0,Role="",Leave=false}
RolewatchConnection=Players.PlayerAdded:Connect(function(aG)
if RolewatchData.Group==0 then return end
if aG:IsInGroup(RolewatchData.Group)then
if tostring(aG:GetRoleInGroup(RolewatchData.Group)):lower()==RolewatchData.Role:lower()then
if RolewatchData.Leave==true then
Players.LocalPlayer:Kick("\n\nRolewatch\nPlayer \""..tostring(aG.Name).."\" has joined with the Role \""..RolewatchData.Role.."\"\n")
else
notify("Rolewatch","Player \""..tostring(aG.Name).."\" has joined with the Role \""..RolewatchData.Role.."\"")
end
end
end
end)

addcmd("rolewatch",{},function(aG,aH)
local aI=tonumber(aG[1]or 0)
local V=aG[2]and tostring(getstring(2))
if aI and V then
RolewatchData.Group=aI
RolewatchData.Role=V
notify("Rolewatch","Watching Group ID \""..tostring(aI).."\" for Role \""..V.."\"")
end
end)

addcmd("rolewatchstop",{},function(aG,aH)
RolewatchData.Group=0
RolewatchData.Role=""
RolewatchData.Leave=false
notify("Rolewatch","Disabled")
end)

addcmd("rolewatchleave",{"unrolewatch"},function(aG,aH)
RolewatchData.Leave=not RolewatchData.Leave
notify("Rolewatch",RolewatchData.Leave and"Leave has been Enabled"or"Leave has been Disabled")
end)

staffRoles={"mod","admin","staff","dev","founder","owner","supervis","manager","management","executive","president","chairman","chairwoman","chairperson","director"}

getStaffRole=function(aG)
local aH=aG:GetRoleInGroup(game.CreatorId)
local aI={Role=aH,Staff=false}
if aG:IsInGroup(1200769)then
aI.Role="Roblox Employee"
aI.Staff=true
end
for V,W in pairs(staffRoles)do
if string.find(string.lower(aH),W)then
aI.Staff=true
end
end
return aI
end

addcmd("staffwatch",{},function(aG,aH)
if staffwatchjoin then
staffwatchjoin:Disconnect()
end
if game.CreatorType==Enum.CreatorType.Group then
local aI={}
staffwatchjoin=Players.PlayerAdded:Connect(function(V)
local W=getStaffRole(V)
if W.Staff then
notify("Staffwatch",formatUsername(V).." is a "..W.Role)
end
end)
for V,W in pairs(Players:GetPlayers())do
local X=getStaffRole(W)
if X.Staff then
table.insert(aI,formatUsername(W).." is a "..X.Role)
end
end
if#aI>0 then
notify("Staffwatch",table.concat(aI,",\n"))
else
notify("Staffwatch","Enabled")
end
else
notify("Staffwatch","Game is not owned by a Group")
end
end)

addcmd("unstaffwatch",{},function(aG,aH)
if staffwatchjoin then
staffwatchjoin:Disconnect()
end
notify("Staffwatch","Disabled")
end)

addcmd('removeterrain',{'rterrain','noterrain'},function(aG,aH)
workspace:FindFirstChildOfClass'Terrain':Clear()
end)

addcmd('clearnilinstances',{'nonilinstances','cni'},function(aG,aH)
if getnilinstances then
for aI,V in pairs(getnilinstances())do
V:Destroy()
end
else
notify('Incompatible Exploit','Your exploit does not support this command (missing getnilinstances)')
end
end)

addcmd('destroyheight',{'dh'},function(aG,aH)
local aI=aG[1]or-500
if isNumber(aI)then
workspace.FallenPartsDestroyHeight=aI
end
end)

OrgDestroyHeight=workspace.FallenPartsDestroyHeight
addcmd("antivoid",{},function(aG,aH)
execCmd"unantivoid nonotify"
task.wait()
antivoidloop=RunService.Stepped:Connect(function()
local aI=getRoot(aH.Character)
if aI and aI.Position.Y<=OrgDestroyHeight+25 then
aI.Velocity=aI.Velocity+Vector3.new(0,250,0)
end
end)
if aG[1]~="nonotify"then notify("antivoid","Enabled")end
end)

addcmd("unantivoid",{"noantivoid"},function(aG,aH)
pcall(function()antivoidloop:Disconnect()end)
antivoidloop=nil
if aG[1]~="nonotify"then notify("antivoid","Disabled")end
end)

antivoidWasEnabled=false
addcmd("fakeout",{},function(aG,aH)
local aI=getRoot(aH.Character)
local V=aI.CFrame
if antivoidloop then
execCmd"unantivoid nonotify"
antivoidWasEnabled=true
end
workspace.FallenPartsDestroyHeight=0/0
aI.CFrame=CFrame.new(Vector3.new(0,OrgDestroyHeight-25,0))
task.wait(1)
aI.CFrame=V
workspace.FallenPartsDestroyHeight=OrgDestroyHeight
if antivoidWasEnabled then
execCmd"antivoid nonotify"
antivoidWasEnabled=false
end
end)

addcmd("trip",{},function(aG,aH)
local aI=aH.Character and aH.Character:FindFirstChildWhichIsA"Humanoid"
local V=aH.Character and getRoot(aH.Character)
if aI and V then
aI:ChangeState(Enum.HumanoidStateType.FallingDown)
V.Velocity=V.CFrame.LookVector*30
end
end)

addcmd("removeads",{"adblock"},function(aG,aH)
while wait()do
pcall(function()
for aI,V in pairs(workspace:GetDescendants())do
if V:IsA"PackageLink"then
if V.Parent:FindFirstChild"ADpart"then
V.Parent:Destroy()
end
if V.Parent:FindFirstChild"AdGuiAdornee"then
V.Parent.Parent:Destroy()
end
end
end
end)
end
end)

addcmd("scare",{"spook"},function(aG,aH)
local aI=getPlayer(aG[1],aH)
local V

for W,X in pairs(aI)do
local Y=aH.Character and getRoot(aH.Character)
local Z=Players[X]
local _=Z and Z.Character and getRoot(Z.Character)

if Y and _ and Z~=aH then
V=Y.CFrame
Y.CFrame=_.CFrame+_.CFrame.lookVector*2
Y.CFrame=CFrame.new(Y.Position,_.Position)
task.wait(0.5)
Y.CFrame=V
end
end
end)

addcmd("alignmentkeys",{},function(aG,aH)
alignmentKeys=UserInputService.InputBegan:Connect(function(aI,V)
if V then return end
if aI.KeyCode==Enum.KeyCode.Comma then workspace.CurrentCamera:PanUnits(-1)end
if aI.KeyCode==Enum.KeyCode.Period then workspace.CurrentCamera:PanUnits(1)end
end)
alignmentKeysEmotes=StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu)
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu,false)
end)

addcmd("unalignmentkeys",{"noalignmentkeys"},function(aG,aH)
if type(alignmentKeysEmotes)=="boolean"then
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu,alignmentKeysEmotes)
end
alignmentKeys:Disconnect()
end)

addcmd("ctrllock",{},function(aG,aH)
local aI=aH.PlayerScripts:WaitForChild"PlayerModule":WaitForChild"CameraModule":WaitForChild"MouseLockController"
local V=aI:FindFirstChild"BoundKeys"

if V then
V.Value="LeftControl"
else
V=Instance.new"StringValue"
V.Name="BoundKeys"
V.Value="LeftControl"
V.Parent=aI
end
end)

addcmd("unctrllock",{},function(aG,aH)
local aI=aH.PlayerScripts:WaitForChild"PlayerModule":WaitForChild"CameraModule":WaitForChild"MouseLockController"
local V=aI:FindFirstChild"BoundKeys"

if V then
V.Value="LeftShift"
else
V=Instance.new"StringValue"
V.Name="BoundKeys"
V.Value="LeftShift"
V.Parent=aI
end
end)

addcmd("listento",{},function(aG,aH)
execCmd"unlistento"
if not aG[1]then return end

local aI=Players:FindFirstChild(getPlayer(aG[1],aH)[1])
local V=aI and aI.Character and getRoot(aI.Character)

if V then
SoundService:SetListener(Enum.ListenerType.ObjectPosition,V)
listentoChar=aI.CharacterAdded:Connect(function()
repeat task.wait()until Players[aI.Name].Character~=nil and getRoot(Players[aI.Name].Character)
SoundService:SetListener(Enum.ListenerType.ObjectPosition,getRoot(Players[aI.Name].Character))
end)
end
end)

addcmd("unlistento",{},function(aG,aH)
SoundService:SetListener(Enum.ListenerType.Camera)
listentoChar:Disconnect()
end)

addcmd("jerk",{},function(aG,aH)
local aI=aH.Character:FindFirstChildWhichIsA"Humanoid"
local V=aH:FindFirstChildWhichIsA"Backpack"
if not aI or not V then return end

local W=Instance.new"Tool"
W.Name="Jerk Off"
W.ToolTip="in the stripped club. straight up \"jorking it\" . and by \"it\" , haha, well. let's justr say. My peanits."
W.RequiresHandle=false
W.Parent=V

local X=false
local Y

local function stopTomfoolery()
X=false
if Y then
Y:Stop()
Y=nil
end
end

W.Equipped:Connect(function()X=true end)
W.Unequipped:Connect(stopTomfoolery)
aI.Died:Connect(stopTomfoolery)

while task.wait()do
if not X then continue end

local Z=r15(aH)
if not Y then
local _=Instance.new"Animation"
_.AnimationId=not Z and"rbxassetid://72042024"or"rbxassetid://698251653"
Y=aI:LoadAnimation(_)
end

Y:Play()
Y:AdjustSpeed(Z and 0.7 or 0.65)
Y.TimePosition=0.6
task.wait(0.1)
while Y and Y.TimePosition<(not Z and 0.65 or 0.7)do task.wait(0.1)end
if Y then
Y:Stop()
Y=nil
end
end
end)

addcmd("guiscale",{},function(aG,aH)
if aG[1]and isNumber(aG[1])then
local aI=tonumber(aG[1])
if aI%1==0 then aI=aI/100 end

if aI==0.01 then aI=1 end
if aI==0.02 then aI=2 end

if aI>=0.4 and aI<=2 then
guiScale=aI
end
else
guiScale=defaultGuiScale
end

Scale.Scale=math.max(Holder.AbsoluteSize.X/1920,guiScale)
updatesaves()
end)

addcmd("unsuspendchat",{},function(aG,aH)
if replicatesignal then
replicatesignal(TextChatService.UpdateChatTimeout,aH.UserId,0,10)
else
notify("Incompatible Exploit","Your exploit does not support this command (missing replicatesignal)")
end
end)

addcmd("unsuspendvc",{},function(aG,aH)
if replicatesignal then
replicatesignal(VoiceChatService.ClientRetryJoin)

if typeof(onVoiceModerated)~="RBXScriptConnection"then
onVoiceModerated=Services.VoiceChatInternal.LocalPlayerModerated:Connect(function()
task.wait(1)
replicatesignal(VoiceChatService.ClientRetryJoin)
end)
end
else
notify("Incompatible Exploit","Your exploit does not support this command (missing replicatesignal)")
end
end)

addcmd("muteallvcs",{},function(aG,aH)
Services.VoiceChatInternal:SubscribePauseAll(true)
end)

addcmd("unmuteallvcs",{},function(aG,aH)
Services.VoiceChatInternal:SubscribePauseAll(false)
end)

addcmd("mutevc",{},function(aG,aH)
for aI,V in getPlayer(aG[1],aH)do
if Players[V]==aH then continue end
Services.VoiceChatInternal:SubscribePause(Players[V].UserId,true)
end
end)

addcmd("unmutevc",{},function(aG,aH)
for aI,V in getPlayer(aG[1],aH)do
if Players[V]==aH then continue end
Services.VoiceChatInternal:SubscribePause(Players[V].UserId,false)
end
end)

addcmd("phonebook",{"call"},function(aG,aH)
local aI,V=pcall(function()
return SocialService:CanSendCallInviteAsync(aH)
end)
if aI and V then
SocialService:PromptPhoneBook(aH,"")
else
notify("Phonebook","It seems you're not able to call anyone. Sorry!")
end
end)

addcmd("permadeath",{},function(aG,aH)
if replicatesignal then
permadeath(aH)
notify("Permadeath","Enabled")
else
notify("Incompatible Exploit","Your exploit does not support this command (missing replicatesignal)")
end
end)

local aG
frozenParts={}
addcmd('freezeunanchored',{'freezeua'},function(aH,aI)
local V={
"Head",
"UpperTorso",
"LowerTorso",
"RightUpperArm",
"LeftUpperArm",
"RightLowerArm",
"LeftLowerArm",
"RightHand",
"LeftHand",
"RightUpperLeg",
"LeftUpperLeg",
"RightLowerLeg",
"LeftLowerLeg",
"RightFoot",
"LeftFoot",
"Torso",
"Right Arm",
"Left Arm",
"Right Leg",
"Left Leg",
"HumanoidRootPart"
}
local function FREEZENOOB(W)
if W:IsA'BasePart'and W.Anchored==false then
local X=false
for Y=1,#V do
if W.Name==V[Y]then
X=true
end
end
if aI.Character and W:IsDescendantOf(aI.Character)then
X=true
end
if X==false then
for Y,Z in pairs(W:GetChildren())do
if Z:IsA"BodyPosition"or Z:IsA"BodyGyro"then
Z:Destroy()
end
end
local Y=Instance.new"BodyPosition"
Y.Parent=W
Y.Position=W.Position
Y.MaxForce=Vector3.new(math.huge,math.huge,math.huge)
local Z=Instance.new"BodyGyro"
Z.Parent=W
Z.CFrame=W.CFrame
Z.MaxTorque=Vector3.new(math.huge,math.huge,math.huge)
if not table.find(frozenParts,W)then
table.insert(frozenParts,W)
end
end
end
end
for W,X in pairs(workspace:GetDescendants())do
FREEZENOOB(X)
end
aG=workspace.DescendantAdded:Connect(FREEZENOOB)
end)

addcmd('thawunanchored',{'thawua','unfreezeunanchored','unfreezeua'},function(aH,aI)
if aG then
aG:Disconnect()
end
for V,W in pairs(frozenParts)do
for X,Y in pairs(W:GetChildren())do
if Y:IsA"BodyPosition"or Y:IsA"BodyGyro"then
Y:Destroy()
end
end
end
frozenParts={}
end)

addcmd('tpunanchored',{'tpua'},function(aH,aI)
local V=getPlayer(aH[1],aI)
for W,X in pairs(V)do
local Y={}
for Z,_ in pairs(workspace:GetDescendants())do
if Players[X].Character:FindFirstChild'Head'and _:IsA'BasePart'and _.Anchored==false and not _:IsDescendantOf(aI.Character)and _.Name=="Torso"==false and _.Name=="Head"==false and _.Name=="Right Arm"==false and _.Name=="Left Arm"==false and _.Name=="Right Leg"==false and _.Name=="Left Leg"==false and _.Name=="HumanoidRootPart"==false then
for aJ,aK in pairs(_:GetChildren())do
if aK:IsA"BodyPosition"or aK:IsA"BodyGyro"then
aK:Destroy()
end
end
local aJ=Instance.new"BodyPosition"
aJ.Parent=_
aJ.MaxForce=Vector3.new(math.huge,math.huge,math.huge)
table.insert(Y,aJ)
if not table.find(frozenParts,_)then
table.insert(frozenParts,_)
end
end
end
for aJ,aK in pairs(Y)do
aK.Position=Players[X].Character.Head.Position
end
end
end)

keycodeMap={
["0"]=0x30,
["1"]=0x31,
["2"]=0x32,
["3"]=0x33,
["4"]=0x34,
["5"]=0x35,
["6"]=0x36,
["7"]=0x37,
["8"]=0x38,
["9"]=0x39,a=
0x41,b=
0x42,c=
0x43,d=
0x44,e=
0x45,f=
0x46,g=
0x47,h=
0x48,i=
0x49,j=
0x4A,k=
0x4B,l=
0x4C,m=
0x4D,n=
0x4E,o=
0x4F,p=
0x50,q=
0x51,r=
0x52,s=
0x53,t=
0x54,u=
0x55,v=
0x56,w=
0x57,x=
0x58,y=
0x59,z=
0x5A,enter=
0x0D,shift=
0x10,ctrl=
0x11,alt=
0x12,pause=
0x13,capslock=
0x14,spacebar=
0x20,space=
0x20,pageup=
0x21,pagedown=
0x22,
["end"]=0x23,home=
0x24,left=
0x25,up=
0x26,right=
0x27,down=
0x28,insert=
0x2D,delete=
0x2E,f1=
0x70,f2=
0x71,f3=
0x72,f4=
0x73,f5=
0x74,f6=
0x75,f7=
0x76,f8=
0x77,f9=
0x78,f10=
0x79,f11=
0x7A,f12=
0x7B,
}
autoKeyPressing=false
cancelAutoKeyPress=nil

addcmd('autokeypress',{'keypress'},function(aH,aI)
if keypress and keyrelease and aH[1]then
local aJ=keycodeMap[aH[1]:lower()]
if not aJ then notify('Auto Key Press',"Invalid key")return end
execCmd'unautokeypress'
wait()
local aK=0.1
local V=0.1
if aH[2]and isNumber(aH[2])then aK=aH[2]end
if aH[3]and isNumber(aH[3])then V=aH[3]end
autoKeyPressing=true
cancelAutoKeyPress=UserInputService.InputBegan:Connect(function(W,X)
if not X then
if(W.KeyCode==Enum.KeyCode.Backspace and UserInputService:IsKeyDown(Enum.KeyCode.Equals))or(W.KeyCode==Enum.KeyCode.Equals and UserInputService:IsKeyDown(Enum.KeyCode.Backspace))then
autoKeyPressing=false
cancelAutoKeyPress:Disconnect()
end
end
end)
notify('Auto Key Press',"Press [backspace] and [=] at the same time to stop")
repeat wait(aK)
keypress(aJ)
wait(V)
keyrelease(aJ)
until autoKeyPressing==false
if cancelAutoKeyPress then cancelAutoKeyPress:Disconnect()keyrelease(aJ)end
else
notify('Auto Key Press',"Your exploit doesn't have the ability to use auto key press")
end
end)

addcmd('unautokeypress',{'noautokeypress','unkeypress','nokeypress'},function(aH,aI)
autoKeyPressing=false
if cancelAutoKeyPress then cancelAutoKeyPress:Disconnect()end
end)

addcmd('addplugin',{'plugin'},function(aH,aI)
addPlugin(getstring(1))
end)

addcmd('removeplugin',{'deleteplugin'},function(aH,aI)
deletePlugin(getstring(1))
end)

addcmd('reloadplugin',{},function(aH,aI)
local aJ=getstring(1)
deletePlugin(aJ)
wait(1)
addPlugin(aJ)
end)

addcmd("addallplugins",{"loadallplugins"},function(aH,aI)
if not listfiles or not isfolder then
notify("Incompatible Exploit","Your exploit does not support this command (missing listfiles/isfolder)")
return
end

for aJ,aK in ipairs(listfiles"")do
local V=aK:match"([^/\\]+%.iy)$"

if V and
V:lower()~="iy_fe.iy"and
not isfolder(V)and
not table.find(PluginsTable,V)
then
addPlugin(V)
end
end
end)

addcmd('removecmd',{'deletecmd'},function(aH,aI)
removecmd(aH[1])
end)

if IsOnMobile then
local aH=Instance.new"TextButton"
local aI=Instance.new"UICorner"
aH.Name=randomString()
aH.Parent=PARENT
aH.BackgroundColor3=Color3.fromRGB(46,46,47)
aH.BackgroundTransparency=0.14
aH.Position=UDim2.new(0.489,0,0,0)
aH.Size=UDim2.new(0,32,0,33)
aH.Font=Enum.Font.SourceSansBold
aH.Text="IY"
aH.TextColor3=Color3.fromRGB(255,255,255)
aH.TextSize=20
aH.TextWrapped=true
aH.ZIndex=10
aH.Draggable=true
aI.Name=randomString()
aI.CornerRadius=UDim.new(0.5,0)
aI.Parent=aH
aH.MouseButton1Click:Connect(function()
Cmdbar:CaptureFocus()
maximizeHolder()
end)
table.insert(shade1,aH)
table.insert(text1,aH)
end

pcall(function()Scale.Scale=math.max(Holder.AbsoluteSize.X/1920,guiScale)end)
Scale.Parent=ScaledHolder
ScaledHolder.Size=UDim2.fromScale(1/Scale.Scale,1/Scale.Scale)
Scale:GetPropertyChangedSignal"Scale":Connect(function()
ScaledHolder.Size=UDim2.fromScale(1/Scale.Scale,1/Scale.Scale)
for aH,aI in ScaledHolder:GetDescendants()do
if aI:IsA"GuiObject"and aI.Visible then
aI.Visible=false
aI.Visible=true
end
end
end)

updateColors(currentShade1,shade1)
updateColors(currentShade2,shade2)
updateColors(currentShade3,shade3)
updateColors(currentText1,text1)
updateColors(currentText2,text2)
updateColors(currentScroll,scroll)

if PluginsTable~=nil or PluginsTable~={}then
FindPlugins(PluginsTable)
end


eventEditor.RegisterEvent"OnExecute"
eventEditor.RegisterEvent("OnSpawn",{
{Type="Player",Name="Player Filter ($1)"}
})
eventEditor.RegisterEvent("OnDied",{
{Type="Player",Name="Player Filter ($1)"}
})
eventEditor.RegisterEvent("OnDamage",{
{Type="Player",Name="Player Filter ($1)"},
{Type="Number",Name="Below Health ($2)"}
})
eventEditor.RegisterEvent("OnKilled",{
{Type="Player",Name="Victim Player ($1)"},
{Type="Player",Name="Killer Player ($2)",Default=1}
})
eventEditor.RegisterEvent("OnJoin",{
{Type="Player",Name="Player Filter ($1)",Default=1}
})
eventEditor.RegisterEvent("OnLeave",{
{Type="Player",Name="Player Filter ($1)",Default=1}
})
eventEditor.RegisterEvent("OnChatted",{
{Type="Player",Name="Player Filter ($1)",Default=1},
{Type="String",Name="Message Filter ($2)"}
})

function hookCharEvents(aH,aI)
task.spawn(function()
local aJ=aH.Character
if not aJ then return end

local aK=aJ:WaitForChild("Humanoid",10)
if not aK then return end

local V=aK.Health
aK.HealthChanged:Connect(function(W)
math.abs(V-W)
if V>W then
eventEditor.FireEvent("OnDamage",aH.Name,tonumber(W))
end
V=W
end)

aK.Died:Connect(function()
eventEditor.FireEvent("OnDied",aH.Name)

local W=aK:FindFirstChild"creator"
if W and W.Value and W.Value.Parent then
eventEditor.FireEvent("OnKilled",aH.Name,W.Name)
end
end)
end)
end

Players.PlayerAdded:Connect(function(aH)
eventEditor.FireEvent("OnJoin",aH.Name)
if isLegacyChat then aH.Chatted:Connect(function(aI)eventEditor.FireEvent("OnChatted",tostring(aH),aI)end)end
aH.CharacterAdded:Connect(function()eventEditor.FireEvent("OnSpawn",tostring(aH))hookCharEvents(aH)end)
JoinLog(aH)
if isLegacyChat then ChatLog(aH)end
if ESPenabled then
repeat wait(1)until aH.Character and getRoot(aH.Character)
ESP(aH)
end
if CHMSenabled then
repeat wait(1)until aH.Character and getRoot(aH.Character)
CHMS(aH)
end
end)

if not isLegacyChat then
TextChatService.MessageReceived:Connect(function(aH)
if aH.TextSource then
local aI=Players:GetPlayerByUserId(aH.TextSource.UserId)
if not aI then return end

if logsEnabled==true then
CreateLabel(aI.Name,aH.Text)
end
if aI.UserId==Players.LocalPlayer.UserId then
do_exec(aH.Text,Players.LocalPlayer)
end
eventEditor.FireEvent("OnChatted",aI.Name,aH.Text)
sendChatWebhook(aI,aH.Text)
end
end)
end

for aH,aI in pairs(Players:GetPlayers())do
pcall(function()
aI.CharacterAdded:Connect(function()eventEditor.FireEvent("OnSpawn",tostring(aI))hookCharEvents(aI)end)
hookCharEvents(aI)
end)
end

if spawnCmds and#spawnCmds>0 then
for aH,aI in pairs(spawnCmds)do
eventEditor.AddCmd("OnSpawn",{aI.COMMAND or"",{0},aI.DELAY or 0})
end
updatesaves()
end

if c then eventEditor.LoadData(c)end
eventEditor.Refresh()

eventEditor.FireEvent"OnExecute"

if aliases and#aliases>0 then
local aH={}
for aI,aJ in pairs(cmds)do
aH[aJ.NAME:lower()]=aJ
for aK,V in pairs(aJ.ALIAS)do
aH[V:lower()]=aJ
end
end
for aI=1,#aliases do
local aJ=string.lower(aliases[aI].CMD)
local aK=string.lower(aliases[aI].ALIAS)
if aH[aJ]then
customAlias[aK]=aH[aJ]
end
end
refreshaliases()
end

IYMouse.Move:Connect(checkTT)

CaptureService.CaptureBegan:Connect(function()
PARENT.Enabled=false
end)

CaptureService.CaptureEnded:Connect(function()
task.delay(0.1,function()
PARENT.Enabled=true
end)
end)

task.spawn(function()
local aH,aI=pcall(function()
local aH=game:HttpGet"https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/version"
return HttpService:JSONDecode(aH)
end)

if aH then
if currentVersion~=aI.Version then
notify("Outdated","Get the new version at infyiff.github.io")
end

if aI.Announcement and aI.Announcement~=""then
local aJ=Instance.new"Frame"
local aK=Instance.new"Frame"
local V=Instance.new"TextLabel"
local W=Instance.new"Frame"
local X=Instance.new"TextLabel"
local Y=Instance.new"TextButton"
local Z=Instance.new"ImageLabel"

aJ.Name=randomString()
aJ.Parent=ScaledHolder
aJ.Active=true
aJ.BackgroundTransparency=1
aJ.Position=UDim2.new(0.5,-180,0,-500)
aJ.Size=UDim2.new(0,360,0,20)
aJ.ZIndex=10

aK.Name="background"
aK.Parent=aJ
aK.Active=true
aK.BackgroundColor3=currentShade1
aK.BorderSizePixel=0
aK.Position=UDim2.new(0,0,0,20)
aK.Size=UDim2.new(0,360,0,150)
aK.ZIndex=10

V.Parent=aK
V.BackgroundTransparency=1
V.Position=UDim2.new(0,5,0,5)
V.Size=UDim2.new(0,350,0,140)
V.Font=Enum.Font.SourceSans
V.TextSize=18
V.TextWrapped=true
V.Text=aI.Announcement
V.TextColor3=currentText1
V.TextXAlignment=Enum.TextXAlignment.Left
V.TextYAlignment=Enum.TextYAlignment.Top
V.ZIndex=10

W.Name="shadow"
W.Parent=aJ
W.BackgroundColor3=currentShade2
W.BorderSizePixel=0
W.Size=UDim2.new(0,360,0,20)
W.ZIndex=10

X.Name="PopupText"
X.Parent=W
X.BackgroundTransparency=1
X.Size=UDim2.new(1,0,0.95,0)
X.ZIndex=10
X.Font=Enum.Font.SourceSans
X.TextSize=14
X.Text="Server Announcement"
X.TextColor3=currentText1
X.TextWrapped=true

Y.Name="Exit"
Y.Parent=W
Y.BackgroundTransparency=1
Y.Position=UDim2.new(1,-20,0,0)
Y.Size=UDim2.new(0,20,0,20)
Y.Text=""
Y.ZIndex=10

Z.Parent=Y
Z.BackgroundColor3=Color3.new(1,1,1)
Z.BackgroundTransparency=1
Z.Position=UDim2.new(0,5,0,5)
Z.Size=UDim2.new(0,10,0,10)
Z.Image=getcustomasset"infiniteyield/assets/close.png"
Z.ZIndex=10

wait(1)
aJ:TweenPosition(UDim2.new(0.5,-180,0,150),"InOut","Quart",0.5,true,nil)

Y.MouseButton1Click:Connect(function()
aJ:TweenPosition(UDim2.new(0.5,-180,0,-500),"InOut","Quart",0.5,true,nil)
wait(0.6)
aJ:Destroy()
end)
end
end
end)

task.spawn(function()
wait()
Credits:TweenPosition(UDim2.new(0,0,0.9,0),"Out","Quart",0.2)
Logo:TweenSizeAndPosition(UDim2.new(0,175,0,175),UDim2.new(0,37,0,45),"Out","Quart",0.3)
wait(1)
local aH=TweenInfo.new(1.6809,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0)
TweenService:Create(Logo,aH,{ImageTransparency=1}):Play()
TweenService:Create(IntroBackground,aH,{BackgroundTransparency=1}):Play()
Credits:TweenPosition(UDim2.new(0,0,0.9,30),"Out","Quart",0.2)
wait(0.2)
Logo:Destroy()
Credits:Destroy()
IntroBackground:Destroy()
minimizeHolder()
end)


local aH=false


CMDs[#CMDs+1]={NAME='hideplayers / hplyrs',DESC='Hides all charater models'}
CMDs[#CMDs+1]={NAME='showplayers / splyrs',DESC='Shows all charater models'}
CMDs[#CMDs+1]={NAME='fast',DESC='Increases the player\'s movement speed'}
CMDs[#CMDs+1]={NAME='slow',DESC='Decreases the player\'s movement speed'}
CMDs[#CMDs+1]={NAME='time',DESC='Sets the in-game time'}
CMDs[#CMDs+1]={NAME='day',DESC='Sets the in-game time to daytime'}
CMDs[#CMDs+1]={NAME='night',DESC='Sets the in-game time to nighttime'}
CMDs[#CMDs+1]={NAME='bunnyhop / bhop',DESC='Automatically jumps for you'}

addcmd("hideplayers",{"hplyrs"},function(aI,aJ)
local aK=game:GetService"Players"local V=
aK.LocalPlayer or aK.PlayerAdded:Wait()

for W,X in pairs(aK:GetPlayers())do
if X.Name~=aJ.Name then
local Y=X.Character
for Z,_ in pairs(Y:GetChildren())do
if _:IsA"Part"or _:IsA"MeshPart"then
_.Transparency=1
for aL,aM in pairs(_:GetChildren())do
if aM:IsA"Decal"then
aM.Transparency=1
end
end
elseif _:IsA"Accessory"then
local aL=_:FindFirstChild"Handle"
if aL then
aL.Transparency=1
for aM,aN in pairs(aL:GetChildren())do
if aN:IsA"Decal"then
aN.Transparency=1
end
end
end
end
end
end
end
end)


addcmd("showplayers",{"splyrs"},function(aI,aJ)
local aK=game:GetService"Players"local aL=
aK.LocalPlayer or aK.PlayerAdded:Wait()

for aM,aN in pairs(aK:GetPlayers())do
if aN.Name~=aJ.Name then
local V=aN.Character
if V then
for W,X in pairs(V:GetChildren())do
if(X:IsA"Part"or X:IsA"MeshPart")and X.Name~="HumanoidRootPart"then
X.Transparency=0
for Y,Z in pairs(X:GetChildren())do
if Z:IsA"Decal"then
Z.Transparency=0
end
end
elseif X:IsA"Accessory"then
local Y=X:FindFirstChild"Handle"
if Y then
Y.Transparency=0
for Z,_ in pairs(Y:GetChildren())do
if _:IsA"Decal"then
_.Transparency=0
end
end
end
end
end
end
end
end
end)

addcmd("fast",{},function(aI,aJ)
local aK=player.Character.Humanoid.WalkSpeed
local aL=game:GetService"Players"
local aM=aL.LocalPlayer or aL.PlayerAdded:Wait()
aM.Character.Humanoid.WalkSpeed=aK+1
end)

addcmd("slow",{},function(aI,aJ)
local aK=player.Character.Humanoid.WalkSpeed
local aL=game:GetService"Players"
local aM=aL.LocalPlayer or aL.PlayerAdded:Wait()
if aK>1 then
aM.Character.Humanoid.WalkSpeed=aK-1
end
end)

addcmd("time",{},function(aI,aJ)
local aK=tonumber(aI[1])
if aK then
game:GetService"Lighting".ClockTime=aK
end
end)

addcmd("day",{},function(aI,aJ)
game:GetService"Lighting".ClockTime=12
end)

addcmd("night",{},function(aI,aJ)
game:GetService"Lighting".ClockTime=0
end)

addcmd("bhop",{"bunnyhop"},function(aI,aJ)
local aK=game:GetService"Players":FindFirstChild(aJ.Name)
if aK and not aH then
local aL=aK.Character
if aL then
local aM=aL:FindFirstChildOfClass"Humanoid"
if aM then
aH=true
task.spawn(function()
while aH do
aM.Jump=true
task.wait(0.2)
end
end)
end
end
end
end)

addcmd("unbhop",{"stopbhop"},function(aI,aJ)
aH=false
end)