-- This file is generated automatically and is not meant to be modified.

if IY_LOADED and not _G.IY_DEBUG==true then

return
end

pcall(function()getgenv().IY_LOADED=true end)

local a=cloneref or function(a)return a end
COREGUI=a(game:GetService"CoreGui")
Players=a(game:GetService"Players")

if not game:IsLoaded()then
local b=Instance.new"Message"
b.Parent=COREGUI
b.Text="Zero Yield is waiting for the game to load"
game.Loaded:Wait()
b:Destroy()
end

currentVersion="6.3.1"

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
SettingsButton.Image="rbxassetid://1204397029"
SettingsButton.ZIndex=10

ReferenceButton=Instance.new"ImageButton"
ReferenceButton.Name="ReferenceButton"
ReferenceButton.Parent=Holder
ReferenceButton.BackgroundTransparency=1
ReferenceButton.Position=UDim2.new(0,212,0,2)
ReferenceButton.Size=UDim2.new(0,16,0,16)
ReferenceButton.Image="rbxassetid://3523243755"
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

ColorsButton=makeSettingsButton("Edit Theme","rbxassetid://4911962991")
ColorsButton.Position=UDim2.new(0,5,0,55)
ColorsButton.Size=UDim2.new(1,-10,0,25)
ColorsButton.Name="Colors"
ColorsButton.Parent=SettingsHolder

Keybinds=makeSettingsButton("Edit Keybinds","rbxassetid://129697930")
Keybinds.Position=UDim2.new(0,5,0,85)
Keybinds.Size=UDim2.new(1,-10,0,25)
Keybinds.Name="Keybinds"
Keybinds.Parent=SettingsHolder

Aliases=makeSettingsButton("Edit Aliases","rbxassetid://5147488658")
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

Positions=makeSettingsButton("Edit/Goto Waypoints","rbxassetid://5147488592")
Positions.Position=UDim2.new(0,5,0,145)
Positions.Size=UDim2.new(1,-10,0,25)
Positions.Name="Waypoints"
Positions.Parent=SettingsHolder

EventBind=makeSettingsButton("Edit Event Binds","rbxassetid://5147695474",759)
EventBind.Position=UDim2.new(0,5,0,205)
EventBind.Size=UDim2.new(1,-10,0,25)
EventBind.Name="EventBinds"
EventBind.Parent=SettingsHolder

Plugins=makeSettingsButton("Manage Plugins","rbxassetid://5147695474",743)
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
CloseImage.Image="rbxassetid://5054663650"
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
PinImage.Image="rbxassetid://6234691350"

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
Logo.Image="rbxassetid://1352543873"
Logo.ImageTransparency=0
Logo.ZIndex=10

Credits.Name="Credits"
Credits.Parent=Holder
Credits.BackgroundTransparency=1
Credits.BorderSizePixel=0
Credits.Position=UDim2.new(0,0,0.9,30)
Credits.Size=UDim2.new(0,250,0,20)
Credits.Font=Enum.Font.SourceSansLight
Credits.FontSize=Enum.FontSize.Size18
Credits.Text="Edge // Zwolf // Moon // Toon"
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
ExitImage_2.Image="rbxassetid://5054663650"

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
Img.Image="rbxassetid://4113050383"
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
ExitImage_3.Image="rbxassetid://5054663650"
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
ExitImage_5.Image="rbxassetid://5054663650"
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
ImageLabel.Image="rbxassetid://2406617031"
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
ImageLabel_2.Image="rbxassetid://5054663650"
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

TextService=a(game:GetService"TextService")
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

IYMouse=Players.LocalPlayer:GetMouse()
PlayerGui=Players.LocalPlayer:FindFirstChildWhichIsA"PlayerGui"
UserInputService=a(game:GetService"UserInputService")
TweenService=a(game:GetService"TweenService")
HttpService=a(game:GetService"HttpService")
MarketplaceService=a(game:GetService"MarketplaceService")
RunService=a(game:GetService"RunService")
TeleportService=a(game:GetService"TeleportService")
StarterGui=a(game:GetService"StarterGui")
GuiService=a(game:GetService"GuiService")
Lighting=a(game:GetService"Lighting")
ContextActionService=a(game:GetService"ContextActionService")
ReplicatedStorage=a(game:GetService"ReplicatedStorage")
GroupService=a(game:GetService"GroupService")
PathService=a(game:GetService"PathfindingService")
SoundService=a(game:GetService"SoundService")
Teams=a(game:GetService"Teams")
StarterPlayer=a(game:GetService"StarterPlayer")
InsertService=a(game:GetService"InsertService")
ChatService=a(game:GetService"Chat")
ProximityPromptService=a(game:GetService"ProximityPromptService")
StatsService=a(game:GetService"Stats")
MaterialService=a(game:GetService"MaterialService")
AvatarEditorService=a(game:GetService"AvatarEditorService")
TextChatService=a(game:GetService"TextChatService")
CaptureService=a(game:GetService"CaptureService")
VoiceChatService=a(game:GetService"VoiceChatService")


function vtype(b,c)
if b==nil then return false end
if type(b)=="userdata"then return typeof(b)==c end
return type(b)==c
end

sethidden=sethiddenproperty or set_hidden_property or set_hidden_prop
gethidden=gethiddenproperty or get_hidden_property or get_hidden_prop
queueteleport=(syn and syn.queue_on_teleport)or queue_on_teleport or(fluxus and fluxus.queue_on_teleport)
httprequest=(syn and syn.request)or(http and http.request)or http_request or(fluxus and fluxus.request)or request
PlaceId,JobId=game.PlaceId,game.JobId
local b=table.find({Enum.Platform.IOS,Enum.Platform.Android},UserInputService:GetPlatform())
everyClipboard=setclipboard or toclipboard or set_clipboard or(Clipboard and Clipboard.set)
isLegacyChat=TextChatService.ChatVersion==Enum.ChatVersion.LegacyChatService

local c=type(writefile)=="function"and function(c,d,e)
if e==true then return pcall(writefile,c,d)end
writefile(c,d)
end

local d=type(readfile)=="function"and function(d,e)
if e==true then return pcall(readfile,d)end
return readfile(d)
end

function writefileExploit()
if c then
return true
end
end

function readfileExploit()
if d then
return true
end
end

function isNumber(e)
if tonumber(e)~=nil or e=='inf'then
return true
end
end

function getRoot(e)
local f=e:FindFirstChild'HumanoidRootPart'or e:FindFirstChild'Torso'or e:FindFirstChild'UpperTorso'
return f
end

function tools(e)
if e:FindFirstChildOfClass"Backpack":FindFirstChildOfClass'Tool'or e.Character:FindFirstChildOfClass'Tool'then
return true
end
end

function r15(e)
if e.Character:FindFirstChildOfClass'Humanoid'.RigType==Enum.HumanoidRigType.R15 then
return true
end
end

function toClipboard(e)
if everyClipboard then
everyClipboard(tostring(e))
notify("Clipboard","Copied to clipboard")
else
notify("Clipboard","Your exploit doesn't have the ability to use the clipboard")
end
end

function chatMessage(e)
e=tostring(e)
if not isLegacyChat then
TextChatService.TextChannels.RBXGeneral:SendAsync(e)
else
ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(e,"All")
end
end

function getHierarchy(e)
local f
local g

if string.find(e.Name,' ')then
f='["'..e.Name..'"]'
g=false
else
f=e.Name
g=true
end

local h=e
local i=e
local j=''

if h.Parent~=game then
repeat
h=h.Parent
j=h.ClassName
until h.Parent==game
end

if i.Parent~=h then
repeat
i=i.Parent
if string.find(tostring(i),' ')then
if g then
f='["'..i.Name..'"].'..f
else
f='["'..i.Name..'"]'..f
end
g=false
else
if g then
f=i.Name..'.'..f
else
f=i.Name..''..f
end
g=true
end
until i.Parent==h
elseif string.find(tostring(i),' ')then
f='["'..i.Name..'"]'
g=false
end

if g then
return'game:GetService("'..j..'").'..f
else
return'game:GetService("'..j..'")'..f
end
end

AllWaypoints={}

local e=false
function writefileCooldown(f,g)
task.spawn(function()
if not e then
e=true
c(f,g,true)
else
repeat wait()until e==false
writefileCooldown(f,g)
end
wait(3)
e=false
end)
end

function dragGUI(f)
task.spawn(function()
local g
local h
local i=Vector3.new(0,0,0)
local j
local function update(k)
local l=k.Position-i
local m=UDim2.new(j.X.Scale,j.X.Offset+l.X,j.Y.Scale,j.Y.Offset+l.Y)
TweenService:Create(f,TweenInfo.new(.20),{Position=m}):Play()
end
f.InputBegan:Connect(function(k)
if k.UserInputType==Enum.UserInputType.MouseButton1 or k.UserInputType==Enum.UserInputType.Touch then
g=true
i=k.Position
j=f.Position

k.Changed:Connect(function()
if k.UserInputState==Enum.UserInputState.End then
g=false
end
end)
end
end)
f.InputChanged:Connect(function(k)
if k.UserInputType==Enum.UserInputType.MouseMovement or k.UserInputType==Enum.UserInputType.Touch then
h=k
end
end)
UserInputService.InputChanged:Connect(function(k)
if k==h and g then
update(k)
end
end)
end)
end

dragGUI(logs)
dragGUI(KeybindEditor)
dragGUI(PluginEditor)
dragGUI(ToPartFrame)

