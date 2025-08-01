--OBFUSCATED FOR PRIVACY AND LEGAL REASONS.
--IF YOU WANT THE ORIGINAL SOURCE CODE PLEASE REQUEST IT ON SCRIPTBLOX.COM

local _0=loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\115\105\114\105\117\115\46\109\101\110\117\47\114\97\121\102\105\101\108\100"))()
local _1=game:GetService("\80\108\97\121\101\114\115")
local _2=game:GetService("\82\117\110\83\101\114\118\105\99\101")
local _3=game:GetService("\85\115\101\114\73\110\112\117\116\83\101\114\118\105\99\101")
local _4=_1.LocalPlayer
local _5=false
local _6="\114\98\120\97\115\115\101\116\105\100\58\47\47\57\49\51\51\55\54\50\50\48"
local _7=nil
local _8=nil
local _9=false
local _A=false
local _B=false
local _C=100

local function _D(_E)
	local _F=_E:FindFirstChildWhichIsA("\65\110\105\109\97\116\111\114") or Instance.new("\65\110\105\109\97\116\111\114",_E)
	local _G=Instance.new("\65\110\105\109\97\116\105\111\110")
	_G.AnimationId=_6
	_7=_F:LoadAnimation(_G)
	_7.Priority=Enum.AnimationPriority.Movement
	_7:AdjustSpeed(6)
	_7:Play()
	_8=_2.RenderStepped:Connect(function()
		if _E.MoveDirection.Magnitude==0 then if _7.IsPlaying then _7:Stop() end
		else if not _7.IsPlaying then _7:Play() _7:AdjustSpeed(6) end end
	end)
end

local function _H() if _7 then _7:Stop() end if _8 then _8:Disconnect() end end

local function _I()
	local _J=_4.Character
	if not _J then return end
	local _K=_J:FindFirstChild("\72\117\109\97\110\111\105\100")
	if not _K then return end
	_K.WalkSpeed=3
	_D(_K)
	local _L=_J:FindFirstChild("\65\110\105\109\97\116\101")
	if _L and _L:FindFirstChild("run") then
		_L.run.RunAnim.AnimationId="rbxassetid://0"
	end
end

local function _M()
	local _N=_4.Character
	if not _N then return end
	local _O=_N:FindFirstChild("\72\117\109\97\110\111\105\100")
	if not _O then return end
	_O.WalkSpeed=16
	_H()
	local _P=_N:FindFirstChild("\65\110\105\109\97\116\101")
	if _P and _P:FindFirstChild("run") then
		_P.run.RunAnim.AnimationId="rbxassetid://913402848"
	end
end

local function _Q(_R)
	_R:WaitForChild("\72\117\109\97\110\111\105\100")
	_R:WaitForChild("\65\110\105\109\97\116\101")
	task.wait(0.5)
	if _5 then _I() else _M() end
end

if _4.Character then _Q(_4.Character) end
_4.CharacterAdded:Connect(_Q)

local _S=_0:CreateWindow({
	Name="\69\103\111\114\x20\77\111\100\101\x20\45\x20\98\121\x20\72\120\115\103\111\108\100",
	LoadingTitle="\69\103\111\114\x20\77\111\100\101\x20\83\99\114\105\112\116",
	LoadingSubtitle="\77\97\100\101\x20\98\121\x20\72\120\115\103\111\108\100",
	ConfigurationSaving={Enabled=true,FolderName="\69\103\111\114\67\111\110\102\105\103",FileName="\69\103\111\114\84\111\103\103\108\101"}
})

local _T=_S:CreateTab("\77\97\105\110",4483362458)
_T:CreateSection("\67\111\110\116\114\111\108\115")
_T:CreateToggle({
	Name="\69\103\111\114\x20\77\111\100\101",
	CurrentValue=false,
	Flag="\69\103\111\114\84\111\103\103\108\101\70\108\97\103",
	Callback=function(_U)
		_5=_U
		if _U then _I() else _M() end
	end
})

local _V=_S:CreateTab("\77\111\118\101\109\101\110\116\32\38\32\70\108\105\110\103",4483362458)
_V:CreateSection("\77\111\118\101\109\101\110\116\32\38\32\83\112\105\110\98\111\116")

_V:CreateToggle({
	Name="\83\112\105\110\66\111\116\x20\x28\x32\x4d\x20\115\x70\x65\x65\x64\x29",
	CurrentValue=false,
	Flag="\83\112\105\110\66\111\116\84\111\103\103\108\101",
	Callback=function(v)
		_G["spin_enabled"] = v
		if not v then
			local c = _4.Character
			if c and c:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116") then
				c.HumanoidRootPart.CFrame = CFrame.new(c.HumanoidRootPart.Position)
			end
		end
	end
})

_V:CreateToggle({
	Name="\70\108\105\110\103\x20\x28\115\x65\112\x61\162\141\145\x65\x29",
	CurrentValue=false,
	Flag="\70\108\105\110\103\84\111\103\103\108\101",
	Callback=function(v)
		_G["fling_enabled"] = v
	end
})

_G["spin_enabled"] = false
_G["fling_enabled"] = false

_2.RenderStepped:Connect(function(_W)
	local _X=game:GetService("\80\108\97\121\101\114\115").LocalPlayer
	local _Y=_X.Character
	if not _Y then return end
	local _Z=_Y:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116")
	if not _Z then return end

	if _G["spin_enabled"] then
		_Z.CFrame=_Z.CFrame*CFrame.Angles(0,math.rad(2e6)*_W,0)
	end

	if _G["fling_enabled"] then
		for _,a in next,game:GetService("\80\108\97\121\101\114\115"):GetPlayers() do
			if a~=game:GetService("\80\108\97\121\101\114\115").LocalPlayer and a.Character and a.Character:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116") then
				local b=a.Character:FindFirstChild("\72\117\109\97\110\111\105\100\82\111\111\116\80\97\114\116")
				_Z.Velocity=(b.Position-_Z.Position).Unit*500
			end
		end
	end
end)

_0:Notify({
	Title="\69\103\111\114\x20\83\99\114\105\112\116\x20\76\111\97\100\101\100",
	Content="\77\97\100\101\32\98\121\32\72\120\115\103\111\108\100\32\124\32\84\111\103\103\108\101\32\102\114\111\109\32\77\97\105\110\32\84\97\98",
	Duration=5,
	Image=4483362458
})

_0:LoadConfiguration()