eventEditor=(function()
local f={}

local function registerEvent(g,h)
f[g]={
commands={},
sets=h or{}
}
end

local g

local function fireEvent(h,...)
local i={...}
local j=f[h]
if j then
for k,l in pairs(j.commands)do
local m=true
for n,o in pairs(j.sets)do
local p=i[n]
local q=l[2][n]
local r=o.Type
if r=="Player"then
if q==0 then
m=m and(tostring(Players.LocalPlayer)==p)
elseif q~=1 then
m=m and table.find(getPlayer(q,Players.LocalPlayer),p)
end
elseif r=="String"then
if q~=0 then
m=m and string.find(p:lower(),q:lower())
end
elseif r=="Number"then
if q~=0 then
m=m and tonumber(p)<=tonumber(q)
end
end
if not m then break end
end

if m then
pcall(task.spawn(function()
local n=l[1]
for o,p in pairs(i)do
n=n:gsub("%$"..o,p)
end
wait(l[3]or 0)
execCmd(n)
end))
end
end
end
end

local h=create{
{1,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderSizePixel=0,Name="EventEditor",Position=UDim2.new(0.5,-175,0,-500),Size=UDim2.new(0,350,0,20),ZIndex=10,}},
{2,"Frame",{BackgroundColor3=currentShade2,BorderSizePixel=0,Name="TopBar",Parent={1},Size=UDim2.new(1,0,0,20),ZIndex=10,}},
{3,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={2},Position=UDim2.new(0,0,0,0),Size=UDim2.new(1,0,0.95,0),Text="Event Editor",TextColor3=Color3.new(1,1,1),TextSize=14,TextXAlignment=Enum.TextXAlignment.Center,ZIndex=10,}},
{4,"TextButton",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Close",Parent={2},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
{5,"ImageLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Image="rbxassetid://5054663650",Parent={4},Position=UDim2.new(0,5,0,5),Size=UDim2.new(0,10,0,10),ZIndex=10,}},
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
{53,"ImageLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Image="rbxassetid://1204397029",Parent={52},Position=UDim2.new(0,2,0,2),Size=UDim2.new(0,16,0,16),ZIndex=10,}},
}
h.Name=randomString()
local i=h:WaitForChild"Content"
local j=i:WaitForChild"List"
local k=j:WaitForChild"Holder"
local l=i:WaitForChild"CmdTemplate"
local m=i:WaitForChild"EventTemplate"
local n=i:WaitForChild"Settings":WaitForChild"Slider"
local o=i.Settings:WaitForChild"Templates"
local p=n:WaitForChild"List":WaitForChild"Holder"
table.insert(shade2,h.TopBar)table.insert(shade1,i)table.insert(shade2,m)
table.insert(text1,m.EventName)table.insert(shade1,m.Cmds.Add)table.insert(shade1,l)
table.insert(text1,l.TextBox)table.insert(shade2,l.Delete)table.insert(shade2,l.Settings)
table.insert(scroll,i.List)table.insert(shade1,n)table.insert(shade2,n.Line)
table.insert(shade2,n.Close)table.insert(scroll,n.List)table.insert(shade2,o.DelayEditor.Secs)
table.insert(text1,o.DelayEditor.Secs)table.insert(text1,o.DelayEditor.Secs.Label)table.insert(text1,o.Players.Title)
table.insert(shade3,o.Players.CustomButton)table.insert(shade2,o.Players.Custom)table.insert(text1,o.Players.Custom)
table.insert(shade3,o.Players.Any.Button)table.insert(shade3,o.Players.Me.Button)table.insert(text1,o.Players.Any)
table.insert(text1,o.Players.Me)table.insert(text1,o.Strings.Title)table.insert(text1,o.Strings.Any)
table.insert(shade3,o.Strings.Any.Button)table.insert(shade3,o.Strings.CustomButton)table.insert(text1,o.Strings.Custom)
table.insert(shade2,o.Strings.Custom)
table.insert(text1,o.Players.Me)table.insert(text1,o.Numbers.Title)table.insert(text1,o.Numbers.Any)
table.insert(shade3,o.Numbers.Any.Button)table.insert(shade3,o.Numbers.CustomButton)table.insert(text1,o.Numbers.Custom)
table.insert(shade2,o.Numbers.Custom)

local q=TweenInfo.new(0.25,Enum.EasingStyle.Quart,Enum.EasingDirection.Out)

local r

n:WaitForChild"Close".MouseButton1Click:Connect(function()
n:TweenPosition(UDim2.new(0,-150,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
end)

local function resizeList()
local s=0

for t,u in pairs(k:GetChildren())do
if u.Name=="EventTemplate"then
s=s+20
if u.Expand.Rotation==90 then
s=s+20*(1+(#f[u.EventName:GetAttribute"RawName"].commands or 0))
end
end
end

TweenService:Create(j,q,{CanvasSize=UDim2.new(0,0,0,s)}):Play()

if s>j.AbsoluteSize.Y then
k.Size=UDim2.new(1,-8,1,0)
else
k.Size=UDim2.new(1,0,1,0)
end
end

local function resizeSettingsList()
local s=0

for t,u in pairs(p:GetChildren())do
if u:IsA"Frame"then
s=s+u.AbsoluteSize.Y
end
end

p.Parent.CanvasSize=UDim2.new(0,0,0,s)

if s>p.Parent.AbsoluteSize.Y then
p.Size=UDim2.new(1,-8,1,0)
else
p.Size=UDim2.new(1,0,1,0)
end
end

local function setupCheckbox(s,t)
local u=s.On.BackgroundTransparency==0

local function update()
s.On.BackgroundTransparency=(u and 0 or 1)
end

s.On.MouseButton1Click:Connect(function()
u=not u
update()
if t then t(u)end
end)

return{
Toggle=function(v)u=not u update()if not v and t then t(u)end end,
Enable=function(v)if u then return end u=true update()if not v and t then t(u)end end,
Disable=function(v)if not u then return end u=false update()if not v and t then t(u)end end,
IsEnabled=function()return u end
}
end

local function openSettingsEditor(s,t)
r=t

for u,v in pairs(p:GetChildren())do if v:IsA"Frame"then v:Destroy()end end

local u=o.DelayEditor:Clone()
u.Secs.FocusLost:Connect(function()
t[3]=tonumber(u.Secs.Text)or 0
u.Secs.Text=t[3]
if g then g()end
end)
u.Secs.Text=t[3]
u.Visible=true
table.insert(shade2,u.Secs)
table.insert(text1,u.Secs)
table.insert(text1,u.Secs.Label)
u.Parent=p

for v,w in pairs(s.sets)do
if w.Type=="Player"then
local x=o.Players:Clone()
x.Title.Text=w.Name or"Player"

local y,z,A

y=setupCheckbox(x.Me.Button,function(B)
if not B then return end
z.Disable()
A.Disable()
t[2][v]=0
if g then g()end
end)

z=setupCheckbox(x.Any.Button,function(B)
if not B then return end
y.Disable()
A.Disable()
t[2][v]=1
if g then g()end
end)

local B=x.Custom
A=setupCheckbox(x.CustomButton,function(C)
if not C then return end
y.Disable()
z.Disable()
t[2][v]=B.Text
if g then g()end
end)

ViewportTextBox.convert(B)
B.FocusLost:Connect(function()
if A:IsEnabled()then
t[2][v]=B.Text
if g then g()end
end
end)

local C=t[2][v]
if C==0 then
y:Enable()
elseif C==1 then
z:Enable()
else
A:Enable()
B.Text=C
end

x.Visible=true
table.insert(text1,x.Title)
table.insert(shade3,x.CustomButton)
table.insert(shade3,x.Any.Button)
table.insert(shade3,x.Me.Button)
table.insert(text1,x.Any)
table.insert(text1,x.Me)
x.Parent=p
elseif w.Type=="String"then
local x=o.Strings:Clone()
x.Title.Text=w.Name or"String"

local y,z

y=setupCheckbox(x.Any.Button,function(A)
if not A then return end
z.Disable()
t[2][v]=0
if g then g()end
end)

local A=x.Custom
z=setupCheckbox(x.CustomButton,function(B)
if not B then return end
y.Disable()
t[2][v]=A.Text
if g then g()end
end)

ViewportTextBox.convert(A)
A.FocusLost:Connect(function()
if z:IsEnabled()then
t[2][v]=A.Text
if g then g()end
end
end)

local B=t[2][v]
if B==0 then
y:Enable()
else
z:Enable()
A.Text=B
end

x.Visible=true
table.insert(text1,x.Title)
table.insert(text1,x.Any)
table.insert(shade3,x.Any.Button)
table.insert(shade3,x.CustomButton)
x.Parent=p
elseif w.Type=="Number"then
local x=o.Numbers:Clone()
x.Title.Text=w.Name or"Number"

local y,z

y=setupCheckbox(x.Any.Button,function(A)
if not A then return end
z.Disable()
t[2][v]=0
if g then g()end
end)

local A=x.Custom
z=setupCheckbox(x.CustomButton,function(B)
if not B then return end
y.Disable()
t[2][v]=A.Text
if g then g()end
end)

ViewportTextBox.convert(A)
A.FocusLost:Connect(function()
t[2][v]=tonumber(A.Text)or 0
A.Text=t[2][v]
if z:IsEnabled()then
if g then g()end
end
end)

local B=t[2][v]
if B==0 then
y:Enable()
else
z:Enable()
A.Text=B
end

x.Visible=true
table.insert(text1,x.Title)
table.insert(text1,x.Any)
table.insert(shade3,x.Any.Button)
table.insert(shade3,x.CustomButton)
x.Parent=p
end
end
resizeSettingsList()
n:TweenPosition(UDim2.new(0,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
end

local function defaultSettings(s)
local t={}

for u,v in pairs(s.sets)do
if v.Type=="Player"then
t[#t+1]=v.Default or 0
elseif v.Type=="String"then
t[#t+1]=v.Default or 0
elseif v.Type=="Number"then
t[#t+1]=v.Default or 0
end
end

return t
end

local function refreshList()
for s,t in pairs(k:GetChildren())do if t:IsA"Frame"then t:Destroy()end end

for s,t in pairs(f)do
local u=m:Clone()
u.EventName.Text=s
u.Visible=true
u.EventName:SetAttribute("RawName",s)
table.insert(shade2,u)
table.insert(text1,u.EventName)
table.insert(shade1,u.Cmds.Add)

local v=false
u.Expand.MouseButton1Down:Connect(function()
v=not v
u:TweenSize(UDim2.new(1,0,0,20+(v and 20*#u.Cmds.Holder:GetChildren()or 0)),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
u.Expand.Rotation=v and 90 or 0
resizeList()
end)

local function refreshCommands()
for w,x in pairs(u.Cmds.Holder:GetChildren())do
if x.Name=="CmdTemplate"then
x:Destroy()
end
end

u.EventName.Text=s..(#t.commands>0 and" ("..#t.commands..")"or"")

for w,x in pairs(t.commands)do
local y=l:Clone()
local z=y.TextBox
ViewportTextBox.convert(z)
z.Text=x[1]
y.Visible=true
table.insert(shade1,y)
table.insert(shade2,y.Delete)
table.insert(shade2,y.Settings)

z.FocusLost:Connect(function()
t.commands[w]={z.Text,x[2],x[3]}
if g then g()end
end)

y.Settings.MouseButton1Click:Connect(function()
openSettingsEditor(t,x)
end)

y.Delete.MouseButton1Click:Connect(function()
table.remove(t.commands,w)
refreshCommands()
resizeList()

if r==x then
n:TweenPosition(UDim2.new(0,-150,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
end
if g then g()end
end)

y.Parent=u.Cmds.Holder
end

u:TweenSize(UDim2.new(1,0,0,20+(v and 20*#u.Cmds.Holder:GetChildren()or 0)),Enum.EasingDirection.Out,Enum.EasingStyle.Quart,0.25,true)
end

local w=u.Cmds.Add.TextBox
ViewportTextBox.convert(w)
w.FocusLost:Connect(function(x)
if x then
t.commands[#t.commands+1]={w.Text,defaultSettings(t),0}
w.Text=""

refreshCommands()
resizeList()
if g then g()end
end
end)



u.Parent=k

refreshCommands()
end

resizeList()
end

local function saveData()
local s={}
for t,u in pairs(f)do
s[t]=u.commands
end
return HttpService:JSONEncode(s)
end

local function loadData(s)
local t=HttpService:JSONDecode(s)
for u,v in pairs(t)do
if f[u]then
f[u].commands=v
end
end
end

local function addCmd(s,t)
table.insert(f[s].commands,t)
end

local function setOnEdited(s)
if type(s)=="function"then
g=s
end
end

h.TopBar.Close.MouseButton1Click:Connect(function()
h:TweenPosition(UDim2.new(0.5,-175,0,-500),"InOut","Quart",0.5,true,nil)
end)
dragGUI(h)
h.Parent=ScaledHolder

return{
RegisterEvent=registerEvent,
FireEvent=fireEvent,
Refresh=refreshList,
SaveData=saveData,
LoadData=loadData,
AddCmd=addCmd,
Frame=h,
SetOnEdited=setOnEdited
}
end)()

reference=(function()
local f=create{
{1,"Frame",{BackgroundColor3=Color3.new(0.14117647707462,0.14117647707462,0.14509804546833),BackgroundTransparency=1,BorderColor3=Color3.new(0.15686275064945,0.15686275064945,0.15686275064945),BorderSizePixel=0,Name="Main",Position=UDim2.new(0.5,-250,0,-500),Size=UDim2.new(0,500,0,20),ZIndex=10,}},
{2,"Frame",{BackgroundColor3=Color3.new(0.1803921610117,0.1803921610117,0.1843137294054),BorderSizePixel=0,Name="TopBar",Parent={1},Size=UDim2.new(1,0,0,20),ZIndex=10,}},
{3,"TextLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Title",Parent={2},Size=UDim2.new(1,0,0.94999998807907,0),Text="Reference",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
{4,"TextButton",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Font=3,Name="Close",Parent={2},Position=UDim2.new(1,-20,0,0),Size=UDim2.new(0,20,0,20),Text="",TextColor3=Color3.new(1,1,1),TextSize=14,ZIndex=10,}},
{5,"ImageLabel",{BackgroundColor3=Color3.new(1,1,1),BackgroundTransparency=1,Image="rbxassetid://5054663650",Parent={4},Position=UDim2.new(0,5,0,5),Size=UDim2.new(0,10,0,10),ZIndex=10,}},
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
for g,h in pairs(f.Content.List:GetDescendants())do
if h:IsA"TextLabel"then
table.insert(text1,h)
end
end
table.insert(scroll,f.Content.List)
table.insert(shade1,f.Content)
table.insert(shade2,f.TopBar)
f.Name=randomString()
f.TopBar.Close.MouseButton1Click:Connect(function()
f:TweenPosition(UDim2.new(0.5,-250,0,-500),"InOut","Quart",0.5,true,nil)
end)
local g=f:FindFirstChild("InviteButton",true)
local h
g.MouseButton1Click:Connect(function()
if everyClipboard then
toClipboard"https://dsc.gg/beignet"
g.Text="Copied"
else
g.Text="No Clipboard Function, type out the link"
end
local i=tick()
h=i
wait(2)
if h~=i then return end
g.Text="Copy Discord Invite Link (https://dsc.gg/beignet)"
end)
dragGUI(f)
f.Parent=ScaledHolder

ReferenceButton.MouseButton1Click:Connect(function()
f:TweenPosition(UDim2.new(0.5,-250,0.5,-150),"InOut","Quart",0.5,true,nil)
end)
end)()

currentShade1=Color3.fromRGB(36,36,37)
currentShade2=Color3.fromRGB(46,46,47)
currentShade3=Color3.fromRGB(78,78,79)
currentText1=Color3.new(1,1,1)
currentText2=Color3.new(0,0,0)
currentScroll=Color3.fromRGB(78,78,79)

defaultGuiScale=b and 0.9 or 1
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

createPopup=function(f)
local g=Instance.new"Frame"
local h=Instance.new"Frame"
local i=Instance.new"TextLabel"
local j=Instance.new"Frame"
local k=Instance.new"TextLabel"
local l=Instance.new"TextButton"
local m=Instance.new"ImageLabel"

g.Name=randomString()
g.Parent=ScaledHolder
g.Active=true
g.BackgroundTransparency=1
g.Position=UDim2.new(0.5,-180,0,290)
g.Size=UDim2.new(0,360,0,20)
g.ZIndex=10

h.Name="background"
h.Parent=g
h.Active=true
h.BackgroundColor3=Color3.fromRGB(36,36,37)
h.BorderSizePixel=0
h.Position=UDim2.new(0,0,0,20)
h.Size=UDim2.new(0,360,0,205)
h.ZIndex=10

i.Name="Directions"
i.Parent=h
i.BackgroundTransparency=1
i.BorderSizePixel=0
i.Position=UDim2.new(0,10,0,10)
i.Size=UDim2.new(0,340,0,185)
i.Font=Enum.Font.SourceSans
i.TextSize=14
i.Text=f
i.TextColor3=Color3.new(1,1,1)
i.TextWrapped=true
i.TextXAlignment=Enum.TextXAlignment.Left
i.TextYAlignment=Enum.TextYAlignment.Top
i.ZIndex=10

j.Name="shadow"
j.Parent=g
j.BackgroundColor3=Color3.fromRGB(46,46,47)
j.BorderSizePixel=0
j.Size=UDim2.new(0,360,0,20)
j.ZIndex=10

k.Name="PopupText"
k.Parent=j
k.BackgroundTransparency=1
k.Size=UDim2.new(1,0,0.95,0)
k.ZIndex=10
k.Font=Enum.Font.SourceSans
k.TextSize=14
k.Text="File Error"
k.TextColor3=Color3.new(1,1,1)
k.TextWrapped=true

l.Name="Exit"
l.Parent=j
l.BackgroundTransparency=1
l.Position=UDim2.new(1,-20,0,0)
l.Size=UDim2.new(0,20,0,20)
l.Text=""
l.ZIndex=10

m.Parent=l
m.BackgroundColor3=Color3.new(1,1,1)
m.BackgroundTransparency=1
m.Position=UDim2.new(0,5,0,5)
m.Size=UDim2.new(0,10,0,10)
m.Image="rbxassetid://5054663650"
m.ZIndex=10

l.MouseButton1Click:Connect(function()
g:Destroy()
end)
end

local f
local g=0
function saves()
if writefileExploit()and readfileExploit()and g<10 then
local h,i=d("IY_FE.iy",true)
if h then
if i~=nil and tostring(i):gsub("%s","")~=""then
local j,k=pcall(function()
local j=HttpService:JSONDecode(i)
if vtype(j.prefix,"string")then prefix=j.prefix else prefix=';'end
if vtype(j.StayOpen,"boolean")then StayOpen=j.StayOpen else StayOpen=false end
if vtype(j.guiScale,"number")then guiScale=j.guiScale else guiScale=defaultGuiScale end
if vtype(j.keepIY,"boolean")then KeepInfYield=j.keepIY else KeepInfYield=true end
if vtype(j.espTransparency,"number")then espTransparency=j.espTransparency else espTransparency=0.3 end
if vtype(j.logsEnabled,"boolean")then logsEnabled=j.logsEnabled else logsEnabled=false end
if vtype(j.jLogsEnabled,"boolean")then jLogsEnabled=j.jLogsEnabled else jLogsEnabled=false end
if vtype(j.logsWebhook,"string")then logsWebhook=j.logsWebhook else logsWebhook=nil end
if vtype(j.aliases,"table")then aliases=j.aliases else aliases={}end
if vtype(j.binds,"table")then binds=j.binds else binds={}end
if vtype(j.spawnCmds,"table")then spawnCmds=j.spawnCmds end
if vtype(j.WayPoints,"table")then AllWaypoints=j.WayPoints else WayPoints={}AllWaypoints={}end
if vtype(j.PluginsTable,"table")then PluginsTable=j.PluginsTable else PluginsTable={}end
if vtype(j.currentShade1,"table")then currentShade1=Color3.new(j.currentShade1[1],j.currentShade1[2],j.currentShade1[3])end
if vtype(j.currentShade2,"table")then currentShade2=Color3.new(j.currentShade2[1],j.currentShade2[2],j.currentShade2[3])end
if vtype(j.currentShade3,"table")then currentShade3=Color3.new(j.currentShade3[1],j.currentShade3[2],j.currentShade3[3])end
if vtype(j.currentText1,"table")then currentText1=Color3.new(j.currentText1[1],j.currentText1[2],j.currentText1[3])end
if vtype(j.currentText2,"table")then currentText2=Color3.new(j.currentText2[1],j.currentText2[2],j.currentText2[3])end
if vtype(j.currentScroll,"table")then currentScroll=Color3.new(j.currentScroll[1],j.currentScroll[2],j.currentScroll[3])end
if vtype(j.eventBinds,"string")then f=j.eventBinds end
end)
if not j then
g=g+1
warn("Save Json Error:",k)
warn"Overwriting Save File"
c("IY_FE.iy",defaults,true)
wait()
saves()
end
else
c("IY_FE.iy",defaults,true)
wait()
local j,k=d("IY_FE.iy",true)
if j and k~=nil and tostring(k):gsub("%s","")~=""then
saves()
else
nosaves=true
useFactorySettings()
createPopup"There was a problem writing a save file to your PC.\n\nPlease contact the developer/support team for your exploit and tell them writefile/readfile is not working.\n\nYour settings, keybinds, waypoints, and aliases will not save if you continue.\n\nThings to try:\n> Make sure a 'workspace' folder is located in the same folder as your exploit\n> If your exploit is inside of a zip/rar file, extract it.\n> Rejoin the game and try again or restart your PC and try again."
end
end
else
c("IY_FE.iy",defaults,true)
wait()
local j,k=d("IY_FE.iy",true)
if j and k~=nil and tostring(k):gsub("%s","")~=""then
saves()
else
nosaves=true
useFactorySettings()
createPopup"There was a problem writing a save file to your PC.\n\nPlease contact the developer/support team for your exploit and tell them writefile/readfile is not working.\n\nYour settings, keybinds, waypoints, and aliases will not save if you continue.\n\nThings to try:\n> Make sure a 'workspace' folder is located in the same folder as your exploit\n> If your exploit is inside of a zip/rar file, extract it.\n> Rejoin the game and try again or restart your PC and try again."
end
end
else
if g>=10 then
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
local h={
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
writefileCooldown("IY_FE.iy",HttpService:JSONEncode(h))
end
end

eventEditor.SetOnEdited(updatesaves)

pWayPoints={}
WayPoints={}

if#AllWaypoints>0 then
for h=1,#AllWaypoints do
if not AllWaypoints[h].GAME or AllWaypoints[h].GAME==PlaceId then
WayPoints[#WayPoints+1]={NAME=AllWaypoints[h].NAME,COORD={AllWaypoints[h].COORD[1],AllWaypoints[h].COORD[2],AllWaypoints[h].COORD[3]},GAME=AllWaypoints[h].GAME}
end
end
end

if type(binds)~="table"then binds={}end

function Time()
local h=math.floor((tick()%86400)/3600)
local i=math.floor((tick()%3600)/60)
local j=math.floor(tick()%60)
local k=h>11 and'PM'or'AM'
h=(h%12==0 and 12 or h%12)
h=h<10 and'0'..h or h
i=i<10 and'0'..i or i
j=j<10 and'0'..j or j
return h..':'..i..':'..j..' '..k
end

PrefixBox.Text=prefix
local h=false
local i=false

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
local j=0
function notify(k,l,m)
task.spawn(function()
local n=j+1
local o=false
j=j+1
if pinNotification then pinNotification:Disconnect()end
pinNotification=PinButton.MouseButton1Click:Connect(function()
task.spawn(function()
pinNotification:Disconnect()
o=true
Title_2.BackgroundTransparency=1
wait(0.5)
Title_2.BackgroundTransparency=0
end)
end)
Notification:TweenPosition(UDim2.new(1,Notification.Position.X.Offset,1,0),"InOut","Quart",0.5,true,nil)
wait(0.6)
local p=false
if l then
Title_2.Text=k
Text_2.Text=l
else
Title_2.Text='Notification'
Text_2.Text=k
end
Notification:TweenPosition(UDim2.new(1,Notification.Position.X.Offset,1,-100),"InOut","Quart",0.5,true,nil)
CloseButton.MouseButton1Click:Connect(function()
Notification:TweenPosition(UDim2.new(1,Notification.Position.X.Offset,1,0),"InOut","Quart",0.5,true,nil)
p=true
pinNotification:Disconnect()
end)
if m and isNumber(m)then
wait(m)
else
wait(10)
end
if n==j then
if p==false and o==false then
pinNotification:Disconnect()
Notification:TweenPosition(UDim2.new(1,Notification.Position.X.Offset,1,0),"InOut","Quart",0.5,true,nil)
end
j=0
end
end)
end

local k
local l
local m=1
function CreateLabel(n,o)
if k==n..o then
m=m+1
l.Text=Time()..' - ['..n..']: '..o..' (x'..m..')'
else
if m>1 then m=1 end
if#scroll_2:GetChildren()>=2546 then
scroll_2:ClearAllChildren()
end
local p=0
for q,r in pairs(scroll_2:GetChildren())do
if r then
p=r.Size.Y.Offset+p
end
if not r then
p=0
end
end
local q=Instance.new'TextLabel'
k=n..o
l=q
q.Name=n
q.Parent=scroll_2
q.ZIndex=10
q.Text=Time().." - ["..n.."]: "..o
q.Size=UDim2.new(0,322,0,84)
q.BackgroundTransparency=1
q.BorderSizePixel=0
q.Font="SourceSans"
q.Position=UDim2.new(-1,0,0,p)
q.TextTransparency=1
q.TextScaled=false
q.TextSize=14
q.TextWrapped=true
q.TextXAlignment="Left"
q.TextYAlignment="Top"
q.TextColor3=currentText1
q.Size=UDim2.new(0,322,0,q.TextBounds.Y)
table.insert(text1,q)
scroll_2.CanvasSize=UDim2.new(0,0,0,p+q.TextBounds.Y)
scroll_2.CanvasPosition=Vector2.new(0,scroll_2.CanvasPosition.Y+q.TextBounds.Y)
q:TweenPosition(UDim2.new(0,3,0,p),'In','Quint',0.5)
TweenService:Create(q,TweenInfo.new(1.25,Enum.EasingStyle.Linear),{TextTransparency=0}):Play()
end
end

function CreateJoinLabel(n,o)
if#scroll_3:GetChildren()>=2546 then
scroll_3:ClearAllChildren()
end
local p=Instance.new"Frame"
local q=Instance.new"TextLabel"
local r=Instance.new"TextLabel"
local s=Instance.new"ImageLabel"
p.Name=randomString()
p.Parent=scroll_3
p.BackgroundColor3=Color3.new(1,1,1)
p.BackgroundTransparency=1
p.BorderColor3=Color3.new(0.105882,0.164706,0.207843)
p.Size=UDim2.new(1,0,0,50)
q.Name=randomString()
q.Parent=p
q.BackgroundTransparency=1
q.BorderSizePixel=0
q.Position=UDim2.new(0,45,0,0)
q.Size=UDim2.new(0,135,1,0)
q.ZIndex=10
q.Font=Enum.Font.SourceSans
q.FontSize=Enum.FontSize.Size14
q.Text="Username: "..n.Name.."\nJoined Server: "..Time()
q.TextColor3=Color3.new(1,1,1)
q.TextWrapped=true
q.TextXAlignment=Enum.TextXAlignment.Left
r.Name=randomString()
r.Parent=p
r.BackgroundTransparency=1
r.BorderSizePixel=0
r.Position=UDim2.new(0,185,0,0)
r.Size=UDim2.new(0,140,1,-5)
r.ZIndex=10
r.Font=Enum.Font.SourceSans
r.FontSize=Enum.FontSize.Size14
r.Text="User ID: "..o.."\nAccount Age: "..n.AccountAge.."\nJoined Roblox: Loading..."
r.TextColor3=Color3.new(1,1,1)
r.TextWrapped=true
r.TextXAlignment=Enum.TextXAlignment.Left
r.TextYAlignment=Enum.TextYAlignment.Center
s.Parent=p
s.BackgroundTransparency=1
s.BorderSizePixel=0
s.Size=UDim2.new(0,45,1,0)
s.Image=Players:GetUserThumbnailAsync(o,Enum.ThumbnailType.AvatarThumbnail,Enum.ThumbnailSize.Size420x420)
scroll_3.CanvasSize=UDim2.new(0,0,0,listlayout.AbsoluteContentSize.Y)
scroll_3.CanvasPosition=Vector2.new(0,scroll_2.CanvasPosition.Y+p.AbsoluteSize.Y)
wait()
local t=game:HttpGet("https://users.roblox.com/v1/users/"..o)
local u=HttpService:JSONDecode(t)
local v=u.created:sub(1,10)
local w=string.split(v,"-")
r.Text=string.gsub(r.Text,"Loading...",w[2].."/"..w[3].."/"..w[1])
end

IYMouse.KeyDown:Connect(function(n)
if(n==prefix)then
RunService.RenderStepped:Wait()
Cmdbar:CaptureFocus()
maximizeHolder()
end
end)

local n=0
Holder.MouseEnter:Connect(function()
n=0
maximizeHolder()
end)

Holder.MouseLeave:Connect(function()
if not Cmdbar:IsFocused()then
local o=tick()
n=o
wait(1)
if n~=o then return end
if not Cmdbar:IsFocused()then
minimizeHolder()
end
end
end)

function updateColors(o,p)
if p==shade1 then
for q,r in pairs(shade1)do
r.BackgroundColor3=o
end
currentShade1=o
elseif p==shade2 then
for q,r in pairs(shade2)do
r.BackgroundColor3=o
end
currentShade2=o
elseif p==shade3 then
for q,r in pairs(shade3)do
r.BackgroundColor3=o
end
currentShade3=o
elseif p==text1 then
for q,r in pairs(text1)do
r.TextColor3=o
if r:IsA"TextBox"then
r.PlaceholderColor3=o
end
end
currentText1=o
elseif p==text2 then
for q,r in pairs(text2)do
r.TextColor3=o
end
currentText2=o
elseif p==scroll then
for q,r in pairs(scroll)do
r.ScrollBarImageColor3=o
end
currentScroll=o
end
end

local o=false
ColorsButton.MouseButton1Click:Connect(function()
cache_currentShade1=currentShade1
cache_currentShade2=currentShade2
cache_currentShade3=currentShade3
cache_currentText1=currentText1
cache_currentText2=currentText2
cache_currentScroll=currentScroll
if not o then
o=true
picker=game:GetObjects"rbxassetid://4908465318"[1]
picker.Name=randomString()
picker.Parent=ScaledHolder

local p do
p={}

p.new=function()
local q=setmetatable({},{})

local r=picker.ColorPicker
local s=r.TopBar
local t=s.Exit
local u=r.Content
local v=u.ColorSpaceFrame.ColorSpace
local w=u.ColorStrip
local x=u.Preview
local y=u.BasicColors
local z=u.CustomColors
local A=u.Default
local B=u.Cancel
local C=u.Shade1
local D=u.Shade2
local E=u.Shade3
local F=u.Text1
local G=u.Text2
local H=u.Scroll

local I=v.Scope
local J=u.ArrowFrame.Arrow

local K=u.Hue.Input
local L=u.Sat.Input
local M=u.Val.Input

local N=u.Red.Input
local O=u.Green.Input
local P=u.Blue.Input

local Q=IYMouse

local R,S,T=0,0,1
local U,V,W=1,1,1
local X=Color3.new(0,0,0)

local Y={Color3.new(0,0,0),Color3.new(0.66666668653488,0,0),Color3.new(0,0.33333334326744,0),Color3.new(0.66666668653488,0.33333334326744,0),Color3.new(0,0.66666668653488,0),Color3.new(0.66666668653488,0.66666668653488,0),Color3.new(0,1,0),Color3.new(0.66666668653488,1,0),Color3.new(0,0,0.49803924560547),Color3.new(0.66666668653488,0,0.49803924560547),Color3.new(0,0.33333334326744,0.49803924560547),Color3.new(0.66666668653488,0.33333334326744,0.49803924560547),Color3.new(0,0.66666668653488,0.49803924560547),Color3.new(0.66666668653488,0.66666668653488,0.49803924560547),Color3.new(0,1,0.49803924560547),Color3.new(0.66666668653488,1,0.49803924560547),Color3.new(0,0,1),Color3.new(0.66666668653488,0,1),Color3.new(0,0.33333334326744,1),Color3.new(0.66666668653488,0.33333334326744,1),Color3.new(0,0.66666668653488,1),Color3.new(0.66666668653488,0.66666668653488,1),Color3.new(0,1,1),Color3.new(0.66666668653488,1,1),Color3.new(0.33333334326744,0,0),Color3.new(1,0,0),Color3.new(0.33333334326744,0.33333334326744,0),Color3.new(1,0.33333334326744,0),Color3.new(0.33333334326744,0.66666668653488,0),Color3.new(1,0.66666668653488,0),Color3.new(0.33333334326744,1,0),Color3.new(1,1,0),Color3.new(0.33333334326744,0,0.49803924560547),Color3.new(1,0,0.49803924560547),Color3.new(0.33333334326744,0.33333334326744,0.49803924560547),Color3.new(1,0.33333334326744,0.49803924560547),Color3.new(0.33333334326744,0.66666668653488,0.49803924560547),Color3.new(1,0.66666668653488,0.49803924560547),Color3.new(0.33333334326744,1,0.49803924560547),Color3.new(1,1,0.49803924560547),Color3.new(0.33333334326744,0,1),Color3.new(1,0,1),Color3.new(0.33333334326744,0.33333334326744,1),Color3.new(1,0.33333334326744,1),Color3.new(0.33333334326744,0.66666668653488,1),Color3.new(1,0.66666668653488,1),Color3.new(0.33333334326744,1,1),Color3.new(1,1,1)}
local Z={}

dragGUI(picker)

local function updateColor(_)
local aa,ab,ac=219-R*219,199-S*199,199-T*199
Color3.fromHSV(R,S,T)

if _==2 or not _ then
K.Text=tostring(math.ceil(359*R))
L.Text=tostring(math.ceil(255*S))
M.Text=tostring(math.floor(255*T))
end
if _==1 or not _ then
N.Text=tostring(math.floor(255*U))
O.Text=tostring(math.floor(255*V))
P.Text=tostring(math.floor(255*W))
end

X=Color3.new(U,V,W)

I.Position=UDim2.new(0,aa-9,0,ab-9)
w.ImageColor3=Color3.fromHSV(R,S,1)
J.Position=UDim2.new(0,-2,0,ac-4)
x.BackgroundColor3=X

q.Color=X
if q.Changed then q:Changed(X)end
end

local function colorSpaceInput()
local aa=Q.X-v.AbsolutePosition.X
local ab=Q.Y-v.AbsolutePosition.Y

if aa<0 then aa=0 elseif aa>219 then aa=219 end
if ab<0 then ab=0 elseif ab>199 then ab=199 end

R=(219-aa)/219
S=(199-ab)/199

local ac=Color3.fromHSV(R,S,T)
U,V,W=ac.r,ac.g,ac.b

updateColor()
end

local function colorStripInput()
local aa=Q.Y-w.AbsolutePosition.Y

if aa<0 then aa=0 elseif aa>199 then aa=199 end

T=(199-aa)/199

local ab=Color3.fromHSV(R,S,T)
U,V,W=ab.r,ab.g,ab.b

updateColor()
end

local function hookButtons(aa,ab)
aa.ArrowFrame.Up.InputBegan:Connect(function(ac)
if ac.UserInputType==Enum.UserInputType.MouseMovement then
aa.ArrowFrame.Up.BackgroundTransparency=0.5
elseif ac.UserInputType==Enum.UserInputType.MouseButton1 then


local _=tick()
local ad=true
local ae=tonumber(aa.Text)

if not ae then return end

releaseEvent=UserInputService.InputEnded:Connect(function(af)
if af.UserInputType~=Enum.UserInputType.MouseButton1 then return end
releaseEvent:Disconnect()
ad=false
end)

ae=ae+1
ab(ae)
while ad do
if tick()-_>0.3 then
ae=ae+1
ab(ae)
end
wait(0.1)
end
end
end)

aa.ArrowFrame.Up.InputEnded:Connect(function(ac)
if ac.UserInputType==Enum.UserInputType.MouseMovement then
aa.ArrowFrame.Up.BackgroundTransparency=1
end
end)

aa.ArrowFrame.Down.InputBegan:Connect(function(ac)
if ac.UserInputType==Enum.UserInputType.MouseMovement then
aa.ArrowFrame.Down.BackgroundTransparency=0.5
elseif ac.UserInputType==Enum.UserInputType.MouseButton1 then


local ad=tick()
local ae=true
local af=tonumber(aa.Text)

if not af then return end

releaseEvent=UserInputService.InputEnded:Connect(function(_)
if _.UserInputType~=Enum.UserInputType.MouseButton1 then return end
releaseEvent:Disconnect()
ae=false
end)

af=af-1
ab(af)
while ae do
if tick()-ad>0.3 then
af=af-1
ab(af)
end
wait(0.1)
end
end
end)

aa.ArrowFrame.Down.InputEnded:Connect(function(ac)
if ac.UserInputType==Enum.UserInputType.MouseMovement then
aa.ArrowFrame.Down.BackgroundTransparency=1
end
end)
end

v.InputBegan:Connect(function(aa)
if aa.UserInputType==Enum.UserInputType.MouseButton1 then
local ab,ac

ab=UserInputService.InputEnded:Connect(function(ad)
if ad.UserInputType~=Enum.UserInputType.MouseButton1 then return end
ab:Disconnect()
ac:Disconnect()
end)

ac=UserInputService.InputChanged:Connect(function(ad)
if ad.UserInputType==Enum.UserInputType.MouseMovement then
colorSpaceInput()
end
end)

colorSpaceInput()
end
end)

w.InputBegan:Connect(function(aa)
if aa.UserInputType==Enum.UserInputType.MouseButton1 then
local ab,ac

ab=UserInputService.InputEnded:Connect(function(ad)
if ad.UserInputType~=Enum.UserInputType.MouseButton1 then return end
ab:Disconnect()
ac:Disconnect()
end)

ac=UserInputService.InputChanged:Connect(function(ad)
if ad.UserInputType==Enum.UserInputType.MouseMovement then
colorStripInput()
end
end)

colorStripInput()
end
end)

local function updateHue(aa)
local ab=tonumber(aa)
if ab then
R=math.clamp(math.floor(ab),0,359)/359
local ac=Color3.fromHSV(R,S,T)
U,V,W=ac.r,ac.g,ac.b
K.Text=tostring(R*359)
updateColor(1)
end
end
K.FocusLost:Connect(function()updateHue(K.Text)end)hookButtons(K,updateHue)

local function updateSat(aa)
local ab=tonumber(aa)
if ab then
S=math.clamp(math.floor(ab),0,255)/255
local ac=Color3.fromHSV(R,S,T)
U,V,W=ac.r,ac.g,ac.b
L.Text=tostring(S*255)
updateColor(1)
end
end
L.FocusLost:Connect(function()updateSat(L.Text)end)hookButtons(L,updateSat)

local function updateVal(aa)
local ab=tonumber(aa)
if ab then
T=math.clamp(math.floor(ab),0,255)/255
local ac=Color3.fromHSV(R,S,T)
U,V,W=ac.r,ac.g,ac.b
M.Text=tostring(T*255)
updateColor(1)
end
end
M.FocusLost:Connect(function()updateVal(M.Text)end)hookButtons(M,updateVal)

local function updateRed(aa)
local ab=tonumber(aa)
if ab then
U=math.clamp(math.floor(ab),0,255)/255
local ac=Color3.new(U,V,W)
R,S,T=Color3.toHSV(ac)
N.Text=tostring(U*255)
updateColor(2)
end
end
N.FocusLost:Connect(function()updateRed(N.Text)end)hookButtons(N,updateRed)

local function updateGreen(aa)
local ab=tonumber(aa)
if ab then
V=math.clamp(math.floor(ab),0,255)/255
local ac=Color3.new(U,V,W)
R,S,T=Color3.toHSV(ac)
O.Text=tostring(V*255)
updateColor(2)
end
end
O.FocusLost:Connect(function()updateGreen(O.Text)end)hookButtons(O,updateGreen)

local function updateBlue(aa)
local ab=tonumber(aa)
if ab then
W=math.clamp(math.floor(ab),0,255)/255
local ac=Color3.new(U,V,W)
R,S,T=Color3.toHSV(ac)
P.Text=tostring(W*255)
updateColor(2)
end
end
P.FocusLost:Connect(function()updateBlue(P.Text)end)hookButtons(P,updateBlue)

local aa=Instance.new"TextButton"
aa.Name="Choice"
aa.Size=UDim2.new(0,25,0,18)
aa.BorderColor3=Color3.new(0.3764705882352941,0.3764705882352941,0.3764705882352941)
aa.Text=""
aa.AutoButtonColor=false
aa.ZIndex=10

local ab=0
local ac=0
for ad,ae in pairs(Y)do
local af=aa:Clone()
af.BackgroundColor3=ae
af.Position=UDim2.new(0,1+30*ac,0,21+23*ab)

af.MouseButton1Click:Connect(function()
U,V,W=ae.r,ae.g,ae.b
local _=Color3.new(U,V,W)
R,S,T=Color3.toHSV(_)
updateColor()
end)

af.Parent=y
ac=ac+1
if ac==6 then ab=ab+1 ac=0 end
end

ab=0
ac=0
for ad=1,12 do
local ae=Z[ad]or Color3.new(0,0,0)
local af=aa:Clone()
af.BackgroundColor3=ae
af.Position=UDim2.new(0,1+30*ac,0,20+23*ab)

af.MouseButton1Click:Connect(function()
local _=Z[ad]or Color3.new(0,0,0)
U,V,W=_.r,_.g,_.b
R,S,T=Color3.toHSV(_)
updateColor()
end)

af.MouseButton2Click:Connect(function()
Z[ad]=X
af.BackgroundColor3=X
end)

af.Parent=z
ac=ac+1
if ac==6 then ab=ab+1 ac=0 end
end

C.MouseButton1Click:Connect(function()if q.Confirm then q:Confirm(X,shade1)end end)
C.InputBegan:Connect(function(ad)if ad.UserInputType==Enum.UserInputType.MouseMovement then C.BackgroundTransparency=0.4 end end)
C.InputEnded:Connect(function(ad)if ad.UserInputType==Enum.UserInputType.MouseMovement then C.BackgroundTransparency=0 end end)

D.MouseButton1Click:Connect(function()if q.Confirm then q:Confirm(X,shade2)end end)
D.InputBegan:Connect(function(ad)if ad.UserInputType==Enum.UserInputType.MouseMovement then D.BackgroundTransparency=0.4 end end)
D.InputEnded:Connect(function(ad)if ad.UserInputType==Enum.UserInputType.MouseMovement then D.BackgroundTransparency=0 end end)

E.MouseButton1Click:Connect(function()if q.Confirm then q:Confirm(X,shade3)end end)
E.InputBegan:Connect(function(ad)if ad.UserInputType==Enum.UserInputType.MouseMovement then E.BackgroundTransparency=0.4 end end)
E.InputEnded:Connect(function(ad)if ad.UserInputType==Enum.UserInputType.MouseMovement then E.BackgroundTransparency=0 end end)

F.MouseButton1Click:Connect(function()if q.Confirm then q:Confirm(X,text1)end end)
F.InputBegan:Connect(function(ad)if ad.UserInputType==Enum.UserInputType.MouseMovement then F.BackgroundTransparency=0.4 end end)
F.InputEnded:Connect(function(ad)if ad.UserInputType==Enum.UserInputType.MouseMovement then F.BackgroundTransparency=0 end end)

G.MouseButton1Click:Connect(function()if q.Confirm then q:Confirm(X,text2)end end)
G.InputBegan:Connect(function(ad)if ad.UserInputType==Enum.UserInputType.MouseMovement then G.BackgroundTransparency=0.4 end end)
G.InputEnded:Connect(function(ad)if ad.UserInputType==Enum.UserInputType.MouseMovement then G.BackgroundTransparency=0 end end)

H.MouseButton1Click:Connect(function()if q.Confirm then q:Confirm(X,scroll)end end)
H.InputBegan:Connect(function(ad)if ad.UserInputType==Enum.UserInputType.MouseMovement then H.BackgroundTransparency=0.4 end end)
H.InputEnded:Connect(function(ad)if ad.UserInputType==Enum.UserInputType.MouseMovement then H.BackgroundTransparency=0 end end)

B.MouseButton1Click:Connect(function()if q.Cancel then q:Cancel()end end)
B.InputBegan:Connect(function(ad)if ad.UserInputType==Enum.UserInputType.MouseMovement then B.BackgroundTransparency=0.4 end end)
B.InputEnded:Connect(function(ad)if ad.UserInputType==Enum.UserInputType.MouseMovement then B.BackgroundTransparency=0 end end)

A.MouseButton1Click:Connect(function()if q.Default then q:Default()end end)
A.InputBegan:Connect(function(ad)if ad.UserInputType==Enum.UserInputType.MouseMovement then A.BackgroundTransparency=0.4 end end)
A.InputEnded:Connect(function(ad)if ad.UserInputType==Enum.UserInputType.MouseMovement then A.BackgroundTransparency=0 end end)

t.MouseButton1Click:Connect(function()
picker:TweenPosition(UDim2.new(0.5,-219,0,-500),"InOut","Quart",0.5,true,nil)
end)

updateColor()

q.SetColor=function(ad,ae)
U,V,W=ae.r,ae.g,ae.b
R,S,T=Color3.toHSV(ae)
updateColor()
end

return q
end
end

picker:TweenPosition(UDim2.new(0.5,-219,0,100),"InOut","Quart",0.5,true,nil)

local aa=p.new()
aa.Confirm=function(ab,ac,ad)updateColors(ac,ad)wait()updatesaves()end
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
if h==false then h=true
Settings:TweenPosition(UDim2.new(0,0,0,45),"InOut","Quart",0.5,true,nil)
CMDsF.Visible=false
else h=false
CMDsF.Visible=true
Settings:TweenPosition(UDim2.new(0,0,0,220),"InOut","Quart",0.5,true,nil)
end
end)

On.MouseButton1Click:Connect(function()
if i==false then
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

function sendChatWebhook(aa,ab)
if httprequest and vtype(logsWebhook,"string")then
local ac=HttpService:JSONEncode{
content=ab,
avatar_url="https://files.catbox.moe/i968v2.jpg",
username=formatUsername(aa),
allowed_mentions={parse={}}
}

httprequest{
Url=logsWebhook,
Method="POST",
Headers={["Content-Type"]="application/json"},
Body=ac
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
for ac,ad in pairs(scroll_2:GetChildren())do
ab=ab..'\n'..ad.Text
end
local ac=tostring(ab)
local ad=0
local function nameFile()
local ae
pcall(function()ae=d(aa..' Chat Logs ('..ad..').txt')end)
if ae then
ad=ad+1
nameFile()
else
writefileCooldown(aa..' Chat Logs ('..ad..').txt',ac)
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
local ad
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
ad=IYMouse.Button1Down:Connect(SelectPart)
end

Part.MouseButton1Click:Connect(function()
selectPart()
end)

Exit_4.MouseButton1Click:Connect(function()
ToPartFrame:TweenPosition(UDim2.new(0.5,-180,0,-500),"InOut","Quart",0.5,true,nil)
if ac then
ac:Disconnect()
end
if ad then
ad:Disconnect()
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
local ae=''
local function handleWpNames()
local af=false
for p,q in pairs(pWayPoints)do
if q.NAME:lower()==ab.Adornee.Name:lower()..ae then
af=true
end
end
if not af then
notify('Modified Waypoints',"Created waypoint: "..ab.Adornee.Name..ae)
pWayPoints[#pWayPoints+1]={NAME=ab.Adornee.Name..ae,COORD={ab.Adornee}}
else
if isNumber(ae)then
ae=ae+1
else
ae=1
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

function updateCamera(ae,af)
if af~=workspace then
CamMoved:Disconnect()
CameraChanged:Disconnect()
repeat wait()until workspace.CurrentCamera
CameraChanged=workspace.CurrentCamera:GetPropertyChangedSignal"ViewportSize":Connect(UpdateToViewport)
CamMoved=workspace.CurrentCamera.AncestryChanged:Connect(updateCamera)
end
end
CamMoved=workspace.CurrentCamera.AncestryChanged:Connect(updateCamera)

function dragMain(ae,af)
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
local w=UDim2.new(s.X.Scale,s.X.Offset+v.X,af.Position.Y.Scale,af.Position.Y.Offset)
TweenService:Create(af,TweenInfo.new(.20),{Position=w}):Play()
local x=UDim2.new(s.X.Scale,s.X.Offset+v.X+u,Notification.Position.Y.Scale,Notification.Position.Y.Offset)
TweenService:Create(Notification,TweenInfo.new(.20),{Position=x}):Play()
elseif s.X.Offset+v.X>-500 then
local w=UDim2.new(1,-250,af.Position.Y.Scale,af.Position.Y.Offset)
TweenService:Create(af,TweenInfo.new(.20),{Position=w}):Play()
elseif-CamViewport()>s.X.Offset+v.X then
af:TweenPosition(UDim2.new(1,-CamViewport(),af.Position.Y.Scale,af.Position.Y.Offset),"InOut","Quart",0.04,true,nil)
local w=UDim2.new(1,-CamViewport(),af.Position.Y.Scale,af.Position.Y.Offset)
TweenService:Create(af,TweenInfo.new(.20),{Position=w}):Play()
local x=UDim2.new(1,-CamViewport()+250,Notification.Position.Y.Scale,Notification.Position.Y.Offset)
TweenService:Create(Notification,TweenInfo.new(.20),{Position=x}):Play()
end
end
ae.InputBegan:Connect(function(t)
if t.UserInputType==Enum.UserInputType.MouseButton1 or t.UserInputType==Enum.UserInputType.Touch then
p=true
r=t.Position
s=af.Position

t.Changed:Connect(function()
if t.UserInputState==Enum.UserInputState.End then
p=false
end
end)
end
end)
ae.InputChanged:Connect(function(t)
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

Match=function(ae,af)
af=af:gsub("%W","%%%1")
return ae:lower():find(af:lower())and true
end

local ae=Vector2.new(0,0)
local af
IndexContents=function(p,q,r,s)
CMDsF.CanvasPosition=Vector2.new(0,0)

local t=0
local u=CMDsF
af=nil
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
if af==nil then
af=x.Text
end
else
x.Visible=false
end
else
x.Visible=true
if af==nil then
af=x.Text
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
q, r=pcall(function()p=PlayerGui:WaitForChild"Chat".Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar end)
if q then
local function chatboxFocused()
ae=CMDsF.CanvasPosition
end
local s=p.Focused:Connect(chatboxFocused)

local function Index()
if p.Text:lower():sub(1,1)==prefix then
if h==true then
wait(0.2)
CMDsF.Visible=true
Settings:TweenPosition(UDim2.new(0,0,0,220),"InOut","Quart",0.2,true,nil)
end
IndexContents(PlayerGui.Chat.Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar.Text:lower():sub(2),true)
else
minimizeHolder()
if h==true then
wait(0.2)
Settings:TweenPosition(UDim2.new(0,0,0,45),"InOut","Quart",0.2,true,nil)
CMDsF.Visible=false
end
end
end
local t=p:GetPropertyChangedSignal"Text":Connect(Index)

local function chatboxFocusLost(u)
if not u or p.Text:lower():sub(1,1)~=prefix then
IndexContents('',true)
end
CMDsF.CanvasPosition=ae
minimizeHolder()
end
local u=p.FocusLost:Connect(chatboxFocusLost)

PlayerGui:WaitForChild"Chat".Frame.ChatBarParentFrame.ChildAdded:Connect(function(v)
wait()
if v:FindFirstChild'BoxFrame'then
p=PlayerGui:WaitForChild"Chat".Frame.ChatBarParentFrame.Frame.BoxFrame.Frame.ChatBar
if s then s:Disconnect()end
s=p.Focused:Connect(chatboxFocused)
if t then t:Disconnect()end
t=p:GetPropertyChangedSignal"Text":Connect(Index)
if u then u:Disconnect()end
u=p.FocusLost:Connect(chatboxFocusLost)
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
CMDs[#CMDs+1]={NAME='togglekeepiy',DESC='Toggle keepiy'}
CMDs[#CMDs+1]={NAME='savegame / saveplace',DESC='Uses saveinstance to save the game'}
CMDs[#CMDs+1]={NAME='clearerror',DESC='Clears the annoying box and blur when a game kicks you'}
CMDs[#CMDs+1]={NAME='clientantikick / antikick (CLIENT)',DESC='Prevents localscripts from kicking you'}
CMDs[#CMDs+1]={NAME='clientantiteleport / antiteleport (CLIENT)',DESC='Prevents localscripts from teleporting you'}
CMDs[#CMDs+1]={NAME='allowrejoin / allowrj [true/false] (CLIENT)',DESC='Changes if antiteleport allows you to rejoin or not'}
CMDs[#CMDs+1]={NAME='cancelteleport / canceltp',DESC='Cancels teleports in progress'}
CMDs[#CMDs+1]={NAME='volume / vol [0-10]',DESC='Adjusts your game volume on a scale of 0 to 10'}
CMDs[#CMDs+1]={NAME='antilag / boostfps / lowgraphics',DESC='Lowers game quality to boost FPS'}
CMDs[#CMDs+1]={NAME='record / rec',DESC='Starts roblox recorder'}
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
CMDs[#CMDs+1]={NAME='qefly [true / false]',DESC='enables or disables the Q and E hotkeys for fly'}
CMDs[#CMDs+1]={NAME='vehiclenoclip / vnoclip',DESC='Turns off vehicle collision'}
CMDs[#CMDs+1]={NAME='vehicleclip / vclip / unvnoclip',DESC='Enables vehicle collision'}
CMDs[#CMDs+1]={NAME='float /  platform',DESC='Spawns a platform beneath you causing you to float'}
CMDs[#CMDs+1]={NAME='unfloat / noplatform',DESC='Removes the platform'}
CMDs[#CMDs+1]={NAME='swim',DESC='Allows you to swim in the air'}
CMDs[#CMDs+1]={NAME='unswim / noswim',DESC='Stops you from swimming everywhere'}
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
CMDs[#CMDs+1]={NAME='pulsetp / ptp [player] [seconds]',DESC='Teleports you to a player for a specified ammount of time'}
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
CMDs[#CMDs+1]={NAME='',DESC=''}
CMDs[#CMDs+1]={NAME='esp',DESC='View all players and their status'}
CMDs[#CMDs+1]={NAME='noesp / unesp',DESC='Removes esp'}
CMDs[#CMDs+1]={NAME='esptransparency [number]',DESC='Changes the transparency of esp related commands'}
CMDs[#CMDs+1]={NAME='partesp [part name]',DESC='Highlights a part'}
CMDs[#CMDs+1]={NAME='unpartesp / nopartesp [part name]',DESC='removes partesp'}
CMDs[#CMDs+1]={NAME='chams',DESC='ESP but without text in the way'}
CMDs[#CMDs+1]={NAME='nochams / unchams',DESC='Removes chams'}
CMDs[#CMDs+1]={NAME='locate [player]',DESC='View a single player and their status'}
CMDs[#CMDs+1]={NAME='unlocate / nolocate [player]',DESC='Removes locate'}
CMDs[#CMDs+1]={NAME='xray',DESC='Makes all parts in workspace transparent'}
CMDs[#CMDs+1]={NAME='unxray / noxray',DESC='Restores transparency'}
CMDs[#CMDs+1]={NAME='loopxray',DESC='Makes all parts in workspace transparent but looped'}
CMDs[#CMDs+1]={NAME='unloopunxray',DESC='Unloops xray'}
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
CMDs[#CMDs+1]={NAME='attach [player] (TOOL)',DESC='Attaches you to a player (YOU NEED A TOOL)'}
CMDs[#CMDs+1]={NAME='kill [player] (TOOL)',DESC='Kills a player (YOU NEED A TOOL)'}
CMDs[#CMDs+1]={NAME='fastkill [player] (TOOL)',DESC='Kills a player (less reliable) (YOU NEED A TOOL)'}
CMDs[#CMDs+1]={NAME='handlekill / hkill [player] (TOOL)',DESC='Kills a player using tool damage (YOU NEED A TOOL)'}
CMDs[#CMDs+1]={NAME='bring [player] (TOOL)',DESC='Brings a player (YOU NEED A TOOL)'}
CMDs[#CMDs+1]={NAME='fastbring [player] (TOOL)',DESC='Brings a player (less reliable) (YOU NEED A TOOL)'}
CMDs[#CMDs+1]={NAME='teleport / tp [player] [player] (TOOL)',DESC='Teleports a player to another player (YOU NEED A TOOL)'}
CMDs[#CMDs+1]={NAME='fastteleport / fasttp [player] [player] (TOOL)',DESC='Teleports a player to another player (less reliable) (YOU NEED A TOOL)'}
CMDs[#CMDs+1]={NAME='fling',DESC='Flings anyone you touch'}
CMDs[#CMDs+1]={NAME='unfling',DESC='Disables the fling command'}
CMDs[#CMDs+1]={NAME='flyfling [speed]',DESC='Basically the invisfling command but not invisible'}
CMDs[#CMDs+1]={NAME='unflyfling',DESC='Disables the flyfling command'}
CMDs[#CMDs+1]={NAME='walkfling',DESC='Basically fling but no spinning'}
CMDs[#CMDs+1]={NAME='unwalkfling / nowalkfling',DESC='Disables walkfling'}
CMDs[#CMDs+1]={NAME='invisfling',DESC='Enables invisible fling'}
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
CMDs[#CMDs+1]={NAME='permadeath',DESC='Makes you unable to die'}
CMDs[#CMDs+1]={NAME='invisible / invis',DESC='Makes you invisible to other players'}
CMDs[#CMDs+1]={NAME='visible / vis',DESC='Makes you visible to other players'}
CMDs[#CMDs+1]={NAME='toolinvisible / toolinvis / tinvis',DESC='Makes you invisible to other players and able to use tools'}
CMDs[#CMDs+1]={NAME='speed / ws / walkspeed [num]',DESC='Change your walkspeed'}
CMDs[#CMDs+1]={NAME='spoofspeed / spoofws [num]',DESC='Spoofs your WalkSpeed on the Client'}
CMDs[#CMDs+1]={NAME='loopspeed / loopws [num]',DESC='Loops your walkspeed'}
CMDs[#CMDs+1]={NAME='unloopspeed / unloopws',DESC='Turns off loopspeed'}
CMDs[#CMDs+1]={NAME='hipheight / hheight [num]',DESC='Adjusts hip height'}
CMDs[#CMDs+1]={NAME='jumppower / jpower / jp [num]',DESC='Change a players jump height'}
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
CMDs[#CMDs+1]={NAME='nobillboardgui / nobgui / noname',DESC='Removes billboard and surface guis from your players (i.e. name guis at cafes)'}
CMDs[#CMDs+1]={NAME='loopnobgui / loopnoname',DESC='Loop removes billboard and surface guis from your players (i.e. name guis at cafes)'}
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
CMDs[#CMDs+1]={NAME='animation / anim [ID] [speed]',DESC='Makes your character perform an animation (must be by roblox to replicate)'}
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
CMDs[#CMDs+1]={NAME='clickdelete',DESC='Go to settings>Keybinds>Add for clicktp'}
CMDs[#CMDs+1]={NAME='clickteleport',DESC='Go to settings>Keybinds>Add for click tp'}
CMDs[#CMDs+1]={NAME='mouseteleport / mousetp',DESC='Teleports your character to your mouse. This is recommended as a keybind'}
CMDs[#CMDs+1]={NAME='',DESC=''}
CMDs[#CMDs+1]={NAME='tools',DESC='Copies tools from ReplicatedStorage and Lighting'}
CMDs[#CMDs+1]={NAME='notools / removetools / deletetools',DESC='Removes tools from character and backpack'}
CMDs[#CMDs+1]={NAME='deleteselectedtool / dst',DESC='Removes any currently selected tools'}
CMDs[#CMDs+1]={NAME='grabtools',DESC='Automatically get tools that are dropped'}
CMDs[#CMDs+1]={NAME='ungrabtools / nograbtools',DESC='Disables grabtools'}
CMDs[#CMDs+1]={NAME='copytools [player] (CLIENT)',DESC='Copies a players tools'}
CMDs[#CMDs+1]={NAME='dupetools / clonetools [num]',DESC='Duplicates your inventory tools a set ammount of times'}
CMDs[#CMDs+1]={NAME='givetool / givetools',DESC='Gives all the tools you\'re holding to [player] using the attach method.'}
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
CMDs[#CMDs+1]={NAME='usetools [ammount] [delay]',DESC='Activates all tools in your backpack at the same time'}
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
CMDs[#CMDs+1]={NAME='unsuspendvc',DESC='Unsuspends you from voice chat'}
wait()

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
if not b and q.Visible and q.TextTransparency==0 then
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
task.wait(Players.RespawnTime-0.165)
end
end

function respawn(p)
if invisRunning then TurnVisible()end
permadeath(p)
local q=p.Character
local r=q:FindFirstChildWhichIsA"Humanoid"
if r then r:ChangeState(Enum.HumanoidStateType.Dead)end
if not replicatesignal then wait()end
q:ClearAllChildren()
local s=Instance.new"Model"
s.Parent=workspace
p.Character=s
wait()
p.Character=q
s:Destroy()
end

local p=false
function refresh(q)
p=true
local r=q.Character and q.Character:FindFirstChildOfClass("Humanoid",true)
local s=r and r.RootPart and r.RootPart.CFrame
local t=workspace.CurrentCamera.CFrame
respawn(q)
task.spawn(function()
q.CharacterAdded:Wait():WaitForChild"Humanoid".RootPart.CFrame,workspace.CurrentCamera.CFrame=s,wait()and t
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

formatUsername=function(y)
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
CMDsF.CanvasPosition=ae
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
if h==true then
wait(0.2)
Settings:TweenPosition(UDim2.new(0,0,0,45),"InOut","Quart",0.2,true,nil)
CMDsF.Visible=false
end
end
CMDsF.CanvasPosition=ae
end)

Cmdbar.Focused:Connect(function()
s=0
ae=CMDsF.CanvasPosition
if h==true then
wait(0.2)
CMDsF.Visible=true
Settings:TweenPosition(UDim2.new(0,0,0,220),"InOut","Quart",0.2,true,nil)
end
y=UserInputService.InputBegan:Connect(function(z,A)
if Cmdbar:IsFocused()then
if tabAllowed==true and z.KeyCode==Enum.KeyCode.Tab and af~=nil then
autoComplete(af)
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

function ESP(z)
task.spawn(function()
for A,B in pairs(COREGUI:GetChildren())do
if B.Name==z.Name..'_ESP'then
B:Destroy()
end
end
wait()
if z.Character and z.Name~=Players.LocalPlayer.Name and not COREGUI:FindFirstChild(z.Name..'_ESP')then
local A=Instance.new"Folder"
A.Name=z.Name..'_ESP'
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
F=z.CharacterAdded:Connect(function()
if ESPenabled then
D:Disconnect()
E:Disconnect()
A:Destroy()
repeat wait(1)until getRoot(z.Character)and z.Character:FindFirstChildOfClass"Humanoid"
ESP(z)
F:Disconnect()
else
E:Disconnect()
F:Disconnect()
end
end)
E=z:GetPropertyChangedSignal"TeamColor":Connect(function()
if ESPenabled then
D:Disconnect()
F:Disconnect()
A:Destroy()
repeat wait(1)until getRoot(z.Character)and z.Character:FindFirstChildOfClass"Humanoid"
ESP(z)
E:Disconnect()
else
E:Disconnect()
end
end)
local function espLoop()
if COREGUI:FindFirstChild(z.Name..'_ESP')then
if z.Character and getRoot(z.Character)and z.Character:FindFirstChildOfClass"Humanoid"and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character)and Players.LocalPlayer.Character:FindFirstChildOfClass"Humanoid"then
local G=math.floor((getRoot(Players.LocalPlayer.Character).Position-getRoot(z.Character).Position).magnitude)
C.Text='Name: '..z.Name..' | Health: '..round(z.Character:FindFirstChildOfClass'Humanoid'.Health,1)..' | Studs: '..G
end
else
E:Disconnect()
F:Disconnect()
D:Disconnect()
end
end
D=RunService.RenderStepped:Connect(espLoop)
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
pcall(function()D=d(C)end)
E=C
else
pcall(function()D=d(C..'.iy')end)
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
K.Image="rbxassetid://5054663650"
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
local ag=MarketplaceService:GetProductInfo(PlaceId)
_.name.Text="Place Name: "..ag.Name
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
toClipboard(ag.Name)
end)

repeat
V=Players:GetPlayers()
_.players.Text=#V.." Player(s)"
_.appearance.Text="Appearance: "..F.CharacterAppearanceId
local ah=math.floor(workspace.DistributedGameTime)
local ai=math.floor(workspace.DistributedGameTime/60)
local aj=math.floor(workspace.DistributedGameTime/60/60)
local ak=ah-(ai*60)
local al=ai-(aj*60)
if aj<1 then if al<1 then
_.Time.Text=ak.." Second(s)"else
_.Time.Text=al.." Minute(s), "..ak.." Second(s)"
end
else
_.Time.Text=aj.." Hour(s), "..al.." Minute(s), "..ak.." Second(s)"
end
wait(1)
until _.Parent==nil
end)
end)

addcmd('jobid',{},function(ag,aj)
local ak='Roblox.GameLauncher.joinGameInstance('..PlaceId..', "'..JobId..'")'
toClipboard(ak)
end)

addcmd('notifyjobid',{},function(ag,aj)
notify('JobId / PlaceId',JobId..' / '..PlaceId)
end)

addcmd('breakloops',{'break'},function(ag,aj)
u=tick()
end)

addcmd('gametp',{'gameteleport'},function(ag,aj)
TeleportService:Teleport(ag[1])
end)

addcmd("rejoin",{"rj"},function(ag,aj)
if#Players:GetPlayers()<=1 then
Players.LocalPlayer:Kick"\nRejoining..."
wait()
TeleportService:Teleport(PlaceId,Players.LocalPlayer)
else
TeleportService:TeleportToPlaceInstance(PlaceId,JobId,Players.LocalPlayer)
end
end)

addcmd("autorejoin",{"autorj"},function(ag,aj)
GuiService.ErrorMessageChanged:Connect(function()
execCmd"rejoin"
end)
notify("Auto Rejoin","Auto rejoin enabled")
end)

addcmd("serverhop",{"shop"},function(ag,aj)

if httprequest then
local ak={}
local al=httprequest{Url=string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true",PlaceId)}
local E=HttpService:JSONDecode(al.Body)

if E and E.data then
for F,G in next,E.data do
if type(G)=="table"and tonumber(G.playing)and tonumber(G.maxPlayers)and G.playing<G.maxPlayers and G.id~=JobId then
table.insert(ak,1,G.id)
end
end
end

if#ak>0 then
TeleportService:TeleportToPlaceInstance(PlaceId,ak[math.random(1,#ak)],Players.LocalPlayer)
else
return notify("Serverhop","Couldn't find a server.")
end
else
notify("Incompatible Exploit","Your exploit does not support this command (missing request)")
end
end)

addcmd("exit",{},function(ag,aj)
game:Shutdown()
end)

local ag
addcmd('noclip',{},function(aj,ak)
Clip=false
wait(0.1)
local function NoclipLoop()
if Clip==false and ak.Character~=nil then
for al,E in pairs(ak.Character:GetDescendants())do
if E:IsA"BasePart"and E.CanCollide==true and E.Name~=floatName then
E.CanCollide=false
end
end
end
end
ag=RunService.Stepped:Connect(NoclipLoop)
if aj[1]and aj[1]=='nonotify'then return end
notify('Noclip','Noclip Enabled')
end)

addcmd('clip',{'unnoclip'},function(aj,ak)
if ag then
ag:Disconnect()
end
Clip=true
if aj[1]and aj[1]=='nonotify'then return end
notify('Noclip','Noclip Disabled')
end)

addcmd('togglenoclip',{},function(aj,ak)
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
function sFLY(aj)
repeat wait()until Players.LocalPlayer and Players.LocalPlayer.Character and getRoot(Players.LocalPlayer.Character)and Players.LocalPlayer.Character:FindFirstChildOfClass"Humanoid"
repeat wait()until IYMouse
if flyKeyDown or flyKeyUp then flyKeyDown:Disconnect()flyKeyUp:Disconnect()end

local ak=getRoot(Players.LocalPlayer.Character)
local al={F=0,B=0,L=0,R=0,Q=0,E=0}
local E={F=0,B=0,L=0,R=0,Q=0,E=0}
local F=0

local function FLY()
FLYING=true
local G=Instance.new'BodyGyro'
local H=Instance.new'BodyVelocity'
G.P=9e4
G.Parent=ak
H.Parent=ak
G.maxTorque=Vector3.new(9e9,9e9,9e9)
G.cframe=ak.CFrame
H.velocity=Vector3.new(0,0,0)
H.maxForce=Vector3.new(9e9,9e9,9e9)
task.spawn(function()
repeat wait()
if not aj and Players.LocalPlayer.Character:FindFirstChildOfClass'Humanoid'then
Players.LocalPlayer.Character:FindFirstChildOfClass'Humanoid'.PlatformStand=true
end
if al.L+al.R~=0 or al.F+al.B~=0 or al.Q+al.E~=0 then
F=50
elseif not(al.L+al.R~=0 or al.F+al.B~=0 or al.Q+al.E~=0)and F~=0 then
F=0
end
if(al.L+al.R)~=0 or(al.F+al.B)~=0 or(al.Q+al.E)~=0 then
H.velocity=((workspace.CurrentCamera.CoordinateFrame.lookVector*(al.F+al.B))+((workspace.CurrentCamera.CoordinateFrame*CFrame.new(al.L+al.R,(al.F+al.B+al.Q+al.E)*0.2,0).p)-workspace.CurrentCamera.CoordinateFrame.p))*F
E={F=al.F,B=al.B,L=al.L,R=al.R}
elseif(al.L+al.R)==0 and(al.F+al.B)==0 and(al.Q+al.E)==0 and F~=0 then
H.velocity=((workspace.CurrentCamera.CoordinateFrame.lookVector*(E.F+E.B))+((workspace.CurrentCamera.CoordinateFrame*CFrame.new(E.L+E.R,(E.F+E.B+al.Q+al.E)*0.2,0).p)-workspace.CurrentCamera.CoordinateFrame.p))*F
else
H.velocity=Vector3.new(0,0,0)
end
G.cframe=workspace.CurrentCamera.CoordinateFrame
until not FLYING
al={F=0,B=0,L=0,R=0,Q=0,E=0}
E={F=0,B=0,L=0,R=0,Q=0,E=0}
F=0
G:Destroy()
H:Destroy()
if Players.LocalPlayer.Character:FindFirstChildOfClass'Humanoid'then
Players.LocalPlayer.Character:FindFirstChildOfClass'Humanoid'.PlatformStand=false
end
end)
end
flyKeyDown=IYMouse.KeyDown:Connect(function(G)
if G:lower()=='w'then
al.F=(aj and vehicleflyspeed or iyflyspeed)
elseif G:lower()=='s'then
al.B=-(aj and vehicleflyspeed or iyflyspeed)
elseif G:lower()=='a'then
al.L=-(aj and vehicleflyspeed or iyflyspeed)
elseif G:lower()=='d'then
al.R=(aj and vehicleflyspeed or iyflyspeed)
elseif QEfly and G:lower()=='e'then
al.Q=(aj and vehicleflyspeed or iyflyspeed)*2
elseif QEfly and G:lower()=='q'then
al.E=-(aj and vehicleflyspeed or iyflyspeed)*2
end
pcall(function()workspace.CurrentCamera.CameraType=Enum.CameraType.Track end)
end)
flyKeyUp=IYMouse.KeyUp:Connect(function(G)
if G:lower()=='w'then
al.F=0
elseif G:lower()=='s'then
al.B=0
elseif G:lower()=='a'then
al.L=0
elseif G:lower()=='d'then
al.R=0
elseif G:lower()=='e'then
al.Q=0
elseif G:lower()=='q'then
al.E=0
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

local aj=randomString()
local ak=randomString()
local al
local E

local F=function(F)
pcall(function()
FLYING=false
local G=getRoot(F.Character)
G:FindFirstChild(aj):Destroy()
G:FindFirstChild(ak):Destroy()
F.Character:FindFirstChildWhichIsA"Humanoid".PlatformStand=false
al:Disconnect()
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
O.Name=aj
O.Parent=I
O.MaxForce=L
O.Velocity=L

local P=Instance.new"BodyGyro"
P.Name=ak
P.Parent=I
P.MaxTorque=M
P.P=1000
P.D=50

al=G.CharacterAdded:Connect(function()
local Q=Instance.new"BodyVelocity"
Q.Name=aj
Q.Parent=I
Q.MaxForce=L
Q.Velocity=L

local R=Instance.new"BodyGyro"
R.Name=ak
R.Parent=I
R.MaxTorque=M
R.P=1000
R.D=50
end)

E=RunService.RenderStepped:Connect(function()
I=getRoot(G.Character)
J=workspace.CurrentCamera
if G.Character:FindFirstChildWhichIsA"Humanoid"and I and I:FindFirstChild(aj)and I:FindFirstChild(ak)then
local Q=G.Character:FindFirstChildWhichIsA"Humanoid"
local R=I:FindFirstChild(aj)
local S=I:FindFirstChild(ak)

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
if not b then
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
if not b then NOFLY()else F(I)end
end)

addcmd('vfly',{'vehiclefly'},function(H,I)
if not b then
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
if not b then NOFLY()else F(I)end
else
if not b then sFLY(true)else G(I,true)end
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
if not b then NOFLY()else F(I)end
else
if not b then sFLY()else G(I)end
end
end)

CFspeed=50
addcmd('cframefly',{'cfly'},function(H,I)

I.Character:FindFirstChildOfClass'Humanoid'.PlatformStand=true
local J=I.Character:WaitForChild"Head"
J.Anchored=true
if CFloop then CFloop:Disconnect()end
CFloop=RunService.Heartbeat:Connect(function(K)
local L=I.Character:FindFirstChildOfClass'Humanoid'.MoveDirection*(CFspeed*K)
local M=J.CFrame
local N=workspace.CurrentCamera.CFrame
local O=M:ToObjectSpace(N).Position
N=N*CFrame.new(-O.X,-O.Y,-O.Z+1)
local P=N.Position
local Q=M.Position

local R=CFrame.new(P,Vector3.new(Q.X,P.Y,Q.Z)):VectorToObjectSpace(L)
J.CFrame=CFrame.new(Q)*(N-P)*CFrame.new(R)
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
if h==false then h=true
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
for N,O in pairs(M:FindFirstChildWhichIsA"PlayerGui":GetDescendants())do
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
for O,P in pairs(N:FindFirstChildWhichIsA"PlayerGui":GetDescendants())do
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
local M=Players.LocalPlayer.PlayerGui:GetGuiObjectsAtPosition(IYMouse.X,IYMouse.Y)
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
i=true
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
i=false
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
R=hookmetamethod(game,"__index",function(T,U)
if T==Q and U:lower()=="kick"then
return error("Expected ':' not '.' calling member function Kick",2)
end
return R(T,U)
end)
S=hookmetamethod(game,"__namecall",function(T,...)
if T==Q and getnamecallmethod():lower()=="kick"then
return
end
return S(T,...)
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

addcmd('cancelteleport',{'canceltp'},function(O,P)
TeleportService:TeleportCancel()
end)

addcmd('volume',{'vol'},function(O,P)
local Q=O[1]/10
UserSettings():GetService"UserGameSettings".MasterVolume=Q
end)

addcmd('antilag',{'boostfps','lowgraphics'},function(O,P)
local Q=workspace:FindFirstChildOfClass'Terrain'
Q.WaterWaveSize=0
Q.WaterWaveSpeed=0
Q.WaterReflectance=0
Q.WaterTransparency=0
Lighting.GlobalShadows=false
Lighting.FogEnd=9e9
settings().Rendering.QualityLevel=1
for R,S in pairs(game:GetDescendants())do
if S:IsA"Part"or S:IsA"UnionOperation"or S:IsA"MeshPart"or S:IsA"CornerWedgePart"or S:IsA"TrussPart"then
S.Material="Plastic"
S.Reflectance=0
elseif S:IsA"Decal"then
S.Transparency=1
elseif S:IsA"ParticleEmitter"or S:IsA"Trail"then
S.Lifetime=NumberRange.new(0)
elseif S:IsA"Explosion"then
S.BlastPressure=1
S.BlastRadius=1
end
end
for R,S in pairs(Lighting:GetDescendants())do
if S:IsA"BlurEffect"or S:IsA"SunRaysEffect"or S:IsA"ColorCorrectionEffect"or S:IsA"BloomEffect"or S:IsA"DepthOfFieldEffect"then
S.Enabled=false
end
end
workspace.DescendantAdded:Connect(function(R)
task.spawn(function()
if R:IsA'ForceField'then
RunService.Heartbeat:Wait()
R:Destroy()
elseif R:IsA'Sparkles'then
RunService.Heartbeat:Wait()
R:Destroy()
elseif R:IsA'Smoke'or R:IsA'Fire'then
RunService.Heartbeat:Wait()
R:Destroy()
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

addcmd('noesp',{'unesp'},function(O,P)
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
local am=(V*T*(Y*V-X)+X)*Z

S.p=_
S.v=am

return _
end

function Spring.Reset(am,S)
am.p=S
am.v=S*0
end
end

local am=Vector3.new()
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
local an=V.upVector
local ao=V.lookVector

local ap=Vector3.new()
local aq=512

for ar=0,1,0.5 do
for as=0,1,0.5 do
local at=(ar-0.5)*Z
local au=(as-0.5)*Y
local av=_*at-an*au+ao
local aw=V.p+av*W local
ax, ay=workspace:FindPartOnRay(Ray.new(aw,av.unit*aq))
local az=(ay-aw).magnitude
if aq>az then
aq=az
ap=av.unit
end
end
end

return ao:Dot(ap)*aq
end

local function StepFreecam(an)
local ao=T:Update(an,Input.Vel(an))
local ap=U:Update(an,Input.Pan(an))

local aq=math.sqrt(math.tan(math.rad(35))/math.tan(math.rad(cameraFov/2)))

S=S+ap*Vector2.new(0.75,1)*8*(an/aq)
S=Vector2.new(math.clamp(S.x,-math.rad(90),math.rad(90)),S.y%(2*math.pi))

local ar=CFrame.new(am)*CFrame.fromOrientation(S.x,S.y,0)*CFrame.new(ao*Vector3.new(1,1,1)*64*an)
am=ar.p

Q.CFrame=ar
Q.Focus=ar*CFrame.new(0,0,-GetFocusDistance(ar))
Q.FieldOfView=cameraFov
end

local an={}do
mouseBehavior=""
mouseIconEnabled=""
cameraType=""
cameraFocus=""
cameraCFrame=""
cameraFieldOfView=""

function an.Push()
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

function an.Pop()
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

function StartFreecam(ao)
if fcRunning then
StopFreecam()
end
local ap=Q.CFrame
if ao then
ap=ao
end
S=Vector2.new()
am=ap.p
cameraFov=Q.FieldOfView

T:Reset(Vector3.new())
U:Reset(Vector2.new())

an.Push()
RunService:BindToRenderStep("Freecam",Enum.RenderPriority.Camera.Value,StepFreecam)
Input.StartCapture()
fcRunning=true
end

function StopFreecam()
if not fcRunning then return end
Input.StopCapture()
RunService:UnbindFromRenderStep"Freecam"
an.Pop()
workspace.Camera.FieldOfView=70
fcRunning=false
end

addcmd('freecam',{'fc'},function(ao,ap)
StartFreecam()
end)

addcmd('freecampos',{'fcpos','fcp','freecamposition','fcposition'},function(ao,ap)
if not ao[1]then return end
local aq=CFrame.new(ao[1],ao[2],ao[3])
StartFreecam(aq)
end)

addcmd('freecamwaypoint',{'fcwp'},function(ao,ap)
local aq=tostring(getstring(1))
if ap.Character then
for ar,as in pairs(WayPoints)do
local at=WayPoints[ar].COORD[1]
local au=WayPoints[ar].COORD[2]
local av=WayPoints[ar].COORD[3]
if tostring(WayPoints[ar].NAME):lower()==tostring(aq):lower()then
StartFreecam(CFrame.new(at,au,av))
end
end
for ar,as in pairs(pWayPoints)do
if tostring(pWayPoints[ar].NAME):lower()==tostring(aq):lower()then
StartFreecam(CFrame.new(pWayPoints[ar].COORD[1].Position))
end
end
end
end)

addcmd('freecamgoto',{'fcgoto','freecamtp','fctp'},function(ao,ap)
local aq=getPlayer(ao[1],ap)
for ar,as in pairs(aq)do
StartFreecam(getRoot(Players[as].Character).CFrame)
end
end)

addcmd('unfreecam',{'nofreecam','unfc','nofc'},function(ao,ap)
StopFreecam()
end)

addcmd('freecamspeed',{'fcspeed'},function(ao,ap)
local aq=ao[1]or 1
if isNumber(aq)then
NAV_KEYBOARD_SPEED=Vector3.new(aq,aq,aq)
end
end)

addcmd('notifyfreecamposition',{'notifyfcpos'},function(ao,ap)
if fcRunning then
local aq,ar,as=workspace.CurrentCamera.CFrame.Position.X,workspace.CurrentCamera.CFrame.Position.Y,workspace.CurrentCamera.CFrame.Position.Z
local at,au=string.format,math.round
notify("Current Position",at("%s, %s, %s",au(aq),au(ar),au(as)))
end
end)

addcmd('copyfreecamposition',{'copyfcpos'},function(ao,ap)
if fcRunning then
local aq,ar,as=workspace.CurrentCamera.CFrame.Position.X,workspace.CurrentCamera.CFrame.Position.Y,workspace.CurrentCamera.CFrame.Position.Z
local at,au=string.format,math.round
toClipboard(at("%s, %s, %s",au(aq),au(ar),au(as)))
end
end)

addcmd('gotocamera',{'gotocam','tocam'},function(ao,ap)
getRoot(ap.Character).CFrame=workspace.Camera.CFrame
end)

addcmd('tweengotocamera',{'tweengotocam','tgotocam','ttocam'},function(ao,ap)
TweenService:Create(getRoot(ap.Character),TweenInfo.new(tweenSpeed,Enum.EasingStyle.Linear),{CFrame=workspace.Camera.CFrame}):Play()
end)

addcmd('fov',{},function(ao,ap)
local aq=ao[1]or 70
if isNumber(aq)then
workspace.CurrentCamera.FieldOfView=aq
end
end)

local ao=Players.LocalPlayer.CameraMaxZoomDistance
local ap=Players.LocalPlayer.CameraMinZoomDistance
addcmd('lookat',{},function(aq,ar)
if ar.CameraMaxZoomDistance~=0.5 then
ao=ar.CameraMaxZoomDistance
ap=ar.CameraMinZoomDistance
end
ar.CameraMaxZoomDistance=0.5
ar.CameraMinZoomDistance=0.5
wait()
local as=getPlayer(aq[1],ar)
for at,au in pairs(as)do
local av=Players[au].Character
if av and av:FindFirstChild'Head'then
workspace.CurrentCamera.CFrame=CFrame.new(workspace.CurrentCamera.CFrame.p,av.Head.CFrame.p)
wait(0.1)
end
end
ar.CameraMaxZoomDistance=ao
ar.CameraMinZoomDistance=ap
end)

addcmd('fixcam',{'restorecam'},function(aq,ar)
StopFreecam()
execCmd'unview'
workspace.CurrentCamera:remove()
wait(.1)
repeat wait()until ar.Character~=nil
workspace.CurrentCamera.CameraSubject=ar.Character:FindFirstChildWhichIsA'Humanoid'
workspace.CurrentCamera.CameraType="Custom"
ar.CameraMinZoomDistance=0.5
ar.CameraMaxZoomDistance=400
ar.CameraMode="Classic"
ar.Character.Head.Anchored=false
end)

addcmd('enableshiftlock',{'enablesl','shiftlock'},function(aq,ar)
ar.DevEnableMouseLock=true
notify('Shiftlock','Shift lock is now available')
end)

addcmd('firstp',{},function(aq,ar)
ar.CameraMode="LockFirstPerson"
end)

addcmd('thirdp',{},function(aq,ar)
ar.CameraMode="Classic"
end)

addcmd('noclipcam',{'nccam'},function(aq,ar)
local as=(debug and debug.setconstant)or setconstant
local at=(debug and debug.getconstants)or getconstants
if not as or not getgc or not at then
return notify('Incompatible Exploit','Your exploit does not support this command (missing setconstant or getconstants or getgc)')
end
local au=ar.PlayerScripts.PlayerModule.CameraModule.ZoomController.Popper
for av,aw in pairs(getgc())do
if type(aw)=='function'and getfenv(aw).script==au then
for ax,ay in pairs(at(aw))do
if tonumber(ay)==.25 then
as(aw,ax,0)
elseif tonumber(ay)==0 then
as(aw,ax,.25)
end
end
end
end
end)

addcmd('maxzoom',{},function(aq,ar)
ar.CameraMaxZoomDistance=aq[1]
end)

addcmd('minzoom',{},function(aq,ar)
ar.CameraMinZoomDistance=aq[1]
end)

addcmd('camdistance',{},function(aq,ar)
local as=ar.CameraMaxZoomDistance
local at=ar.CameraMinZoomDistance
if as<tonumber(aq[1])then
as=aq[1]
end
ar.CameraMaxZoomDistance=aq[1]
ar.CameraMinZoomDistance=aq[1]
wait()
ar.CameraMaxZoomDistance=as
ar.CameraMinZoomDistance=at
end)

addcmd('unlockws',{'unlockworkspace'},function(aq,ar)
for as,at in pairs(workspace:GetDescendants())do
if at:IsA"BasePart"then
at.Locked=false
end
end
end)

addcmd('lockws',{'lockworkspace'},function(aq,ar)
for as,at in pairs(workspace:GetDescendants())do
if at:IsA"BasePart"then
at.Locked=true
end
end
end)

addcmd('delete',{'remove'},function(aq,ar)
for as,at in pairs(workspace:GetDescendants())do
if at.Name:lower()==getstring(1):lower()then
at:Destroy()
end
end
notify('Item(s) Deleted','Deleted '..getstring(1))
end)

addcmd('deleteclass',{'removeclass','deleteclassname','removeclassname','dc'},function(aq,ar)
for as,at in pairs(workspace:GetDescendants())do
if at.ClassName:lower()==getstring(1):lower()then
at:Destroy()
end
end
notify('Item(s) Deleted','Deleted items with ClassName '..getstring(1))
end)

addcmd('chardelete',{'charremove','cd'},function(aq,ar)
for as,at in pairs(ar.Character:GetDescendants())do
if at.Name:lower()==getstring(1):lower()then
at:Destroy()
end
end
notify('Item(s) Deleted','Deleted '..getstring(1))
end)

addcmd('chardeleteclass',{'charremoveclass','chardeleteclassname','charremoveclassname','cdc'},function(aq,ar)
for as,at in pairs(ar.Character:GetDescendants())do
if at.ClassName:lower()==getstring(1):lower()then
at:Destroy()
end
end
notify('Item(s) Deleted','Deleted items with ClassName '..getstring(1))
end)

addcmd('deletevelocity',{'dv','removevelocity','removeforces'},function(aq,ar)
for as,at in pairs(ar.Character:GetDescendants())do
if at:IsA"BodyVelocity"or at:IsA"BodyGyro"or at:IsA"RocketPropulsion"or at:IsA"BodyThrust"or at:IsA"BodyAngularVelocity"or at:IsA"AngularVelocity"or at:IsA"BodyForce"or at:IsA"VectorForce"or at:IsA"LineForce"then
at:Destroy()
end
end
end)

addcmd('deleteinvisparts',{'deleteinvisibleparts','dip'},function(aq,ar)
for as,at in pairs(workspace:GetDescendants())do
if at:IsA"BasePart"and at.Transparency==1 and at.CanCollide then
at:Destroy()
end
end
end)

local aq={}
addcmd('invisibleparts',{'invisparts'},function(ar,as)
for at,au in pairs(workspace:GetDescendants())do
if au:IsA"BasePart"and au.Transparency==1 then
if not table.find(aq,au)then
table.insert(aq,au)
end
au.Transparency=0
end
end
end)

addcmd('uninvisibleparts',{'uninvisparts'},function(ar,as)
for at,au in pairs(aq)do
au.Transparency=1
end
aq={}
end)

addcmd('btools',{},function(ar,as)
for at=1,4 do
local au=Instance.new"HopperBin"
au.BinType=at
au.Name=randomString()
au.Parent=as:FindFirstChildOfClass"Backpack"
end
end)

addcmd('f3x',{'fex'},function(ar,as)
loadstring(game:HttpGet"https://raw.githubusercontent.com/infyiff/backup/refs/heads/main/f3x.lua")()
end)

addcmd('partpath',{'partname'},function(ar,as)
selectPart()
end)

addcmd('antiafk',{'antiidle'},function(ar,as)
local at=getconnections or get_signal_cons
if at then
for au,av in pairs(at(Players.LocalPlayer.Idled))do
if av.Disable then
av.Disable(av)
elseif av.Disconnect then
av.Disconnect(av)
end
end
else
local au=a(game:GetService"VirtualUser")
Players.LocalPlayer.Idled:Connect(function()
au:CaptureController()
au:ClickButton2(Vector2.new())
end)
end
if not(ar[1]and tostring(ar[1])=='nonotify')then notify('Anti Idle','Anti idle is enabled')end
end)

addcmd("datalimit",{},function(ar,as)
local at=tonumber(ar[1])
if at then
local au=a(game:GetService"NetworkClient")
au:SetOutgoingKBPSLimit(at)
end
end)

addcmd("replicationlag",{"backtrack"},function(ar,as)
if tonumber(ar[1])then
settings():GetService"NetworkSettings".IncomingReplicationLag=ar[1]
end
end)

addcmd("noprompts",{"nopurchaseprompts"},function(ar,as)
COREGUI.PurchasePrompt.Enabled=false
end)

addcmd("showprompts",{"showpurchaseprompts"},function(ar,as)
COREGUI.PurchasePrompt.Enabled=true
end)

promptNewRig=function(ar,as)
local at=ar.Character:FindFirstChildWhichIsA"Humanoid"
if at then
AvatarEditorService:PromptSaveAvatar(at.HumanoidDescription,Enum.HumanoidRigType[as])
local au=AvatarEditorService.PromptSaveAvatarCompleted:Wait()
if au==Enum.AvatarPromptResult.Success then
execCmd"reset"
end
end
end

addcmd("promptr6",{},function(ar,as)
promptNewRig(as,"R6")
end)

addcmd("promptr15",{},function(ar,as)
promptNewRig(as,"R15")
end)

addcmd("wallwalk",{"walkonwalls"},function(ar,as)
loadstring(game:HttpGet"https://raw.githubusercontent.com/infyiff/backup/main/wallwalker.lua")()
end)

addcmd('age',{},function(ar,as)
local at=getPlayer(ar[1],as)
local au={}
for av,aw in pairs(at)do
local ax=Players[aw]
table.insert(au,ax.Name.."'s age is: "..ax.AccountAge)
end
notify('Account Age',table.concat(au,',\n'))
end)

addcmd('chatage',{},function(ar,as)
local at=getPlayer(ar[1],as)
local au={}
for av,aw in pairs(at)do
local ax=Players[aw]
table.insert(au,ax.Name.."'s age is: "..ax.AccountAge)
end
local av=table.concat(au,', ')
chatMessage(av)
end)

addcmd('joindate',{'jd'},function(ar,as)
local at=getPlayer(ar[1],as)
local au={}
notify("Loading",'Hold on a sec')
for av,aw in pairs(at)do
local ax=game:HttpGet("https://users.roblox.com/v1/users/"..Players[aw].UserId)
local ay=HttpService:JSONDecode(ax)
local az=ay.created:sub(1,10)
local V=string.split(az,"-")
table.insert(au,Players[aw].Name.." joined: "..V[2].."/"..V[3].."/"..V[1])
end
notify('Join Date (Month/Day/Year)',table.concat(au,',\n'))
end)

addcmd('chatjoindate',{'cjd'},function(ar,as)
local at=getPlayer(ar[1],as)
local au={}
notify("Loading",'Hold on a sec')
for av,aw in pairs(at)do
local ax=game:HttpGet("https://users.roblox.com/v1/users/"..Players[aw].UserId)
local ay=HttpService:JSONDecode(ax)
local az=ay.created:sub(1,10)
local V=string.split(az,"-")
table.insert(au,Players[aw].Name.." joined: "..V[2].."/"..V[3].."/"..V[1])
end
local av=table.concat(au,', ')
chatMessage(av)
end)

addcmd('copyname',{'copyuser'},function(ar,as)
local at=getPlayer(ar[1],as)
for au,av in pairs(at)do
local aw=tostring(Players[av].Name)
toClipboard(aw)
end
end)

addcmd('userid',{'id'},function(ar,as)
local at=getPlayer(ar[1],as)
for au,av in pairs(at)do
local aw=tostring(Players[av].UserId)
notify('User ID',aw)
end
end)

addcmd('copyid',{'copyuserid'},function(ar,as)
local at=getPlayer(ar[1],as)
for au,av in pairs(at)do
local aw=tostring(Players[av].UserId)
toClipboard(aw)
end
end)

addcmd('creatorid',{'creator'},function(ar,as)
if game.CreatorType==Enum.CreatorType.User then
notify('Creator ID',game.CreatorId)
elseif game.CreatorType==Enum.CreatorType.Group then
local at=GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id
as.UserId=at
notify('Creator ID',at)
end
end)

addcmd('copycreatorid',{'copycreator'},function(ar,as)
if game.CreatorType==Enum.CreatorType.User then
toClipboard(game.CreatorId)
notify('Copied ID','Copied creator ID to clipboard')
elseif game.CreatorType==Enum.CreatorType.Group then
local at=GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id
toClipboard(at)
notify('Copied ID','Copied creator ID to clipboard')
end
end)

addcmd('setcreatorid',{'setcreator'},function(ar,as)
if game.CreatorType==Enum.CreatorType.User then
as.UserId=game.CreatorId
notify('Set ID','Set UserId to '..game.CreatorId)
elseif game.CreatorType==Enum.CreatorType.Group then
local at=GroupService:GetGroupInfoAsync(game.CreatorId).Owner.Id
as.UserId=at
notify('Set ID','Set UserId to '..at)
end
end)

addcmd('appearanceid',{'aid'},function(ar,as)
local at=getPlayer(ar[1],as)
for au,av in pairs(at)do
local aw=tostring(Players[av].CharacterAppearanceId)
notify('Appearance ID',aw)
end
end)

addcmd('copyappearanceid',{'caid'},function(ar,as)
local at=getPlayer(ar[1],as)
for au,av in pairs(at)do
local aw=tostring(Players[av].CharacterAppearanceId)
toClipboard(aw)
end
end)

addcmd('norender',{},function(ar,as)
RunService:Set3dRenderingEnabled(false)
end)

addcmd('render',{},function(ar,as)
RunService:Set3dRenderingEnabled(true)
end)

addcmd('2022materials',{'use2022materials'},function(ar,as)
if sethidden then
sethidden(MaterialService,"Use2022Materials",true)
else
notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
end
end)

addcmd('un2022materials',{'unuse2022materials'},function(ar,as)
if sethidden then
sethidden(MaterialService,"Use2022Materials",false)
else
notify('Incompatible Exploit','Your exploit does not support this command (missing sethiddenproperty)')
end
end)

addcmd('goto',{'to'},function(ar,as)
local at=getPlayer(ar[1],as)
for au,av in pairs(at)do
if Players[av].Character~=nil then
if as.Character:FindFirstChildOfClass'Humanoid'and as.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
as.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
getRoot(as.Character).CFrame=getRoot(Players[av].Character).CFrame+Vector3.new(3,1,0)
end
end
execCmd'breakvelocity'
end)

addcmd('tweengoto',{'tgoto','tto','tweento'},function(ar,as)
local at=getPlayer(ar[1],as)
for au,av in pairs(at)do
if Players[av].Character~=nil then
if as.Character:FindFirstChildOfClass'Humanoid'and as.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
as.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
TweenService:Create(getRoot(as.Character),TweenInfo.new(tweenSpeed,Enum.EasingStyle.Linear),{CFrame=getRoot(Players[av].Character).CFrame+Vector3.new(3,1,0)}):Play()
end
end
execCmd'breakvelocity'
end)

addcmd('vehiclegoto',{'vgoto','vtp','vehicletp'},function(ar,as)
local at=getPlayer(ar[1],as)
for au,av in pairs(at)do
if Players[av].Character~=nil then
local aw=as.Character:FindFirstChildOfClass'Humanoid'.SeatPart
local ax=aw:FindFirstAncestorWhichIsA"Model"
ax:MoveTo(getRoot(Players[av].Character).Position)
end
end
end)

addcmd('pulsetp',{'ptp'},function(ar,as)
local at=getPlayer(ar[1],as)
for au,av in pairs(at)do
if Players[av].Character~=nil then
local aw=getRoot(as.Character).CFrame
local ax=ar[2]or 1
if as.Character:FindFirstChildOfClass'Humanoid'and as.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
as.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
getRoot(as.Character).CFrame=getRoot(Players[av].Character).CFrame+Vector3.new(3,1,0)
wait(ax)
getRoot(as.Character).CFrame=aw
end
end
execCmd'breakvelocity'
end)

local ar={}
addcmd('vehiclenoclip',{'vnoclip'},function(as,at)
ar={}
local au=at.Character:FindFirstChildOfClass'Humanoid'.SeatPart
local av=au.Parent
repeat
if av.ClassName~="Model"then
av=av.Parent
end
until av.ClassName=="Model"
wait(0.1)
execCmd'noclip'
for aw,ax in pairs(av:GetDescendants())do
if ax:IsA"BasePart"and ax.CanCollide then
table.insert(ar,ax)
ax.CanCollide=false
end
end
end)

addcmd("vehicleclip",{"vclip","unvnoclip","unvehiclenoclip"},function(as,at)
execCmd"clip"
for au,av in pairs(ar)do
av.CanCollide=true
end
ar={}
end)

addcmd("togglevnoclip",{},function(as,at)
execCmd(Clip and"vnoclip"or"vclip")
end)

addcmd('clientbring',{'cbring'},function(as,at)
local au=getPlayer(as[1],at)
for av,aw in pairs(au)do
if Players[aw].Character~=nil then
if Players[aw].Character:FindFirstChildOfClass'Humanoid'then
Players[aw].Character:FindFirstChildOfClass'Humanoid'.Sit=false
end
wait()
getRoot(Players[aw].Character).CFrame=getRoot(at.Character).CFrame+Vector3.new(3,1,0)
end
end
end)

local as={}
addcmd('loopbring',{},function(at,au)
local av=getPlayer(at[1],au)
for aw,ax in pairs(av)do
task.spawn(function()
if Players[ax].Name~=au.Name and not FindInTable(as,Players[ax].Name)then
table.insert(as,Players[ax].Name)
local ay=Players[ax].Name
local az=Players[ax].Character
local V=3
if at[2]and isNumber(at[2])then
V=at[2]
end
local W=0
if at[3]and isNumber(at[3])then
W=at[3]
end
repeat
for X,Y in pairs(av)do
if Players:FindFirstChild(ax)then
az=Players[ax].Character
if az~=nil and Players[ax].Character~=nil and getRoot(az)and au.Character~=nil and getRoot(au.Character)then
getRoot(az).CFrame=getRoot(au.Character).CFrame+Vector3.new(V,1,0)
end
wait(W)
else
for Z,_ in pairs(as)do if _==ay then table.remove(as,Z)end end
end
end
until not FindInTable(as,ay)
end
end)
end
end)

addcmd('unloopbring',{'noloopbring'},function(at,au)
local av=getPlayer(at[1],au)
for aw,ax in pairs(av)do
task.spawn(function()
for ay,az in pairs(as)do if az==Players[ax].Name then table.remove(as,ay)end end
end)
end
end)

local at=false
local au=false
addcmd('walkto',{'follow'},function(av,aw)
local ax=getPlayer(av[1],aw)
for ay,az in pairs(ax)do
if Players[az].Character~=nil then
if aw.Character:FindFirstChildOfClass'Humanoid'and aw.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
aw.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
at=true
repeat wait()
aw.Character:FindFirstChildOfClass'Humanoid':MoveTo(getRoot(Players[az].Character).Position)
until Players[az].Character==nil or not getRoot(Players[az].Character)or at==false
end
end
end)

addcmd('pathfindwalkto',{'pathfindfollow'},function(av,aw)
at=false
wait()
local ax=getPlayer(av[1],aw)
local ay=Players.LocalPlayer.Character:FindFirstChildOfClass"Humanoid"
local az=PathService:CreatePath()
for V,W in pairs(ax)do
if Players[W].Character~=nil then
if aw.Character:FindFirstChildOfClass'Humanoid'and aw.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
aw.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
at=true
repeat wait()local
aA, X=pcall(function()
az:ComputeAsync(getRoot(aw.Character).Position,getRoot(Players[W].Character).Position)
local X=az:GetWaypoints()
local Y
for Z,_ in pairs(X)do
local aA=_.Position
ay:MoveTo(aA)
repeat
Y=(aA-ay.Parent.PrimaryPart.Position).magnitude
wait()
until
Y<=5
end
end)
if not aA then
aw.Character:FindFirstChildOfClass'Humanoid':MoveTo(getRoot(Players[W].Character).Position)
end
until Players[W].Character==nil or not getRoot(Players[W].Character)or at==false
end
end
end)

addcmd('pathfindwalktowaypoint',{'pathfindwalktowp'},function(av,aw)
au=false
wait()
local ax=tostring(getstring(1))
local ay=Players.LocalPlayer.Character:FindFirstChildOfClass"Humanoid"
local az=PathService:CreatePath()
if aw.Character then
for aA,V in pairs(WayPoints)do
if tostring(WayPoints[aA].NAME):lower()==tostring(ax):lower()then
if aw.Character:FindFirstChildOfClass'Humanoid'and aw.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
aw.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
local W=Vector3.new(WayPoints[aA].COORD[1],WayPoints[aA].COORD[2],WayPoints[aA].COORD[3])
au=true
repeat wait()local
aB, X=pcall(function()
az:ComputeAsync(getRoot(aw.Character).Position,W)
local X=az:GetWaypoints()
local Y
for Z,_ in pairs(X)do
local aB=_.Position
ay:MoveTo(aB)
repeat
Y=(aB-ay.Parent.PrimaryPart.Position).magnitude
wait()
until
Y<=5
end
end)
if not aB then
aw.Character:FindFirstChildOfClass'Humanoid':MoveTo(W)
end
until not aw.Character or au==false
end
end
for aA,aB in pairs(pWayPoints)do
if tostring(pWayPoints[aA].NAME):lower()==tostring(ax):lower()then
if aw.Character:FindFirstChildOfClass'Humanoid'and aw.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
aw.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
local V=pWayPoints[aA].COORD[1].Position
au=true
repeat wait()local
W, X=pcall(function()
az:ComputeAsync(getRoot(aw.Character).Position,V)
local W=az:GetWaypoints()
local X
for Y,Z in pairs(W)do
local _=Z.Position
ay:MoveTo(_)
repeat
X=(_-ay.Parent.PrimaryPart.Position).magnitude
wait()
until
X<=5
end
end)
if not W then
aw.Character:FindFirstChildOfClass'Humanoid':MoveTo(V)
end
until not aw.Character or au==false
end
end
end
end)

addcmd('unwalkto',{'nowalkto','unfollow','nofollow'},function(av,aw)
at=false
au=false
end)

addcmd("orbit",{},function(av,aw)
execCmd"unorbit nonotify"
local ax=Players:FindFirstChild(getPlayer(av[1],aw)[1])
local ay=getRoot(aw.Character)
local az=aw.Character:FindFirstChildWhichIsA"Humanoid"
if ax and ax.Character and getRoot(ax.Character)and ay and az then
local aA=0
local aB=tonumber(av[2])or 0.2
local V=tonumber(av[3])or 6
orbit1=RunService.Heartbeat:Connect(function()
pcall(function()
aA=aA+aB
ay.CFrame=CFrame.new(getRoot(ax.Character).Position)*CFrame.Angles(0,math.rad(aA),0)*CFrame.new(V,0,0)
end)
end)
orbit2=RunService.RenderStepped:Connect(function()
pcall(function()
ay.CFrame=CFrame.new(ay.Position,getRoot(ax.Character).Position)
end)
end)
orbit3=az.Died:Connect(function()execCmd"unorbit"end)
orbit4=az.Seated:Connect(function(W)if W then execCmd"unorbit"end end)
notify("Orbit","Started orbiting "..formatUsername(ax))
end
end)

addcmd("unorbit",{},function(av,aw)
if orbit1 then orbit1:Disconnect()end
if orbit2 then orbit2:Disconnect()end
if orbit3 then orbit3:Disconnect()end
if orbit4 then orbit4:Disconnect()end
if av[1]~="nonotify"then notify("Orbit","Stopped orbiting player")end
end)

addcmd('freeze',{'fr'},function(av,aw)
local ax=getPlayer(av[1],aw)
if ax~=nil then
for ay,az in pairs(ax)do
task.spawn(function()
for aA,aB in next,Players[az].Character:GetDescendants()do
if aB:IsA"BasePart"and not aB.Anchored then
aB.Anchored=true
end
end
end)
end
end
end)


addcmd('thaw',{'unfreeze','unfr'},function(av,aw)
local ax=getPlayer(av[1],aw)
if ax~=nil then
for ay,az in pairs(ax)do
task.spawn(function()
for aA,aB in next,Players[az].Character:GetDescendants()do
if aB.Name~=floatName and aB:IsA"BasePart"and aB.Anchored then
aB.Anchored=false
end
end
end)
end
end
end)

oofing=false
addcmd('loopoof',{},function(av,aw)
oofing=true
repeat wait(0.1)
for ax,ay in pairs(Players:GetPlayers())do
if ay.Character~=nil and ay.Character:FindFirstChild'Head'then
for az,aA in pairs(ay.Character.Head:GetChildren())do
if aA:IsA'Sound'then aA.Playing=true end
end
end
end
until oofing==false
end)

addcmd('unloopoof',{},function(av,aw)
oofing=false
end)

local av=false
addcmd('muteboombox',{},function(aw,ax)
if not av and SoundService.RespectFilteringEnabled then av=true notify('RespectFilteringEnabled','RespectFilteringEnabled is set to true (the command will still work but may only be clientsided)')end
local ay=getPlayer(aw[1],ax)
if ay~=nil then
for az,aA in pairs(ay)do
task.spawn(function()
for aB,V in next,Players[aA].Character:GetDescendants()do
if V:IsA"Sound"and V.Playing==true then
V.Playing=false
end
end
for aB,V in next,Players[aA]:FindFirstChildOfClass"Backpack":GetDescendants()do
if V:IsA"Sound"and V.Playing==true then
V.Playing=false
end
end
end)
end
end
end)

addcmd('unmuteboombox',{},function(aw,ax)
if not av and SoundService.RespectFilteringEnabled then av=true notify('RespectFilteringEnabled','RespectFilteringEnabled is set to true (the command will still work but may only be clientsided)')end
local ay=getPlayer(aw[1],ax)
if ay~=nil then
for az,aA in pairs(ay)do
task.spawn(function()
for aB,V in next,Players[aA].Character:GetDescendants()do
if V:IsA"Sound"and V.Playing==false then
V.Playing=true
end
end
end)
end
end
end)

addcmd('reset',{},function(aw,ax)
ax.Character:FindFirstChildOfClass"Humanoid":ChangeState(Enum.HumanoidStateType.Dead)
end)

addcmd('freezeanims',{},function(aw,ax)
local ay=ax.Character:FindFirstChildOfClass"Humanoid"or ax.Character:FindFirstChildOfClass"AnimationController"
local az=ay:GetPlayingAnimationTracks()
for aA,aB in pairs(az)do
aB:AdjustSpeed(0)
end
end)

addcmd('unfreezeanims',{},function(aw,ax)
local ay=ax.Character:FindFirstChildOfClass"Humanoid"or ax.Character:FindFirstChildOfClass"AnimationController"
local az=ay:GetPlayingAnimationTracks()
for aA,aB in pairs(az)do
aB:AdjustSpeed(1)
end
end)




addcmd('respawn',{},function(aw,ax)
respawn(ax)
end)

addcmd('refresh',{'re'},function(aw,ax)
refresh(ax)
end)

addcmd('god',{},function(aw,ax)
permadeath(ax)
local ay=workspace.CurrentCamera
local az,aA=ay.CFrame,ax.Character
local aB=aA and aA.FindFirstChildWhichIsA(aA,"Humanoid")
local V=aB.Clone(aB)
V.Parent,ax.Character=aA,nil
V.SetStateEnabled(V,15,false)
V.SetStateEnabled(V,1,false)
V.SetStateEnabled(V,0,false)
V.BreakJointsOnDeath,aB=true,aB.Destroy(aB)
ax.Character,ay.CameraSubject,ay.CFrame=aA,V,wait()and az
V.DisplayDistanceType=Enum.HumanoidDisplayDistanceType.None
local W=aA.FindFirstChild(aA,"Animate")
if W then
W.Disabled=true
wait()
W.Disabled=false
end
V.Health=V.MaxHealth
end)

invisRunning=false
addcmd('invisible',{'invis'},function(aw,ax)
if invisRunning then return end
invisRunning=true
permadeath(ax)

local ay=ax
repeat wait(.1)until ay.Character
local az=ay.Character
az.Archivable=true
local aA=false
local aB=true
local V=az:Clone()
V.Parent=Lighting
local W=workspace.FallenPartsDestroyHeight
V.Name=""
local X

local aC=RunService.Stepped:Connect(function()
pcall(function()
local Y
if tostring(W):find'-'then
Y=true
else
Y=false
end
local Z=ay.Character.HumanoidRootPart.Position
local _=tostring(Z)
local aC=_:split', '
tonumber(aC[1])
local aD=tonumber(aC[2])
tonumber(aC[3])
if Y==true then
if aD<=W then
Respawn()
end
elseif Y==false then
if aD>=W then
Respawn()
end
end
end)
end)

for aD,Y in pairs(V:GetDescendants())do
if Y:IsA"BasePart"then
if Y.Name=="HumanoidRootPart"then
Y.Transparency=1
else
Y.Transparency=.5
end
end
end

function Respawn()
aB=false
if aA==true then
pcall(function()
ay.Character=az
wait()
az.Parent=workspace
az:FindFirstChildWhichIsA'Humanoid':Destroy()
aA=false
V.Parent=nil
invisRunning=false
end)
elseif aA==false then
pcall(function()
ay.Character=az
wait()
az.Parent=workspace
az:FindFirstChildWhichIsA'Humanoid':Destroy()
TurnVisible()
end)
end
end

local aD
aD=V:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
Respawn()
aD:Disconnect()
end)

if aA==true then return end
aA=true
X=workspace.CurrentCamera.CFrame
local Y=ay.Character.HumanoidRootPart.CFrame
az:MoveTo(Vector3.new(0,math.pi*1000000,0))
workspace.CurrentCamera.CameraType=Enum.CameraType.Scriptable
wait(.2)
workspace.CurrentCamera.CameraType=Enum.CameraType.Custom
V=V
az.Parent=Lighting
V.Parent=workspace
V.HumanoidRootPart.CFrame=Y
ay.Character=V
execCmd'fixcam'
ay.Character.Animate.Disabled=true
ay.Character.Animate.Disabled=false

function TurnVisible()
if aA==false then return end
aC:Disconnect()
aD:Disconnect()
X=workspace.CurrentCamera.CFrame
az=az
local Z=ay.Character.HumanoidRootPart.CFrame
az.HumanoidRootPart.CFrame=Z
V:Destroy()
ay.Character=az
az.Parent=workspace
aA=false
ay.Character.Animate.Disabled=true
ay.Character.Animate.Disabled=false
aD=az:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
Respawn()
aD:Disconnect()
end)
invisRunning=false
end
notify('Invisible','You now appear invisible to other players')
end)

addcmd("visible",{"vis"},function(aw,ax)
TurnVisible()
end)

addcmd("toggleinvis",{},function(aw,ax)
execCmd(invisRunning and"visible"or"invisible")
end)

addcmd('toolinvisible',{'toolinvis','tinvis'},function(aw,ax)
local ay=Players.LocalPlayer.Character
local az=false

local aA=Instance.new'Part'
aA.Anchored=true
aA.CanCollide=true
aA.Size=Vector3.new(10,1,10)
aA.Position=Vector3.new(0,10000,0)
aA.Parent=workspace
local aB=aA.Touched:connect(function(aB)
if(aB.Parent.Name==Players.LocalPlayer.Name)then
if az==false then
az=true
local function apply()
local aC=ay.HumanoidRootPart:Clone()
wait(.25)
ay.HumanoidRootPart:Destroy()
aC.Parent=ay
ay:MoveTo(loc)
az=false
end
if ay then
apply()
end
end
end
end)
repeat wait()until ay
local aC
aC=Players.LocalPlayer.CharacterAdded:connect(function(aD)
aB:Disconnect()
aA:Destroy()
aC:Disconnect()
end)
loc=ay.HumanoidRootPart.Position
ay:MoveTo(aA.Position+Vector3.new(0,.5,0))
end)

addcmd("strengthen",{},function(aw,ax)
for ay,az in pairs(ax.Character:GetDescendants())do
if az.ClassName=="Part"then
if aw[1]then
az.CustomPhysicalProperties=PhysicalProperties.new(aw[1],0.3,0.5)
else
az.CustomPhysicalProperties=PhysicalProperties.new(100,0.3,0.5)
end
end
end
end)

addcmd("weaken",{},function(aw,ax)
for ay,az in pairs(ax.Character:GetDescendants())do
if az.ClassName=="Part"then
if aw[1]then
az.CustomPhysicalProperties=PhysicalProperties.new(-aw[1],0.3,0.5)
else
az.CustomPhysicalProperties=PhysicalProperties.new(0,0.3,0.5)
end
end
end
end)

addcmd("unweaken",{"unstrengthen"},function(aw,ax)
for ay,az in pairs(ax.Character:GetDescendants())do
if az.ClassName=="Part"then
az.CustomPhysicalProperties=PhysicalProperties.new(0.7,0.3,0.5)
end
end
end)

addcmd("breakvelocity",{},function(aw,ax)
local ay,az=false,Vector3.new(0,0,0)
delay(1,function()
ay=true
end)
while not ay do
for aA,aB in ipairs(ax.Character:GetDescendants())do
if aB:IsA"BasePart"then
aB.Velocity,aB.RotVelocity=az,az
end
end
wait()
end
end)

addcmd('jpower',{'jumppower','jp'},function(aw,ax)
local ay=aw[1]or 50
if isNumber(ay)then
if ax.Character:FindFirstChildOfClass'Humanoid'.UseJumpPower then
ax.Character:FindFirstChildOfClass'Humanoid'.JumpPower=ay
else
ax.Character:FindFirstChildOfClass'Humanoid'.JumpHeight=ay
end
end
end)

addcmd("maxslopeangle",{"msa"},function(aw,ax)
local ay=aw[1]or 89
if isNumber(ay)then
ax.Character:FindFirstChildWhichIsA"Humanoid".MaxSlopeAngle=ay
end
end)

addcmd("gravity",{"grav"},function(aw,ax)
local ay=aw[1]or 196.2
if isNumber(ay)then
workspace.Gravity=ay
end
end)

addcmd("hipheight",{"hheight"},function(aw,ax)
ax.Character:FindFirstChildWhichIsA"Humanoid".HipHeight=aw[1]or(r15(ax)and 2.1 or 0)
end)

addcmd("dance",{},function(aw,ax)
pcall(execCmd,"undance")
local ay={"27789359","30196114","248263260","45834924","33796059","28488254","52155728"}
if r15(ax)then
ay={"3333432454","4555808220","4049037604","4555782893","10214311282","10714010337","10713981723","10714372526","10714076981","10714392151","11444443576"}
end
local az=Instance.new"Animation"
az.AnimationId="rbxassetid://"..ay[math.random(1,#ay)]
danceTrack=ax.Character:FindFirstChildWhichIsA"Humanoid":LoadAnimation(az)
danceTrack.Looped=true
danceTrack:Play()
end)

addcmd("undance",{"nodance"},function(aw,ax)
danceTrack:Stop()
danceTrack:Destroy()
end)

addcmd('nolimbs',{'rlimbs'},function(aw,ax)
if r15(ax)then
for ay,az in pairs(ax.Character:GetChildren())do
if az:IsA"BasePart"and
az.Name=="RightUpperLeg"or
az.Name=="LeftUpperLeg"or
az.Name=="RightUpperArm"or
az.Name=="LeftUpperArm"then
az:Destroy()
end
end
else
for ay,az in pairs(ax.Character:GetChildren())do
if az:IsA"BasePart"and
az.Name=="Right Leg"or
az.Name=="Left Leg"or
az.Name=="Right Arm"or
az.Name=="Left Arm"then
az:Destroy()
end
end
end
end)

addcmd('noarms',{'rarms'},function(aw,ax)
if r15(ax)then
for ay,az in pairs(ax.Character:GetChildren())do
if az:IsA"BasePart"and
az.Name=="RightUpperArm"or
az.Name=="LeftUpperArm"then
az:Destroy()
end
end
else
for ay,az in pairs(ax.Character:GetChildren())do
if az:IsA"BasePart"and
az.Name=="Right Arm"or
az.Name=="Left Arm"then
az:Destroy()
end
end
end
end)

addcmd('nolegs',{'rlegs'},function(aw,ax)
if r15(ax)then
for ay,az in pairs(ax.Character:GetChildren())do
if az:IsA"BasePart"and
az.Name=="RightUpperLeg"or
az.Name=="LeftUpperLeg"then
az:Destroy()
end
end
else
for ay,az in pairs(ax.Character:GetChildren())do
if az:IsA"BasePart"and
az.Name=="Right Leg"or
az.Name=="Left Leg"then
az:Destroy()
end
end
end
end)

addcmd("sit",{},function(aw,ax)
ax.Character:FindFirstChildWhichIsA"Humanoid".Sit=true
end)

addcmd("lay",{"laydown"},function(aw,ax)
local ay=ax.Character:FindFirstChildWhichIsA"Humanoid"
ay.Sit=true
task.wait(0.1)
ay.RootPart.CFrame=ay.RootPart.CFrame*CFrame.Angles(math.pi*0.5,0,0)
for az,aA in ipairs(ay:GetPlayingAnimationTracks())do
aA:Stop()
end
end)

addcmd("sitwalk",{},function(aw,ax)
local ay=ax.Character.Animate
local az=ay.sit:FindFirstChildWhichIsA"Animation".AnimationId
ay.idle:FindFirstChildWhichIsA"Animation".AnimationId=az
ay.walk:FindFirstChildWhichIsA"Animation".AnimationId=az
ay.run:FindFirstChildWhichIsA"Animation".AnimationId=az
ay.jump:FindFirstChildWhichIsA"Animation".AnimationId=az
ax.Character:FindFirstChildWhichIsA"Humanoid".HipHeight=not r15(ax)and-1.5 or 0.5
end)

addcmd("nosit",{},function(aw,ax)
ax.Character:FindFirstChildWhichIsA"Humanoid":SetStateEnabled(Enum.HumanoidStateType.Seated,false)
end)

addcmd("unnosit",{},function(aw,ax)
ax.Character:FindFirstChildWhichIsA"Humanoid":SetStateEnabled(Enum.HumanoidStateType.Seated,true)
end)

addcmd("jump",{},function(aw,ax)
ax.Character:FindFirstChildWhichIsA"Humanoid":ChangeState(Enum.HumanoidStateType.Jumping)
end)

local aw
infJumpDebounce=false
addcmd("infjump",{"infinitejump"},function(ax,ay)
if aw then aw:Disconnect()end
infJumpDebounce=false
aw=UserInputService.JumpRequest:Connect(function()
if not infJumpDebounce then
infJumpDebounce=true
ay.Character:FindFirstChildWhichIsA"Humanoid":ChangeState(Enum.HumanoidStateType.Jumping)
wait()
infJumpDebounce=false
end
end)
end)

addcmd("uninfjump",{"uninfinitejump","noinfjump","noinfinitejump"},function(ax,ay)
if aw then aw:Disconnect()end
infJumpDebounce=false
end)

local ax
addcmd("flyjump",{},function(ay,az)
if ax then ax:Disconnect()end
ax=UserInputService.JumpRequest:Connect(function()
az.Character:FindFirstChildWhichIsA"Humanoid":ChangeState(Enum.HumanoidStateType.Jumping)
end)
end)

addcmd("unflyjump",{"noflyjump"},function(ay,az)
if ax then ax:Disconnect()end
end)

local ay={}
addcmd('autojump',{'ajump'},function(az,aA)
local aB=aA.Character
local aC=aB and aB:FindFirstChildWhichIsA"Humanoid"
local function autoJump()
if aB and aC then
local aD=workspace:FindPartOnRay(Ray.new(aC.RootPart.Position-Vector3.new(0,1.5,0),aC.RootPart.CFrame.lookVector*3),aC.Parent)
local V=workspace:FindPartOnRay(Ray.new(aC.RootPart.Position+Vector3.new(0,1.5,0),aC.RootPart.CFrame.lookVector*3),aC.Parent)
if aD or V then
aC.Jump=true
end
end
end
autoJump()
ay.ajLoop=(ay.ajLoop and ay.ajLoop:Disconnect()and false)or RunService.RenderStepped:Connect(autoJump)
ay.ajCA=(ay.ajCA and ay.ajCA:Disconnect()and false)or aA.CharacterAdded:Connect(function(aD)
aB,aC=aD,aD:WaitForChild"Humanoid"
autoJump()
ay.ajLoop=(ay.ajLoop and ay.ajLoop:Disconnect()and false)or RunService.RenderStepped:Connect(autoJump)
end)
end)

addcmd('unautojump',{'noautojump','noajump','unajump'},function(az,aA)
ay.ajLoop=(ay.ajLoop and ay.ajLoop:Disconnect()and false)or nil
ay.ajCA=(ay.ajCA and ay.ajCA:Disconnect()and false)or nil
end)

addcmd('edgejump',{'ejump'},function(az,aA)
local aB=aA.Character
local aC=aB and aB:FindFirstChildWhichIsA"Humanoid"

local aD
local V
local W
local function edgejump()
if aB and aC then
V=aD
aD=aC:GetState()
if V~=aD and aD==Enum.HumanoidStateType.Freefall and V~=Enum.HumanoidStateType.Jumping then
aB.HumanoidRootPart.CFrame=W
aB.HumanoidRootPart.Velocity=Vector3.new(aB.HumanoidRootPart.Velocity.X,aC.JumpPower or aC.JumpHeight,aB.HumanoidRootPart.Velocity.Z)
end
W=aB.HumanoidRootPart.CFrame
end
end
edgejump()
ay.ejLoop=(ay.ejLoop and ay.ejLoop:Disconnect()and false)or RunService.RenderStepped:Connect(edgejump)
ay.ejCA=(ay.ejCA and ay.ejCA:Disconnect()and false)or aA.CharacterAdded:Connect(function(X)
aB,aC=X,X:WaitForChild"Humanoid"
edgejump()
ay.ejLoop=(ay.ejLoop and ay.ejLoop:Disconnect()and false)or RunService.RenderStepped:Connect(edgejump)
end)
end)

addcmd('unedgejump',{'noedgejump','noejump','unejump'},function(az,aA)
ay.ejLoop=(ay.ejLoop and ay.ejLoop:Disconnect()and false)or nil
ay.ejCA=(ay.ejCA and ay.ejCA:Disconnect()and false)or nil
end)

addcmd("team",{},function(az,aA)
local aB=getstring(1)
local aC
local aD=aA.Character and getRoot(aA.Character)
for V,W in ipairs(Teams:GetChildren())do
if W.Name:lower():match(aB:lower())then
aC=W
break
end
end
if not aC then
return notify("Invalid Team",aB.." is not a valid team")
end
if aD and firetouchinterest then
for V,W in ipairs(workspace:GetDescendants())do
if W:IsA"SpawnLocation"and W.BrickColor==aC.TeamColor and W.AllowTeamChangeOnTouch==true then
firetouchinterest(W,aD,0)
firetouchinterest(W,aD,1)
break
end
end
else
aA.Team=aC
end
end)

addcmd('nobgui',{'unbgui','nobillboardgui','unbillboardgui','noname','rohg'},function(az,aA)
for aB,aC in pairs(aA.Character:GetDescendants())do
if aC:IsA"BillboardGui"or aC:IsA"SurfaceGui"then
aC:Destroy()
end
end
end)

addcmd('loopnobgui',{'loopunbgui','loopnobillboardgui','loopunbillboardgui','loopnoname','looprohg'},function(az,aA)
for aB,aC in pairs(aA.Character:GetDescendants())do
if aC:IsA"BillboardGui"or aC:IsA"SurfaceGui"then
aC:Destroy()
end
end
local function charPartAdded(aB)
if aB:IsA"BillboardGui"or aB:IsA"SurfaceGui"then
wait()
aB:Destroy()
end
end
charPartTrigger=aA.Character.DescendantAdded:Connect(charPartAdded)
end)

addcmd('unloopnobgui',{'unloopunbgui','unloopnobillboardgui','unloopunbillboardgui','unloopnoname','unlooprohg'},function(az,aA)
if charPartTrigger then
charPartTrigger:Disconnect()
end
end)

addcmd('spasm',{},function(az,aA)
if not r15(aA)then
local aB=aA.Character
local aC="33796059"
SpasmAnim=Instance.new"Animation"
SpasmAnim.AnimationId="rbxassetid://"..aC
Spasm=aB:FindFirstChildOfClass'Humanoid':LoadAnimation(SpasmAnim)
Spasm:Play()
Spasm:AdjustSpeed(99)
else
notify('R6 Required','This command requires the r6 rig type')
end
end)

addcmd('unspasm',{'nospasm'},function(az,aA)
Spasm:Stop()
SpasmAnim:Destroy()
end)

addcmd('headthrow',{},function(az,aA)
if not r15(aA)then
local aB="35154961"
local aC=Instance.new"Animation"
aC.AnimationId="rbxassetid://"..aB
local aD=aA.Character:FindFirstChildOfClass'Humanoid':LoadAnimation(aC)
aD:Play(0)
aD:AdjustSpeed(1)
else
notify('R6 Required','This command requires the r6 rig type')
end
end)

addcmd('animation',{'anim'},function(az,aA)
if not r15(aA)then
local aB=aA.Character
local aC=tostring(az[1])
local aD=Instance.new"Animation"
aD.AnimationId="rbxassetid://"..aC
local V=aB:FindFirstChildOfClass'Humanoid':LoadAnimation(aD)
V:Play()
if az[2]then
V:AdjustSpeed(tostring(az[2]))
end
else
notify('R6 Required','This command requires the r6 rig type')
end
end)

addcmd('noanim',{},function(az,aA)
aA.Character.Animate.Disabled=true
end)

addcmd('reanim',{},function(az,aA)
aA.Character.Animate.Disabled=false
end)

addcmd('animspeed',{},function(az,aA)
local aB=aA.Character
local aC=aB:FindFirstChildOfClass"Humanoid"or aB:FindFirstChildOfClass"AnimationController"

for aD,V in next,aC:GetPlayingAnimationTracks()do
V:AdjustSpeed(tonumber(az[1]or 1))
end
end)

addcmd('copyanimation',{'copyanim','copyemote'},function(az,aA)
local aB=getPlayer(az[1],aA)
for aC,aD in ipairs(aB)do local V=
Players[aD].Character
for W,X in pairs(aA.Character:FindFirstChildOfClass'Humanoid':GetPlayingAnimationTracks())do
X:Stop()
end
for W,X in pairs(Players[aD].Character:FindFirstChildOfClass'Humanoid':GetPlayingAnimationTracks())do
if not string.find(X.Animation.AnimationId,"507768375")then
local Y=aA.Character:FindFirstChildOfClass'Humanoid':LoadAnimation(X.Animation)
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

addcmd("copyanimationid",{"copyanimid","copyemoteid"},function(az,aA)
local aB=function(aB)
local aC="Animations Copied"

for aD,V in pairs(aB.Character:FindFirstChildWhichIsA"Humanoid":GetPlayingAnimationTracks())do
local W=V.Animation.AnimationId
local X=W:find"rbxassetid://"and W:match"%d+"

if not string.find(W,"507768375")and not string.find(W,"180435571")then
if X then
local Y,Z=pcall(function()
return MarketplaceService:GetProductInfo(tonumber(X)).Name
end)
local _=Y and Z or"Failed to get name"
aC=aC.."\n\nName: ".._.."\nAnimation Id: "..W
else
aC=aC.."\n\nAnimation Id: "..W
end
end
end

if aC~="Animations Copied"then
toClipboard(aC)
else
notify("Animations","No animations to copy")
end
end

if az[1]then
aB(Players[getPlayer(az[1],aA)[1] ])
else
aB(aA)
end
end)

addcmd('stopanimations',{'stopanims','stopanim'},function(az,aA)
local aB=aA.Character
local aC=aB:FindFirstChildOfClass"Humanoid"or aB:FindFirstChildOfClass"AnimationController"

for aD,V in next,aC:GetPlayingAnimationTracks()do
V:Stop()
end
end)

addcmd('refreshanimations',{'refreshanimation','refreshanims','refreshanim'},function(az,aA)
local aB=aA.Character or aA.CharacterAdded:Wait()
local aC=aB and aB:WaitForChild('Humanoid',15)
local aD=aB and aB:WaitForChild('Animate',15)
if not aC or not aD then
return notify('Refresh Animations','Failed to get Animate/Humanoid')
end
aD.Disabled=true
for V,W in ipairs(aC:GetPlayingAnimationTracks())do
W:Stop()
end
aD.Disabled=false
end)

addcmd('allowcustomanim',{'allowcustomanimations'},function(az,aA)
StarterPlayer.AllowCustomAnimations=true
execCmd'refreshanimations'
end)

addcmd('unallowcustomanim',{'unallowcustomanimations'},function(az,aA)
StarterPlayer.AllowCustomAnimations=false
execCmd'refreshanimations'
end)

addcmd('loopanimation',{'loopanim'},function(az,aA)
local aB=aA.Character
local aC=aB and aB.FindFirstChildWhichIsA(aB,"Humanoid")
for aD,V in ipairs(aC.GetPlayingAnimationTracks(aC))do
V.Looped=true
end
end)

addcmd('tpposition',{'tppos'},function(az,aA)
if#az<3 then return end
local aB,aC,aD=tonumber((az[1]:gsub(",",""))),tonumber((az[2]:gsub(",",""))),tonumber((az[3]:gsub(",","")))
local V=aA.Character
if V and getRoot(V)then
getRoot(V).CFrame=CFrame.new(aB,aC,aD)
end
end)

addcmd('tweentpposition',{'ttppos'},function(az,aA)
if#az<3 then return end
local aB,aC,aD=tonumber((az[1]:gsub(",",""))),tonumber((az[2]:gsub(",",""))),tonumber((az[3]:gsub(",","")))
local V=aA.Character
if V and getRoot(V)then
TweenService:Create(getRoot(aA.Character),TweenInfo.new(tweenSpeed,Enum.EasingStyle.Linear),{CFrame=CFrame.new(aB,aC,aD)}):Play()
end
end)

addcmd('offset',{},function(az,aA)
if#az<3 then
return
end
if aA.Character then
aA.Character:TranslateBy(Vector3.new(tonumber(az[1])or 0,tonumber(az[2])or 0,tonumber(az[3])or 0))
end
end)

addcmd('tweenoffset',{'toffset'},function(az,aA)
if#az<3 then return end
local aB,aC,aD=tonumber(az[1]),tonumber(az[2]),tonumber(az[3])
local V=aA.Character
if V and getRoot(V)then
TweenService:Create(getRoot(aA.Character),TweenInfo.new(tweenSpeed,Enum.EasingStyle.Linear),{CFrame=CFrame.new(aB,aC,aD)}):Play()
end
end)

addcmd('clickteleport',{},function(az,aA)
if aA==Players.LocalPlayer then
notify('Click TP','Go to Settings>Keybinds>Add to set up click tp')
end
end)

addcmd("mouseteleport",{"mousetp"},function(az,aA)
local aB=getRoot(aA.Character)
local aC=IYMouse.Hit
if aB and aC then
aB.CFrame=CFrame.new(aC.X,aC.Y+3,aC.Z,select(4,aB.CFrame:components()))
end
end)

addcmd('tptool',{'teleporttool'},function(az,aA)
local aB=Instance.new"Tool"
aB.Name="Teleport Tool"
aB.RequiresHandle=false
aB.Parent=aA.Backpack
aB.Activated:Connect(function()
local aC=aA.Character or workspace:FindFirstChild(aA.Name)
local aD=aC and aC:FindFirstChild"HumanoidRootPart"
if not aC or not aD then
return warn"Failed to find HumanoidRootPart"
end
aD.CFrame=CFrame.new(IYMouse.Hit.X,IYMouse.Hit.Y+3,IYMouse.Hit.Z,select(4,aD.CFrame:components()))
end)
end)

addcmd('clickdelete',{},function(az,aA)
if aA==Players.LocalPlayer then
notify('Click Delete','Go to Settings>Keybinds>Add to set up click delete')
end
end)

addcmd('getposition',{'getpos','notifypos','notifyposition'},function(az,aA)
local aB=getPlayer(az[1],aA)
for aC,aD in pairs(aB)do
local V=Players[aD].Character
local W=V and(getRoot(V)or V:FindFirstChildWhichIsA"BasePart")
W=W and W.Position
if not W then
return notify('Getposition Error','Missing character')
end
local X=math.round(W.X)..", "..math.round(W.Y)..", "..math.round(W.Z)
notify('Current Position',X)
end
end)

addcmd('copyposition',{'copypos'},function(az,aA)
local aB=getPlayer(az[1],aA)
for aC,aD in pairs(aB)do
local V=Players[aD].Character
local W=V and(getRoot(V)or V:FindFirstChildWhichIsA"BasePart")
W=W and W.Position
if not W then
return notify('Getposition Error','Missing character')
end
local X=math.round(W.X)..", "..math.round(W.Y)..", "..math.round(W.Z)
toClipboard(X)
end
end)

addcmd('walktopos',{'walktoposition'},function(az,aA)
if aA.Character:FindFirstChildOfClass'Humanoid'and aA.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
aA.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
aA.Character:FindFirstChildOfClass'Humanoid'.WalkToPoint=Vector3.new(az[1],az[2],az[3])
end)

addcmd('speed',{'ws','walkspeed'},function(az,aA)
if az[2]then
local aB=az[2]or 16
if isNumber(aB)then
aA.Character:FindFirstChildOfClass'Humanoid'.WalkSpeed=aB
end
else
local aB=az[1]or 16
if isNumber(aB)then
aA.Character:FindFirstChildOfClass'Humanoid'.WalkSpeed=aB
end
end
end)

addcmd('spoofspeed',{'spoofws','spoofwalkspeed'},function(az,aA)
if az[1]and isNumber(az[1])then
if hookmetamethod then
local aB=aA.Character
local aC;
local aD;aD=hookmetamethod(game,"__index",function(V,W)
local X=W:gsub("\0","")
if(X=="WalkSpeed"or X=="walkSpeed")and V:IsA"Humanoid"and V:IsDescendantOf(aB)and not checkcaller()then
return aC or az[1]
end
return aD(V,W)
end)
local V;V=hookmetamethod(game,"__newindex",function(W,X,Y)
local Z=string.gsub(X,"\0","")
if(Z=="WalkSpeed"or Z=="walkSpeed")and W:IsA"Humanoid"and W:IsDescendantOf(aB)and not checkcaller()then
aC=tonumber(Y)
return aC
end
return V(W,X,Y)
end)
else
notify('Incompatible Exploit','Your exploit does not support this command (missing hookmetamethod)')
end
end
end)

addcmd('loopspeed',{'loopws'},function(az,aA)
local aB=az[1]or 16
if az[2]then
aB=az[2]or 16
end
if isNumber(aB)then
local aC=aA.Character or workspace:FindFirstChild(aA.Name)
local aD=aC and aC:FindFirstChildWhichIsA"Humanoid"
local function WalkSpeedChange()
if aC and aD then
aD.WalkSpeed=aB
end
end
WalkSpeedChange()
ay.wsLoop=(ay.wsLoop and ay.wsLoop:Disconnect()and false)or aD:GetPropertyChangedSignal"WalkSpeed":Connect(WalkSpeedChange)
ay.wsCA=(ay.wsCA and ay.wsCA:Disconnect()and false)or aA.CharacterAdded:Connect(function(V)
aC,aD=V,V:WaitForChild"Humanoid"
WalkSpeedChange()
ay.wsLoop=(ay.wsLoop and ay.wsLoop:Disconnect()and false)or aD:GetPropertyChangedSignal"WalkSpeed":Connect(WalkSpeedChange)
end)
end
end)

addcmd('unloopspeed',{'unloopws'},function(az,aA)
ay.wsLoop=(ay.wsLoop and ay.wsLoop:Disconnect()and false)or nil
ay.wsCA=(ay.wsCA and ay.wsCA:Disconnect()and false)or nil
end)

addcmd('spoofjumppower',{'spoofjp'},function(az,aA)
if az[1]and isNumber(az[1])then
if hookmetamethod then
local aB=aA.Character
local aC;
local aD;aD=hookmetamethod(game,"__index",function(V,W)
local X=W:gsub("\0","")
if(X=="JumpPower"or X=="jumpPower")and V:IsA"Humanoid"and V:IsDescendantOf(aB)and not checkcaller()then
return aC or az[1]
end
return aD(V,W)
end)
local V;V=hookmetamethod(game,"__newindex",function(W,X,Y)
local Z=string.gsub(X,"\0","")
if(Z=="JumpPower"or Z=="jumpPower")and W:IsA"Humanoid"and W:IsDescendantOf(aB)and not checkcaller()then
aC=tonumber(Y)
return aC
end
return V(W,X,Y)
end)
else
notify('Incompatible Exploit','Your exploit does not support this command (missing hookmetamethod)')
end
end
end)

addcmd('loopjumppower',{'loopjp','loopjpower'},function(az,aA)
local aB=az[1]or 50
if isNumber(aB)then
local aC=aA.Character or workspace:FindFirstChild(aA.Name)
local aD=aC and aC:FindFirstChildWhichIsA"Humanoid"
local function JumpPowerChange()
if aC and aD then
if aA.Character:FindFirstChildOfClass'Humanoid'.UseJumpPower then
aA.Character:FindFirstChildOfClass'Humanoid'.JumpPower=aB
else
aA.Character:FindFirstChildOfClass'Humanoid'.JumpHeight=aB
end
end
end
JumpPowerChange()
ay.jpLoop=(ay.jpLoop and ay.jpLoop:Disconnect()and false)or aD:GetPropertyChangedSignal"JumpPower":Connect(JumpPowerChange)
ay.jpCA=(ay.jpCA and ay.jpCA:Disconnect()and false)or aA.CharacterAdded:Connect(function(V)
aC,aD=V,V:WaitForChild"Humanoid"
JumpPowerChange()
ay.jpLoop=(ay.jpLoop and ay.jpLoop:Disconnect()and false)or aD:GetPropertyChangedSignal"JumpPower":Connect(JumpPowerChange)
end)
end
end)

addcmd('unloopjumppower',{'unloopjp','unloopjpower'},function(az,aA)
local aB=aA.Character or workspace:FindFirstChild(aA.Name)
local aC=aB and aB:FindFirstChildWhichIsA"Humanoid"
ay.jpLoop=(ay.jpLoop and ay.jpLoop:Disconnect()and false)or nil
ay.jpCA=(ay.jpCA and ay.jpCA:Disconnect()and false)or nil
if aB and aC then
if aA.Character:FindFirstChildOfClass'Humanoid'.UseJumpPower then
aA.Character:FindFirstChildOfClass'Humanoid'.JumpPower=50
else
aA.Character:FindFirstChildOfClass'Humanoid'.JumpHeight=50
end
end
end)

addcmd('tools',{'gears'},function(az,aA)
local function copy(aB)
for aC,aD in pairs(aB:GetChildren())do
if aD:IsA'Tool'or aD:IsA'HopperBin'then
aD:Clone().Parent=aA:FindFirstChildOfClass"Backpack"
end
copy(aD)
end
end
copy(Lighting)
local function copy(aB)
for aC,aD in pairs(aB:GetChildren())do
if aD:IsA'Tool'or aD:IsA'HopperBin'then
aD:Clone().Parent=aA:FindFirstChildOfClass"Backpack"
end
copy(aD)
end
end
copy(ReplicatedStorage)
notify('Tools','Copied tools from ReplicatedStorage and Lighting')
end)

addcmd('notools',{'rtools','clrtools','removetools','deletetools','dtools'},function(az,aA)
for aB,aC in pairs(aA:FindFirstChildOfClass"Backpack":GetDescendants())do
if aC:IsA'Tool'or aC:IsA'HopperBin'then
aC:Destroy()
end
end
for aB,aC in pairs(aA.Character:GetDescendants())do
if aC:IsA'Tool'or aC:IsA'HopperBin'then
aC:Destroy()
end
end
end)

addcmd('deleteselectedtool',{'dst'},function(az,aA)
for aB,aC in pairs(aA.Character:GetDescendants())do
if aC:IsA'Tool'or aC:IsA'HopperBin'then
aC:Destroy()
end
end
end)

addcmd("console",{},function(az,aA)
StarterGui:SetCore("DevConsoleVisible",true)
end)

addcmd('oldconsole',{},function(az,aA)

notify("Loading",'Hold on a sec')local
aB, aC=pcall(function()
return game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/console.lua",true)
end)local

aD, V=loadstring(aC)
if typeof(aD)~="function"then
return
end

local W,X=pcall(aD)
if(not W)then
if printconsole then
printconsole(X)
elseif printoutput then
printoutput(X)
end
end
wait(1)
notify('Console','Press F9 to open the console')
end)

addcmd('explorer',{'dex'},function(az,aA)
notify('Loading','Hold on a sec')
loadstring(game:HttpGet"https://raw.githubusercontent.com/infyiff/backup/main/dex.lua")()
end)

addcmd('olddex',{'odex'},function(az,aA)
notify('Loading old explorer','Hold on a sec')

local aB=function(aB)
local aC={}
if aB then
local aD=InsertService:LoadLocalAsset(aB)
if aD then
table.insert(aC,aD)
end
end
return aC
end

local aC=aB"rbxassetid://10055842438"[1]
aC.Parent=PARENT

local function Load(aD,V)
local function GiveOwnGlobals(W,X)


local aE,aF,aG={},{
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
for aE,aF in pairs(Z)do
local aG,aH=pcall(gethiddenproperty,Y,aF)
if aG then
_[aF]=aH
end
end

return _
end

return Z
end

return{}
end
},{}
aG.__index=function(aH,Y)
return aF[Y]==nil and getgenv()[Y]or aF[Y]
end
aG.__newindex=function(aH,Y,Z)
if aF[Y]==nil then
getgenv()[Y]=Z
else
aF[Y]=Z
end
end
setmetatable(aE,aG)
pcall(setfenv,W,aE)
return W
end

local function LoadScripts(aE,aF)
if aF:IsA"LocalScript"then
task.spawn(function()
GiveOwnGlobals(loadstring(aF.Source,"="..aF:GetFullName()),aF)()
end)
end
table.foreach(aF:GetChildren(),LoadScripts)
end

LoadScripts(nil,aD)
end

Load(aC)
end)

addcmd('remotespy',{'rspy'},function(az,aA)
notify("Loading",'Hold on a sec')


loadstring(game:HttpGet"https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua")()
end)

addcmd('audiologger',{'alogger'},function(az,aA)
notify("Loading",'Hold on a sec')
loadstring(game:HttpGet(('https://raw.githubusercontent.com/infyiff/backup/main/audiologger.lua'),true))()
end)

local az
addcmd('loopgoto',{},function(aA,aB)
local aC=getPlayer(aA[1],aB)
for aD,aE in pairs(aC)do
az=nil
if aB.Character:FindFirstChildOfClass'Humanoid'and aB.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
aB.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
az=Players[aE]
local aF=3
if aA[2]and isNumber(aA[2])then
aF=aA[2]
end
local aG=0
if aA[3]and isNumber(aA[3])then
aG=aA[3]
end
repeat
if Players:FindFirstChild(aE)then
if Players[aE].Character~=nil then
getRoot(aB.Character).CFrame=getRoot(Players[aE].Character).CFrame+Vector3.new(aF,1,0)
end
wait(aG)
else
az=nil
end
until az~=Players[aE]
end
end)

addcmd('unloopgoto',{'noloopgoto'},function(aA,aB)
az=nil
end)

addcmd('headsit',{},function(aA,aB)
local aC=getPlayer(aA[1],aB)
if headSit then headSit:Disconnect()end
for aD,aE in pairs(aC)do
aB.Character:FindFirstChildOfClass'Humanoid'.Sit=true
headSit=RunService.Heartbeat:Connect(function()
if Players:FindFirstChild(Players[aE].Name)and Players[aE].Character~=nil and getRoot(Players[aE].Character)and getRoot(aB.Character)and aB.Character:FindFirstChildOfClass'Humanoid'.Sit==true then
getRoot(aB.Character).CFrame=getRoot(Players[aE].Character).CFrame*CFrame.Angles(0,math.rad(0),0)*CFrame.new(0,1.6,0.4)
else
headSit:Disconnect()
end
end)
end
end)

addcmd('chat',{'say'},function(aA,aB)
local aC=getstring(1)
chatMessage(aC)
end)


spamming=false
spamspeed=1
addcmd('spam',{},function(aA,aB)
spamming=true
local aC=getstring(1)
repeat wait(spamspeed)
chatMessage(aC)
until spamming==false
end)

addcmd('nospam',{'unspam'},function(aA,aB)
spamming=false
end)

addcmd('whisper',{'pm'},function(aA,aB)
local aC=getPlayer(aA[1],aB)
for aD,aE in pairs(aC)do
task.spawn(function()
local aF=Players[aE].Name
local aG=getstring(2)
chatMessage("/w "..aF.." "..aG)
end)
end
end)

pmspamming={}
addcmd('pmspam',{},function(aA,aB)
local aC=getPlayer(aA[1],aB)
for aD,aE in pairs(aC)do
task.spawn(function()
local aF=Players[aE].Name
if FindInTable(pmspamming,aF)then return end
table.insert(pmspamming,aF)
local aG=getstring(2)
repeat
if Players:FindFirstChild(aE)then
wait(spamspeed)
chatMessage("/w "..aF.." "..aG)
else
for aH,V in pairs(pmspamming)do if V==aF then table.remove(pmspamming,aH)end end
end
until not FindInTable(pmspamming,aF)
end)
end
end)

addcmd('nopmspam',{'unpmspam'},function(aA,aB)
local aC=getPlayer(aA[1],aB)
for aD,aE in pairs(aC)do
task.spawn(function()
for aF,aG in pairs(pmspamming)do
if aG==Players[aE].Name then
table.remove(pmspamming,aF)
end
end
end)
end
end)

addcmd('spamspeed',{},function(aA,aB)
local aC=aA[1]or 1
if isNumber(aC)then
spamspeed=aC
end
end)

addcmd('bubblechat',{},function(aA,aB)
if isLegacyChat then
ChatService.BubbleChatEnabled=true
else
TextChatService.BubbleChatConfiguration.Enabled=true
end
end)

addcmd('unbubblechat',{'nobubblechat'},function(aA,aB)
if isLegacyChat then
ChatService.BubbleChatEnabled=false
else
TextChatService.BubbleChatConfiguration.Enabled=false
end
end)

addcmd('blockhead',{},function(aA,aB)
aB.Character.Head:FindFirstChildOfClass"SpecialMesh":Destroy()
end)

addcmd('blockhats',{},function(aA,aB)
for aC,aD in pairs(aB.Character:FindFirstChildOfClass'Humanoid':GetAccessories())do
for aE,aF in pairs(aD:GetDescendants())do
if aF:IsA"SpecialMesh"then
aF:Destroy()
end
end
end
end)

addcmd('blocktool',{},function(aA,aB)
for aC,aD in pairs(aB.Character:GetChildren())do
if aD:IsA"Tool"or aD:IsA"HopperBin"then
for aE,aF in pairs(aD:GetDescendants())do
if aF:IsA"SpecialMesh"then
aF:Destroy()
end
end
end
end
end)

addcmd('creeper',{},function(aA,aB)
if r15(aB)then
aB.Character.Head:FindFirstChildOfClass"SpecialMesh":Destroy()
aB.Character.LeftUpperArm:Destroy()
aB.Character.RightUpperArm:Destroy()
aB.Character:FindFirstChildOfClass"Humanoid":RemoveAccessories()
else
aB.Character.Head:FindFirstChildOfClass"SpecialMesh":Destroy()
aB.Character["Left Arm"]:Destroy()
aB.Character["Right Arm"]:Destroy()
aB.Character:FindFirstChildOfClass"Humanoid":RemoveAccessories()
end
end)

function getTorso(aA)
aA=aA or Players.LocalPlayer.Character
return aA:FindFirstChild"Torso"or aA:FindFirstChild"UpperTorso"or aA:FindFirstChild"LowerTorso"or aA:FindFirstChild"HumanoidRootPart"
end

addcmd("bang",{"rape"},function(aA,aB)
execCmd"unbang"
wait()
local aC=aB.Character:FindFirstChildWhichIsA"Humanoid"
bangAnim=Instance.new"Animation"
bangAnim.AnimationId=not r15(aB)and"rbxassetid://148840371"or"rbxassetid://5918726674"
bang=aC:LoadAnimation(bangAnim)
bang:Play(0.1,1,1)
bang:AdjustSpeed(aA[2]or 3)
bangDied=aC.Died:Connect(function()
bang:Stop()
bangAnim:Destroy()
bangDied:Disconnect()
bangLoop:Disconnect()
end)
if aA[1]then
local aD=getPlayer(aA[1],aB)
for aE,aF in pairs(aD)do
local aG=Players[aF].Name
local aH=CFrame.new(0,0,1.1)
bangLoop=RunService.Stepped:Connect(function()
pcall(function()
local V=getTorso(Players[aG].Character)
getRoot(aB.Character).CFrame=V.CFrame*aH
end)
end)
end
end
end)

addcmd("unbang",{"unrape"},function(aA,aB)
if bangDied then
bangDied:Disconnect()
bang:Stop()
bangAnim:Destroy()
bangLoop:Disconnect()
end
end)

addcmd('carpet',{},function(aA,aB)
if not r15(aB)then
execCmd'uncarpet'
wait()
local aC=getPlayer(aA[1],aB)
for aD,aE in pairs(aC)do
carpetAnim=Instance.new"Animation"
carpetAnim.AnimationId="rbxassetid://282574440"
carpet=aB.Character:FindFirstChildOfClass'Humanoid':LoadAnimation(carpetAnim)
carpet:Play(.1,1,1)
local aF=Players[aE].Name
carpetDied=aB.Character:FindFirstChildOfClass'Humanoid'.Died:Connect(function()
carpetLoop:Disconnect()
carpet:Stop()
carpetAnim:Destroy()
carpetDied:Disconnect()
end)
carpetLoop=RunService.Heartbeat:Connect(function()
pcall(function()
getRoot(Players.LocalPlayer.Character).CFrame=getRoot(Players[aF].Character).CFrame
end)
end)
end
else
notify('R6 Required','This command requires the r6 rig type')
end
end)

addcmd('uncarpet',{'nocarpet'},function(aA,aB)
if carpetLoop then
carpetLoop:Disconnect()
carpetDied:Disconnect()
carpet:Stop()
carpetAnim:Destroy()
end
end)

addcmd('friend',{},function(aA,aB)
local aC=getPlayer(aA[1],aB)
for aD,aE in pairs(aC)do
aB:RequestFriendship(Players[aE])
end
end)

addcmd('unfriend',{},function(aA,aB)
local aC=getPlayer(aA[1],aB)
for aD,aE in pairs(aC)do
aB:RevokeFriendship(Players[aE])
end
end)

addcmd('bringpart',{},function(aA,aB)
for aC,aD in pairs(workspace:GetDescendants())do
if aD.Name:lower()==getstring(1):lower()and aD:IsA"BasePart"then
aD.CFrame=getRoot(aB.Character).CFrame
end
end
end)

addcmd('bringpartclass',{'bpc'},function(aA,aB)
for aC,aD in pairs(workspace:GetDescendants())do
if aD.ClassName:lower()==getstring(1):lower()and aD:IsA"BasePart"then
aD.CFrame=getRoot(aB.Character).CFrame
end
end
end)

gotopartDelay=0.1
addcmd('gotopart',{'topart'},function(aA,aB)
for aC,aD in pairs(workspace:GetDescendants())do
if aD.Name:lower()==getstring(1):lower()and aD:IsA"BasePart"then
if aB.Character:FindFirstChildOfClass'Humanoid'and aB.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
aB.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
wait(gotopartDelay)
getRoot(aB.Character).CFrame=aD.CFrame
end
end
end)

addcmd('tweengotopart',{'tgotopart','ttopart'},function(aA,aB)
for aC,aD in pairs(workspace:GetDescendants())do
if aD.Name:lower()==getstring(1):lower()and aD:IsA"BasePart"then
if aB.Character:FindFirstChildOfClass'Humanoid'and aB.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
aB.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
wait(gotopartDelay)
TweenService:Create(getRoot(aB.Character),TweenInfo.new(tweenSpeed,Enum.EasingStyle.Linear),{CFrame=aD.CFrame}):Play()
end
end
end)

addcmd('gotopartclass',{'gpc'},function(aA,aB)
for aC,aD in pairs(workspace:GetDescendants())do
if aD.ClassName:lower()==getstring(1):lower()and aD:IsA"BasePart"then
if aB.Character:FindFirstChildOfClass'Humanoid'and aB.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
aB.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
wait(gotopartDelay)
getRoot(aB.Character).CFrame=aD.CFrame
end
end
end)

addcmd('tweengotopartclass',{'tgpc'},function(aA,aB)
for aC,aD in pairs(workspace:GetDescendants())do
if aD.ClassName:lower()==getstring(1):lower()and aD:IsA"BasePart"then
if aB.Character:FindFirstChildOfClass'Humanoid'and aB.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
aB.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
wait(gotopartDelay)
TweenService:Create(getRoot(aB.Character),TweenInfo.new(tweenSpeed,Enum.EasingStyle.Linear),{CFrame=aD.CFrame}):Play()
end
end
end)

addcmd('gotomodel',{'tomodel'},function(aA,aB)
for aC,aD in pairs(workspace:GetDescendants())do
if aD.Name:lower()==getstring(1):lower()and aD:IsA"Model"then
if aB.Character:FindFirstChildOfClass'Humanoid'and aB.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
aB.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
wait(gotopartDelay)
getRoot(aB.Character).CFrame=aD:GetModelCFrame()
end
end
end)

addcmd('tweengotomodel',{'tgotomodel','ttomodel'},function(aA,aB)
for aC,aD in pairs(workspace:GetDescendants())do
if aD.Name:lower()==getstring(1):lower()and aD:IsA"Model"then
if aB.Character:FindFirstChildOfClass'Humanoid'and aB.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
aB.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
wait(gotopartDelay)
TweenService:Create(getRoot(aB.Character),TweenInfo.new(tweenSpeed,Enum.EasingStyle.Linear),{CFrame=aD:GetModelCFrame()}):Play()
end
end
end)

addcmd('gotopartdelay',{},function(aA,aB)
local aC=aA[1]or 0.1
if isNumber(aC)then
gotopartDelay=aC
end
end)

addcmd('noclickdetectorlimits',{'nocdlimits','removecdlimits'},function(aA,aB)
for aC,aD in ipairs(workspace:GetDescendants())do
if aD:IsA"ClickDetector"then
aD.MaxActivationDistance=math.huge
end
end
end)

addcmd('fireclickdetectors',{'firecd','firecds'},function(aA,aB)
if fireclickdetector then
if aA[1]then
local aC=getstring(1)
for aD,aE in ipairs(workspace:GetDescendants())do
if aE:IsA"ClickDetector"and aE.Name==aC or aE.Parent.Name==aC then
fireclickdetector(aE)
end
end
else
for aC,aD in ipairs(workspace:GetDescendants())do
if aD:IsA"ClickDetector"then
fireclickdetector(aD)
end
end
end
else
notify("Incompatible Exploit","Your exploit does not support this command (missing fireclickdetector)")
end
end)

addcmd('noproximitypromptlimits',{'nopplimits','removepplimits'},function(aA,aB)
for aC,aD in pairs(workspace:GetDescendants())do
if aD:IsA"ProximityPrompt"then
aD.MaxActivationDistance=math.huge
end
end
end)

addcmd('fireproximityprompts',{'firepp'},function(aA,aB)
if fireproximityprompt then
if aA[1]then
local aC=getstring(1)
for aD,aE in ipairs(workspace:GetDescendants())do
if aE:IsA"ProximityPrompt"and aE.Name==aC or aE.Parent.Name==aC then
fireproximityprompt(aE)
end
end
else
for aC,aD in ipairs(workspace:GetDescendants())do
if aD:IsA"ProximityPrompt"then
fireproximityprompt(aD)
end
end
end
else
notify("Incompatible Exploit","Your exploit does not support this command (missing fireproximityprompt)")
end
end)

local aA
addcmd('instantproximityprompts',{'instantpp'},function(aB,aC)
if fireproximityprompt then
execCmd"uninstantproximityprompts"
wait(0.1)
aA=ProximityPromptService.PromptButtonHoldBegan:Connect(function(aD)
fireproximityprompt(aD)
end)
else
notify('Incompatible Exploit','Your exploit does not support this command (missing fireproximityprompt)')
end
end)

addcmd('uninstantproximityprompts',{'uninstantpp'},function(aB,aC)
if aA~=nil then
aA:Disconnect()
aA=nil
end
end)

addcmd('notifyping',{'ping'},function(aB,aC)
notify("Ping",math.round(aC:GetNetworkPing()*1000).."ms")
end)

addcmd('grabtools',{},function(aB,aC)
local aD=aC.Character:FindFirstChildWhichIsA"Humanoid"
for aE,aF in ipairs(workspace:GetChildren())do
if aC.Character and aF:IsA"BackpackItem"and aF:FindFirstChild"Handle"then
aD:EquipTool(aF)
end
end

if grabtoolsFunc then
grabtoolsFunc:Disconnect()
end

grabtoolsFunc=workspace.ChildAdded:Connect(function(aE)
if aC.Character and aE:IsA"BackpackItem"and aE:FindFirstChild"Handle"then
aD:EquipTool(aE)
end
end)

notify("Grabtools","Picking up any dropped tools")
end)

addcmd('nograbtools',{'ungrabtools'},function(aB,aC)
if grabtoolsFunc then
grabtoolsFunc:Disconnect()
end

notify("Grabtools","Grabtools has been disabled")
end)

local aB={}
addcmd('removespecifictool',{},function(aC,aD)
if aC[1]and aD:FindFirstChildOfClass"Backpack"then
local aE=string.lower(getstring(1))
local aF=RunService.RenderStepped:Connect(function()
if aD:FindFirstChildOfClass"Backpack"then
for aF,aG in pairs(aD:FindFirstChildOfClass"Backpack":GetChildren())do
if aG.Name:lower()==aE then
aG:Remove()
end
end
end
end)
aB[aE]=aF
end
end)

addcmd('unremovespecifictool',{},function(aC,aD)
if aC[1]then
local aE=string.lower(getstring(1))
if aB[aE]~=nil then
aB[aE]:Disconnect()
aB[aE]=nil
end
end
end)

addcmd('clearremovespecifictool',{},function(aC,aD)
for aE in pairs(aB)do
aB[aE]:Disconnect()
aB[aE]=nil
end
end)

addcmd('light',{},function(aC,aD)
local aE=Instance.new"PointLight"
aE.Parent=getRoot(aD.Character)
aE.Range=30
if aC[1]then
aE.Brightness=aC[2]
aE.Range=aC[1]
else
aE.Brightness=5
end
end)

addcmd('unlight',{'nolight'},function(aC,aD)
for aE,aF in pairs(aD.Character:GetDescendants())do
if aF.ClassName=="PointLight"then
aF:Destroy()
end
end
end)

addcmd('copytools',{},function(aC,aD)
local aE=getPlayer(aC[1],aD)
for aF,aG in pairs(aE)do
task.spawn(function()
for aH,V in pairs(Players[aG]:FindFirstChildOfClass"Backpack":GetChildren())do
if V:IsA'Tool'or V:IsA'HopperBin'then
V:Clone().Parent=aD:FindFirstChildOfClass"Backpack"
end
end
end)
end
end)

addcmd('naked',{},function(aC,aD)
for aE,aF in pairs(aD.Character:GetDescendants())do
if aF:IsA"Clothing"or aF:IsA"ShirtGraphic"then
aF:Destroy()
end
end
end)

addcmd('noface',{'removeface'},function(aC,aD)
for aE,aF in pairs(aD.Character:GetDescendants())do
if aF:IsA"Decal"and aF.Name=='face'then
aF:Destroy()
end
end
end)

addcmd('spawnpoint',{'spawn'},function(aC,aD)
spawnpos=getRoot(aD.Character).CFrame
spawnpoint=true
spDelay=tonumber(aC[1])or 0.1
notify('Spawn Point','Spawn point created at '..tostring(spawnpos))
end)

addcmd('nospawnpoint',{'nospawn','removespawnpoint'},function(aC,aD)
spawnpoint=false
notify('Spawn Point','Removed spawn point')
end)

addcmd('flashback',{'diedtp'},function(aC,aD)
if q~=nil then
if aD.Character:FindFirstChildOfClass'Humanoid'and aD.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
aD.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
getRoot(aD.Character).CFrame=q
end
end)

addcmd('hatspin',{'spinhats'},function(aC,aD)
execCmd'unhatspin'
wait(.5)
for aE,aF in pairs(aD.Character:FindFirstChildOfClass'Humanoid':GetAccessories())do
local aG=Instance.new"BodyPosition"aG.Name=randomString()aG.Parent=aF.Handle
local aH=Instance.new"BodyAngularVelocity"aH.Name=randomString()aH.Parent=aF.Handle
aF.Handle:FindFirstChildOfClass"Weld":Destroy()
if aC[1]then
aH.AngularVelocity=Vector3.new(0,aC[1],0)
aH.MaxTorque=Vector3.new(0,aC[1]*2,0)
else
aH.AngularVelocity=Vector3.new(0,100,0)
aH.MaxTorque=Vector3.new(0,200,0)
end
aG.P=30000
aG.D=50
spinhats=RunService.Stepped:Connect(function()
pcall(function()
aG.Position=Players.LocalPlayer.Character.Head.Position
end)
end)
end
end)

addcmd('unhatspin',{'unspinhats'},function(aC,aD)
if spinhats then
spinhats:Disconnect()
end
for aE,aF in pairs(aD.Character:FindFirstChildOfClass'Humanoid':GetAccessories())do
aF.Parent=workspace
for aG,aH in pairs(aF.Handle)do
if aH:IsA"BodyPosition"or aH:IsA"BodyAngularVelocity"then
aH:Destroy()
end
end
wait()
aF.Parent=aD.Character
end
end)

addcmd('clearhats',{'cleanhats'},function(aC,aD)
if firetouchinterest then
local aE=Players.LocalPlayer
local aF=aE.Character
local aG=aF:FindFirstChild"HumanoidRootPart".CFrame
local aH={}

for V,W in ipairs(workspace:GetChildren())do
if W:IsA"Accessory"then
table.insert(aH,W)
end
end

for V,W in ipairs(aF:FindFirstChildOfClass"Humanoid":GetAccessories())do
W:Destroy()
end

for V=1,#aH do
repeat RunService.Heartbeat:wait()until aH[V]
firetouchinterest(aH[V].Handle,aF:FindFirstChild"HumanoidRootPart",0)
repeat RunService.Heartbeat:wait()until aF:FindFirstChildOfClass"Accessory"
aF:FindFirstChildOfClass"Accessory":Destroy()
repeat RunService.Heartbeat:wait()until not aF:FindFirstChildOfClass"Accessory"
end

execCmd"reset"

aE.CharacterAdded:Wait()

for V=1,20 do
RunService.Heartbeat:Wait()
if aE.Character:FindFirstChild"HumanoidRootPart"then
aE.Character:FindFirstChild"HumanoidRootPart".CFrame=aG
end
end
else
notify("Incompatible Exploit","Your exploit does not support this command (missing firetouchinterest)")
end
end)

addcmd('split',{},function(aC,aD)
if r15(aD)then
aD.Character.UpperTorso.Waist:Destroy()
else
notify('R15 Required','This command requires the r15 rig type')
end
end)

addcmd('nilchar',{},function(aC,aD)
if aD.Character~=nil then
aD.Character.Parent=nil
end
end)

addcmd('unnilchar',{'nonilchar'},function(aC,aD)
if aD.Character~=nil then
aD.Character.Parent=workspace
end
end)

addcmd('noroot',{'removeroot','rroot'},function(aC,aD)
if aD.Character~=nil then
local aE=Players.LocalPlayer.Character
aE.Parent=nil
aE.HumanoidRootPart:Destroy()
aE.Parent=workspace
end
end)

addcmd('replaceroot',{'replacerootpart'},function(aC,aD)
if aD.Character~=nil and aD.Character:FindFirstChild"HumanoidRootPart"then
local aE=aD.Character
local aF=aE.Parent
local aG=aE and aE:FindFirstChild"HumanoidRootPart"
local aH=aG.CFrame
aE.Parent=game
local V=aG:Clone()
V.Parent=aE
aG=aG:Destroy()
V.CFrame=aH
aE.Parent=aF
end
end)

addcmd('clearcharappearance',{'clearchar','clrchar'},function(aC,aD)
aD:ClearCharacterAppearance()
end)

addcmd('equiptools',{},function(aC,aD)
for aE,aF in pairs(aD:FindFirstChildOfClass"Backpack":GetChildren())do
if aF:IsA"Tool"or aF:IsA"HopperBin"then
aF.Parent=aD.Character
end
end
end)

addcmd('unequiptools',{},function(aC,aD)
aD.Character:FindFirstChildOfClass'Humanoid':UnequipTools()
end)

local function GetHandleTools(aC)
aC=aC or Players.LocalPlayer
local aD={}
for aE,aF in ipairs(aC.Character and aC.Character:GetChildren()or{})do
if aF.IsA(aF,"BackpackItem")and aF.FindFirstChild(aF,"Handle")then
aD[#aD+1]=aF
end
end
for aE,aF in ipairs(aC.Backpack:GetChildren())do
if aF.IsA(aF,"BackpackItem")and aF.FindFirstChild(aF,"Handle")then
aD[#aD+1]=aF
end
end
return aD
end
addcmd('dupetools',{'clonetools'},function(aC,aD)
local aE=tonumber(aC[1])or 1
local aF=aD.Character.HumanoidRootPart.Position
local aG,aH={},Vector3.new(math.random(-2E5,2e5),2e5,math.random(-2E5,2e5))
for V=1,aE do
local W=aD.Character:WaitForChild"Humanoid"
wait(.1,W.Parent:MoveTo(aH))
W.RootPart.Anchored=aD:ClearCharacterAppearance(wait(.1))or true
local X=GetHandleTools(aD)
while#X>0 do
for Y,Z in ipairs(X)do
task.spawn(function()
for _=1,25 do
Z.Parent=aD.Character
Z.Handle.Anchored=true
end
for _=1,5 do
Z.Parent=workspace
end
table.insert(aG,Z.Handle)
end)
end
X=GetHandleTools(aD)
end
wait(.1)
aD.Character=aD.Character:Destroy()
aD.CharacterAdded:Wait():WaitForChild"Humanoid".Parent:MoveTo(aE==V and aF or aH,wait(.1))
if V==aE or V%5==0 then
local Y=aD.Character.HumanoidRootPart
if type(firetouchinterest)=="function"then
for Z,_ in ipairs(aG)do
_.Anchored=not firetouchinterest(_,Y,1,firetouchinterest(_,Y,0))and false or false
end
else
for Z,_ in ipairs(aG)do
task.spawn(function()
local aI=_.CanCollide
_.CanCollide=false
_.Anchored=false
for aJ=1,10 do
_.CFrame=Y.CFrame
wait()
end
_.CanCollide=aI
end)
end
end
wait(.1)
aG={}
end
aH=aH+Vector3.new(10,math.random(-5,5),0)
end
end)

local aC=RunService.RenderStepped
addcmd('givetool',{'givetools'},function(aD,aE)
local aF=Players[getPlayer(aD[1],aE)[1] ].Character
workspace.CurrentCamera.CameraSubject=aF
local aG=aE.Character or workspace:FindFirstChild(aE.Name)
local aH=aG and aG:FindFirstChildWhichIsA'Humanoid'
local aI=aH and aH.RootPart
local aJ=aI.CFrame
aH=aH:Destroy()or aH:Clone()
aH.Parent=aG
aH:ClearAllChildren()
aE:ClearCharacterAppearance()
task.spawn(function()
aE.CharacterAdded:Wait():WaitForChild'Humanoid'.RootPart.CFrame=wait()and aJ
end)
local V=getRoot(aF)
while aG and aG.Parent and V and V.Parent do
local W=false
for X,Y in ipairs(aG:GetChildren())do
if Y:IsA'BackpackItem'and Y:FindFirstChild'Handle'then
W=true
firetouchinterest(Y.Handle,V,0)
firetouchinterest(Y.Handle,V,1)
end
end
if not W then
break
end
aI.CFrame=V.CFrame
aC:Wait()
end
execCmd're'
end)

addcmd('touchinterests',{'touchinterest','firetouchinterests','firetouchinterest'},function(aD,aE)
if not firetouchinterest then
notify("Incompatible Exploit","Your exploit does not support this command (missing firetouchinterest)")
return
end

local aF=getRoot(aE.Character)or aE.Character:FindFirstChildWhichIsA"BasePart"

local function touch(aG)
aG=aG:FindFirstAncestorWhichIsA"Part"
if aG then
if firetouchinterest then
task.spawn(function()
firetouchinterest(aG,aF,1)
wait()
firetouchinterest(aG,aF,0)
end)
end
aG.CFrame=aF.CFrame
end
end

if aD[1]then
local aG=getstring(1)
for aH,aI in ipairs(workspace:GetDescendants())do
if aI:IsA"TouchTransmitter"and aI.Name==aG or aI.Parent.Name==aG then
touch(aI)
end
end
else
for aG,aH in ipairs(workspace:GetDescendants())do
if aH:IsA"TouchTransmitter"then
touch(aH)
end
end
end
end)

addcmd('fullbright',{'fb','fullbrightness'},function(aD,aE)
Lighting.Brightness=2
Lighting.ClockTime=14
Lighting.FogEnd=100000
Lighting.GlobalShadows=false
Lighting.OutdoorAmbient=Color3.fromRGB(128,128,128)
end)

addcmd('loopfullbright',{'loopfb'},function(aD,aE)
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

addcmd('unloopfullbright',{'unloopfb'},function(aD,aE)
if brightLoop then
brightLoop:Disconnect()
end
end)

addcmd('ambient',{},function(aD,aE)
Lighting.Ambient=Color3.new(aD[1],aD[2],aD[3])
Lighting.OutdoorAmbient=Color3.new(aD[1],aD[2],aD[3])
end)

addcmd('day',{},function(aD,aE)
Lighting.ClockTime=14
end)

addcmd('night',{},function(aD,aE)
Lighting.ClockTime=0
end)

addcmd('nofog',{},function(aD,aE)
Lighting.FogEnd=100000
for aF,aG in pairs(Lighting:GetDescendants())do
if aG:IsA"Atmosphere"then
aG:Destroy()
end
end
end)

addcmd('brightness',{},function(aD,aE)
Lighting.Brightness=aD[1]
end)

addcmd('globalshadows',{'gshadows'},function(aD,aE)
Lighting.GlobalShadows=true
end)

addcmd('unglobalshadows',{'nogshadows','ungshadows','noglobalshadows'},function(aD,aE)
Lighting.GlobalShadows=false
end)

origsettings={abt=Lighting.Ambient,oabt=Lighting.OutdoorAmbient,brt=Lighting.Brightness,time=Lighting.ClockTime,fe=Lighting.FogEnd,fs=Lighting.FogStart,gs=Lighting.GlobalShadows}

addcmd('restorelighting',{'rlighting'},function(aD,aE)
Lighting.Ambient=origsettings.abt
Lighting.OutdoorAmbient=origsettings.oabt
Lighting.Brightness=origsettings.brt
Lighting.ClockTime=origsettings.time
Lighting.FogEnd=origsettings.fe
Lighting.FogStart=origsettings.fs
Lighting.GlobalShadows=origsettings.gs
end)

addcmd('stun',{'platformstand'},function(aD,aE)
aE.Character:FindFirstChildOfClass'Humanoid'.PlatformStand=true
end)

addcmd('unstun',{'nostun','unplatformstand','noplatformstand'},function(aD,aE)
aE.Character:FindFirstChildOfClass'Humanoid'.PlatformStand=false
end)

addcmd('norotate',{'noautorotate'},function(aD,aE)
aE.Character:FindFirstChildOfClass'Humanoid'.AutoRotate=false
end)

addcmd('unnorotate',{'autorotate'},function(aD,aE)
aE.Character:FindFirstChildOfClass'Humanoid'.AutoRotate=true
end)

addcmd('enablestate',{},function(aD,aE)
local aF=aD[1]
if not tonumber(aF)then local aG=
Enum.HumanoidStateType[aD[1] ]
end
aE.Character:FindFirstChildOfClass"Humanoid":SetStateEnabled(aF,true)
end)

addcmd('disablestate',{},function(aD,aE)
local aF=aD[1]
if not tonumber(aF)then local aG=
Enum.HumanoidStateType[aD[1] ]
end
aE.Character:FindFirstChildOfClass"Humanoid":SetStateEnabled(aF,false)
end)

addcmd('drophats',{'drophat'},function(aD,aE)
if aE.Character then
for aF,aG in pairs(aE.Character:FindFirstChildOfClass'Humanoid':GetAccessories())do
aG.Parent=workspace
end
end
end)

addcmd('deletehats',{'nohats','rhats'},function(aD,aE)
for aF,aG in next,aE.Character:GetDescendants()do
if aG:IsA"Accessory"then
for aH,aI in next,aG:GetDescendants()do
if aI:IsA"Weld"then
aI:Destroy()
end
end
end
end
end)

addcmd('droptools',{'droptool'},function(aD,aE)
for aF,aG in pairs(Players.LocalPlayer.Backpack:GetChildren())do
if aG:IsA"Tool"then
aG.Parent=Players.LocalPlayer.Character
end
end
wait()
for aF,aG in pairs(Players.LocalPlayer.Character:GetChildren())do
if aG:IsA"Tool"then
aG.Parent=workspace
end
end
end)

addcmd('droppabletools',{},function(aD,aE)
if aE.Character then
for aF,aG in pairs(aE.Character:GetChildren())do
if aG:IsA"Tool"then
aG.CanBeDropped=true
end
end
end
if aE:FindFirstChildOfClass"Backpack"then
for aF,aG in pairs(aE:FindFirstChildOfClass"Backpack":GetChildren())do
if aG:IsA"Tool"then
aG.CanBeDropped=true
end
end
end
end)

local aD=""
local aE=""
addcmd('reach',{},function(aF,aG)
execCmd'unreach'
wait()
for aH,aI in pairs(aG.Character:GetDescendants())do
if aI:IsA"Tool"then
if aF[1]then
aD=aI.Handle.Size
aE=aI.GripPos
local aJ=Instance.new"SelectionBox"
aJ.Name="SelectionBoxCreated"
aJ.Parent=aI.Handle
aJ.Adornee=aI.Handle
aI.Handle.Massless=true
aI.Handle.Size=Vector3.new(0.5,0.5,aF[1])
aI.GripPos=Vector3.new(0,0,0)
aG.Character:FindFirstChildOfClass'Humanoid':UnequipTools()
else
aD=aI.Handle.Size
aE=aI.GripPos
local aJ=Instance.new"SelectionBox"
aJ.Name="SelectionBoxCreated"
aJ.Parent=aI.Handle
aJ.Adornee=aI.Handle
aI.Handle.Massless=true
aI.Handle.Size=Vector3.new(0.5,0.5,60)
aI.GripPos=Vector3.new(0,0,0)
aG.Character:FindFirstChildOfClass'Humanoid':UnequipTools()
end
end
end
end)

addcmd("boxreach",{},function(aF,aG)
execCmd"unreach"
wait()
for aH,aI in pairs(aG.Character:GetDescendants())do
if aI:IsA"Tool"then
local aJ=tonumber(aF[1])or 60
aD=aI.Handle.Size
aE=aI.GripPos
local V=Instance.new"SelectionBox"
V.Name="SelectionBoxCreated"
V.Parent=aI.Handle
V.Adornee=aI.Handle
aI.Handle.Massless=true
aI.Handle.Size=Vector3.new(aJ,aJ,aJ)
aI.GripPos=Vector3.new(0,0,0)
aG.Character:FindFirstChildOfClass"Humanoid":UnequipTools()
end
end
end)

addcmd('unreach',{'noreach','unboxreach'},function(aF,aG)
for aH,aI in pairs(aG.Character:GetDescendants())do
if aI:IsA"Tool"then
aI.Handle.Size=aD
aI.GripPos=aE
aI.Handle.SelectionBoxCreated:Destroy()
end
end
end)

addcmd('grippos',{},function(aF,aG)
for aH,aI in pairs(aG.Character:GetDescendants())do
if aI:IsA"Tool"then
aI.Parent=aG:FindFirstChildOfClass"Backpack"
aI.GripPos=Vector3.new(aF[1],aF[2],aF[3])
aI.Parent=aG.Character
end
end
end)

addcmd('usetools',{},function(aF,aG)
local aH=aG:FindFirstChildOfClass"Backpack"
local aI=tonumber(aF[1])or 1
local aJ=tonumber(aF[2])or false
for V,W in ipairs(aH:GetChildren())do
W.Parent=aG.Character
task.spawn(function()
for X=1,aI do
W:Activate()
if aJ then
wait(aJ)
end
end
W.Parent=aH
end)
end
end)

addcmd('logs',{},function(aF,aG)
logs:TweenPosition(UDim2.new(0,0,1,-265),"InOut","Quart",0.3,true,nil)
end)

addcmd('chatlogs',{'clogs'},function(aF,aG)
join.Visible=false
chat.Visible=true
table.remove(shade3,table.find(shade3,selectChat))
table.remove(shade2,table.find(shade2,selectJoin))
table.insert(shade2,selectChat)
table.insert(shade3,selectJoin)
selectJoin.BackgroundColor3=currentShade3
selectChat.BackgroundColor3=currentShade2
logs:TweenPosition(UDim2.new(0,0,1,-265),"InOut","Quart",0.3,true,nil)
end)

addcmd('joinlogs',{'jlogs'},function(aF,aG)
chat.Visible=false
join.Visible=true
table.remove(shade3,table.find(shade3,selectJoin))
table.remove(shade2,table.find(shade2,selectChat))
table.insert(shade2,selectJoin)
table.insert(shade3,selectChat)
selectChat.BackgroundColor3=currentShade3
selectJoin.BackgroundColor3=currentShade2
logs:TweenPosition(UDim2.new(0,0,1,-265),"InOut","Quart",0.3,true,nil)
end)

addcmd("chatlogswebhook",{"logswebhook"},function(aF,aG)
if httprequest then
logsWebhook=aF[1]or nil
updatesaves()
else
notify("Incompatible Exploit","Your exploit does not support this command (missing request)")
end
end)

addcmd("antichatlogs",{"antichatlogger"},function(aF,aG)
if not isLegacyChat then
return notify("antichatlogs","Game needs the legacy chat")
end local
aH, aI=pcall(function()
rawset(require(aG:FindFirstChild"PlayerScripts":FindFirstChild"ChatScript".ChatMain),"MessagePosted",{fire=
function(aH)
return aH
end,wait=
function()
return
end,connect=
function()
return
end
})
end)
notify("antichatlogs",aH and"Enabled"or"Failed to enable antichatlogs")
end)

flinging=false
addcmd('fling',{},function(aF,aG)
flinging=false
for aH,aI in pairs(aG.Character:GetDescendants())do
if aI:IsA"BasePart"then
aI.CustomPhysicalProperties=PhysicalProperties.new(math.huge,0.3,0.5)
end
end
execCmd'noclip'
wait(.1)
local aH=Instance.new"BodyAngularVelocity"
aH.Name=randomString()
aH.Parent=getRoot(aG.Character)
aH.AngularVelocity=Vector3.new(0,99999,0)
aH.MaxTorque=Vector3.new(0,math.huge,0)
aH.P=math.huge
local aI=aG.Character:GetChildren()
for aJ,V in next,aI do
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
flingDied=aG.Character:FindFirstChildOfClass'Humanoid'.Died:Connect(flingDiedF)
repeat
aH.AngularVelocity=Vector3.new(0,99999,0)
wait(.2)
aH.AngularVelocity=Vector3.new(0,0,0)
wait(.1)
until flinging==false
end)

addcmd('unfling',{'nofling'},function(aF,aG)
execCmd'clip'
if flingDied then
flingDied:Disconnect()
end
flinging=false
wait(.1)
local aH=aG.Character
if not aH or not getRoot(aH)then return end
for aI,aJ in pairs(getRoot(aH):GetChildren())do
if aJ.ClassName=='BodyAngularVelocity'then
aJ:Destroy()
end
end
for aI,aJ in pairs(aH:GetDescendants())do
if aJ.ClassName=="Part"or aJ.ClassName=="MeshPart"then
aJ.CustomPhysicalProperties=PhysicalProperties.new(0.7,0.3,0.5)
end
end
end)

addcmd('togglefling',{},function(aF,aG)
if flinging then
execCmd'unfling'
else
execCmd'fling'
end
end)

addcmd("flyfling",{},function(aF,aG)
execCmd"unvehiclefly\\unwalkfling"
wait()
if aF[1]and isNumber(aF[1])then
vehicleflyspeed=aF[1]
end
execCmd"vehiclefly\\walkfling"
end)

addcmd("unflyfling",{},function(aF,aG)
execCmd"unvehiclefly\\unwalkfling\\breakvelocity"
end)

addcmd("toggleflyfling",{},function(aF,aG)
execCmd(flinging and"unflyfling"or"flyfling")
end)

walkflinging=false
addcmd("walkfling",{},function(aF,aG)
execCmd"unwalkfling"
local aH=aG.Character:FindFirstChildWhichIsA"Humanoid"
if aH then
aH.Died:Connect(function()
execCmd"unwalkfling"
end)
end

execCmd"noclip nonotify"
walkflinging=true
repeat RunService.Heartbeat:Wait()
local aI=aG.Character
local aJ=getRoot(aI)
local V,W=0.1

while not(aI and aI.Parent and aJ and aJ.Parent)do
RunService.Heartbeat:Wait()
aI=aG.Character
aJ=getRoot(aI)
end

W=aJ.Velocity
aJ.Velocity=W*10000+Vector3.new(0,10000,0)

RunService.RenderStepped:Wait()
if aI and aI.Parent and aJ and aJ.Parent then
aJ.Velocity=W
end

RunService.Stepped:Wait()
if aI and aI.Parent and aJ and aJ.Parent then
aJ.Velocity=W+Vector3.new(0,V,0)
V=V*-1
end
until walkflinging==false
end)

addcmd("unwalkfling",{"nowalkfling"},function(aF,aG)
walkflinging=false
execCmd"unnoclip nonotify"
end)

addcmd("togglewalkfling",{},function(aF,aG)
execCmd(walkflinging and"unwalkfling"or"walkfling")
end)

addcmd('invisfling',{},function(aF,aG)
permadeath(aG)
local aH=aG.Character
local aI=Instance.new"Model"
aI.Parent=aG.Character
local aJ=Instance.new"Part"
aJ.Name="Torso"
aJ.CanCollide=false
aJ.Anchored=true
local V=Instance.new"Part"
V.Name="Head"
V.Parent=aI
V.Anchored=true
V.CanCollide=false
local W=Instance.new"Humanoid"
W.Name="Humanoid"
W.Parent=aI
aJ.Position=Vector3.new(0,9999,0)
aG.Character=aI
wait(3)
aG.Character=aH
wait(3)
local X=Instance.new"Humanoid"
V:Clone()
X.Parent=aG.Character
local Y=getRoot(aG.Character)
for Z,_ in pairs(aG.Character:GetChildren())do
if _~=Y and _.Name~="Humanoid"then
_:Destroy()
end
end
Y.Transparency=0
Y.Color=Color3.new(1,1,1)
local Z
Z=RunService.Stepped:Connect(function()
if aG.Character and getRoot(aG.Character)then
getRoot(aG.Character).CanCollide=false
else
Z:Disconnect()
end
end)
sFLY()
workspace.CurrentCamera.CameraSubject=Y
local _=Instance.new"BodyThrust"
_.Parent=getRoot(aG.Character)
_.Force=Vector3.new(99999,999990,99999)
_.Location=getRoot(aG.Character).Position
end)

addcmd("antifling",{},function(aF,aG)
if antifling then
antifling:Disconnect()
antifling=nil
end
antifling=RunService.Stepped:Connect(function()
for aH,aI in pairs(Players:GetPlayers())do
if aI~=aG and aI.Character then
for aJ,V in pairs(aI.Character:GetDescendants())do
if V:IsA"BasePart"then
V.CanCollide=false
end
end
end
end
end)
end)

addcmd("unantifling",{},function(aF,aG)
if antifling then
antifling:Disconnect()
antifling=nil
end
end)

addcmd("toggleantifling",{},function(aF,aG)
execCmd(antifling and"unantifling"or"antifling")
end)

function attach(aF,aG)
if tools(aF)then
local aH=aF.Character local aI=
aG.Character
local aJ=aF.Character:FindFirstChildOfClass"Humanoid"
local V=getRoot(aF.Character)
local W=getRoot(aG.Character)
aJ.Name="1"
local X=aJ:Clone()
X.Parent=aH
X.Name="Humanoid"
wait()
aJ:Destroy()
workspace.CurrentCamera.CameraSubject=aH
X.DisplayDistanceType="None"
local Y=aF:FindFirstChildOfClass"Backpack":FindFirstChildOfClass"Tool"or aF.Character:FindFirstChildOfClass"Tool"
Y.Parent=aH
V.CFrame=W.CFrame*CFrame.new(0,0,0)*CFrame.new(math.random(-100,100)/200,math.random(-100,100)/200,math.random(-100,100)/200)
local Z=0
repeat
wait(.1)
Z=Z+1
V.CFrame=W.CFrame
until(Y.Parent~=aH or not V or not W or not V.Parent or not W.Parent or Z>250)and Z>2
else
notify('Tool Required','You need to have an item in your inventory to use this command')
end
end

addcmd('attach',{},function(aF,aG)
local aH=getPlayer(aF[1],aG)
for aI,aJ in pairs(aH)do
attach(aG,Players[aJ])
end
end)

function kill(aF,aG,aH)
if tools(aF)then
if aG~=nil then
local aI=getRoot(aF.Character).CFrame
if not aH then
refresh(aF)
wait()
repeat wait()until aF.Character~=nil and getRoot(aF.Character)
wait(0.3)
end
local aJ=getRoot(aF.Character)
attach(aF,aG)
repeat
wait()
aJ.CFrame=CFrame.new(999999,workspace.FallenPartsDestroyHeight+5,999999)
until not getRoot(aG.Character)or not getRoot(aF.Character)
aF.CharacterAdded:Wait():WaitForChild"HumanoidRootPart".CFrame=aI
end
else
notify('Tool Required','You need to have an item in your inventory to use this command')
end
end

addcmd('kill',{'fekill'},function(aF,aG)
local aH=getPlayer(aF[1],aG)
for aI,aJ in pairs(aH)do
kill(aG,Players[aJ])
end
end)

addcmd('handlekill',{'hkill'},function(aF,aG)
if not firetouchinterest then
return notify('Incompatible Exploit','Your exploit does not support this command (missing firetouchinterest)')
end
local aH=RunService.RenderStepped
local aI=aG.Character.FindFirstChildWhichIsA(aG.Character,"Tool")
local aJ=aI and aI.FindFirstChild(aI,"Handle")
if not aI or not aJ then
return notify("Handle Kill","You need to hold a \"Tool\" that does damage on touch. For example the default \"Sword\" tool.")
end
for V,W in ipairs(getPlayer(aF[1],aG))do
W=Players[W]
task.spawn(function()
while aI and aG.Character and W.Character and aI.Parent==aG.Character do
local X=W.Character.FindFirstChildWhichIsA(W.Character,"Humanoid")
if not X or X.Health<=0 then
break
end
for Y,Z in ipairs(W.Character.GetChildren(W.Character))do
Z=((Z.IsA(Z,"BasePart")and firetouchinterest(aJ,Z,1,(aH.Wait(aH)and nil)or firetouchinterest(aJ,Z,0))and nil)or Z)or Z
end
end
notify("Handle Kill Stopped!",W.Name.." died/left or you unequipped the tool!")
end)
end
end)

local aF=RunService.Heartbeat
addcmd('tpwalk',{'teleportwalk'},function(aG,aH)
tpwalking=true
local aI=aH.Character
local aJ=aI and aI:FindFirstChildWhichIsA"Humanoid"
while tpwalking and aI and aJ and aJ.Parent do
local V=aF:Wait()
if aJ.MoveDirection.Magnitude>0 then
if aG[1]and isNumber(aG[1])then
aI:TranslateBy(aJ.MoveDirection*tonumber(aG[1])*V*10)
else
aI:TranslateBy(aJ.MoveDirection*V*10)
end
end
end
end)
addcmd('untpwalk',{'unteleportwalk'},function(aG,aH)
tpwalking=false
end)

addcmd('fastkill',{'fastfekill'},function(aG,aH)
local aI=getPlayer(aG[1],aH)
for aJ,V in pairs(aI)do
kill(aH,Players[V],true)
end
end)

function bring(aG,aH,aI)
if tools(aG)then
if aH~=nil then
local aJ=getRoot(aG.Character).CFrame
if not aI then
refresh(aG)
wait()
repeat wait()until aG.Character~=nil and getRoot(aG.Character)
wait(0.3)
end
local V=getRoot(aG.Character)
attach(aG,aH)
repeat
wait()
V.CFrame=aJ
until not getRoot(aH.Character)or not getRoot(aG.Character)
aG.CharacterAdded:Wait():WaitForChild"HumanoidRootPart".CFrame=aJ
end
else
notify('Tool Required','You need to have an item in your inventory to use this command')
end
end

addcmd('bring',{'febring'},function(aG,aH)
local aI=getPlayer(aG[1],aH)
for aJ,V in pairs(aI)do
bring(aH,Players[V])
end
end)

addcmd('fastbring',{'fastfebring'},function(aG,aH)
local aI=getPlayer(aG[1],aH)
for aJ,V in pairs(aI)do
bring(aH,Players[V],true)
end
end)

function teleport(aG,aH,aI,aJ)
if tools(aG)then
if aH~=nil then
local V=getRoot(aG.Character).CFrame
if not aJ then
refresh(aG)
wait()
repeat wait()until aG.Character~=nil and getRoot(aG.Character)
wait(0.3)
end
local W=getRoot(aG.Character)
local X=getRoot(aI.Character)
attach(aG,aH)
repeat
wait()
W.CFrame=X.CFrame
until not getRoot(aH.Character)or not getRoot(aG.Character)
wait(1)
aG.CharacterAdded:Wait():WaitForChild"HumanoidRootPart".CFrame=V
end
else
notify('Tool Required','You need to have an item in your inventory to use this command')
end
end

addcmd('tp',{'teleport'},function(aG,aH)
local aI=getPlayer(aG[1],aH)
local aJ=getPlayer(aG[2],aH)
for V,W in pairs(aI)do
if getRoot(Players[W].Character)and getRoot(Players[aJ[1] ].Character)then
if aH.Character:FindFirstChildOfClass'Humanoid'and aH.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
aH.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
teleport(aH,Players[W],Players[aJ[1] ])
end
end
end)

addcmd('fasttp',{'fastteleport'},function(aG,aH)
local aI=getPlayer(aG[1],aH)
local aJ=getPlayer(aG[2],aH)
for V,W in pairs(aI)do
if getRoot(Players[W].Character)and getRoot(Players[aJ[1] ].Character)then
if aH.Character:FindFirstChildOfClass'Humanoid'and aH.Character:FindFirstChildOfClass'Humanoid'.SeatPart then
aH.Character:FindFirstChildOfClass'Humanoid'.Sit=false
wait(.1)
end
teleport(aH,Players[W],Players[aJ[1] ],true)
end
end
end)

addcmd('spin',{},function(aG,aH)
local aI=20
if aG[1]and isNumber(aG[1])then
aI=aG[1]
end
for aJ,V in pairs(getRoot(aH.Character):GetChildren())do
if V.Name=="Spinning"then
V:Destroy()
end
end
local aJ=Instance.new"BodyAngularVelocity"
aJ.Name="Spinning"
aJ.Parent=getRoot(aH.Character)
aJ.MaxTorque=Vector3.new(0,math.huge,0)
aJ.AngularVelocity=Vector3.new(0,aI,0)
end)

addcmd('unspin',{},function(aG,aH)
for aI,aJ in pairs(getRoot(aH.Character):GetChildren())do
if aJ.Name=="Spinning"then
aJ:Destroy()
end
end
end)

xrayEnabled=false
xray=function()
for aG,aH in pairs(workspace:GetDescendants())do
if aH:IsA"BasePart"and not aH.Parent:FindFirstChildWhichIsA"Humanoid"and not aH.Parent.Parent:FindFirstChildWhichIsA"Humanoid"then
aH.LocalTransparencyModifier=xrayEnabled and 0.5 or 0
end
end
end

addcmd("xray",{},function(aG,aH)
xrayEnabled=true
xray()
end)

addcmd("unxray",{"noxray"},function(aG,aH)
xrayEnabled=false
xray()
end)

addcmd("togglexray",{},function(aG,aH)
xrayEnabled=not xrayEnabled
xray()
end)

addcmd("loopxray",{},function(aG,aH)
if xrayLoop then
xrayLoop:Disconnect()
end
xrayLoop=RunService.RenderStepped:Connect(function()
xrayEnabled=true
xray()
end)
end)

addcmd("unloopxray",{},function(aG,aH)
if xrayLoop then
xrayLoop:Disconnect()
end
end)

local aG
addcmd('walltp',{},function(aH,aI)
local aJ
if r15(aI)then
aJ=aI.Character.UpperTorso
else
aJ=aI.Character.Torso
end
local function touchedFunc(V)
local W=getRoot(aI.Character)
if V:IsA"BasePart"and V.Position.Y>W.Position.Y-aI.Character:FindFirstChildOfClass'Humanoid'.HipHeight then
local X=getRoot(V.Parent)
if X~=nil then
W.CFrame=V.CFrame*CFrame.new(W.CFrame.lookVector.X,X.Size.Z/2+aI.Character:FindFirstChildOfClass'Humanoid'.HipHeight,W.CFrame.lookVector.Z)
elseif X==nil then
W.CFrame=V.CFrame*CFrame.new(W.CFrame.lookVector.X,V.Size.Y/2+aI.Character:FindFirstChildOfClass'Humanoid'.HipHeight,W.CFrame.lookVector.Z)
end
end
end
aG=aJ.Touched:Connect(touchedFunc)
end)

addcmd('unwalltp',{'nowalltp'},function(aH,aI)
if aG then
aG:Disconnect()
end
end)

autoclicking=false
addcmd('autoclick',{},function(aH,aI)
if mouse1press and mouse1release then
execCmd'unautoclick'
wait()
local aJ=0.1
local V=0.1
if aH[1]and isNumber(aH[1])then aJ=aH[1]end
if aH[2]and isNumber(aH[2])then V=aH[2]end
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
repeat wait(aJ)
mouse1press()
wait(V)
mouse1release()
until autoclicking==false
else
notify('Auto Clicker',"Your exploit doesn't have the ability to use the autoclick")
end
end)

addcmd('unautoclick',{'noautoclick'},function(aH,aI)
autoclicking=false
if cancelAutoClick then cancelAutoClick:Disconnect()end
end)

addcmd('mousesensitivity',{'ms'},function(aH,aI)
UserInputService.MouseDeltaSensitivity=aH[1]
end)

local aH
local aI
addcmd('hovername',{},function(aJ,V)
execCmd'unhovername'
wait()
aH=Instance.new"TextLabel"
aH.Name=randomString()
aH.Parent=ScaledHolder
aH.BackgroundTransparency=1
aH.Size=UDim2.new(0,200,0,30)
aH.Font=Enum.Font.Code
aH.TextSize=16
aH.Text=""
aH.TextColor3=Color3.new(1,1,1)
aH.TextStrokeTransparency=0
aH.TextXAlignment=Enum.TextXAlignment.Left
aH.ZIndex=10
aI=Instance.new'SelectionBox'
aI.Name=randomString()
aI.LineThickness=0.03
aI.Color3=Color3.new(1,1,1)
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
aH.TextXAlignment=Enum.TextXAlignment.Right
else
_=Y+25
aH.TextXAlignment=Enum.TextXAlignment.Left
end
aH.Position=UDim2.new(0,_,0,Z)
aH.Text=W.Name
aH.Visible=true
aI.Parent=W
aI.Adornee=W
else
aH.Visible=false
aI.Parent=nil
aI.Adornee=nil
end
end
nbUpdateFunc=IYMouse.Move:Connect(updateNameBox)
end)

addcmd('unhovername',{'nohovername'},function(aJ,V)
if nbUpdateFunc then
nbUpdateFunc:Disconnect()
aH:Destroy()
aI:Destroy()
end
end)

addcmd('headsize',{},function(aJ,V)
local W=getPlayer(aJ[1],V)
for X,Y in pairs(W)do
if Players[Y]~=V and Players[Y].Character:FindFirstChild'Head'then
local Z=tonumber(aJ[2])
local _=Vector3.new(Z,Z,Z)
local aK=Players[Y].Character:FindFirstChild'Head'
if aK:IsA"BasePart"then
if not aJ[2]or Z==1 then
aK.Size=Vector3.new(2,1,1)
else
aK.Size=_
end
end
end
end
end)

addcmd('hitbox',{},function(aJ,aK)
local V=getPlayer(aJ[1],aK)
local W=aJ[3]and tonumber(aJ[3])or 0.4
for X,Y in pairs(V)do
if Players[Y]~=aK and Players[Y].Character:FindFirstChild'HumanoidRootPart'then
local Z=tonumber(aJ[2])
local _=Vector3.new(Z,Z,Z)
local aL=Players[Y].Character:FindFirstChild'HumanoidRootPart'
if aL:IsA"BasePart"then
if not aJ[2]or Z==1 then
aL.Size=Vector3.new(2,1,1)
aL.Transparency=W
else
aL.Size=_
aL.Transparency=W
end
end
end
end
end)

addcmd('stareat',{'stare'},function(aJ,aK)
local aL=getPlayer(aJ[1],aK)
for V,W in pairs(aL)do
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

addcmd('unstareat',{'unstare','nostare','nostareat'},function(aJ,aK)
if stareLoop then
stareLoop:Disconnect()
end
end)

RolewatchData={Group=0,Role="",Leave=false}
RolewatchConnection=Players.PlayerAdded:Connect(function(aJ)
if RolewatchData.Group==0 then return end
if aJ:IsInGroup(RolewatchData.Group)then
if tostring(aJ:GetRoleInGroup(RolewatchData.Group)):lower()==RolewatchData.Role:lower()then
if RolewatchData.Leave==true then
Players.LocalPlayer:Kick("\n\nRolewatch\nPlayer \""..tostring(aJ.Name).."\" has joined with the Role \""..RolewatchData.Role.."\"\n")
else
notify("Rolewatch","Player \""..tostring(aJ.Name).."\" has joined with the Role \""..RolewatchData.Role.."\"")
end
end
end
end)

addcmd("rolewatch",{},function(aJ,aK)
local aL=tonumber(aJ[1]or 0)
local V=aJ[2]and tostring(getstring(2))
if aL and V then
RolewatchData.Group=aL
RolewatchData.Role=V
notify("Rolewatch","Watching Group ID \""..tostring(aL).."\" for Role \""..V.."\"")
end
end)

addcmd("rolewatchstop",{},function(aJ,aK)
RolewatchData.Group=0
RolewatchData.Role=""
RolewatchData.Leave=false
notify("Rolewatch","Disabled")
end)

addcmd("rolewatchleave",{"unrolewatch"},function(aJ,aK)
RolewatchData.Leave=not RolewatchData.Leave
notify("Rolewatch",RolewatchData.Leave and"Leave has been Enabled"or"Leave has been Disabled")
end)

staffRoles={"mod","admin","staff","dev","founder","owner","supervis","manager","management","executive","president","chairman","chairwoman","chairperson","director"}

getStaffRole=function(aJ)
local aK=aJ:GetRoleInGroup(game.CreatorId)
local aL={Role=aK,Staff=false}
if aJ:IsInGroup(1200769)then
aL.Role="Roblox Employee"
aL.Staff=true
end
for V,W in pairs(staffRoles)do
if string.find(string.lower(aK),W)then
aL.Staff=true
end
end
return aL
end

addcmd("staffwatch",{},function(aJ,aK)
if staffwatchjoin then
staffwatchjoin:Disconnect()
end
if game.CreatorType==Enum.CreatorType.Group then
local aL={}
staffwatchjoin=Players.PlayerAdded:Connect(function(V)
local W=getStaffRole(V)
if W.Staff then
notify("Staffwatch",formatUsername(V).." is a "..W.Role)
end
end)
for V,W in pairs(Players:GetPlayers())do
local X=getStaffRole(W)
if X.Staff then
table.insert(aL,formatUsername(W).." is a "..X.Role)
end
end
if#aL>0 then
notify("Staffwatch",table.concat(aL,",\n"))
else
notify("Staffwatch","Enabled")
end
else
notify("Staffwatch","Game is not owned by a Group")
end
end)

addcmd("unstaffwatch",{},function(aJ,aK)
if staffwatchjoin then
staffwatchjoin:Disconnect()
end
notify("Staffwatch","Disabled")
end)

addcmd('removeterrain',{'rterrain','noterrain'},function(aJ,aK)
workspace:FindFirstChildOfClass'Terrain':Clear()
end)

addcmd('clearnilinstances',{'nonilinstances','cni'},function(aJ,aK)
if getnilinstances then
for aL,V in pairs(getnilinstances())do
V:Destroy()
end
else
notify('Incompatible Exploit','Your exploit does not support this command (missing getnilinstances)')
end
end)

addcmd('destroyheight',{'dh'},function(aJ,aK)
local aL=aJ[1]or-500
if isNumber(aL)then
workspace.FallenPartsDestroyHeight=aL
end
end)

OrgDestroyHeight=workspace.FallenPartsDestroyHeight
addcmd("fakeout",{},function(aJ,aK)
local aL=getRoot(aK.Character)
local V=aL.CFrame
workspace.FallenPartsDestroyHeight=0/0
aL.CFrame=CFrame.new(Vector3.new(0,OrgDestroyHeight-25,0))
wait(1)
aL.CFrame=V
workspace.FallenPartsDestroyHeight=OrgDestroyHeight
end)

antivoidloop=false
addcmd("antivoid",{},function(aJ,aK)
execCmd"unantivoid nonotify"
wait()
antivoidloop=RunService.Stepped:Connect(function()
local aL=getRoot(aK.Character)
if aL and aL.Position.Y<=OrgDestroyHeight+25 then
aL.Velocity=aL.Velocity+Vector3.new(0,250,0)
end
end)
notify("antivoid","Enabled")
end)

addcmd("unantivoid",{"noantivoid"},function(aJ,aK)
antivoidloop:Disconnect()
antivoidloop=nil
if aJ[1]~="nonotify"then notify("antivoid","Disabled")end
end)

addcmd('trip',{},function(aJ,aK)
if aK and aK.Character and aK.Character:FindFirstChildOfClass"Humanoid"and getRoot(aK.Character)then
local aL=aK.Character:FindFirstChildOfClass"Humanoid"
local V=getRoot(aK.Character)
aL:ChangeState(0)
V.Velocity=V.CFrame.LookVector*30
end
end)

addcmd("removeads",{"adblock"},function(aJ,aK)
while wait()do
pcall(function()
for aL,V in pairs(workspace:GetDescendants())do
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

addcmd("scare",{"spook"},function(aJ,aK)
local aL=getPlayer(aJ[1],aK)
local V

for W,X in pairs(aL)do
local Y=aK.Character and getRoot(aK.Character)
local Z=Players[X]
local _=Z and Z.Character and getRoot(Z.Character)

if Y and _ and Z~=aK then
V=Y.CFrame
Y.CFrame=_.CFrame+_.CFrame.lookVector*2
Y.CFrame=CFrame.new(Y.Position,_.Position)
task.wait(0.5)
Y.CFrame=V
end
end
end)

addcmd("alignmentkeys",{},function(aJ,aK)
alignmentKeys=UserInputService.InputBegan:Connect(function(aL,V)
if V then return end
if aL.KeyCode==Enum.KeyCode.Comma then workspace.CurrentCamera:PanUnits(-1)end
if aL.KeyCode==Enum.KeyCode.Period then workspace.CurrentCamera:PanUnits(1)end
end)
alignmentKeysEmotes=StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu)
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu,false)
end)

addcmd("unalignmentkeys",{"noalignmentkeys"},function(aJ,aK)
if type(alignmentKeysEmotes)=="boolean"then
StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.EmotesMenu,alignmentKeysEmotes)
end
alignmentKeys:Disconnect()
end)

addcmd("ctrllock",{},function(aJ,aK)
local aL=aK.PlayerScripts:WaitForChild"PlayerModule":WaitForChild"CameraModule":WaitForChild"MouseLockController"
local V=aL:FindFirstChild"BoundKeys"

if V then
V.Value="LeftControl"
else
V=Instance.new"StringValue"
V.Name="BoundKeys"
V.Value="LeftControl"
V.Parent=aL
end
end)

addcmd("unctrllock",{},function(aJ,aK)
local aL=aK.PlayerScripts:WaitForChild"PlayerModule":WaitForChild"CameraModule":WaitForChild"MouseLockController"
local V=aL:FindFirstChild"BoundKeys"

if V then
V.Value="LeftShift"
else
V=Instance.new"StringValue"
V.Name="BoundKeys"
V.Value="LeftShift"
V.Parent=aL
end
end)

addcmd("listento",{},function(aJ,aK)
execCmd"unlistento"
if not aJ[1]then return end

local aL=Players:FindFirstChild(getPlayer(aJ[1],aK)[1])
local V=aL and aL.Character and getRoot(aL.Character)

if V then
SoundService:SetListener(Enum.ListenerType.ObjectPosition,V)
listentoChar=aL.CharacterAdded:Connect(function()
repeat task.wait()until Players[aL.Name].Character~=nil and getRoot(Players[aL.Name].Character)
SoundService:SetListener(Enum.ListenerType.ObjectPosition,getRoot(Players[aL.Name].Character))
end)
end
end)

addcmd("unlistento",{},function(aJ,aK)
SoundService:SetListener(Enum.ListenerType.Camera)
listentoChar:Disconnect()
end)

addcmd("jerk",{},function(aJ,aK)
local aL=aK.Character:FindFirstChildWhichIsA"Humanoid"
local V=aK:FindFirstChildWhichIsA"Backpack"
if not aL or not V then return end

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
aL.Died:Connect(stopTomfoolery)

while task.wait()do
if not X then continue end

local Z=r15(aK)
if not Y then
local _=Instance.new"Animation"
_.AnimationId=not Z and"rbxassetid://72042024"or"rbxassetid://698251653"
Y=aL:LoadAnimation(_)
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

addcmd("guiscale",{},function(aJ,aK)
if aJ[1]and isNumber(aJ[1])then
local aL=tonumber(aJ[1])
if aL%1==0 then aL=aL/100 end

if aL==0.01 then aL=1 end
if aL==0.02 then aL=2 end

if aL>=0.4 and aL<=2 then
guiScale=aL
end
else
guiScale=defaultGuiScale
end

Scale.Scale=math.max(Holder.AbsoluteSize.X/1920,guiScale)
updatesaves()
end)

addcmd("unsuspendvc",{},function(aJ,aK)
VoiceChatService:joinVoice()

if typeof(onVoiceModerated)~="RBXScriptConnection"then
onVoiceModerated=a(game:GetService"VoiceChatInternal").LocalPlayerModerated:Connect(function()
task.wait(1)
VoiceChatService:joinVoice()
end)
end
end)

addcmd("permadeath",{},function(aJ,aK)
if replicatesignal then
permadeath(aK)
notify("Permadeath","Enabled")
else
notify("Incompatible Exploit","Your exploit does not support this command (missing replicatesignal)")
end
end)

local aJ
frozenParts={}
addcmd('freezeunanchored',{'freezeua'},function(aK,aL)
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
if aL.Character and W:IsDescendantOf(aL.Character)then
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
aJ=workspace.DescendantAdded:Connect(FREEZENOOB)
end)

addcmd('thawunanchored',{'thawua','unfreezeunanchored','unfreezeua'},function(aK,aL)
if aJ then
aJ:Disconnect()
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

addcmd('tpunanchored',{'tpua'},function(aK,aL)
local V=getPlayer(aK[1],aL)
for W,X in pairs(V)do
local Y={}
for Z,_ in pairs(workspace:GetDescendants())do
if Players[X].Character:FindFirstChild'Head'and _:IsA'BasePart'and _.Anchored==false and not _:IsDescendantOf(aL.Character)and _.Name=="Torso"==false and _.Name=="Head"==false and _.Name=="Right Arm"==false and _.Name=="Left Arm"==false and _.Name=="Right Leg"==false and _.Name=="Left Leg"==false and _.Name=="HumanoidRootPart"==false then
for aM,aN in pairs(_:GetChildren())do
if aN:IsA"BodyPosition"or aN:IsA"BodyGyro"then
aN:Destroy()
end
end
local aM=Instance.new"BodyPosition"
aM.Parent=_
aM.MaxForce=Vector3.new(math.huge,math.huge,math.huge)
table.insert(Y,aM)
if not table.find(frozenParts,_)then
table.insert(frozenParts,_)
end
end
end
for aM,aN in pairs(Y)do
aN.Position=Players[X].Character.Head.Position
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

addcmd('autokeypress',{'keypress'},function(aK,aL)
if keypress and keyrelease and aK[1]then
local aM=keycodeMap[aK[1]:lower()]
if not aM then notify('Auto Key Press',"Invalid key")return end
execCmd'unautokeypress'
wait()
local aN=0.1
local V=0.1
if aK[2]and isNumber(aK[2])then aN=aK[2]end
if aK[3]and isNumber(aK[3])then V=aK[3]end
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
repeat wait(aN)
keypress(aM)
wait(V)
keyrelease(aM)
until autoKeyPressing==false
if cancelAutoKeyPress then cancelAutoKeyPress:Disconnect()keyrelease(aM)end
else
notify('Auto Key Press',"Your exploit doesn't have the ability to use auto key press")
end
end)

addcmd('unautokeypress',{'noautokeypress','unkeypress','nokeypress'},function(aK,aL)
autoKeyPressing=false
if cancelAutoKeyPress then cancelAutoKeyPress:Disconnect()end
end)

addcmd('addplugin',{'plugin'},function(aK,aL)
addPlugin(getstring(1))
end)

addcmd('removeplugin',{'deleteplugin'},function(aK,aL)
deletePlugin(getstring(1))
end)

addcmd('reloadplugin',{},function(aK,aL)
local aM=getstring(1)
deletePlugin(aM)
wait(1)
addPlugin(aM)
end)

addcmd("addallplugins",{"loadallplugins"},function(aK,aL)
if not listfiles or not isfolder then
notify("Incompatible Exploit","Your exploit does not support this command (missing listfiles/isfolder)")
return
end

for aM,aN in ipairs(listfiles"")do
local V=aN:match"([^/\\]+%.iy)$"

if V and
V:lower()~="iy_fe.iy"and
not isfolder(V)and
not table.find(PluginsTable,V)
then
addPlugin(V)
end
end
end)

addcmd('removecmd',{'deletecmd'},function(aK,aL)
removecmd(aK[1])
end)

if b then
local aK=Instance.new"TextButton"
local aL=Instance.new"UICorner"
aK.Name=randomString()
aK.Parent=PARENT
aK.BackgroundColor3=Color3.fromRGB(46,46,47)
aK.BackgroundTransparency=0.14
aK.Position=UDim2.new(0.489,0,0,0)
aK.Size=UDim2.new(0,32,0,33)
aK.Font=Enum.Font.SourceSansBold
aK.Text="IY"
aK.TextColor3=Color3.fromRGB(255,255,255)
aK.TextSize=20
aK.TextWrapped=true
aK.ZIndex=10
aK.Draggable=true
aL.Name=randomString()
aL.CornerRadius=UDim.new(0.5,0)
aL.Parent=aK
aK.MouseButton1Click:Connect(function()
Cmdbar:CaptureFocus()
maximizeHolder()
end)
table.insert(shade1,aK)
table.insert(text1,aK)
end

Scale.Scale=math.max(Holder.AbsoluteSize.X/1920,guiScale)
Scale.Parent=ScaledHolder
ScaledHolder.Size=UDim2.fromScale(1/Scale.Scale,1/Scale.Scale)
Scale:GetPropertyChangedSignal"Scale":Connect(function()
ScaledHolder.Size=UDim2.fromScale(1/Scale.Scale,1/Scale.Scale)
for aK,aL in ScaledHolder:GetDescendants()do
if aL:IsA"GuiObject"and aL.Visible then
aL.Visible=false
aL.Visible=true
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

function hookCharEvents(aK,aL)
task.spawn(function()
local aM=aK.Character
if not aM then return end

local aN=aM:WaitForChild("Humanoid",10)
if not aN then return end

local V=aN.Health
aN.HealthChanged:Connect(function(W)
math.abs(V-W)
if V>W then
eventEditor.FireEvent("OnDamage",aK.Name,tonumber(W))
end
V=W
end)

aN.Died:Connect(function()
eventEditor.FireEvent("OnDied",aK.Name)

local W=aN:FindFirstChild"creator"
if W and W.Value and W.Value.Parent then
eventEditor.FireEvent("OnKilled",aK.Name,W.Name)
end
end)
end)
end

Players.PlayerAdded:Connect(function(aK)
eventEditor.FireEvent("OnJoin",aK.Name)
if isLegacyChat then aK.Chatted:Connect(function(aL)eventEditor.FireEvent("OnChatted",tostring(aK),aL)end)end
aK.CharacterAdded:Connect(function()eventEditor.FireEvent("OnSpawn",tostring(aK))hookCharEvents(aK)end)
JoinLog(aK)
if isLegacyChat then ChatLog(aK)end
if ESPenabled then
repeat wait(1)until aK.Character and getRoot(aK.Character)
ESP(aK)
end
if CHMSenabled then
repeat wait(1)until aK.Character and getRoot(aK.Character)
CHMS(aK)
end
end)

if not isLegacyChat then
TextChatService.MessageReceived:Connect(function(aK)
if aK.TextSource then
local aL=Players:GetPlayerByUserId(aK.TextSource.UserId)
if not aL then return end

if logsEnabled==true then
CreateLabel(aL.Name,aK.Text)
end
if aL.UserId==Players.LocalPlayer.UserId then
do_exec(aK.Text,Players.LocalPlayer)
end
eventEditor.FireEvent("OnChatted",aL.Name,aK.Text)
sendChatWebhook(aL,aK.Text)
end
end)
end

for aK,aL in pairs(Players:GetPlayers())do
pcall(function()
aL.CharacterAdded:Connect(function()eventEditor.FireEvent("OnSpawn",tostring(aL))hookCharEvents(aL)end)
hookCharEvents(aL)
end)
end

if spawnCmds and#spawnCmds>0 then
for aK,aL in pairs(spawnCmds)do
eventEditor.AddCmd("OnSpawn",{aL.COMMAND or"",{0},aL.DELAY or 0})
end
updatesaves()
end

if f then eventEditor.LoadData(f)end
eventEditor.Refresh()

eventEditor.FireEvent"OnExecute"

if aliases and#aliases>0 then
local aK={}
for aL,aM in pairs(cmds)do
aK[aM.NAME:lower()]=aM
for aN,V in pairs(aM.ALIAS)do
aK[V:lower()]=aM
end
end
for aL=1,#aliases do
local aM=string.lower(aliases[aL].CMD)
local aN=string.lower(aliases[aL].ALIAS)
if aK[aM]then
customAlias[aN]=aK[aM]
end
end
refreshaliases()
end

IYMouse.Move:Connect(checkTT)

CaptureService.CaptureBegan:Connect(function()
Holder.Visible=false
end)

CaptureService.CaptureEnded:Connect(function()
task.delay(0.1,function()
Holder.Visible=true
end)
end)

task.spawn(function()
local aK,aL=pcall(function()
local aK=game:HttpGet'https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/version'
return HttpService:JSONDecode(aK)
end)

if aK then
if currentVersion~=aL.Version then
notify('Outdated','Get the new version at infyiff.github.io')
end

if aL.Announcement and aL.Announcement~=''then
local aM=Instance.new"Frame"
local aN=Instance.new"Frame"
local V=Instance.new"TextLabel"
local W=Instance.new"Frame"
local X=Instance.new"TextLabel"
local Y=Instance.new"TextButton"
local Z=Instance.new"ImageLabel"

aM.Name=randomString()
aM.Parent=ScaledHolder
aM.Active=true
aM.BackgroundTransparency=1
aM.Position=UDim2.new(0.5,-180,0,-500)
aM.Size=UDim2.new(0,360,0,20)
aM.ZIndex=10

aN.Name="background"
aN.Parent=aM
aN.Active=true
aN.BackgroundColor3=currentShade1
aN.BorderSizePixel=0
aN.Position=UDim2.new(0,0,0,20)
aN.Size=UDim2.new(0,360,0,150)
aN.ZIndex=10

V.Parent=aN
V.BackgroundTransparency=1
V.Position=UDim2.new(0,5,0,5)
V.Size=UDim2.new(0,350,0,140)
V.Font=Enum.Font.SourceSans
V.TextSize=18
V.TextWrapped=true
V.Text=aL.Announcement
V.TextColor3=currentText1
V.TextXAlignment=Enum.TextXAlignment.Left
V.TextYAlignment=Enum.TextYAlignment.Top
V.ZIndex=10

W.Name="shadow"
W.Parent=aM
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
Z.Image="rbxassetid://5054663650"
Z.ZIndex=10

wait(1)
aM:TweenPosition(UDim2.new(0.5,-180,0,150),"InOut","Quart",0.5,true,nil)

Y.MouseButton1Click:Connect(function()
aM:TweenPosition(UDim2.new(0.5,-180,0,-500),"InOut","Quart",0.5,true,nil)
wait(0.6)
aM:Destroy()
end)
end
end
end)

task.spawn(function()
wait()
Credits:TweenPosition(UDim2.new(0,0,0.9,0),"Out","Quart",0.2)
Logo:TweenSizeAndPosition(UDim2.new(0,175,0,175),UDim2.new(0,37,0,45),"Out","Quart",0.3)
wait(1)
local aK=TweenInfo.new(1.6809,Enum.EasingStyle.Sine,Enum.EasingDirection.Out,0,false,0)
TweenService:Create(Logo,aK,{ImageTransparency=1}):Play()
TweenService:Create(IntroBackground,aK,{BackgroundTransparency=1}):Play()
Credits:TweenPosition(UDim2.new(0,0,0.9,30),"Out","Quart",0.2)
wait(0.2)
Logo:Destroy()
Credits:Destroy()
IntroBackground:Destroy()
minimizeHolder()
if b then notify("Unstable Device","On mobile, Zero Yield may have issues or features that are not functioning correctly.")end
end)


local aK=false


CMDs[#CMDs+1]={NAME='hideplayers / hplyrs',DESC='Hides all charater models'}
CMDs[#CMDs+1]={NAME='showplayers / splyrs',DESC='Shows all charater models'}
CMDs[#CMDs+1]={NAME='fast',DESC='Increases the player\'s movement speed'}
CMDs[#CMDs+1]={NAME='slow',DESC='Decreases the player\'s movement speed'}
CMDs[#CMDs+1]={NAME='time',DESC='Sets the in-game time'}
CMDs[#CMDs+1]={NAME='day',DESC='Sets the in-game time to daytime'}
CMDs[#CMDs+1]={NAME='night',DESC='Sets the in-game time to nighttime'}
CMDs[#CMDs+1]={NAME='bunnyhop / bhop',DESC='Automatically jumps for you'}

addcmd("hideplayers",{"hplyrs"},function(aL,aM)
local aN=game:GetService"Players"local V=
aN.LocalPlayer or aN.PlayerAdded:Wait()

for W,X in pairs(aN:GetPlayers())do
if X.Name~=aM.Name then
local Y=X.Character
for Z,_ in pairs(Y:GetChildren())do
if _:IsA"Part"or _:IsA"MeshPart"then
_.Transparency=1
for aO,aP in pairs(_:GetChildren())do
if aP:IsA"Decal"then
aP.Transparency=1
end
end
elseif _:IsA"Accessory"then
local aO=_:FindFirstChild"Handle"
if aO then
aO.Transparency=1
for aP,aQ in pairs(aO:GetChildren())do
if aQ:IsA"Decal"then
aQ.Transparency=1
end
end
end
end
end
end
end
end)


addcmd("showplayers",{"splyrs"},function(aL,aM)
local aN=game:GetService"Players"local aO=
aN.LocalPlayer or aN.PlayerAdded:Wait()

for aP,aQ in pairs(aN:GetPlayers())do
if aQ.Name~=aM.Name then
local V=aQ.Character
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

addcmd("fast",{},function(aL,aM)
local aN=player.Character.Humanoid.WalkSpeed
local aO=game:GetService"Players"
local aP=aO.LocalPlayer or aO.PlayerAdded:Wait()
aP.Character.Humanoid.WalkSpeed=aN+1
end)

addcmd("slow",{},function(aL,aM)
local aN=player.Character.Humanoid.WalkSpeed
local aO=game:GetService"Players"
local aP=aO.LocalPlayer or aO.PlayerAdded:Wait()
if aN>1 then
aP.Character.Humanoid.WalkSpeed=aN-1
end
end)

addcmd("time",{},function(aL,aM)
local aN=tonumber(aL[1])
if aN then
game:GetService"Lighting".ClockTime=aN
end
end)

addcmd("day",{},function(aL,aM)
game:GetService"Lighting".ClockTime=12
end)

addcmd("night",{},function(aL,aM)
game:GetService"Lighting".ClockTime=0
end)

addcmd("bhop",{"bunnyhop"},function(aL,aM)
local aN=game:GetService"Players":FindFirstChild(aM.Name)
if aN and not aK then
local aO=aN.Character
if aO then
local aP=aO:FindFirstChildOfClass"Humanoid"
if aP then
aK=true
task.spawn(function()
while aK do
aP.Jump=true
task.wait(0.2)
end
end)
end
end
end
end)

addcmd("unbhop",{"stopbhop"},function(aL,aM)
aK=false
end)