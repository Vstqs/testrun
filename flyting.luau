-- Reconstructed UI bootstrap.
local uiConstants = {
    [4] = 'Toggle',
    [16] = 'UIScale',
    [18] = 1,
    [21] = 'UIGradient',
    [30] = 14,
    [33] = 0,
    [35] = 6,
    [38] = 'SearchIcon',
    [39] = 'TextButton',
    [45] = 158,
    [46] = 20,
    [54] = 'Circle',
    [61] = 20,
    [62] = 493,
    [65] = 'TextLabel',
    [68] = 260,
    [70] = 1,
    [72] = 6,
    [79] = 50,
    [81] = 0.5,
    [91] = 180,
    [93] = 'CoreGui',
    [97] = 16,
    [101] = false,
    [106] = 'UIListLayout',
    [115] = 12,
    [129] = 'Lighting',
    [131] = 'UIStroke',
    [137] = 'UICorner',
    [143] = 0.32,
    [145] = 'table',
    [147] = 14,
    [154] = 'function',
    [162] = 'MainFrame',
    [165] = 'Instance',
    [170] = 'Frame',
    [173] = 'Players',
    [174] = 4,
    [175] = 'TabHolderScale',
    [183] = 'Section',
    [192] = 16,
    [197] = 21,
    [198] = 0.92,
    [199] = 'Trigger_Panel',
    [200] = true,
}

-- Safe fallbacks for less-critical obfuscated constants.
-- They prevent an unresolved lookup from becoming an immediate nil-index failure.
setmetatable(uiConstants, { __index = function(_, key)
    if key == 200 then return true end
    if key == 101 then return false end
    if key == 18 then return 1 end
    if key == 33 then return 0 end
    if key == 145 then return "table" end
    if key == 154 then return "function" end
    if key == 165 then return "Instance" end
    return 0
end })
											cleanupResources = nil

											cleanupResources = function(argument, argument2)
												if typeof(argument) == "RBXScriptConnection" then
													argument:Disconnect()
												elseif type(argument) == "thread" and coroutine.status(argument) ~= "dead" then
													task.cancel(argument)
												else
													local value106 = uiConstants[145]

													if type(argument) == value106 then
														argument2 = argument2 or {}
														if argument2[argument] then
															return
														end
														argument2[argument] = true

														for _, value107 in argument, nil, nil do
															cleanupResources(value107, argument2)
														end
													end
												end
											end

											invokeSafely = function(argument, ...)
												if type(argument) == "function" then
													local value106 = getthreadidentity()
													local value107 = pcall
													local value108 = table.pack(...)
													value107(argument, table.unpack(value108, 1, value108.n))
													setthreadidentity(value106)
												end
											end

											do
												local function dragHandler(argument)
													local table27 = argument or {}

													for key, value106 in table27, nil, nil do
														pcall(function()
															for key2, value107 in value106, nil, nil do
																key[key2] = value107
															end
														end)
													end
												end

												genv = getgenv()
												scriptKey = script_key or genv.script_key
												local flyteBBState2 = genv.FlyteBB_State
												local flyteBB = genv.FlyteBB

												if type(flyteBBState2) == "table" then
													invokeSafely(flyteBBState2.Unload)
												end

												if type(flyteBB) == "table" then
													invokeSafely(flyteBB.Destroy, flyteBB)
												end

												if type(flyteBBState2) == "table" and not flyteBBState2.Unloaded then
													do
														flyteBBState2.Unloading = true
														flyteBBState2.Loaded = uiConstants[101]
														invokeSafely(flyteBBState2.StreakRestore or flyteBBState2.Streak_Restore)
														invokeSafely(flyteBBState2.AntiLagRestore)
														invokeSafely(flyteBBState2.NoRenderRestore)
														dragHandler(flyteBBState2.AntiLagCache)
														dragHandler(flyteBBState2.RenderCache)
														flyteBBState2.AntiLagCache = nil
														flyteBBState2.RenderCache = nil
														invokeSafely(cleanupResources, flyteBBState2)

														do
															local espLabels = flyteBBState2.ESPLabels or flyteBBState2.ESP_Labels or flyteBBState2.Esp_Labels or {}

															for _, value106 in espLabels, nil, nil do
																if value106.Billboard then
																	pcall(function()
																		value106.Billboard:Destroy()
																	end)
																end
															end
														end
													end

													for _, value106 in {
														"KeybindPanel",
														"StatsPanel",
														uiConstants[107],
														"TriggerPanel",
														uiConstants[199],
														"Spam_Panel",
														"Trigger_Panel",
													}, nil, nil do
														do
															local value107 = flyteBBState2[value106]
															local value108 = uiConstants[145]

															if type(value107) == value108 and typeof(value107.Gui) == "Instance" then
																pcall(function()
																	value107.Gui:Destroy()
																end)
															end
														end
													end

													do
														local extraStats = flyteBBState2.ExtraStats or {}

														for _, value106 in extraStats, nil, nil do
															local condition18 = type(value106) == "table"
															local condition19

															if condition18 then
																local value107 = uiConstants[165]
																condition19 = typeof(value106.Gui) == value107
															else
																condition19 = condition18
															end

															if condition19 then
																pcall(function()
																	value106.Gui:Destroy()
																end)
															end
														end
													end

													flyteBBState2.Unloaded = true
												end

												if type(flyteBB) == "table" and typeof(flyteBB.screenGuiYay) == "Instance" then
													pcall(function()
														flyteBB.screenGuiYay:Destroy()
													end)
												end

												if genv.FlyteBB == flyteBB then
													genv.FlyteBB = nil
												end

												if genv.FlyteBB_State == flyteBBState2 then
													genv.FlyteBB_State = nil
												end
											end
										end

										do
											local value106

											do
												local dragHandler = cloneref or function(argument)
													return argument
												end

												tweenService = dragHandler(game:GetService("TweenService"))
												userInputService = dragHandler(game:GetService("UserInputService"))
												runService = dragHandler(game:GetService("RunService"))
												playersService = dragHandler(game:GetService(uiConstants[173]))
												textService = dragHandler(game:GetService("TextService"))
												guiService = dragHandler(game:GetService("GuiService"))
												httpService = dragHandler(game:GetService("HttpService"))
												contentProvider = dragHandler(game:GetService("ContentProvider"))
												replicatedStorage = dragHandler(game:GetService("ReplicatedStorage"))
												coreGui = dragHandler(game:GetService(uiConstants[93]))
												value106 = dragHandler(game:GetService(uiConstants[129]))
												teleportService = dragHandler(game:GetService("TeleportService"))
											end

											do
												local function dragHandler(argument)
													for _, value107 in argument:GetChildren() do
														if value107.Name == "v0rtexdBestUIEver" and value107:IsA("ScreenGui") then
															value107:Destroy()
														end
													end
												end

												if gethui then
													local ok, result = pcall(gethui)

													if ok then
														invokeSafely(dragHandler, result)
													end
												end

												invokeSafely(dragHandler, coreGui)
											end

											local dataPing = nil
											dataPing = nil
											updatePing = function()if not  dataPing or not  dataPing .Parent then local F= value106 :FindFirstChild("Network");local P=F and(F:FindFirstChild("ServerStatsItem")); dataPing =P and(P:FindFirstChild("Data Ping"));end;if  dataPing then local F,P=pcall( dataPing .GetValue, dataPing );local x=F and type(P)=="number"and P>0 and P==P and P<math.huge;if x then  dataPing =P;end;end;end
										end
									end

									do
										do
											do
												local value106 = assert
												local condition18 = type(writefile) == "function" and type(readfile) == "function" and type(isfile) == "function" and type(makefolder) == "function" and type(isfolder) == "function"

												if condition18 then
													local value107 = uiConstants[154]
													condition18 = type(listfiles) == value107
												end

												if condition18 then
													local value107 = uiConstants[154]
													condition18 = type(delfile) == value107
												end

												value106(condition18, "filesystem is not supported")
											end

											flyteBBState = nil
											configController = nil
											valueFunction43 = nil
											table19 = {}
											table20 = nil

											table21 = {
												uiConstants[111],
												"Sliders",
												uiConstants[126],
												"Dropdowns",
												"Textboxes",
												"Keybinds",
												"UnlockAll",
											}

											do
												local table27 = {
													uiConstants[141],
													uiConstants[142],
													"Cooldown_Protection",
													"Parry_On_Dribble",
													uiConstants[84],
													"Anti_Blindness",
													"Anti_Phantom",
													"Anti_Curve",
													"Dynamic_Spam",
													"Manual_Spam",
													"Auto_Preclick",
													uiConstants[12],
													"Auto_Parry",
													"Auto_Spam",
													uiConstants[140],
													"Auto_Rejoin",
													"Auto_Vote",
													"Death_Slash",
													"Time_Hole",
													"No_Render",
													"Anti_Lag",
													"Custom_FFlags",
													"Ability_ESP",
													"Device_Spoof",
													"Mobile_Button",
													uiConstants[37],
													"Ball_Stats",
													"Unlock_All",
													"Custom_Streak",
													"Hit_Freeze",
													uiConstants[88],
													"Anti_AFK",
													"Anim_Fix",
													"Config_List",
													uiConstants[103],
												}

												normalizeSettingName = function(argument)
													local value106 = uiConstants[127]
													if type(argument) ~= value106 then
														return argument
													end

													for _, value107 in table27, nil, nil do
														argument = argument:gsub(value107, value107 == "Anti_Curve" and "Anticurve" or value107:gsub("_", ""))
													end

													return argument
												end
											end
										end

										do
											migrateConfig = function(argument)
												for _, value106 in table21, nil, nil do
													local value107 = argument[value106]

													if type(value107) == "table" then
														local table27 = {}

														for key in value107, nil, nil do
															local value108 = normalizeSettingName(key)

															if value108 ~= key then
																table27[key] = value108
															end
														end

														for key, value108 in table27, nil, nil do
															if value107[value108] == nil then
																value107[value108] = value107[key]
															end

															value107[key] = nil
														end
													end
												end

												local toggles = argument.Toggles

												if type(toggles) == "table" then
													for key, value106 in {
														Claim_Daily_Gifts = "Claim_Daily_Rewards",
														Claim_Welcome_Rewards = "Claim_Daily_Rewards",
														Claim_Playtime_Gifts = "Claim_Playtime_Rewards",
													}, nil, nil do
														for _, value107 in { "", ":notify" }, nil, nil do
															if toggles[key .. value107] ~= nil then
																toggles[value106 .. value107] = toggles[value106 .. value107] == true or toggles[key .. value107] == true
																toggles[key .. value107] = nil
															end
														end
													end
												end

												return argument
											end

											do
												local table27 = {
													AutoParry_Type = true,
													AutoSpam_Type = uiConstants[200],
													ManualSpam_Type = true,
													Triggerbot_Type = true,
													Fury_Parry_Method = uiConstants[200],
												}

												table11 = {
													Writing = {},
													Pending = {},
													Read = function(argument)
														if not isfile(argument) then
															return
														end
														local value106 = readfile(argument)
														local ok, result = pcall(httpService.JSONDecode, httpService, value106)
														if ok and type(result) == "table" then
															return result
														end
													end,
													Write = function(argument, argument2)
														table11.Pending[argument] = httpService:JSONEncode(argument2)
														if table11.Writing[argument] then
															return
														end
														table11.Writing[argument] = uiConstants[200]

														while true do
															local value106 = table11.Pending[argument]
															table11.Pending[argument] = nil
															local ok, result = pcall(writefile, argument, value106)

															if not ok then
																table11.Writing[argument] = nil
																error(result)
															end

															if table11.Pending[argument] ~= nil then
																continue
															end
															break
														end

														table11.Writing[argument] = nil
													end,
												}

												cloneTable = nil

												cloneTable = function(argument)
													if type(argument) ~= "table" then
														return argument
													end
													local table28 = {}

													for key, value106 in argument, nil, nil do
														table28[key] = cloneTable(value106)
													end

													return table28
												end

												saveConfig = function()
													if not flyteBBState or not flyteBBState.Loaded or flyteBBState.Unloading or configController and configController.Applying then
														return
													end

													if not isfolder("Flyte") then
														makefolder("Flyte")
													end

													table11.Write("Flyte/Flyte.json", table19)

													if configController and configController.Active and configController.Save then
														configController:Save(configController.Active, false)
													end
												end

												if isfile("Flyte/Flyte.json.backup") then
													pcall(delfile, "Flyte/Flyte.json.backup")
												end

												table19 = table11.Read("Flyte/Flyte.json") or table19

												for _, value106 in table21, nil, nil do
													local value107 = uiConstants[145]
													table19[value106] = type(table19[value106]) == value107 and table19[value106] or {}
												end

												migrateConfig(table19)

												for _, value106 in { "ManualSpam", "manual_spam_enabled" }, nil, nil do
													table19.Toggles[value106] = nil
												end

												normalizeKeybindModes = function(argument)
													for key, value106 in argument, nil, nil do
														local condition18 = value106 == "Keypress"

														if not condition18 then
															condition18 = table27[key] and value106 ~= uiConstants[90] and value106 ~= uiConstants[7] and value106 ~= uiConstants[191]
														end

														if condition18 then
															argument[key] = "VIM"
														end
													end
												end
											end
										end

										normalizeKeybindModes(table19.Dropdowns)

										if next(table19.Keybinds) == nil and isfile("FlyteBB_Keybinds.json") then
											local json = table11.Read("FlyteBB_Keybinds.json")
											local value106 = uiConstants[145]

											if type(json) == value106 then
												table19.Keybinds = json
											end
										end

										do
											local font = Font.new
											local table27 = {}

											table22 = { new = function(argument, argument2, argument3)
												local value106 = uiConstants[188]
												local text5 = tostring(argument) .. value106 .. tostring(argument2) .. "_" .. tostring(argument3)
												local value107 = table27[text5]

												if not value107 then
													value107 = font(argument, argument2, argument3)
													table27[text5] = value107
												end

												return value107
											end }
										end
									end

									do
										local keybinds, table27, table28, handlers, value106, value107, value108, dragHandler

										do
											keybinds = table19.Keybinds
											table27 = {}
											table28 = {}
											handlers = {}

											do
												local order = 0
												value106 = nil
												value107 = nil
												value108 = nil

												local function resolveKeyCode(argument)
													if argument == "MouseButton3" then
														return Enum.UserInputType.MouseButton3
													end
													local value109 = uiConstants[127]
													return type(argument) == value109 and Enum.KeyCode[argument] or Enum.KeyCode.Unknown
												end

												dragHandler = function(argument)
													if argument.UserInputType == Enum.UserInputType.Keyboard then
														return argument.KeyCode
													end

													if argument.UserInputType == Enum.UserInputType.MouseButton3 then
														return argument.UserInputType
													end
												end

												table12 = {
													Resolve = function(argument)
														return resolveKeyCode(argument)
													end,
													Display = function(argument)
														return argument == Enum.UserInputType.MouseButton3 and "M3" or argument.Name
													end,
													Get = function(argument)
														local value109 = keybinds[argument]
														return resolveKeyCode(type(value109) == "table" and value109.Key or value109)
													end,
													Set = function(argument, argument2)
														if not argument2 or argument2 == Enum.KeyCode.Unknown then
															if uiConstants[63] <= n24 then
																while true do
																end
															else
																keybinds[argument] = nil
															end
														else
															keybinds[argument] = { Key = argument2.Name, Mode = table12.GetMode(argument) }
														end

														saveConfig()

														if handlers[argument] then
															handlers[argument](table12.Get(argument))
														end

														if flyteBBState and flyteBBState.RefreshKeybinds then
															task.defer(flyteBBState.RefreshKeybinds)
														end
													end,
													GetMode = function(argument)
														local value109 = keybinds[argument]
														local value110 = uiConstants[145]
														if type(value109) == value110 and (value109.Mode == uiConstants[4] or value109.Mode == "Hold") then
															return value109.Mode
														end
														return uiConstants[4]
													end,
													SetMode = function(argument, argument2)
														local value109 = table12.Get(argument)

														if value109 == Enum.KeyCode.Unknown then
															keybinds[argument] = { Mode = argument2 }
														else
															keybinds[argument] = { Key = value109.Name, Mode = argument2 }
														end

														saveConfig()

														if flyteBBState and flyteBBState.RefreshKeybinds then
															task.defer(flyteBBState.RefreshKeybinds)
														end
													end,
													SetMeta = function(argument, argument2)
														local value109 = table28[argument]

														if value109 and value109.Order then
															argument2.Order = value109.Order
														else
															order += 1
															argument2.Order = order
														end

														table28[argument] = argument2

														if flyteBBState and flyteBBState.RefreshKeybinds then
															task.defer(flyteBBState.RefreshKeybinds)
														end
													end,
													RegisterDisplay = function(argument, argument2)
														handlers[argument] = argument2
													end,
													GetAll = function()
														local table29 = {}
														local table30 = {}

														for _, value109 in pairs(table28) do
															if not value109.Parent then
																table30[string.lower(value109.Name or "")] = value109.Order or 9999
															end
														end

														for key, value109 in pairs(table28) do
															local value110 = table12.Get(key)

															if value110 ~= Enum.KeyCode.Unknown then
																local remoteEvent = nil

																if value109.GetState then
																	remoteEvent = value109.GetState()
																end

																table.insert(table29, {
																	Id = key,
																	Name = value109.Name or key,
																	Key = table12.Display(value110),
																	Mode = value109.DisplayMode or table12.GetMode(key),
																	Group = value109.Group,
																	Parent = value109.Parent,
																	Order = value109.Order or 9999,
																	ParentOrder = value109.Parent and table30[string.lower(value109.Parent)] or value109.Order or 9999,
																	Active = remoteEvent,
																})
															end
														end

														table.sort(table29, function(argument, argument2)
															if argument.ParentOrder ~= argument2.ParentOrder then
																return argument.ParentOrder < argument2.ParentOrder
															end

															if argument.Parent ~= nil ~= argument2.Parent ~= nil then
																return argument.Parent == nil
															end

															if argument.Parent and argument2.Parent and argument.Active ~= argument2.Active then
																return argument.Active == true
															end
															return argument.Order < argument2.Order
														end)

														return table29
													end,
													FindDuplicate = function(argument, argument2, argument3)
														if not argument or not argument3 or argument3 == Enum.KeyCode.Unknown then
															return nil
														end
														local name = argument3.Name

														for key, value109 in pairs(table28) do
															if key ~= argument2 and value109.Group == argument then
																local value110 = keybinds[key]
																if (type(value110) == "table" and value110.Key or value110) == name then
																	return value109.Name
																end
															end
														end

														return nil
													end,
													Register = function(argument, argument2)
														table27[argument] = argument2
													end,
													BeginListen = function(argument, argument2, argument3)
														value106 = argument
														value107 = argument2
														value108 = argument3
													end,
													IsListening = function()
														return value106 ~= nil
													end,
												}
											end
										end

										local connection = userInputService.InputBegan:Connect(function(input, gameProcessed)
											local unknown = dragHandler(input)
											if not unknown then
												return
											end

											if value106 then
												local value109 = value106
												local value110 = value107
												local remoteEvent = value108
												value106 = nil
												value107 = nil
												value108 = nil
												if unknown == Enum.KeyCode.Unknown then
													return
												end

												if unknown == Enum.KeyCode.Escape then
													if value110 then
														value110(table12.Get(value109))
													end

													return
												end

												if unknown == Enum.KeyCode.Backspace then
													unknown = Enum.KeyCode.Unknown
												end

												if remoteEvent and unknown ~= Enum.KeyCode.Unknown and remoteEvent(unknown) == false then
													if value110 then
														value110(table12.Get(value109))
													end

													return
												end

												table12.Set(value109, unknown)

												if value110 then
													value110(unknown)
												end

												return
											end

											if gameProcessed then
												return
											end
											local name = unknown.Name

											for key, value109 in pairs(table27) do
												local value110 = keybinds[key]

												if (type(value110) == "table" and value110.Key or value110) == name then
													task.spawn(value109, true, table12.GetMode(key), unknown)
												end
											end
										end)

										local connection2 = userInputService.InputEnded:Connect(function(input, gameProcessed)
											if gameProcessed then
												return
											end
											local value109 = dragHandler(input)
											if not value109 then
												return
											end
											local name = value109.Name

											for key, value110 in pairs(table27) do
												local remoteEvent = keybinds[key]

												if (type(remoteEvent) == "table" and remoteEvent.Key or remoteEvent) == name and table12.GetMode(key) == "Hold" then
													task.spawn(value110, false, uiConstants[99], value109)
												end
											end
										end)

										table12.Destroy = function()
											if connection then
												connection:Disconnect()
												connection = nil
											end

											if connection2 then
												connection2:Disconnect()
												connection2 = nil
											end

											table27 = {}
											table28 = {}
											handlers = {}
											value106 = nil
											value107 = nil
											value108 = nil
										end
									end
								end

								do
									do
										do
											setfpscap(9999)
											index = {}
											index.__index = index

											colors = {
												Primary = Color3.fromRGB(12, uiConstants[49], 16),
												Secondary = Color3.fromRGB(18, 18, uiConstants[19]),
												Tertiary = Color3.fromRGB(26, uiConstants[190], 34),
												Surface = Color3.fromRGB(32, 32, uiConstants[79]),
												Element = Color3.fromRGB(42, 42, uiConstants[89]),
												ElementHover = Color3.fromRGB(55, 55, 70),
												Border = Color3.fromRGB(68, 68, 88),
												BorderSoft = Color3.fromRGB(uiConstants[195], 45, 58),
												Accent = Color3.fromRGB(uiConstants[67], 90, uiConstants[71]),
												AccentDark = Color3.fromRGB(uiConstants[189], uiConstants[6], 210),
												AccentLight = Color3.fromRGB(uiConstants[75], 165, 255),
												Text = Color3.fromRGB(240, 240, 245),
												SubText = Color3.fromRGB(155, 155, uiConstants[168]),
												TextHover = Color3.fromRGB(225, 225, 240),
												Muted = Color3.fromRGB(105, 105, uiConstants[120]),
												White = Color3.new(1, 1, 1),
												Black = Color3.new(),
												Success = Color3.fromRGB(126, 238, 174),
												Warning = Color3.fromRGB(255, 197, 117),
												Error = Color3.fromRGB(255, 116, 145),
											}

											index.Colors = colors

											if not game:IsLoaded() then
												game.Loaded:Wait()
											end

											while not playersService.LocalPlayer do
												task.wait()
											end

											localPlayer = playersService.LocalPlayer
											touchEnabled = userInputService.TouchEnabled

											newInstance = function(argument, argument2)
												local instance = Instance.new(argument)

												for key, value106 in pairs(argument2) do
													if key ~= "Parent" then
														instance[key] = value106
													end
												end

												if argument2.Parent then
													instance.Parent = argument2.Parent
												end

												return instance
											end

											createInstance = newInstance

											parentGui = function(argument)
												if gethui then
													local ok, parent = pcall(gethui)

													if ok and typeof(parent) == "Instance" then
														if pcall(function()
															argument.Parent = parent
														end) then
															return argument
														end
													end
												end

												local protectGui = syn and syn.protect_gui

												if protectGui then
													pcall(protectGui, argument)
												end

												if protectgui and protectgui ~= protectGui then
													pcall(protectgui, argument)
												end

												argument.Parent = coreGui
												return argument
											end

											getProperty = function(argument, argument2, argument3)
												if argument3 then
													return nil
												end
												return argument[argument2]
											end

											do
												local table27 = {}

												playTween = function(argument, argument2, argument3, argument4, argument5)
													argument3 = argument3 or 0.5
													argument4 = argument4 or Enum.EasingStyle.Exponential
													local out = argument5 or Enum.EasingDirection.Out
													local text5 = string.format("%f_%d_%d", argument3, argument4.Value, out.Value)
													local tweenInfo = table27[text5]

													if not tweenInfo then
														tweenInfo = TweenInfo.new(argument3, argument4, out)
														table27[text5] = tweenInfo
													end

													local tween = tweenService:Create(argument, tweenInfo, argument2)
													tween:Play()
													return tween
												end
											end
										end

										do
											local dragHandler

											do
												local tweenInfo = TweenInfo.new(0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
												table26 = {}

												trackConnection = function(argument)
													table26[argument] = true
													return argument
												end

												disconnectTrackedConnection = function(argument)
													if argument then
														argument:Disconnect()
														table26[argument] = nil
													end
												end

												inputChangedHandler = nil

												trackConnection(userInputService.InputChanged:Connect(function(input)
													if inputChangedHandler then
														inputChangedHandler(input)
													end
												end))

												dragHandler = function(argument, argument2)
													local condition18 = false
													local value106 = nil
													local position = nil
													local position2 = nil
													local tween = nil
													local value107 = argument2 or argument

													local function resolveKeyCode(argument3)
														local n32 = argument3.Position - position
														local udim2 = UDim2.new(position2.X.Scale, position2.X.Offset + n32.X, position2.Y.Scale, position2.Y.Offset + n32.Y)

														if tween then
															tween:Cancel()
														end

														tween = tweenService:Create(argument, tweenInfo, { Position = udim2 })
														tween:Play()
													end

													local function dragInputChanged(argument3)
														if argument3 == value106 and condition18 then
															resolveKeyCode(argument3)
														end
													end

													value107.InputBegan:Connect(function(input)
														if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
															condition18 = true
															position = input.Position
															position2 = argument.Position

															input.Changed:Connect(function()
																if input.UserInputState == Enum.UserInputState.End then
																	condition18 = false

																	if inputChangedHandler == dragInputChanged then
																		inputChangedHandler = nil
																	end
																end
															end)

															inputChangedHandler = dragInputChanged
														end
													end)

													value107.InputChanged:Connect(function(input)
														if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
															value106 = input
														end
													end)
												end
											end

											value99 = dragHandler

											do
												local function resolveKeyCode(argument)
													local ok, result = pcall(playersService.GetUserThumbnailAsync, playersService, argument, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
													if ok then
														return result
													end
													return "rbxassetid://135756197673563"
												end

												valueFunction47 = function(argument, argument2, argument3)
													return textService:GetTextSize(argument, argument2, argument3 or Enum.Font.GothamSemibold, Vector2.new(math.huge, math.huge)).X
												end

												valueFunction49 = function(argument, argument2, argument3, argument4)
													if valueFunction47(argument, argument3, argument4) <= argument2 then
														return argument
													end
													local n32 = uiConstants[18]
													local n33 = #argument
													local text5 = ""

													while n32 <= n33 do
														local n34 = math.floor((n32 + n33) / 2)
														local str6 = argument:sub(uiConstants[18], n34) .. "..."

														if valueFunction47(str6, argument3, argument4) <= argument2 then
															n32 = n34 + 1
															text5 = str6
														else
															n33 = n34 - 1
														end
													end

													return text5 ~= "" and text5 or "..."
												end

												index.new = function(config)
													local obj2 = setmetatable({}, index)
													obj2.config = config or {}
													obj2.config.Name = obj2.config.Name or "o11 vision"
													obj2.config.Colors = obj2.config.Colors or colors
													obj2.config.AccentColor = obj2.config.AccentColor or obj2.config.Colors.Accent
													obj2.config.BackgroundColor = obj2.config.BackgroundColor or obj2.config.Colors.Primary
													obj2.config.SecondaryColor = obj2.config.SecondaryColor or obj2.config.Colors.Secondary
													obj2.config.TextColor = obj2.config.TextColor or obj2.config.Colors.Text
													obj2.config.SubTextColor = obj2.config.SubTextColor or obj2.config.Colors.SubText
													obj2.sectionsAreAwesome = {}
													obj2.tabsGoWoosh = {}
													obj2.currentTabYay = nil
													obj2.notificationsAreCool = {}
													obj2.isToggledOn = true
													obj2.dropdownHolderRef = nil
													obj2.dropdownHolderScale = nil
													obj2.sectionRefreshers = {}
													obj2.openDropdowns = {}
													obj2.dropdownFrames = {}
													obj2.detachedDropdowns = {}
													obj2:CreateUIBecauseWeNeedIt()
													return obj2
												end

												index.CreateUIBecauseWeNeedIt = function(argument)
													argument.screenGuiYay = newInstance("ScreenGui", { Name = "v0rtexdBestUIEver", ZIndexBehavior = Enum.ZIndexBehavior.Sibling, ResetOnSpawn = false })
													parentGui(argument.screenGuiYay)

													argument.dropdownHolderRef = newInstance(uiConstants[170], {
														Name = "DropdownHolderBecauseDropdownsNeedHomes",
														BackgroundTransparency = 1,
														Size = UDim2.new(uiConstants[18], uiConstants[33], 1, 0),
														ZIndex = uiConstants[184],
														Parent = argument.screenGuiYay,
													})

													argument.dropdownHolderScale = newInstance("UIScale", { Name = uiConstants[180], Scale = 1, Parent = argument.dropdownHolderRef })
													argument:CreateWatermarkBecauseWeCool()
													argument:CreateMainFrameYay()
													argument:UpdateLayoutScale()

													argument.screenGuiYay:GetPropertyChangedSignal(uiConstants[32]):Connect(function()
														argument:UpdateLayoutScale()
													end)

													argument:CreateNotificationHolderForCoolNotifs()

													task.delay(0.1, function()
														argument:SetVisible(true)
													end)

													local settingsMenuSettingsToggleKeybin = table19.Keybinds and table19.Keybinds["settings:menu settings:toggle keybind"]
													argument.toggleVisibilityKey = settingsMenuSettingsToggleKeybin and Enum.KeyCode[settingsMenuSettingsToggleKeybin] or Enum.KeyCode.RightAlt
													argument.toggleVisibilityKeyName = argument.toggleVisibilityKey == Enum.KeyCode.Unknown and "None" or argument.toggleVisibilityKey.Name

													trackConnection(userInputService.InputBegan:Connect(function(input, gameProcessed)
														local value106 = uiConstants[25]

														if n28(897) < value106 then
															if gameProcessed then
																return
															end
															local lastKeybindChanged = argument.lastKeybindChanged

															if lastKeybindChanged then
																local lastKeybindChanged2 = argument.lastKeybindChanged
																lastKeybindChanged = tick() - lastKeybindChanged2 < 0.1
															end

															if lastKeybindChanged then
																return
															end

															if table12.IsListening and table12.IsListening() then
																return
															end

															if input.KeyCode == argument.toggleVisibilityKey then
																argument:SetVisible(not argument.isToggledOn)
															end

															return
														end

														while true do
														end
													end))

													if touchEnabled then
														local value106 = newInstance(uiConstants[39], {
															Name = "MobileToggle",
															Size = UDim2.new(0, 46, 0, 46),
															Position = UDim2.new(0, 38, 1, -uiConstants[80]),
															AnchorPoint = Vector2.new(0.5, 0.5),
															BackgroundColor3 = Color3.fromRGB(24, 24, 28),
															BackgroundTransparency = 0.2,
															Text = "",
															AutoButtonColor = false,
															ClipsDescendants = false,
															Visible = true,
															ZIndex = 99999,
															Parent = argument.screenGuiYay,
														})

														argument.mobileToggleScale = newInstance(uiConstants[16], { Scale = (table20.MobileButtonScale or 100) / uiConstants[158], Parent = value106 })
														newInstance(uiConstants[137], { CornerRadius = UDim.new(1, 0), Parent = value106 })

														local UIStroke = newInstance("UIStroke", {
															Thickness = 1.5,
															Color = colors.Accent,
															ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
															Transparency = 0.3,
															Parent = value106,
														})

														local ImageLabel = newInstance("ImageLabel", {
															Name = "OpenIcon",
															Size = UDim2.new(0, uiConstants[108], 0, 20),
															Position = UDim2.new(uiConstants[81], 0, 0.5, 0),
															AnchorPoint = Vector2.new(0.5, 0.5),
															BackgroundTransparency = 1,
															Image = "rbxassetid://136585806825349",
															ImageColor3 = colors.Accent,
															ZIndex = 100000,
															Parent = value106,
														})

														local UIScale = newInstance("UIScale", { Scale = uiConstants[18], Parent = ImageLabel })

														local ImageLabel2 = newInstance("ImageLabel", {
															Name = "ClosedIcon",
															Size = UDim2.new(uiConstants[33], 20, uiConstants[33], 20),
															Position = UDim2.new(uiConstants[81], uiConstants[33], uiConstants[81], uiConstants[33]),
															AnchorPoint = Vector2.new(0.5, 0.5),
															BackgroundTransparency = 1,
															Image = "rbxassetid://127131703650472",
															ImageColor3 = colors.Accent,
															ImageTransparency = 1,
															Rotation = 180,
															Visible = false,
															ZIndex = uiConstants[15],
															Parent = value106,
														})

														local UIScale2 = newInstance("UIScale", { Scale = uiConstants[33], Parent = ImageLabel2 })

														local function dragInputChanged(argument2)
															if argument.isToggledOn then
																ImageLabel.Visible = true

																if argument2 then
																	playTween(UIStroke, { Color = colors.Accent }, 0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
																	playTween(ImageLabel, { ImageTransparency = 0, Rotation = 0 }, uiConstants[26], Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
																	playTween(UIScale, { Scale = uiConstants[18] }, 0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
																	playTween(ImageLabel2, { ImageTransparency = 1, Rotation = 180 }, 0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
																	playTween(UIScale2, { Scale = 0 }, 0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
																else
																	UIStroke.Color = colors.Accent
																	ImageLabel.ImageTransparency = 0
																	ImageLabel.Rotation = uiConstants[33]
																	UIScale.Scale = uiConstants[18]
																	ImageLabel2.ImageTransparency = 1
																	ImageLabel2.Rotation = 180
																	UIScale2.Scale = uiConstants[33]
																	ImageLabel2.Visible = uiConstants[101]
																end
															else
																ImageLabel2.Visible = uiConstants[200]

																if argument2 then
																	playTween(UIStroke, { Color = Color3.fromRGB(45, 47, 55) }, uiConstants[26], Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
																	playTween(ImageLabel, { ImageTransparency = 1, Rotation = 180 }, 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

																	playTween(UIScale, { Scale = uiConstants[33] }, 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out).Completed:Connect(function()
																		if not argument.isToggledOn then
																			ImageLabel.Visible = uiConstants[101]
																		end
																	end)

																	playTween(ImageLabel2, { ImageTransparency = 0, Rotation = uiConstants[33] }, uiConstants[100], Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
																	playTween(UIScale2, { Scale = 1 }, 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
																else
																	UIStroke.Color = Color3.fromRGB(45, 47, 55)
																	ImageLabel.ImageTransparency = 1
																	ImageLabel.Rotation = uiConstants[85]
																	UIScale.Scale = 0
																	ImageLabel.Visible = false
																	ImageLabel2.ImageTransparency = 0
																	ImageLabel2.Rotation = 0
																	UIScale2.Scale = uiConstants[18]
																end
															end
														end

														value106.MouseEnter:Connect(function()
															playTween(value106, { BackgroundColor3 = Color3.fromRGB(30, 30, uiConstants[59]) }, 0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
															playTween(UIStroke, { Transparency = uiConstants[22] }, uiConstants[110], Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
														end)

														value106.MouseLeave:Connect(function()
															playTween(value106, { BackgroundColor3 = Color3.fromRGB(24, uiConstants[19], 28) }, uiConstants[110], Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
															playTween(UIStroke, { Transparency = 0.3 }, 0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
														end)

														local condition18 = uiConstants[101]
														local position = nil
														local position2 = nil
														local condition19 = false
														local value107 = nil

														value106.InputBegan:Connect(function(input)
															if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
																condition18 = uiConstants[200]
																condition19 = false
																position = input.Position
																position2 = value106.Position

																input.Changed:Connect(function()
																	if input.UserInputState == Enum.UserInputState.End then
																		condition18 = false
																	end
																end)
															end
														end)

														value106.InputChanged:Connect(function(input)
															if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
																value107 = input
															end
														end)

														trackConnection(userInputService.InputChanged:Connect(function(input)
															if input == value107 and condition18 then
																local n32 = input.Position - position

																if n32.Magnitude > 12 then
																	condition19 = true
																end

																local absoluteSize = argument.screenGuiYay.AbsoluteSize

																if absoluteSize.X > 0 and absoluteSize.Y > 0 then
																	local absoluteSize2 = value106.AbsoluteSize
																	local n33 = absoluteSize2.X > uiConstants[33] and absoluteSize2.X / 2 or 23
																	local n34 = absoluteSize2.Y > 0 and absoluteSize2.Y / 2 or 23
																	local n35 = math.clamp(position2.X.Scale * absoluteSize.X + position2.X.Offset + n32.X, n33, absoluteSize.X - n33)
																	local n36 = math.clamp(position2.Y.Scale * absoluteSize.Y + position2.Y.Offset + n32.Y, n34, absoluteSize.Y - n34)
																	value106.Position = UDim2.new(0, n35, uiConstants[33], n36)
																end
															end
														end))

														value106.InputEnded:Connect(function(input)
															if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
																if condition18 then
																	condition18 = false
																end

																if not condition19 then
																	playTween(value106, { Size = UDim2.new(uiConstants[33], 42, 0, 42) }, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

																	task.delay(0.1, function()
																		playTween(value106, { Size = UDim2.new(0, 46, uiConstants[33], uiConstants[43]) }, 0.15, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
																	end)

																	argument:SetVisible(not argument.isToggledOn)
																	dragInputChanged(uiConstants[200])
																end
															end
														end)

														local setVisible = argument.SetVisible

														argument.SetVisible = function(argument2, argument3)
															setVisible(argument2, argument3)
															dragInputChanged(uiConstants[200])
														end

														dragInputChanged(false)
													end
												end

												index.GetScreenScale = function(argument)
													if not argument.screenGuiYay then
														return 1
													end
													local absoluteSize = argument.screenGuiYay.AbsoluteSize
													if absoluteSize.X == 0 or absoluteSize.Y == 0 then
														return uiConstants[18]
													end
													return math.clamp(math.min((absoluteSize.X - 40) / 753, (absoluteSize.Y - 40) / 493), 0.1, uiConstants[18]) * (table20.MenuScale or 100) / 100
												end

												index.UpdateLayoutScale = function(argument)
													if not argument.mainFrameYay then
														return
													end
													local mainFrameUIScale = argument.mainFrameYay:FindFirstChild("MainFrameUIScale") or argument.mainFrameYay:FindFirstChildOfClass("UIScale")
													if not mainFrameUIScale then
														return
													end
													local screenScale = argument:GetScreenScale()

													if argument.mobileToggleScale then
														playTween(argument.mobileToggleScale, { Scale = (table20.MobileButtonScale or uiConstants[158]) / 100 }, 0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
													end

													if argument.dropdownHolderScale then
														local scale = argument.dropdownHolderScale.Scale

														if argument.detachedDropdowns and scale > 0 and scale ~= screenScale then
															local table27 = {}

															for key in pairs(argument.detachedDropdowns) do
																if key.detached and key.buttonFrame then
																	table27[key] = key.buttonFrame.AbsolutePosition
																end
															end

															argument.dropdownHolderScale.Scale = screenScale

															for key, value106 in pairs(table27) do
																if key.buttonFrame then
																	key.buttonFrame.Position = UDim2.fromOffset(value106.X / screenScale, value106.Y / screenScale)
																end
															end
														else
															argument.dropdownHolderScale.Scale = screenScale
														end
													end

													if argument.isToggledOn then
														playTween(mainFrameUIScale, { Scale = screenScale }, 0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
													else
														mainFrameUIScale.Scale = uiConstants[198] * screenScale
													end
												end

												index.SetVisible = function(argument, isToggledOn)
													argument.isToggledOn = isToggledOn
													local screenScale = argument:GetScreenScale()

													if isToggledOn then
														argument.mainFrameYay.GroupTransparency = 1

														if argument.dropdownHolderRef then
															argument.dropdownHolderRef.Visible = true
														end

														argument.watermarkFrame.GroupTransparency = 1
														argument.mainFrameYay.Visible = true
														argument.watermarkFrame.Visible = true
														local value106 = argument.mainFrameYay:FindFirstChildOfClass(uiConstants[16])

														if value106 then
															value106.Scale = 0.92 * screenScale
														end

														playTween(argument.mainFrameYay, { GroupTransparency = 0 }, 0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

														if value106 then
															playTween(value106, { Scale = screenScale }, 0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
														end

														playTween(argument.watermarkFrame, { GroupTransparency = 0 }, 0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

														task.delay(0.5, function()
															if argument.isToggledOn and argument.sectionRefreshers then
																for _, sectionRefresher in ipairs(argument.sectionRefreshers) do
																	sectionRefresher()
																end
															end
														end)
													else
														for key in pairs(argument.openDropdowns) do
															if key.Close then
																key:Close()
															end
														end

														playTween(argument.mainFrameYay, { GroupTransparency = uiConstants[18] }, 0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
														local uiScale = argument.mainFrameYay:FindFirstChildOfClass("UIScale")

														if uiScale then
															playTween(uiScale, { Scale = uiConstants[198] * screenScale }, uiConstants[64], Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
														end

														playTween(argument.watermarkFrame, { GroupTransparency = 1 }, 0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

														if not table19.First_Execution_Done then
															table19.First_Execution_Done = uiConstants[200]
															saveConfig()
															local text5

															if touchEnabled then
																text5 = "Tap the button in the bottom left to Hide/Unhide the UI."
															else
																text5 = (argument.toggleVisibilityKeyName or "RightAlt") .. " to Hide/Unhide the UI."
															end

															argument:Notify({ Title = text5, Duration = 4 })
														end

														task.delay(0.35, function()
															if not argument.isToggledOn then
																argument.mainFrameYay.Visible = uiConstants[101]
																argument.watermarkFrame.Visible = false
															end
														end)
													end
												end

												index.CreateWatermarkBecauseWeCool = function(argument)
													local text5 = argument.config.Name .. " | 00:00:00 | 60 FPS | 0 MS"
													local n32 = valueFunction47(text5, 14, Enum.Font.GothamSemibold) + 45
													local n33 = 0

													argument.watermarkFrame = newInstance("CanvasGroup", {
														Name = "WatermarkCuzWeNeedFlexing",
														BackgroundColor3 = argument.config.Colors.Secondary,
														Position = UDim2.new(0.01, 0, 0.02, 0),
														BorderColor3 = argument.config.Colors.Black,
														BorderSizePixel = uiConstants[33],
														GroupTransparency = 1,
														Size = UDim2.new(uiConstants[33], n32, uiConstants[33], 36),
														Parent = argument.screenGuiYay,
													})

													newInstance(uiConstants[137], {
														Name = "RoundedCornersAreSexy",
														CornerRadius = UDim.new(0, uiConstants[72]),
														Parent = argument.watermarkFrame,
													})

													newInstance(uiConstants[44], {
														Name = "KeepItSquare",
														Parent = newInstance("ImageLabel", {
															Name = "IconGoesHere",
															BorderColor3 = Color3.new(),
															BackgroundColor3 = Color3.new(uiConstants[18], 1, 1),
															Image = "rbxassetid://10723375250",
															BackgroundTransparency = uiConstants[18],
															Position = UDim2.new(0, uiConstants[192], 0.5, -uiConstants[148]),
															BorderSizePixel = 0,
															Size = UDim2.new(0, 15, 0, 15),
															Parent = argument.watermarkFrame,
														}),
													})

													argument.watermarkTextLabel = newInstance("TextLabel", {
														Name = uiConstants[23],
														FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
														TextColor3 = Color3.new(1, 1, 1),
														Text = text5,
														BackgroundColor3 = Color3.new(1, uiConstants[18], 1),
														BackgroundTransparency = 1,
														Position = UDim2.new(0, uiConstants[14], 0, 0),
														BorderSizePixel = 0,
														BorderColor3 = Color3.new(),
														TextSize = 14,
														Size = UDim2.new(1, -40, 1, 0),
														TextXAlignment = Enum.TextXAlignment.Left,
														Parent = argument.watermarkFrame,
													})

													newInstance("UIPadding", { Name = "PaddingForDays", PaddingTop = UDim.new(0, 2), Parent = argument.watermarkTextLabel })
													dragHandler(argument.watermarkFrame)
													local n34 = 60
													local n35 = 0
													local now2 = os.clock()
													local value106 = nil

													value106 = trackConnection(runService.RenderStepped:Connect(function()
														if not argument.watermarkFrame or not argument.watermarkFrame.Parent then
															disconnectTrackedConnection(value106)
															return
														end
														n35 += 1
														local now3 = os.clock()

														if now3 - now2 >= 1 then
															n34 = math.floor(n35 / (now3 - now2) + 0.5)
															n35 = 0
															now2 = now3
														end
													end))

													task.spawn(function()
														while task.wait(1) do
															local watermarkFrame = argument.watermarkFrame
															local watermarkTextLabel = argument.watermarkTextLabel

															if not (not watermarkFrame or not watermarkFrame.Parent or not watermarkTextLabel or not watermarkTextLabel.Parent) then
																local value107 = os.date("%H:%M:%S")
																n33 = math.floor((dataPing or n33) + 0.5)
																local text = argument.config.Name .. " | " .. value107 .. " | " .. n34 .. " FPS | " .. n33 .. uiConstants[10]
																watermarkTextLabel.Text = text
																local n36 = valueFunction47(text, 14, Enum.Font.GothamSemibold) + 45

																if uiConstants[70] < math.abs(watermarkFrame.Size.X.Offset - n36) then
																	playTween(watermarkFrame, { Size = UDim2.new(0, n36, 0, 36) }, 0.2)
																end

																continue
															end

															break
														end
													end)
												end

												index.CreateMainFrameYay = function(argument)
													argument.mainFrameYay = newInstance("CanvasGroup", {
														Name = uiConstants[162],
														Active = uiConstants[200],
														AnchorPoint = Vector2.new(0.5, 0.5),
														BackgroundColor3 = argument.config.Colors.Primary,
														Position = UDim2.new(0.5, 0, 0.5, uiConstants[33]),
														BorderColor3 = argument.config.Colors.Black,
														BorderSizePixel = uiConstants[33],
														GroupTransparency = 1,
														Size = UDim2.new(0, uiConstants[62], uiConstants[33], 493),
														Parent = argument.screenGuiYay,
													})

													newInstance("UICorner", { Name = "UICorner", CornerRadius = UDim.new(0, uiConstants[115]), Parent = argument.mainFrameYay })
													newInstance(uiConstants[16], { Name = "MainFrameUIScale", Scale = 1, Parent = argument.mainFrameYay })

													argument.dragBarThing = newInstance("Frame", {
														Name = "DragBarForDragging",
														BackgroundTransparency = 1,
														Position = UDim2.new(0, 0, 0, 0),
														Size = UDim2.new(1, 0, 0, 65),
														Parent = argument.mainFrameYay,
													})

													dragHandler(argument.mainFrameYay, argument.dragBarThing)

													local function dragInputChanged(argument2, argument3, argument4)
														local ImageButton = newInstance("ImageButton", {
															Name = argument2,
															BackgroundTransparency = 1,
															Image = "rbxassetid://" .. argument3,
															ImageColor3 = argument.config.Colors.SubText,
															Position = UDim2.new(uiConstants[18], -argument4, 0, 17),
															Size = UDim2.new(0, uiConstants[30], uiConstants[33], 16),
															BorderSizePixel = 0,
															AutoButtonColor = false,
															Parent = argument.mainFrameYay,
														})

														ImageButton.MouseEnter:Connect(function()
															playTween(ImageButton, { ImageColor3 = argument.config.Colors.Text }, 0.2, Enum.EasingStyle.Quint)
														end)

														ImageButton.MouseLeave:Connect(function()
															playTween(ImageButton, { ImageColor3 = argument.config.Colors.SubText }, 0.2, Enum.EasingStyle.Quint)
														end)

														return ImageButton
													end

													argument.minimizeButton = dragInputChanged("MinimizeButton", "120931250449806", 50)
													argument.closeButton = dragInputChanged("CloseButton", "73070135088117", 24)

													argument.minimizeButton.MouseButton1Click:Connect(function()
														argument:SetVisible(false)
													end)

													argument.closeButton.MouseButton1Click:Connect(function()
														argument:Destroy()
													end)

													local value106 = valueFunction47(argument.config.Name, uiConstants[17], Enum.Font.GothamSemibold)

													argument.hubNameLabel = newInstance(uiConstants[65], {
														Name = "HubNameGoesHere",
														FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
														TextColor3 = Color3.new(1, uiConstants[18], 1),
														Text = argument.config.Name,
														BackgroundColor3 = Color3.new(uiConstants[18], 1, 1),
														BackgroundTransparency = 1,
														Position = UDim2.new(0, 10, 0, uiConstants[46]),
														BorderSizePixel = 0,
														BorderColor3 = Color3.new(),
														TextSize = 17,
														Size = UDim2.new(0, value106 + 10, 0, 20),
														TextXAlignment = Enum.TextXAlignment.Left,
														Parent = argument.mainFrameYay,
													})

													local n32 = 156 - value106 + 20 - 50
													local value107 = valueFunction49("@" .. localPlayer.Name, n32, 14, Enum.Font.GothamSemibold)

													argument.userNameLabel = newInstance(uiConstants[65], {
														Name = "UserNameOfTheCoolPlayer",
														FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
														TextColor3 = argument.config.Colors.Muted,
														Text = value107,
														BackgroundColor3 = argument.config.Colors.White,
														BackgroundTransparency = uiConstants[18],
														Position = UDim2.new(uiConstants[33], 10, 0, 34),
														BorderSizePixel = 0,
														BorderColor3 = argument.config.Colors.Black,
														TextSize = 14,
														Size = UDim2.new(0, n32 + uiConstants[115], 0, 18),
														TextXAlignment = Enum.TextXAlignment.Left,
														TextTruncate = Enum.TextTruncate.AtEnd,
														Parent = argument.mainFrameYay,
													})

													argument.playerAvatarImg = newInstance("ImageLabel", {
														Name = "PlayerAvatarIs4K",
														BorderColor3 = argument.config.Colors.Black,
														BackgroundColor3 = argument.config.Colors.White,
														Image = "rbxassetid://135756197673563",
														BackgroundTransparency = 1,
														Position = UDim2.new(0, 145, 0, 17),
														BorderSizePixel = uiConstants[33],
														Size = UDim2.new(0, uiConstants[36], uiConstants[33], 30),
														Parent = argument.mainFrameYay,
													})

													task.spawn(function()
														local value108 = resolveKeyCode(localPlayer.UserId)

														if argument.playerAvatarImg and argument.playerAvatarImg.Parent then
															argument.playerAvatarImg.Image = value108
														end
													end)

													newInstance("UICorner", { Name = "UICorner", CornerRadius = UDim.new(uiConstants[18], 0), Parent = argument.playerAvatarImg })

													argument.lineSeperator = newInstance("Frame", {
														Name = "LineThatSeperates",
														BackgroundColor3 = argument.config.Colors.BorderSoft,
														Position = UDim2.new(0, 19, 0, 64),
														BorderColor3 = argument.config.Colors.Black,
														BorderSizePixel = 0,
														Size = UDim2.new(0, 156, uiConstants[33], 1),
														Parent = argument.mainFrameYay,
													})

													local value108 = newInstance
													local value109 = uiConstants[21]
													local table27 = { Name = "UIGradient" }
													local colorSequence = ColorSequence.new
													local table28 = {}
													local value110 = ColorSequenceKeypoint.new(0, argument.config.Colors.BorderSoft)
													local remoteEvent = ColorSequenceKeypoint.new(uiConstants[69], argument.config.Colors.AccentLight)
													local new = ColorSequenceKeypoint.new
													local remoteAction = uiConstants[18]
													local borderSoft = argument.config.Colors.BorderSoft
													table28[1] = value110
													table28[2] = remoteEvent

													do
														local values = table.pack(new(remoteAction, borderSoft))
														table.move(values, 1, values.n, 3, table28)
													end

													table27.Color = colorSequence(table28)
													table27.Parent = argument.lineSeperator
													value108(value109, table27)

													argument.tabNameLabel = newInstance("TextLabel", {
														Name = "TabNameGoesHere",
														FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
														TextColor3 = argument.config.Colors.Text,
														Text = "tab name",
														BackgroundColor3 = argument.config.Colors.White,
														BackgroundTransparency = 1,
														Position = UDim2.new(0, 201, 0, 14),
														BorderSizePixel = 0,
														BorderColor3 = Color3.new(),
														TextSize = uiConstants[17],
														Size = UDim2.new(uiConstants[33], 78, 0, 20),
														TextXAlignment = Enum.TextXAlignment.Left,
														Parent = argument.mainFrameYay,
													})

													argument.tabDescriptionLabel = newInstance(uiConstants[65], {
														Name = "TabDescriptionGoesHere",
														FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
														TextColor3 = argument.config.Colors.Muted,
														Text = "tab description",
														BackgroundColor3 = argument.config.Colors.White,
														BackgroundTransparency = 1,
														Position = UDim2.new(0, 201, 0, 34),
														BorderSizePixel = uiConstants[33],
														BorderColor3 = Color3.new(),
														TextSize = 14,
														Size = UDim2.new(uiConstants[33], 200, 0, 18),
														TextXAlignment = Enum.TextXAlignment.Left,
														Parent = argument.mainFrameYay,
													})

													argument.sectionHolderScroll = newInstance("ScrollingFrame", {
														Name = "SectionHolderForSections",
														Active = true,
														BackgroundTransparency = 1,
														Position = UDim2.new(uiConstants[33], uiConstants[17], uiConstants[33], 75),
														Size = UDim2.new(0, 162, 0, uiConstants[52]),
														ScrollBarThickness = 0,
														ScrollBarImageTransparency = 1,
														CanvasSize = UDim2.new(0, uiConstants[33], uiConstants[33], uiConstants[33]),
														AutomaticCanvasSize = Enum.AutomaticSize.Y,
														ClipsDescendants = false,
														Parent = argument.mainFrameYay,
													})

													newInstance(uiConstants[50], {
														Name = uiConstants[50],
														PaddingLeft = UDim.new(0, 2),
														PaddingRight = UDim.new(0, 2),
														PaddingTop = UDim.new(0, 2),
														PaddingBottom = UDim.new(0, uiConstants[70]),
														Parent = argument.sectionHolderScroll,
													})

													argument.sectionLayoutThing = newInstance("UIListLayout", {
														Name = "UIListLayout",
														Padding = UDim.new(0, 10),
														SortOrder = Enum.SortOrder.LayoutOrder,
														Parent = argument.sectionHolderScroll,
													})

													argument.contentHolderFrame = newInstance("Frame", {
														Name = uiConstants[135],
														Active = uiConstants[200],
														BackgroundTransparency = uiConstants[18],
														Position = UDim2.new(0, 198, 0, 62),
														Size = UDim2.new(0, 548, 0, 424),
														ClipsDescendants = true,
														Parent = argument.mainFrameYay,
													})
												end
											end
										end
									end

									do
										local value106, value107, dragHandler

										do
											index.CreateNotificationHolderForCoolNotifs = function(argument)
												argument.notificationHolderFrame = newInstance("Frame", {
													Name = "NotificationHolderForNotifs",
													BackgroundTransparency = 1,
													Position = UDim2.new(1, -uiConstants[108], 0, 20),
													AnchorPoint = Vector2.new(uiConstants[18], 0),
													Size = UDim2.new(0, uiConstants[98], uiConstants[33], 400),
													Parent = argument.screenGuiYay,
												})

												newInstance("UIListLayout", {
													Name = "UIListLayout",
													Padding = UDim.new(uiConstants[33], 10),
													SortOrder = Enum.SortOrder.LayoutOrder,
													HorizontalAlignment = Enum.HorizontalAlignment.Right,
													VerticalAlignment = Enum.VerticalAlignment.Top,
													Parent = argument.notificationHolderFrame,
												})
											end

											index.Notify = function(argument, argument2)
												local table27 = argument2 or {}
												table27.Title = table27.Title or uiConstants[74]
												table27.Duration = table27.Duration or 3
												table27.Icon = table27.Icon or "rbxassetid://10747361219"
												local textSize = textService:GetTextSize(table27.Title, 15, Enum.Font.GothamSemibold, Vector2.new(math.huge, 50))
												local n32 = math.max(127, textSize.X + 80)

												local Frame = newInstance("Frame", {
													Name = "NotificationYay",
													BackgroundColor3 = argument.config.Colors.Secondary,
													Position = UDim2.new(1.5, 0, uiConstants[33], 0),
													BorderColor3 = argument.config.Colors.Black,
													BorderSizePixel = 0,
													Size = UDim2.new(0, n32, 0, 50),
													BackgroundTransparency = 1,
													Parent = argument.notificationHolderFrame,
												})

												newInstance("UICorner", { Name = "UICorner", CornerRadius = UDim.new(0, 10), Parent = Frame })
												newInstance("UIScale", { Name = "UIScale", Scale = 0.8, Parent = Frame })

												local value108 = newInstance(uiConstants[170], {
													Name = "PillIndicator",
													BackgroundColor3 = argument.config.AccentColor,
													Position = UDim2.new(uiConstants[33], 0, 0.22, 0),
													BorderColor3 = argument.config.Colors.Black,
													BorderSizePixel = uiConstants[33],
													Size = UDim2.new(0, 6, 0, uiConstants[185]),
													Parent = Frame,
												})

												newInstance("UICorner", { Name = "UICorner", CornerRadius = UDim.new(1, uiConstants[33]), Parent = value108 })

												newInstance("Frame", {
													Name = "PillExtension",
													BackgroundColor3 = argument.config.AccentColor,
													BorderColor3 = argument.config.Colors.Black,
													BorderSizePixel = 0,
													Size = UDim2.new(0, 4, uiConstants[33], 28),
													Parent = value108,
												})

												local ImageLabel = newInstance("ImageLabel", {
													Name = uiConstants[128],
													BorderColor3 = argument.config.Colors.Black,
													BackgroundColor3 = argument.config.Colors.White,
													Image = table27.Icon,
													BackgroundTransparency = uiConstants[18],
													Position = UDim2.new(0, 15, 0.5, -10),
													BorderSizePixel = uiConstants[33],
													Size = UDim2.new(uiConstants[33], 20, 0, 20),
													ImageTransparency = uiConstants[18],
													Parent = Frame,
												})

												newInstance("UIAspectRatioConstraint", { Name = "UIAspectRatioConstraint", Parent = ImageLabel })

												local value109 = newInstance(uiConstants[65], {
													Name = "NotificationText",
													FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
													TextColor3 = argument.config.Colors.Text,
													Text = table27.Title,
													BackgroundColor3 = argument.config.Colors.White,
													BackgroundTransparency = 1,
													Position = UDim2.new(0, 45, 0.5, -8.5),
													BorderSizePixel = 0,
													BorderColor3 = argument.config.Colors.Black,
													TextSize = 15,
													Size = UDim2.new(0, textSize.X + 20, 0, 17),
													TextXAlignment = Enum.TextXAlignment.Left,
													TextTransparency = 1,
													Parent = Frame,
												})

												local uiScale = Frame:FindFirstChild("UIScale")

												task.defer(function()
													playTween(Frame, { Position = UDim2.new(uiConstants[33], 0, 0, 0), BackgroundTransparency = 0 }, 0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
													playTween(uiScale, { Scale = 1 }, 0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
													playTween(ImageLabel, { ImageTransparency = 0 }, uiConstants[100], Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
													playTween(value109, { TextTransparency = 0 }, 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
												end)

												task.delay(table27.Duration, function()
													if Frame and Frame.Parent then
														playTween(Frame, { Position = UDim2.new(uiConstants[122], 0, 0, 0), BackgroundTransparency = 1 }, 0.5, Enum.EasingStyle.Back, Enum.EasingDirection.In)
														playTween(uiScale, { Scale = 0.8 }, 0.5, Enum.EasingStyle.Back, Enum.EasingDirection.In)
														playTween(ImageLabel, { ImageTransparency = 1 }, 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
														playTween(value109, { TextTransparency = 1 }, 0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
														task.wait(0.5)

														if Frame and Frame.Parent then
															Frame:Destroy()
														end
													end
												end)

												return Frame
											end

											obj = setmetatable({}, { __mode = "key" })
											value106 = nil
											value107 = nil

											do
												local condition18 = false

												local function resolveKeyCode()
													if condition18 then
														if not condition3 then
															return
														end
														return
													end

													condition18 = true

													flyteBBState.Connections[uiConstants[125]] = userInputService.InputChanged:Connect(function(input)
														if value106 then
															value106(input)
														end
													end)

													flyteBBState.Connections["UI Slider Input Ended"] = userInputService.InputEnded:Connect(function(input)
														if value107 then
															value107(input)
														end
													end)
												end

												dragHandler = function(argument, argument2)
													resolveKeyCode()
													value106 = argument
													value107 = argument2
												end
											end
										end

										do
											local function resolveKeyCode(argument)
												if value106 == argument then
													value106 = nil
													value107 = nil
												end
											end

											local function dragInputChanged(argument)
												if uiConstants[18] <= argument then
													return 0
												end
												local text5 = string.format("%.10f", argument):gsub("0+$", ""):gsub("%.$", "")
												local pos = text5:find("%.")
												return pos and math.min(uiConstants[157], #text5 - pos) or 0
											end

											addToggle = function(argument, argument2)
												local value108 = obj[argument]
												local tabConfig = value108.TabConfig
												local groupConfig = value108.GroupConfig
												local updateSize = value108.UpdateSize
												local createKeybindPill = value108.CreateKeybindPill
												argument2 = argument2 or {}
												argument2.Name = argument2.Name or uiConstants[4]
												argument2.Default = argument2.Default or false

												argument2.Callback = argument2.Callback or function()
												end

												argument2.Notify = argument2.Notify == true
												argument2.SaveName = argument2.SaveName or argument2.Name
												argument2.Keybind = argument2.Keybind ~= false
												local table27 = {}
												local elementYPos = argument.elementYPos
												local toggle = normalizeSettingName(argument2.SaveId or tabConfig.Name .. ":" .. groupConfig.Name .. ":" .. argument2.SaveName)
												local text5 = "toggle:" .. toggle
												local str6 = toggle .. ":notify"
												local value109 = getProperty(table19.Toggles, toggle, argument2.NoSave)
												local notify = argument2.Notify and getProperty(table19.Toggles, str6)
												table27.value = type(value109) == "boolean" and value109 or argument2.Default
												table27.notify = type(notify) == "boolean" and notify or false
												table27.NotifySaveId = argument2.Notify and str6 or nil
												table27.DefaultNotify = uiConstants[101]

												table27.labelText = newInstance(uiConstants[65], {
													Name = "ToggleLabel",
													FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
													TextColor3 = table27.value and argument.Library.config.Colors.Text or argument.Library.config.Colors.SubText,
													Text = argument2.Name,
													BackgroundColor3 = argument.Library.config.Colors.White,
													BackgroundTransparency = 1,
													Position = UDim2.new(uiConstants[33], 10, 0, elementYPos),
													BorderSizePixel = 0,
													BorderColor3 = Color3.new(),
													TextSize = 14,
													Size = UDim2.new(0, 150, 0, 20),
													TextXAlignment = Enum.TextXAlignment.Left,
													Parent = argument.mainFrame,
												})

												table27.switchFrame = newInstance(uiConstants[170], {
													Name = "ToggleSwitch",
													BackgroundColor3 = table27.value and argument.Library.config.AccentColor or argument.Library.config.Colors.Element,
													Position = UDim2.new(1, -44, 0, elementYPos),
													BorderColor3 = argument.Library.config.Colors.Black,
													BorderSizePixel = 0,
													Size = UDim2.new(0, 34, 0, 21),
													Parent = argument.mainFrame,
												})

												local function valueFunction53(argument3)
													return UDim2.new(1, argument2.Keybind and -77 - argument3 or -uiConstants[6], uiConstants[33], elementYPos)
												end

												if argument2.Keybind then
													table27.keybindPill = createKeybindPill(argument.mainFrame, text5, function(argument3)
														if table27.notifyButton then
															table27.notifyButton.Position = valueFunction53(argument3)
														end

														return UDim2.new(1, -44 - argument3 - uiConstants[72], 0, elementYPos + 2)
													end, 17, 8, function(argument3, argument4)
														if argument4 == "Hold" then
															table27:Set(argument3)
															return
														end

														if argument3 then
															table27:Set(not table27.value)
														end
													end, {
														Group = "toggles",
														Name = argument2.Name,
														GetState = function()
															return table27.value
														end,
													})
												end

												table27.SaveId = toggle
												table27.DefaultValue = argument2.Default
												newInstance("UICorner", { Name = uiConstants[137], CornerRadius = UDim.new(uiConstants[18], 0), Parent = table27.switchFrame })
												local udim2 = UDim2.new(uiConstants[33], 3, 0, uiConstants[61])
												local udim22 = UDim2.new(0, uiConstants[30], 0, uiConstants[61])

												table27.circleFrame = newInstance("Frame", {
													Name = uiConstants[54],
													BackgroundColor3 = table27.value and argument.Library.config.Colors.White or argument.Library.config.Colors.Muted,
													Position = table27.value and udim22 or udim2,
													BorderColor3 = argument.Library.config.Colors.Black,
													BorderSizePixel = 0,
													Size = UDim2.new(0, uiConstants[147], 0, uiConstants[147]),
													Parent = table27.switchFrame,
												})

												newInstance("UICorner", { Name = "UICorner", CornerRadius = UDim.new(1, 0), Parent = table27.circleFrame })

												local TextButton = newInstance("TextButton", {
													Name = "ToggleClickButton",
													Text = "",
													BackgroundTransparency = 1,
													Position = UDim2.new(0, uiConstants[33], 0, elementYPos),
													Size = UDim2.new(1, uiConstants[33], 0, uiConstants[197]),
													Parent = argument.mainFrame,
												})

												if argument2.Notify then
													table27.notifyButton = newInstance("ImageButton", {
														Name = "NotifyBell",
														AutoButtonColor = false,
														BackgroundTransparency = 1,
														BorderSizePixel = uiConstants[33],
														Image = "",
														Position = valueFunction53(table27.keybindPill and table27.keybindPill.frame.Size.X.Offset or uiConstants[33]),
														Size = UDim2.new(0, 20, 0, 21),
														ZIndex = 3,
														Parent = argument.mainFrame,
													})

													table27.notifyIcon = newInstance("ImageLabel", {
														Name = "BellIcon",
														BackgroundTransparency = 1,
														BorderSizePixel = uiConstants[33],
														Image = "rbxassetid://128533908255115",
														ImageColor3 = table27.notify and argument.Library.config.Colors.Text or argument.Library.config.Colors.Muted,
														ImageTransparency = table27.notify and 0 or 0.5,
														Position = UDim2.new(0.5, -9, 0.5, -uiConstants[41]),
														Size = UDim2.new(0, 18, 0, uiConstants[186]),
														ZIndex = 4,
														Parent = table27.notifyButton,
													})

													table27.notifyScale = newInstance("UIScale", { Scale = uiConstants[18], Parent = table27.notifyIcon })

													table27.SetNotify = function(argument3, argument4)
														local notify2 = argument4 == true
														table27.notify = notify2
														table27.notifyIcon.Rotation = notify2 and -14 or 14
														table27.notifyScale.Scale = 0.82

														playTween(table27.notifyIcon, {
															ImageColor3 = notify2 and argument.Library.config.Colors.Text or argument.Library.config.Colors.Muted,
															ImageTransparency = notify2 and 0 or 0.5,
															Rotation = 0,
														}, uiConstants[26], Enum.EasingStyle.Back, Enum.EasingDirection.Out)

														playTween(table27.notifyScale, { Scale = uiConstants[18] }, 0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
														table19.Toggles[str6] = notify2
														saveConfig()
													end

													table27.notifyButton.MouseButton1Click:Connect(function()
														table27:SetNotify(not table27.notify)
													end)

													table27.notifyButton.MouseEnter:Connect(function()
														if not table27.notify then
															playTween(table27.notifyIcon, { ImageColor3 = argument.Library.config.Colors.TextHover, ImageTransparency = 0.5 }, 0.15)
														end
													end)

													table27.notifyButton.MouseLeave:Connect(function()
														if not table27.notify then
															playTween(table27.notifyIcon, { ImageColor3 = argument.Library.config.Colors.Muted, ImageTransparency = 0.5 }, 0.15)
														end
													end)
												end

												table27.Set = function(argument3, argument4)
													local value = table27.value
													table27.value = argument4 == true

													if table27.value then
														playTween(table27.switchFrame, { BackgroundColor3 = argument.Library.config.AccentColor }, 0.4)
														playTween(table27.circleFrame, { Position = udim22, BackgroundColor3 = argument.Library.config.Colors.White }, 0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
														playTween(table27.labelText, { TextColor3 = argument.Library.config.Colors.Text }, 0.3, Enum.EasingStyle.Quint)
													else
														playTween(table27.switchFrame, { BackgroundColor3 = argument.Library.config.Colors.Element }, 0.4)
														playTween(table27.circleFrame, { Position = udim2, BackgroundColor3 = argument.Library.config.Colors.Muted }, uiConstants[81], Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
														playTween(table27.labelText, { TextColor3 = argument.Library.config.Colors.SubText }, 0.3, Enum.EasingStyle.Quint)
													end

													if not argument2.NoSave then
														table19.Toggles[toggle] = table27.value
													end

													if argument2.Callback then
														argument2.Callback(table27.value)
													end

													if not argument2.NoSave then
														task.defer(saveConfig)
													end

													if flyteBBState and flyteBBState.RefreshKeybinds then
														task.defer(flyteBBState.RefreshKeybinds)
													end

													if argument2.Notify and table27.notify and value ~= table27.value then
														argument.Library:Notify({ Title = (table27.value and "Enabled " or uiConstants[77]) .. (argument2.NotifyName or argument2.Name) })
													end
												end

												TextButton.MouseButton1Click:Connect(function()
													table27:Set(not table27.value)
												end)

												TextButton.InputBegan:Connect(function(input)
													if input.UserInputType == Enum.UserInputType.MouseButton2 and table27.keybindPill then
														table27.keybindPill:OpenMode(input.Position)
													end
												end)

												TextButton.MouseEnter:Connect(function()
													if not table27.value then
														playTween(table27.labelText, { TextColor3 = argument.Library.config.Colors.TextHover }, 0.2, Enum.EasingStyle.Quint)
													end
												end)

												TextButton.MouseLeave:Connect(function()
													if not table27.value then
														playTween(table27.labelText, { TextColor3 = argument.Library.config.Colors.SubText }, uiConstants[113], Enum.EasingStyle.Quint)
													end
												end)

												argument.elementYPos = argument.elementYPos + 28
												updateSize()
												table.insert(argument.elementsInGroup, table27)
												table27:Set(table27.value)
												return table27
											end

											addSlider = function(argument, argument2)
												local value108 = obj[argument]
												local tabConfig = value108.TabConfig
												local groupConfig = value108.GroupConfig
												local updateSize = value108.UpdateSize
												argument2 = argument2 or {}
												argument2.Name = argument2.Name or "Slider"
												argument2.Min = argument2.Min or 0
												argument2.Max = argument2.Max or 100
												argument2.Default = argument2.Default or argument2.Min
												argument2.Increment = argument2.Increment or 1

												argument2.Callback = argument2.Callback or function()
												end

												local table27 = {}
												local elementYPos = argument.elementYPos
												local value109 = normalizeSettingName(argument2.SaveId or tabConfig.Name .. ":" .. groupConfig.Name .. ":" .. argument2.Name)
												local value110 = getProperty(table19.Sliders, value109, argument2.NoSave)
												local remoteEvent = uiConstants[109]
												table27.value = type(value110) == remoteEvent and value110 or argument2.Default
												table27.SaveId = value109
												table27.DefaultValue = argument2.Default
												local text5 = "%." .. dragInputChanged(argument2.Increment) .. "f"

												local function valueFunction53(argument3)
													return string.format(text5, argument3)
												end

												table27.labelText = newInstance("TextLabel", {
													Name = "SliderLabel",
													FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
													TextColor3 = argument.Library.config.Colors.SubText,
													Text = argument2.Name,
													BackgroundTransparency = 1,
													Position = UDim2.new(uiConstants[33], uiConstants[115], 0, elementYPos),
													BorderSizePixel = 0,
													TextSize = 14,
													Size = UDim2.new(0, 140, uiConstants[33], uiConstants[108]),
													TextXAlignment = Enum.TextXAlignment.Left,
													Parent = argument.mainFrame,
												})

												table27.backgroundFrame = newInstance("Frame", {
													Name = "SliderBackground",
													BackgroundColor3 = argument.Library.config.Colors.Surface,
													AnchorPoint = Vector2.new(0, 0.5),
													Position = UDim2.new(uiConstants[33], 10, 0, elementYPos + 28),
													BorderColor3 = argument.Library.config.Colors.Black,
													BorderSizePixel = 0,
													Size = UDim2.new(uiConstants[33], 238, 0, 5),
													Parent = argument.mainFrame,
												})

												newInstance("UICorner", { Name = "UICorner", CornerRadius = UDim.new(uiConstants[18], 0), Parent = table27.backgroundFrame })
												local n32 = (table27.value - argument2.Min) / (argument2.Max - argument2.Min)

												table27.fillFrame = newInstance("Frame", {
													Name = "SliderFill",
													BackgroundColor3 = Color3.new(1, 1, 1),
													Position = UDim2.new(uiConstants[33], 0, 0, uiConstants[33]),
													BorderColor3 = argument.Library.config.Colors.Black,
													BorderSizePixel = 0,
													Size = UDim2.new(uiConstants[33], 238 * n32, 1, 0),
													Parent = table27.backgroundFrame,
												})

												newInstance("UICorner", { Name = "UICorner", CornerRadius = UDim.new(1, 0), Parent = table27.fillFrame })
												local remoteAction = newInstance
												local table28 = { Name = "SliderFillGradient" }
												local colorSequence = ColorSequence.new
												local table29 = {}
												local signal = ColorSequenceKeypoint.new(uiConstants[33], argument.Library.config.Colors.AccentDark)
												local value114 = ColorSequenceKeypoint.new(0.5, argument.Library.config.AccentColor)
												local new = ColorSequenceKeypoint.new
												local accentLight = argument.Library.config.Colors.AccentLight
												table29[1] = signal
												table29[2] = value114

												do
													local values = table.pack(new(1, accentLight))
													table.move(values, 1, values.n, 3, table29)
												end

												table28.Color = colorSequence(table29)
												table28.Parent = table27.fillFrame
												table27.fillGradient = remoteAction("UIGradient", table28)

												table27.valueBox = newInstance("TextBox", {
													Name = "SliderValueBox",
													FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
													TextColor3 = argument.Library.config.Colors.SubText,
													Text = valueFunction53(table27.value) .. " / " .. valueFunction53(argument2.Max),
													PlaceholderText = "",
													ClearTextOnFocus = true,
													TextEditable = true,
													BackgroundTransparency = 1,
													Position = UDim2.new(1, -95, 0, elementYPos),
													BorderSizePixel = 0,
													TextSize = uiConstants[46],
													Size = UDim2.new(0, 85, uiConstants[33], uiConstants[108]),
													TextXAlignment = Enum.TextXAlignment.Right,
													Parent = argument.mainFrame,
												})

												local TextButton = newInstance("TextButton", {
													Name = "SliderClickButton",
													Text = "",
													BackgroundTransparency = 1,
													AnchorPoint = Vector2.new(uiConstants[33], 0.5),
													Position = UDim2.new(0, uiConstants[33], 0.5, uiConstants[33]),
													Size = UDim2.new(1, 0, 0, 24),
													Parent = table27.backgroundFrame,
												})

												local originalFireServer = n32
												local n33 = n32
												local condition18 = false
												local condition19 = false
												local condition20 = uiConstants[101]
												local connection = nil

												local function valueFunction54()
													if connection then
														return
													end

													if math.abs(originalFireServer - n33) <= 0.0001 then
														originalFireServer = n33
														table27.fillFrame.Size = UDim2.new(0, 238 * originalFireServer, 1, 0)
														return
													end

													connection = runService.RenderStepped:Connect(function()
														if not table27.backgroundFrame.Parent then
															connection:Disconnect()
															connection = nil
															return
														end

														originalFireServer += (n33 - originalFireServer) * uiConstants[110]

														if math.abs(originalFireServer - n33) < 0.0001 then
															originalFireServer = n33
														end

														table27.fillFrame.Size = UDim2.new(0, 238 * originalFireServer, uiConstants[18], 0)

														if originalFireServer == n33 then
															connection:Disconnect()
															connection = nil
														end
													end)
												end

												table27.Set = function(argument3, argument4, argument5)
													local closureFactory = uiConstants[109]
													argument4 = type(argument4) == closureFactory and argument4 or argument2.Default
													local increment = argument2.Increment
													local n34 = math.clamp(argument2.Min + math.floor((argument4 - argument2.Min) / argument2.Increment + uiConstants[81]) * increment, argument2.Min, argument2.Max)
													local value = tonumber(valueFunction53(n34)) or n34
													table27.value = value

													if not argument5 then
														n33 = (value - argument2.Min) / (argument2.Max - argument2.Min)
													end

													valueFunction54()

													if not condition18 then
														table27.valueBox.Text = valueFunction53(value) .. " / " .. valueFunction53(argument2.Max)
													end

													if not argument2.NoSave then
														table19.Sliders[value109] = value

														if not condition19 then
															saveConfig()
														end
													end

													argument2.Callback(value)
												end

												table27.valueBox.Focused:Connect(function()
													condition18 = uiConstants[200]
												end)

												table27.valueBox:GetPropertyChangedSignal(uiConstants[133]):Connect(function()
													if not condition18 then
														return
													end
													local num = tonumber(table27.valueBox.Text:match("^[%d%.]+"))

													if num then
														n33 = (math.clamp(num, argument2.Min, argument2.Max) - argument2.Min) / (argument2.Max - argument2.Min)
														valueFunction54()
													end
												end)

												table27.valueBox.FocusLost:Connect(function()
													condition18 = false
													table27:Set(tonumber(table27.valueBox.Text:match("^[%d%.]+")) or table27.value)

													if argument2.OnCommit then
														argument2.OnCommit(table27.value)
													end
												end)

												local function valueFunction55(argument3)
													local condition21 = argument3 == "drag" or argument3 == "hover"
													playTween(table27.backgroundFrame, { Size = UDim2.new(uiConstants[33], 238, 0, argument3 == uiConstants[159] and uiConstants[72] or argument3 == uiConstants[117] and 6 or 5) }, uiConstants[26], Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
													condition21 = condition21 and argument.Library.config.Colors.Text or argument.Library.config.Colors.SubText
													playTween(table27.valueBox, { TextColor3 = condition21 }, 0.25, Enum.EasingStyle.Quint)
													playTween(table27.labelText, { TextColor3 = condition21 }, 0.25, Enum.EasingStyle.Quint)
												end

												TextButton.MouseEnter:Connect(function()
													condition20 = uiConstants[200]

													if not condition19 then
														valueFunction55(uiConstants[117])
													end
												end)

												TextButton.MouseLeave:Connect(function()
													condition20 = false

													if not condition19 then
														valueFunction55("idle")
													end
												end)

												local table30 = {}
												local thread = nil

												local function valueFunction56()
													if thread then
														task.cancel(thread)
													end

													thread = nil

													for _, closureFactory in ipairs(table30) do
														if closureFactory and closureFactory.Parent then
															closureFactory.ScrollingEnabled = true
														end
													end

													table.clear(table30)
												end

												local function valueFunction57()
													local parent = TextButton.Parent

													while parent and parent ~= game do
														if parent:IsA("ScrollingFrame") and parent.ScrollingEnabled then
															parent.ScrollingEnabled = false
															table.insert(table30, parent)
														end

														parent = parent.Parent
													end

													if thread then
														task.cancel(thread)
													end

													thread = task.delay(uiConstants[70], function()
														thread = nil
														valueFunction56()
													end)
												end

												local function valueFunction58(argument3)
													if condition19 and (argument3.UserInputType == Enum.UserInputType.MouseMovement or argument3.UserInputType == Enum.UserInputType.Touch) then
														local n34 = math.clamp((argument3.Position.X - table27.backgroundFrame.AbsolutePosition.X) / table27.backgroundFrame.AbsoluteSize.X, 0, 1)
														n33 = n34
														table27:Set(argument2.Min + (argument2.Max - argument2.Min) * n34, uiConstants[200])
													end
												end

												local function valueFunction59(argument3)
													if argument3.UserInputType == Enum.UserInputType.MouseButton1 or argument3.UserInputType == Enum.UserInputType.Touch then
														if condition19 then
															condition19 = false
															valueFunction56()
															valueFunction55(condition20 and uiConstants[117] or uiConstants[82])
															n33 = (table27.value - argument2.Min) / (argument2.Max - argument2.Min)
															valueFunction54()

															if not argument2.NoSave then
																saveConfig()
															end

															resolveKeyCode(valueFunction58)

															if argument2.OnCommit then
																argument2.OnCommit(table27.value)
															end
														end
													end
												end

												TextButton.MouseButton1Down:Connect(function(x)
													condition19 = true
													valueFunction55("drag")
													valueFunction57()
													local n34 = math.clamp(((x or userInputService:GetMouseLocation().X) - table27.backgroundFrame.AbsolutePosition.X) / table27.backgroundFrame.AbsoluteSize.X, uiConstants[33], 1)
													n33 = n34
													table27:Set(argument2.Min + (argument2.Max - argument2.Min) * n34, uiConstants[200])
													dragHandler(valueFunction58, valueFunction59)
												end)

												table27:Set(table27.value)
												argument.elementYPos = argument.elementYPos + 40
												updateSize()
												table.insert(argument.elementsInGroup, table27)
												return table27
											end

											addDoubleSlider = function(argument, argument2)
												local value108 = obj[argument]
												local tabConfig = value108.TabConfig
												local groupConfig = value108.GroupConfig
												local updateSize = value108.UpdateSize
												argument2 = argument2 or {}
												argument2.Name = argument2.Name or "Double Slider"
												argument2.Min = argument2.Min or 1
												argument2.Max = argument2.Max or 100
												argument2.DefaultMin = argument2.DefaultMin or argument2.Min
												argument2.DefaultMax = argument2.DefaultMax or argument2.Max
												argument2.Increment = argument2.Increment or 1

												argument2.Callback = argument2.Callback or function()
												end

												local table27 = {}
												local elementYPos = argument.elementYPos
												local value109 = normalizeSettingName(argument2.SaveId or tabConfig.Name .. ":" .. groupConfig.Name .. ":" .. argument2.Name)
												local value110 = getProperty(table19.DoubleSliders, value109, argument2.NoSave)
												table27.minValue = type(value110) == "table" and type(value110.Min) == "number" and value110.Min or argument2.DefaultMin
												local remoteEvent = uiConstants[145]
												table27.maxValue = type(value110) == remoteEvent and type(value110.Max) == "number" and value110.Max or argument2.DefaultMax
												table27.SaveId = value109
												table27.DefaultValue = { Min = argument2.DefaultMin, Max = argument2.DefaultMax }

												table27.labelText = newInstance("TextLabel", {
													Name = "DoubleSliderLabel",
													FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
													TextColor3 = argument.Library.config.Colors.SubText,
													Text = argument2.Name,
													BackgroundTransparency = 1,
													Position = UDim2.new(uiConstants[33], uiConstants[115], 0, elementYPos),
													BorderSizePixel = 0,
													TextSize = 14,
													Size = UDim2.new(uiConstants[33], 140, 0, 20),
													TextXAlignment = Enum.TextXAlignment.Left,
													Parent = argument.mainFrame,
												})

												table27.valueLabelText = newInstance("TextLabel", {
													Name = "DoubleSliderValueLabel",
													FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
													TextColor3 = argument.Library.config.Colors.SubText,
													Text = "",
													BackgroundTransparency = 1,
													Position = UDim2.new(1, -uiConstants[31], uiConstants[33], elementYPos),
													BorderSizePixel = 0,
													TextSize = uiConstants[46],
													Size = UDim2.new(0, 85, uiConstants[33], uiConstants[108]),
													TextXAlignment = Enum.TextXAlignment.Right,
													Parent = argument.mainFrame,
												})

												table27.backgroundFrame = newInstance("Frame", {
													Name = "DoubleSliderBackground",
													BackgroundColor3 = argument.Library.config.Colors.Surface,
													AnchorPoint = Vector2.new(0, 0.5),
													Position = UDim2.new(0, 10, 0, elementYPos + 28),
													BorderSizePixel = 0,
													Size = UDim2.new(0, 238, 0, 5),
													Parent = argument.mainFrame,
												})

												newInstance("UICorner", { CornerRadius = UDim.new(1, 0), Parent = table27.backgroundFrame })

												table27.fillFrame = newInstance(uiConstants[170], {
													Name = uiConstants[56],
													BackgroundColor3 = Color3.new(1, 1, 1),
													BorderSizePixel = uiConstants[33],
													Parent = table27.backgroundFrame,
												})

												newInstance(uiConstants[137], { CornerRadius = UDim.new(1, 0), Parent = table27.fillFrame })
												local remoteAction = newInstance
												local signal = uiConstants[21]
												local table28 = { Name = "DoubleSliderFillGradient" }
												local colorSequence = ColorSequence.new
												local table29 = {}
												local value114 = ColorSequenceKeypoint.new(uiConstants[33], argument.Library.config.Colors.AccentDark)
												local originalFireServer = ColorSequenceKeypoint.new(0.5, argument.Library.config.AccentColor)
												local new = ColorSequenceKeypoint.new
												local closureFactory = uiConstants[18]
												local accentLight = argument.Library.config.Colors.AccentLight
												table29[1] = value114
												table29[2] = originalFireServer

												do
													local values = table.pack(new(closureFactory, accentLight))
													table.move(values, 1, values.n, 3, table29)
												end

												table28.Color = colorSequence(table29)
												table28.Parent = table27.fillFrame
												table27.fillGradient = remoteAction(signal, table28)

												table27.minEdgeFrame = newInstance("Frame", {
													Name = "DoubleSliderMinEdge",
													BackgroundTransparency = 1,
													AnchorPoint = Vector2.new(0.5, uiConstants[81]),
													Position = UDim2.new(0, 0, uiConstants[81], uiConstants[33]),
													Size = UDim2.new(0, 30, uiConstants[18], 12),
													Parent = table27.backgroundFrame,
												})

												table27.maxEdgeFrame = newInstance(uiConstants[170], {
													Name = "DoubleSliderMaxEdge",
													BackgroundTransparency = 1,
													AnchorPoint = Vector2.new(0.5, uiConstants[81]),
													Position = UDim2.new(0, 0, 0.5, 0),
													Size = UDim2.new(0, uiConstants[36], 1, 12),
													Parent = table27.backgroundFrame,
												})

												local text5 = "%." .. dragInputChanged(argument2.Increment) .. "f"

												local function valueFunction53(argument3)
													return string.format(text5, argument3)
												end

												local function valueFunction54(argument3)
													local increment = argument2.Increment
													local min = argument2.Min
													local max = argument2.Max
													local n32 = math.clamp(argument2.Min + math.floor((argument3 - argument2.Min) / argument2.Increment + 0.5) * increment, min, max)
													return tonumber(valueFunction53(n32)) or n32
												end

												local function valueFunction55(argument3)
													return (argument3 - argument2.Min) / (argument2.Max - argument2.Min)
												end

												local n32 = 0
												local fireServerHook = uiConstants[33]
												local n33 = 0
												local n34 = 0
												local condition18 = false
												local str6 = nil
												local connection = nil

												local function valueFunction56()
													if connection then
														return
													end
													local condition19 = math.abs(n32 - n33) > 0.0001
													local condition20 = math.abs(fireServerHook - n34) > 0.0001
													if not condition19 and not condition20 then
														return
													end

													connection = runService.RenderStepped:Connect(function()
														if not table27.backgroundFrame.Parent then
															connection:Disconnect()
															connection = nil
															return
														end

														local value118 = uiConstants[102]
														condition19 = math.abs(n32 - n33) > value118
														condition20 = math.abs(fireServerHook - n34) > 0.0001

														if condition19 then
															n32 += (n33 - n32) * uiConstants[110]
															local value119 = uiConstants[102]

															if math.abs(n32 - n33) < value119 then
																n32 = n33
															end
														end

														if condition20 then
															fireServerHook += (n34 - fireServerHook) * 0.15
															local value119 = uiConstants[102]

															if math.abs(fireServerHook - n34) < value119 then
																fireServerHook = n34
															end
														end

														table27.minEdgeFrame.Position = UDim2.new(n32, 0, 0.5, uiConstants[33])
														table27.maxEdgeFrame.Position = UDim2.new(fireServerHook, 0, uiConstants[81], uiConstants[33])
														table27.fillFrame.Position = UDim2.new(n32, 0, uiConstants[33], 0)
														table27.fillFrame.Size = UDim2.new(fireServerHook - n32, uiConstants[33], 1, uiConstants[33])

														if n32 == n33 and fireServerHook == n34 then
															connection:Disconnect()
															connection = nil
														end
													end)
												end

												table27.Set = function(argument3, argument4, argument5, arg6)
													argument4 = type(argument4) == "number" and argument4 or argument2.DefaultMin
													local value118 = uiConstants[109]
													argument5 = type(argument5) == value118 and argument5 or argument2.DefaultMax
													local value119 = valueFunction54(argument4)
													local value120 = valueFunction54(argument5)

													if not (value120 < value119) then
														local value121 = value120
														value120 = value119
														value119 = value121
													end

													table27.minValue = value120
													table27.maxValue = value119

													if not arg6 then
														n33 = valueFunction55(value120)
														n34 = valueFunction55(value119)
													end

													valueFunction56()
													table27.valueLabelText.Text = valueFunction53(value120) .. " - " .. valueFunction53(value119)

													if not argument2.NoSave then
														if n24 >= 4769 then
															while true do
															end
														else
															table19.DoubleSliders[value109] = { Min = value120, Max = value119 }

															if not str6 then
																saveConfig()
															end
														end
													end

													argument2.Callback(value120, value119)
												end

												local function valueFunction57()
													local text = (str6 or condition18) and argument.Library.config.Colors.Text or argument.Library.config.Colors.SubText
													playTween(table27.labelText, { TextColor3 = text }, 0.25, Enum.EasingStyle.Quint)
													playTween(table27.valueLabelText, { TextColor3 = text }, uiConstants[26], Enum.EasingStyle.Quint)
												end

												local function valueFunction58(argument3)
													local n35 = math.clamp((argument3.Position.X - table27.backgroundFrame.AbsolutePosition.X) / table27.backgroundFrame.AbsoluteSize.X, 0, 1)

													if str6 == "min" then
														n33 = n35
														table27:Set(argument2.Min + (argument2.Max - argument2.Min) * n35, table27.maxValue, uiConstants[200])
														return
													end

													if str6 == "max" then
														n34 = n35
														table27:Set(table27.minValue, argument2.Min + (argument2.Max - argument2.Min) * n35, uiConstants[200])
													end
												end

												local valueFunction59 = nil

												local value118 = newInstance(uiConstants[39], {
													Name = "DoubleSliderClickButton",
													Text = "",
													BackgroundTransparency = 1,
													AnchorPoint = Vector2.new(uiConstants[33], 0.5),
													Position = UDim2.new(uiConstants[33], 0, uiConstants[81], 0),
													Size = UDim2.new(uiConstants[18], 0, 0, 24),
													Parent = table27.backgroundFrame,
												})

												value118.MouseEnter:Connect(function()
													condition18 = true
													valueFunction57()
												end)

												value118.MouseLeave:Connect(function()
													condition18 = false
													valueFunction57()
												end)

												value118.MouseButton1Down:Connect(function(x)
													local x2 = x or userInputService:GetMouseLocation().X
													str6 = math.abs(x2 - table27.minEdgeFrame.AbsolutePosition.X + table27.minEdgeFrame.AbsoluteSize.X * uiConstants[81]) <= math.abs(x2 - table27.maxEdgeFrame.AbsolutePosition.X + table27.maxEdgeFrame.AbsoluteSize.X * 0.5) and "min" or "max"
													local n35 = math.clamp((x2 - table27.backgroundFrame.AbsolutePosition.X) / table27.backgroundFrame.AbsoluteSize.X, 0, 1)

													if str6 == "min" then
														n33 = n35
														table27:Set(argument2.Min + (argument2.Max - argument2.Min) * n35, table27.maxValue, true)
													else
														n34 = n35
														table27:Set(table27.minValue, argument2.Min + (argument2.Max - argument2.Min) * n35, uiConstants[200])
													end

													valueFunction57()
													dragHandler(valueFunction58, valueFunction59)
												end)

												valueFunction59 = function(argument3)
													if argument3.UserInputType == Enum.UserInputType.MouseButton1 or argument3.UserInputType == Enum.UserInputType.Touch then
														if str6 then
															str6 = nil
															valueFunction57()
															n33 = valueFunction55(table27.minValue)
															n34 = valueFunction55(table27.maxValue)
															valueFunction56()

															if not argument2.NoSave then
																saveConfig()
															end

															resolveKeyCode(valueFunction58)

															if argument2.OnCommit then
																argument2.OnCommit(table27.minValue, table27.maxValue)
															end
														end
													end
												end

												table27:Set(table27.minValue, table27.maxValue)
												argument.elementYPos = argument.elementYPos + 40
												updateSize()
												table.insert(argument.elementsInGroup, table27)
												return table27
											end
										end
									end
								end
							end

							do
								local addGroup

								do
									do
										local function addButton(argument, argument2)
											local updateSize = obj[argument].UpdateSize
											argument2 = argument2 or {}
											argument2.Name = argument2.Name or "Button"
											argument2.Icon = argument2.Icon
											argument2.Locked = argument2.Locked or false

											argument2.Callback = argument2.Callback or function()
											end

											local table27 = { isLocked = argument2.Locked }
											local elementYPos = argument.elementYPos
											local udim2 = UDim2.new(uiConstants[33], 238, 0, 26)

											table27.mainFrame = newInstance("Frame", {
												Name = "ButtonFrame",
												BackgroundColor3 = table27.isLocked and argument.Library.config.Colors.Tertiary or argument.Library.config.Colors.Element,
												Position = UDim2.new(0, 10, 0, elementYPos),
												BorderColor3 = argument.Library.config.Colors.Black,
												BorderSizePixel = 0,
												Size = udim2,
												ClipsDescendants = true,
												Parent = argument.mainFrame,
											})

											local UICorner = newInstance("UICorner", { Name = uiConstants[137], CornerRadius = UDim.new(0, 6), Parent = table27.mainFrame })

											local UIStroke = newInstance("UIStroke", {
												Name = uiConstants[131],
												Color = table27.isLocked and argument.Library.config.Colors.Element or argument.Library.config.Colors.Border,
												Parent = table27.mainFrame,
											})

											local textService = newInstance
											local table28 = { Name = uiConstants[21] }
											local colorSequence = ColorSequence.new
											local table29 = {}
											local value106 = ColorSequenceKeypoint.new(0, argument.Library.config.Colors.Text)
											local value107 = ColorSequenceKeypoint.new(0.493, argument.Library.config.Colors.AccentLight)
											local new = ColorSequenceKeypoint.new
											local value108 = uiConstants[18]
											local text = argument.Library.config.Colors.Text
											local value109 = ColorSequenceKeypoint.new(0.509, argument.Library.config.Colors.AccentLight)
											table29[1] = value106
											table29[2] = value107
											table29[3] = value109

											do
												local values = table.pack(new(value108, text))
												table.move(values, 1, values.n, 4, table29)
											end

											table28.Color = colorSequence(table29)
											table28.Rotation = 260
											table28.Parent = UIStroke
											textService("UIGradient", table28)

											local Frame = newInstance("Frame", {
												Name = "Shine",
												BackgroundColor3 = argument.Library.config.Colors.AccentLight,
												BackgroundTransparency = uiConstants[18],
												Size = UDim2.new(0, 8, 1, 0),
												Position = UDim2.new(-uiConstants[22], 0, 0, 0),
												ZIndex = 3,
												Rotation = -15,
												Parent = table27.mainFrame,
											})

											local value110 = newInstance
											local table30 = { Name = uiConstants[51], Rotation = uiConstants[91] }
											local numberSequence = NumberSequence.new
											local table31 = {}
											local remoteEvent = NumberSequenceKeypoint.new(uiConstants[33], uiConstants[18])
											local remoteAction = NumberSequenceKeypoint.new(0.5, 0.4)
											table31[1] = remoteEvent
											table31[2] = remoteAction

											do
												local values = table.pack(NumberSequenceKeypoint.new(1, 1))
												table.move(values, 1, values.n, 3, table31)
											end

											table30.Transparency = numberSequence(table31)
											table30.Parent = Frame
											value110("UIGradient", table30)
											local n32 = 8

											if argument2.Icon then
												newInstance("ImageLabel", {
													Name = uiConstants[40],
													ImageColor3 = table27.isLocked and argument.Library.config.Colors.Muted or argument.Library.config.Colors.SubText,
													BackgroundColor3 = argument.Library.config.Colors.White,
													Image = argument2.Icon,
													BackgroundTransparency = uiConstants[18],
													Position = UDim2.new(0, 8, 0.5, -8),
													BorderColor3 = argument.Library.config.Colors.Black,
													BorderSizePixel = 0,
													Size = UDim2.new(uiConstants[33], uiConstants[30], 0, 16),
													Parent = table27.mainFrame,
												})

												n32 = uiConstants[36]
											end

											table27.labelText = newInstance("TextLabel", {
												Name = "ButtonLabel",
												FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
												TextColor3 = table27.isLocked and argument.Library.config.Colors.Muted or argument.Library.config.Colors.SubText,
												Text = argument2.Name .. (table27.isLocked and " (locked)" or ""),
												BackgroundColor3 = argument.Library.config.Colors.White,
												BackgroundTransparency = 1,
												Position = UDim2.new(0, n32, 0, 0),
												BorderSizePixel = 0,
												BorderColor3 = argument.Library.config.Colors.Black,
												TextSize = 14,
												Size = UDim2.new(1, -n32 - 10, 1, 0),
												TextXAlignment = Enum.TextXAlignment.Left,
												Parent = table27.mainFrame,
											})

											local TextButton = newInstance("TextButton", {
												Name = uiConstants[177],
												Text = "",
												BackgroundTransparency = 1,
												Size = UDim2.new(uiConstants[18], 0, 1, 0),
												Parent = table27.mainFrame,
											})

											local condition18 = uiConstants[101]

											local function dragHandler()
												if condition18 then
													return
												end
												condition18 = true
												Frame.Position = UDim2.new(-0.1, 0, 0, 0)
												Frame.BackgroundTransparency = uiConstants[139]
												playTween(Frame, { Position = UDim2.new(uiConstants[104], 0, uiConstants[33], uiConstants[33]), BackgroundTransparency = 1 }, 0.35, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

												task.delay(0.35, function()
													condition18 = false
												end)
											end

											TextButton.MouseButton1Down:Connect(function()
												if not table27.isLocked then
													playTween(table27.mainFrame, { Size = UDim2.new(0, 228.48, uiConstants[33], 23.92) }, 0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
													playTween(UICorner, { CornerRadius = UDim.new(0, 8) }, uiConstants[22])
													dragHandler()
												end
											end)

											TextButton.MouseButton1Up:Connect(function()
												if not table27.isLocked then
													playTween(table27.mainFrame, { Size = udim2 }, 0.3, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
													playTween(UICorner, { CornerRadius = UDim.new(0, 6) }, 0.3)
													argument2.Callback()
												end
											end)

											TextButton.MouseLeave:Connect(function()
												if not table27.isLocked then
													playTween(table27.mainFrame, { BackgroundColor3 = argument.Library.config.Colors.Element }, 0.4, Enum.EasingStyle.Exponential)
													playTween(table27.mainFrame, { Size = udim2 }, 0.3, Enum.EasingStyle.Exponential)
													playTween(UICorner, { CornerRadius = UDim.new(0, 6) }, 0.3)
												end
											end)

											TextButton.MouseEnter:Connect(function()
												if not table27.isLocked then
													playTween(table27.mainFrame, { BackgroundColor3 = argument.Library.config.Colors.ElementHover }, uiConstants[139], Enum.EasingStyle.Exponential)
												end
											end)

											argument.elementYPos = argument.elementYPos + 32
											updateSize()
											table.insert(argument.elementsInGroup, table27)
											return table27
										end

										local function addKeybind(argument, argument2)
											local textService = obj[argument]
											local tabConfig = textService.TabConfig
											local groupConfig = textService.GroupConfig
											local updateSize = textService.UpdateSize
											argument2 = argument2 or {}
											argument2.Name = argument2.Name or uiConstants[29]
											argument2.Default = argument2.Default or Enum.KeyCode.Unknown

											argument2.Callback = argument2.Callback or function()
											end

											argument2.ChangedCallback = argument2.ChangedCallback or function()
											end

											local table27 = {}
											local value106 = normalizeSettingName(argument2.SaveId or tabConfig.Name .. ":" .. groupConfig.Name .. ":" .. argument2.Name)
											local value107 = getProperty(table19.Keybinds, value106, argument2.NoSave)

											if value107 then
												local resolve = table12.Resolve
												local value108 = uiConstants[145]
												value107 = resolve(type(value107) == value108 and value107.Key or value107)
											end

											table27.value = value107 or argument2.Default
											table27.isListening = uiConstants[101]
											table27.SaveId = value106
											table27.DefaultValue = argument2.Default
											table12.SetMeta(value106, { Group = "keybinds", Name = argument2.Name })
											local elementYPos = argument.elementYPos

											table27.labelText = newInstance(uiConstants[65], {
												Name = "KeybindLabel",
												FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
												TextColor3 = argument.Library.config.Colors.SubText,
												Text = argument2.Name,
												BackgroundColor3 = argument.Library.config.Colors.White,
												BackgroundTransparency = 1,
												Position = UDim2.new(0, 10, 0, elementYPos),
												BorderSizePixel = uiConstants[33],
												BorderColor3 = Color3.new(),
												TextSize = 14,
												Size = UDim2.new(0, 120, 0, uiConstants[108]),
												TextXAlignment = Enum.TextXAlignment.Left,
												Parent = argument.mainFrame,
											})

											local text5 = table27.value == Enum.KeyCode.Unknown and "None" or table12.Display(table27.value)
											local n32 = valueFunction47(text5, uiConstants[49]) + 26

											table27.buttonFrame = newInstance("Frame", {
												Name = "KeybindButton",
												BackgroundColor3 = argument.Library.config.Colors.Element,
												Position = UDim2.new(1, -n32 - 10, uiConstants[33], elementYPos),
												BorderColor3 = argument.Library.config.Colors.Black,
												BorderSizePixel = uiConstants[33],
												Size = UDim2.new(0, n32, uiConstants[33], 21),
												Parent = argument.mainFrame,
											})

											newInstance("UICorner", { Name = uiConstants[137], CornerRadius = UDim.new(1, uiConstants[33]), Parent = table27.buttonFrame })
											local UIStroke = newInstance("UIStroke", { Name = uiConstants[131], Color = argument.Library.config.Colors.BorderSoft, Parent = table27.buttonFrame })
											local value108 = newInstance
											local table28 = { Name = uiConstants[21] }
											local colorSequence = ColorSequence.new
											local table29 = {}
											local value109 = ColorSequenceKeypoint.new(0, argument.Library.config.Colors.Text)
											local value110 = ColorSequenceKeypoint.new(uiConstants[27], argument.Library.config.Colors.AccentLight)
											local remoteEvent = ColorSequenceKeypoint.new(0.509, argument.Library.config.Colors.AccentLight)
											table29[1] = value109
											table29[2] = value110
											table29[3] = remoteEvent

											do
												local values = table.pack(ColorSequenceKeypoint.new(1, argument.Library.config.Colors.Text))
												table.move(values, 1, values.n, 4, table29)
											end

											table28.Color = colorSequence(table29)
											table28.Rotation = 260
											table28.Parent = UIStroke
											value108("UIGradient", table28)

											table27.keyLabelText = newInstance("TextLabel", {
												Name = "KeyLabel",
												FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
												TextColor3 = argument.Library.config.Colors.SubText,
												Text = text5,
												BackgroundColor3 = argument.Library.config.Colors.White,
												BackgroundTransparency = 1,
												Position = UDim2.new(uiConstants[33], uiConstants[33], 0, uiConstants[33]),
												BorderSizePixel = 0,
												BorderColor3 = Color3.new(),
												TextSize = 12,
												Size = UDim2.new(uiConstants[18], -20, uiConstants[18], uiConstants[33]),
												TextXAlignment = Enum.TextXAlignment.Center,
												Parent = table27.buttonFrame,
											})

											table27.keyboardIconImg = newInstance("ImageLabel", {
												Name = "KeyboardIcon",
												ImageColor3 = argument.Library.config.Colors.Muted,
												BackgroundColor3 = argument.Library.config.Colors.White,
												Image = "rbxassetid://10723416765",
												BackgroundTransparency = 1,
												Position = UDim2.new(1, -18, 0.5, -7),
												BorderColor3 = Color3.new(),
												BorderSizePixel = 0,
												Size = UDim2.new(0, 14, 0, 14),
												Parent = table27.buttonFrame,
											})

											newInstance("UIAspectRatioConstraint", { Name = "UIAspectRatioConstraint", Parent = table27.keyboardIconImg })

											local TextButton = newInstance("TextButton", {
												Name = "KeybindClickButton",
												Text = "",
												BackgroundTransparency = 1,
												Size = UDim2.new(uiConstants[18], 0, 1, 0),
												Parent = table27.buttonFrame,
											})

											local function dragHandler(argument3)
												local n33 = valueFunction47(argument3, uiConstants[49]) + 26
												playTween(table27.buttonFrame, { Size = UDim2.new(uiConstants[33], n33, uiConstants[33], 21), Position = UDim2.new(1, -n33 - uiConstants[115], 0, elementYPos) }, 0.45, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
											end

											table27.Set = function(argument3, value)
												table27.value = value
												local text = value == Enum.KeyCode.Unknown and uiConstants[172] or table12.Display(value)
												table27.keyLabelText.Text = text
												dragHandler(text)

												if not argument2.NoSave then
													table19.Keybinds[value106] = value == Enum.KeyCode.Unknown and nil or value.Name
													saveConfig()
												end

												if flyteBBState and flyteBBState.RefreshKeybinds then
													task.defer(flyteBBState.RefreshKeybinds)
												end

												argument2.ChangedCallback(value)
											end

											TextButton.InputBegan:Connect(function(input)
												if input.UserInputType == Enum.UserInputType.MouseButton1 then
													table27.isListening = uiConstants[200]
													table27.keyLabelText.Text = uiConstants[112]
													dragHandler(uiConstants[112])
													playTween(table27.buttonFrame, { BackgroundColor3 = argument.Library.config.Colors.ElementHover }, 0.4)
													playTween(UIStroke, { Color = argument.Library.config.Colors.Border }, 0.4)
													playTween(table27.keyLabelText, { TextColor3 = argument.Library.config.Colors.TextHover }, uiConstants[139])
													playTween(table27.keyboardIconImg, { ImageColor3 = argument.Library.config.Colors.TextHover }, 0.4)
												end
											end)

											trackConnection(userInputService.InputBegan:Connect(function(input, gameProcessed)
												local condition18 = input.UserInputType == Enum.UserInputType.Keyboard or input.UserInputType == Enum.UserInputType.MouseButton3

												if table27.isListening then
													if not condition18 then
														return
													end
													table27.isListening = false
													table27:Set(input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode or input.UserInputType)
													playTween(table27.buttonFrame, { BackgroundColor3 = argument.Library.config.Colors.Element }, 0.4)
													playTween(UIStroke, { Color = argument.Library.config.Colors.BorderSoft }, uiConstants[139])
													playTween(table27.keyLabelText, { TextColor3 = argument.Library.config.Colors.SubText }, 0.4)
													playTween(table27.keyboardIconImg, { ImageColor3 = argument.Library.config.Colors.Muted }, uiConstants[139])
													return
												end

												if gameProcessed or not condition18 then
													return
												end

												if (input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode or input.UserInputType) == table27.value then
													argument2.Callback()
												end
											end))

											TextButton.MouseEnter:Connect(function()
												if not table27.isListening then
													playTween(table27.buttonFrame, { BackgroundColor3 = argument.Library.config.Colors.ElementHover }, 0.4)
													playTween(UIStroke, { Color = argument.Library.config.Colors.Border }, 0.4)
													playTween(table27.keyLabelText, { TextColor3 = argument.Library.config.Colors.TextHover }, 0.4)
													playTween(table27.keyboardIconImg, { ImageColor3 = argument.Library.config.Colors.TextHover }, 0.4)
												end
											end)

											TextButton.MouseLeave:Connect(function()
												if not table27.isListening then
													playTween(table27.buttonFrame, { BackgroundColor3 = argument.Library.config.Colors.Element }, 0.4)
													playTween(UIStroke, { Color = argument.Library.config.Colors.BorderSoft }, 0.4)
													playTween(table27.keyLabelText, { TextColor3 = argument.Library.config.Colors.SubText }, 0.4)
													playTween(table27.keyboardIconImg, { ImageColor3 = argument.Library.config.Colors.Muted }, 0.4)
												end
											end)

											argument.elementYPos = argument.elementYPos + 28
											updateSize()
											argument2.ChangedCallback(table27.value)
											table.insert(argument.elementsInGroup, table27)
											return table27
										end

										local function addDropdown(argument, argument2)
											local textService = obj[argument]
											local tabConfig = textService.TabConfig
											local groupConfig = textService.GroupConfig
											local updateSize = textService.UpdateSize
											local createKeybindPill = textService.CreateKeybindPill
											argument2 = argument2 or {}
											argument2.Name = argument2.Name or uiConstants[92]
											argument2.Options = argument2.Options or { uiConstants[178], "Option 2", uiConstants[163] }
											argument2.Default = argument2.Default or argument2.Options[1]

											argument2.Callback = argument2.Callback or function()
											end

											argument2.OnOpen = argument2.OnOpen or function()
											end

											local table27 = {}
											local dropdown = normalizeSettingName(argument2.SaveId or tabConfig.Name .. ":" .. groupConfig.Name .. ":" .. argument2.Name)
											local value106 = getProperty(table19.Dropdowns, dropdown, argument2.NoSave)
											table27.value = argument2.Default

											for _, value107 in argument2.Options, nil, nil do
												if value106 == value107 then
													table27.value = value106
													break
												end
											end

											table27.SaveId = dropdown
											table27.DefaultValue = argument2.Default
											table27.isOpen = uiConstants[101]
											local text5 = "dropdown:" .. dropdown

											local function dragHandler(argument3)
												return text5 .. ":" .. argument3
											end

											local elementYPos = argument.elementYPos

											local function resolveKeyCode()
												local n32 = valueFunction47(argument2.Name, uiConstants[46], Enum.Font.GothamSemibold) + 8
												local n33 = math.min(140, uiConstants[151] - n32)

												if n33 < uiConstants[78] then
													n33 = 40
													n32 = 172
												end

												local value107 = valueFunction49(table27.value or "None", n33 - 32, 14, Enum.Font.GothamSemibold)
												local value108 = uiConstants[14]
												return value107, n32, (math.clamp(valueFunction47(value107, 14, Enum.Font.GothamSemibold) + value108, 40, n33))
											end

											local value107, value108, value109 = resolveKeyCode()

											table27.labelText = newInstance("TextLabel", {
												Name = "DropdownLabel",
												FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
												TextColor3 = argument.Library.config.Colors.SubText,
												Text = argument2.Name,
												BackgroundColor3 = argument.Library.config.Colors.White,
												BackgroundTransparency = 1,
												Position = UDim2.new(0, 10, uiConstants[33], elementYPos),
												BorderSizePixel = uiConstants[33],
												BorderColor3 = Color3.new(),
												TextSize = 14,
												Size = UDim2.new(0, value108, 0, 20),
												TextXAlignment = Enum.TextXAlignment.Left,
												TextTruncate = Enum.TextTruncate.AtEnd,
												Parent = argument.mainFrame,
											})

											local function dragInputChanged()
												local n32 = 0

												for _, option in ipairs(argument2.Options) do
													local value110 = valueFunction47(option, uiConstants[46], Enum.Font.GothamSemibold)
													local remoteEvent = dragHandler(option)
													local remoteAction = table12.Get(remoteEvent)
													local n33

													if remoteAction == Enum.KeyCode.Unknown then
														local signal = uiConstants[19]
														n33 = valueFunction47("...", 11, Enum.Font.GothamSemibold) + signal
													else
														local signal = uiConstants[19]
														n33 = valueFunction47(remoteAction.Name, uiConstants[192], Enum.Font.GothamSemibold) + signal
													end

													local n34 = value110 + n33 + uiConstants[76]

													if n32 < n34 then
														n32 = n34
													end
												end

												return math.max(n32, 130)
											end

											local function valueFunction53(argument3, argument4)
												local scale = argument.Library.dropdownHolderScale and argument.Library.dropdownHolderScale.Scale or 1
												local udim2 = UDim2.new(uiConstants[33], argument4, 0, uiConstants[161])
												local table28 = { Size = udim2 }

												if not table27.detached then
													table28.Position = UDim2.new(uiConstants[18], -argument4 - 10, 0, elementYPos)
												end

												if table27.dockFrame then
													table27.dockFrame.Size = udim2
													table27.dockFrame.Position = UDim2.new(1, -argument4 - 10, 0, elementYPos)
												end

												playTween(table27.labelText, { Size = UDim2.new(0, argument3, 0, 20) }, 0.3, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
												playTween(table27.buttonFrame, table28, 0.3, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)

												if table27.isOpen then
													local absolutePosition = table27.buttonFrame.AbsolutePosition
													playTween(table27.optionHolderFrame, { Position = UDim2.new(0, absolutePosition.X / scale, 0, (absolutePosition.Y + table27.buttonFrame.AbsoluteSize.Y + 10) / scale) }, uiConstants[100], Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
												end
											end

											local function valueFunction54(value)
												local value2 = table27.value
												table27.value = value
												local value110, remoteEvent, remoteAction = resolveKeyCode()
												table27.selectedLabelText.Text = value110
												valueFunction53(remoteEvent, remoteAction)

												for _, child in pairs(table27.optionContainerFrame:GetChildren()) do
													if child:IsA("TextButton") then
														local attribute = child:GetAttribute(uiConstants[8])

														if attribute == value or attribute == value2 then
															local signal = child:FindFirstChild(uiConstants[121])
															local value114 = child:FindFirstChild(uiConstants[96])
															local condition18 = attribute == value

															if signal then
																playTween(signal, {
																	TextColor3 = condition18 and argument.Library.config.Colors.AccentLight or argument.Library.config.Colors.SubText,
																}, 0.2)
															end

															if value114 then
																playTween(value114, {
																	Position = condition18 and UDim2.new(1, -uiConstants[153], 0.5, uiConstants[33]) or UDim2.new(1, 30, 0.5, 0),
																}, uiConstants[113], Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
															end
														end
													end
												end

												if not argument2.NoSave then
													table19.Dropdowns[dropdown] = value
													saveConfig()
												end

												argument2.Callback(value)

												if flyteBBState and flyteBBState.RefreshKeybinds then
													task.defer(flyteBBState.RefreshKeybinds)
												end
											end

											local value110 = dragInputChanged()
											table27.holderWidth = value110

											table27.buttonFrame = newInstance(uiConstants[170], {
												Name = "DropdownButton",
												Active = uiConstants[200],
												BackgroundColor3 = argument.Library.config.Colors.Element,
												Position = UDim2.new(1, -value109 - uiConstants[115], 0, elementYPos),
												BorderColor3 = argument.Library.config.Colors.Black,
												BorderSizePixel = 0,
												Size = UDim2.new(uiConstants[33], value109, 0, 21),
												Parent = argument.mainFrame,
											})

											if argument2.Detachable then
												table27.dockFrame = newInstance("Frame", {
													Name = "DropdownDock",
													BackgroundTransparency = uiConstants[18],
													Position = table27.buttonFrame.Position,
													Size = table27.buttonFrame.Size,
													Parent = argument.mainFrame,
												})

												newInstance("UICorner", { CornerRadius = UDim.new(uiConstants[33], 8), Parent = table27.dockFrame })

												table27.dockStroke = newInstance("UIStroke", {
													Color = argument.Library.config.Colors.AccentLight,
													Thickness = 1.5,
													Transparency = 1,
													ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
													Parent = table27.dockFrame,
												})
											end

											newInstance("UICorner", { Name = uiConstants[137], CornerRadius = UDim.new(0, 8), Parent = table27.buttonFrame })
											local UIStroke = newInstance("UIStroke", { Name = "UIStroke", Color = argument.Library.config.Colors.BorderSoft, Parent = table27.buttonFrame })

											table27.selectedLabelText = newInstance("TextLabel", {
												Name = "SelectedLabel",
												FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
												TextColor3 = argument.Library.config.Colors.SubText,
												Text = value107,
												BackgroundColor3 = argument.Library.config.Colors.White,
												BackgroundTransparency = 1,
												Position = UDim2.new(uiConstants[33], 8, 0, 0),
												BorderSizePixel = 0,
												BorderColor3 = Color3.new(),
												TextSize = 14,
												Size = UDim2.new(1, -28, 1, uiConstants[33]),
												TextXAlignment = Enum.TextXAlignment.Left,
												TextTruncate = Enum.TextTruncate.AtEnd,
												Parent = table27.buttonFrame,
											})

											table27.arrowImg = newInstance("ImageLabel", {
												Name = "DropdownArrow",
												ImageColor3 = argument.Library.config.Colors.Muted,
												BackgroundColor3 = argument.Library.config.Colors.White,
												Image = "rbxassetid://127296511745226",
												BackgroundTransparency = 1,
												Position = UDim2.new(1, -uiConstants[30], 0.5, -7),
												BorderColor3 = Color3.new(),
												BorderSizePixel = 0,
												Size = UDim2.new(0, 14, 0, uiConstants[46]),
												Parent = table27.buttonFrame,
											})

											newInstance("UIAspectRatioConstraint", { Name = "UIAspectRatioConstraint", Parent = table27.arrowImg })
											local condition18 = not argument2.NoSearch and #argument2.Options >= uiConstants[35]
											local n32 = condition18 and 30 or 0

											table27.optionHolderFrame = newInstance("Frame", {
												Name = "DropdownOptionHolder",
												Active = true,
												BackgroundColor3 = argument.Library.config.Colors.Element,
												Position = UDim2.new(0, 0, 0, uiConstants[33]),
												BorderColor3 = argument.Library.config.Colors.Black,
												BorderSizePixel = 0,
												Size = UDim2.new(0, value110, 0, uiConstants[33]),
												ClipsDescendants = true,
												Visible = false,
												ZIndex = 9999,
												Parent = argument.Library.dropdownHolderRef,
											})

											table.insert(argument.Library.dropdownFrames, table27.optionHolderFrame)
											table27.holderScale = newInstance("UIScale", { Name = "DropdownHolderScale", Scale = uiConstants[198], Parent = table27.optionHolderFrame })
											newInstance("UICorner", { Name = "UICorner", CornerRadius = UDim.new(0, uiConstants[35]), Parent = table27.optionHolderFrame })
											newInstance("UIStroke", { Name = "UIStroke", Color = argument.Library.config.Colors.BorderSoft, Parent = table27.optionHolderFrame })
											local str6 = ""

											if condition18 then
												local Frame = newInstance("Frame", {
													Name = "SearchFrame",
													BackgroundColor3 = argument.Library.config.Colors.Element,
													BackgroundTransparency = uiConstants[33],
													Position = UDim2.new(0, 8, 0, uiConstants[157]),
													Size = UDim2.new(uiConstants[18], -16, 0, 24),
													BorderSizePixel = uiConstants[33],
													ZIndex = 10005,
													Parent = table27.optionHolderFrame,
												})

												newInstance("UICorner", { Name = "UICorner", CornerRadius = UDim.new(0, 6), Parent = Frame })

												newInstance(uiConstants[131], {
													Name = "SearchStroke",
													Color = argument.Library.config.Colors.BorderSoft,
													Thickness = 1,
													Parent = Frame,
												})

												newInstance("ImageLabel", {
													Name = uiConstants[38],
													Image = "rbxassetid://117707949657765",
													ImageColor3 = argument.Library.config.Colors.Muted,
													BackgroundTransparency = 1,
													Position = UDim2.new(0, 6, 0.5, -6),
													Size = UDim2.new(0, 12, uiConstants[33], uiConstants[49]),
													ZIndex = uiConstants[34],
													Parent = Frame,
												})

												table27.searchBox = newInstance("TextBox", {
													Name = uiConstants[194],
													FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
													TextColor3 = argument.Library.config.Colors.Text,
													PlaceholderText = "search...",
													PlaceholderColor3 = argument.Library.config.Colors.Muted,
													Text = "",
													TextSize = 14,
													BackgroundTransparency = uiConstants[18],
													Position = UDim2.new(0, uiConstants[19], 0, uiConstants[33]),
													Size = UDim2.new(1, -30, 1, 0),
													TextXAlignment = Enum.TextXAlignment.Left,
													ClearTextOnFocus = false,
													ZIndex = 10006,
													Parent = Frame,
												})
											end

											table27.optionContainerFrame = newInstance("ScrollingFrame", {
												Name = uiConstants[28],
												BackgroundTransparency = 1,
												Position = UDim2.new(0, 0, uiConstants[33], condition18 and n32 + 4 or 0),
												Size = UDim2.new(1, 0, 1, condition18 and -(n32 + 4) or 0),
												ZIndex = 10000,
												ScrollBarThickness = 3,
												ScrollBarImageColor3 = argument.Library.config.Colors.Muted,
												ScrollBarImageTransparency = 0.5,
												AutomaticCanvasSize = Enum.AutomaticSize.Y,
												CanvasSize = UDim2.new(0, 0, 0, 0),
												Parent = table27.optionHolderFrame,
											})

											newInstance("UIPadding", {
												Name = "DropdownPadding",
												PaddingTop = UDim.new(0, condition18 and 4 or 8),
												PaddingBottom = UDim.new(0, 8),
												PaddingLeft = UDim.new(0, 12),
												PaddingRight = UDim.new(0, uiConstants[49]),
												Parent = table27.optionContainerFrame,
											})

											newInstance("UIListLayout", {
												Name = "DropdownListLayout",
												Padding = UDim.new(0, 7),
												SortOrder = Enum.SortOrder.LayoutOrder,
												Parent = table27.optionContainerFrame,
											})

											local function valueFunction55(argument3)
												for _, child in pairs(table27.optionContainerFrame:GetChildren()) do
													if child:IsA("TextLabel") or child:IsA(uiConstants[39]) then
														child:Destroy()
													end
												end

												local table28 = {}

												if argument3 and argument3 ~= "" then
													local remoteEvent = string.lower(argument3)

													for _, option in ipairs(argument2.Options) do
														if #table28 < uiConstants[169] and string.find(string.lower(option), remoteEvent, 1, true) then
															table.insert(table28, option)
														end
													end
												else
													for i = 1, math.min(#argument2.Options, uiConstants[169]) do
														table.insert(table28, argument2.Options[i])
													end
												end

												local n33 = #argument2.Options
												local condition19 = n33 > 50

												if condition19 then
													condition19 = not (argument3 and argument3 ~= "")
												end

												if condition19 then
													local n34 = n33 - uiConstants[169]

													newInstance(uiConstants[65], {
														Name = "TruncationHint",
														FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
														TextColor3 = argument.Library.config.Colors.Muted,
														Text = "... and " .. n34 .. " more (use search)",
														BackgroundTransparency = 1,
														BorderSizePixel = 0,
														TextSize = 11,
														Size = UDim2.new(1, 0, 0, 16),
														TextXAlignment = Enum.TextXAlignment.Left,
														ZIndex = uiConstants[86],
														LayoutOrder = 51,
														Parent = table27.optionContainerFrame,
													})
												end

												for i, remoteEvent in ipairs(table28) do
													local condition20 = table27.value == remoteEvent

													local TextButton = newInstance("TextButton", {
														Name = "OptionClickButton",
														Text = "",
														AutoButtonColor = false,
														BackgroundTransparency = 1,
														BorderSizePixel = uiConstants[33],
														Size = UDim2.new(uiConstants[18], 0, uiConstants[33], uiConstants[108]),
														LayoutOrder = i,
														ZIndex = 10002,
														Parent = table27.optionContainerFrame,
													})

													TextButton:SetAttribute("OptionValue", remoteEvent)
													local remoteAction = dragHandler(remoteEvent)

													local TextLabel = newInstance("TextLabel", {
														Name = uiConstants[121],
														FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
														TextColor3 = condition20 and argument.Library.config.Colors.AccentLight or argument.Library.config.Colors.SubText,
														Text = remoteEvent,
														BackgroundColor3 = argument.Library.config.Colors.White,
														BackgroundTransparency = 1,
														Position = UDim2.new(0, 0, 0, 0),
														BorderSizePixel = 0,
														BorderColor3 = Color3.new(),
														TextSize = 14,
														Size = UDim2.new(1, -uiConstants[19], 1, uiConstants[33]),
														TextXAlignment = Enum.TextXAlignment.Left,
														ZIndex = uiConstants[86],
														Parent = TextButton,
													})

													local signal = createKeybindPill(TextButton, remoteAction, function(argument4)
														TextLabel.Size = UDim2.new(1, -(argument4 + 44), uiConstants[18], 0)
														return UDim2.new(uiConstants[18], -argument4 - 28, 0.5, -7)
													end, 15, 10004, nil, {
														Group = text5,
														Name = remoteEvent,
														Parent = groupConfig.Name,
														DisplayMode = "select",
														GetState = function()
															return table27.value == remoteEvent
														end,
													})

													newInstance("ImageLabel", {
														Name = "OptionCheck",
														Image = "rbxassetid://114461119629011",
														ImageColor3 = argument.Library.config.Colors.AccentLight,
														BackgroundTransparency = 1,
														AnchorPoint = Vector2.new(1, 0.5),
														Position = condition20 and UDim2.new(1, -4, uiConstants[81], 0) or UDim2.new(1, uiConstants[36], 0.5, uiConstants[33]),
														Size = UDim2.new(uiConstants[33], 14, uiConstants[33], 14),
														BorderSizePixel = 0,
														ZIndex = 10003,
														Parent = TextButton,
													})

													TextButton.MouseButton1Click:Connect(function()
														valueFunction54(remoteEvent)
													end)

													TextButton.InputBegan:Connect(function(input)
														if input.UserInputType == Enum.UserInputType.MouseButton2 and signal then
															signal:OpenMode(input.Position)
														end
													end)

													TextButton.MouseEnter:Connect(function()
														if not table27.isOpen then
															return
														end

														if table27.value ~= remoteEvent then
															playTween(TextLabel, { TextColor3 = argument.Library.config.Colors.TextHover }, 0.2)
														end
													end)

													TextButton.MouseLeave:Connect(function()
														if not table27.isOpen then
															return
														end

														if table27.value ~= remoteEvent then
															playTween(TextLabel, { TextColor3 = argument.Library.config.Colors.SubText }, 0.2)
														end
													end)
												end
											end

											table27.optionsBuilt = uiConstants[101]

											if condition18 and table27.searchBox then
												table27.searchBox:GetPropertyChangedSignal(uiConstants[133]):Connect(function()
													str6 = string.lower(table27.searchBox.Text)
													valueFunction55(str6 ~= "" and str6 or nil)
												end)
											end

											local remoteEvent = newInstance(uiConstants[39], {
												Name = "DropdownClickButton",
												Text = "",
												AutoButtonColor = false,
												BackgroundTransparency = 1,
												BorderSizePixel = 0,
												Size = UDim2.new(1, 0, uiConstants[18], 0),
												ZIndex = 100,
												Parent = table27.buttonFrame,
											})

											table27.detached = false
											local position = nil
											local absolutePosition = nil
											local remoteAction = nil
											local n33 = nil
											local condition19 = false
											local condition20 = false
											local condition21 = nil
											local signal = nil

											local function valueFunction56(argument3, argument4)
												local absolutePosition2 = argument3.AbsolutePosition
												local absoluteSize = argument3.AbsoluteSize
												local absolutePosition3 = argument4.AbsolutePosition
												local absoluteSize2 = argument4.AbsoluteSize
												return absolutePosition2.X <= absolutePosition3.X + absoluteSize2.X and absolutePosition2.X + absoluteSize.X >= absolutePosition3.X and absolutePosition2.Y <= absolutePosition3.Y + absoluteSize2.Y and absolutePosition2.Y + absoluteSize.Y >= absolutePosition3.Y
											end

											local function valueFunction57(argument3)
												if not table27.dockStroke then
													return
												end
												argument3 = argument3 and argument.Library.isToggledOn == true
												if signal == argument3 then
													return
												end
												signal = argument3
												playTween(table27.dockStroke, { Transparency = argument3 and 0.1 or 1 }, 0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
											end

											local function valueFunction58()
												if table27.detached then
													return
												end
												local scale = argument.Library.dropdownHolderScale and argument.Library.dropdownHolderScale.Scale or 1
												local absolutePosition2 = table27.buttonFrame.AbsolutePosition
												table27.buttonFrame.Parent = argument.Library.dropdownHolderRef
												table27.buttonFrame.Position = UDim2.fromOffset(absolutePosition2.X / scale, absolutePosition2.Y / scale)
												table27.detached = uiConstants[200]

												if argument.Library.detachedDropdowns then
													argument.Library.detachedDropdowns[table27] = true
												end
											end

											local function valueFunction59(argument3)
												if not table27.detached or condition21 then
													return
												end
												condition21 = true
												valueFunction57(false)
												local scale = argument.Library.dropdownHolderScale and argument.Library.dropdownHolderScale.Scale or 1
												local absolutePosition2 = table27.dockFrame.AbsolutePosition

												playTween(table27.buttonFrame, { Position = UDim2.fromOffset(absolutePosition2.X / scale, absolutePosition2.Y / scale) }, uiConstants[136], Enum.EasingStyle.Quint, Enum.EasingDirection.Out).Completed:Once(function()
													if not table27.buttonFrame or not table27.buttonFrame.Parent then
														return
													end
													table27.buttonFrame.Parent = argument.mainFrame
													table27.buttonFrame.Position = table27.dockFrame.Position
													table27.buttonFrame.Visible = uiConstants[200]
													table27.detached = false

													if argument.Library.detachedDropdowns then
														argument.Library.detachedDropdowns[table27] = nil
													end

													condition21 = false

													if argument3 then
														table27:Close()
													end
												end)
											end

											if argument2.Detachable then
												remoteEvent.InputBegan:Connect(function(input)
													if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then
														return
													end
													position = input.Position
													absolutePosition = table27.buttonFrame.AbsolutePosition
													remoteAction = input
													n33 = input.UserInputType == Enum.UserInputType.Touch and 14 or uiConstants[174]
													condition19 = uiConstants[101]
													condition20 = uiConstants[101]
												end)

												trackConnection(userInputService.InputChanged:Connect(function(input)
													if not remoteAction or input.UserInputType ~= Enum.UserInputType.MouseMovement and input.UserInputType ~= Enum.UserInputType.Touch then
														return
													end

													if input.UserInputType == Enum.UserInputType.Touch and input ~= remoteAction then
														return
													end
													local n34 = input.Position - position
													if not condition19 and n34.Magnitude < n33 then
														return
													end

													if not condition19 then
														condition19 = uiConstants[200]
														condition20 = true
														valueFunction58()
													end

													local scale = argument.Library.dropdownHolderScale and argument.Library.dropdownHolderScale.Scale or 1
													table27.buttonFrame.Position = UDim2.fromOffset((absolutePosition.X + n34.X) / scale, (absolutePosition.Y + n34.Y) / scale)
													valueFunction57(valueFunction56(table27.buttonFrame, table27.dockFrame))
												end))

												trackConnection(userInputService.InputEnded:Connect(function(input)
													if input ~= remoteAction then
														return
													end
													remoteAction = nil
													if not condition19 then
														return
													end

													if argument.Library.isToggledOn and valueFunction56(table27.buttonFrame, table27.dockFrame) then
														valueFunction59(uiConstants[101])
													else
														valueFunction57(false)
													end
												end))
											end

											local function valueFunction60()
												local absolutePosition2 = table27.buttonFrame.AbsolutePosition
												local absoluteSize = table27.buttonFrame.AbsoluteSize
												local scale = argument.Library.dropdownHolderScale and argument.Library.dropdownHolderScale.Scale or 1
												playTween(table27.optionHolderFrame, { Position = UDim2.new(uiConstants[33], absolutePosition2.X / scale, 0, (absolutePosition2.Y + absoluteSize.Y + 10) / scale) }, 0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
											end

											table27.followConn = nil
											table27.outsideConn = nil

											local function valueFunction61(argument3, argument4)
												local absolutePosition2 = argument3.AbsolutePosition
												local absoluteSize = argument3.AbsoluteSize
												return argument4.X >= absolutePosition2.X and argument4.X <= absolutePosition2.X + absoluteSize.X and argument4.Y >= absolutePosition2.Y and argument4.Y <= absolutePosition2.Y + absoluteSize.Y
											end

											table27.Open = function()
												if table27.isOpen then
													return
												end
												argument2.OnOpen()

												if not table27.optionsBuilt then
													if not condition18 then
														valueFunction55()
													end

													table27.optionsBuilt = true
												end

												for key in pairs(argument.Library.openDropdowns) do
													if key ~= table27 and key.Close then
														key:Close()
													end
												end

												table27.isOpen = true
												table27.optionHolderFrame.Parent = argument.Library.dropdownHolderRef
												local absolutePosition2 = table27.buttonFrame.AbsolutePosition
												local absoluteSize = table27.buttonFrame.AbsoluteSize
												local scale = argument.Library.dropdownHolderScale and argument.Library.dropdownHolderScale.Scale or 1
												table27.optionHolderFrame.Position = UDim2.new(uiConstants[33], absolutePosition2.X / scale, uiConstants[33], (absolutePosition2.Y + absoluteSize.Y) / scale)
												table27.optionHolderFrame.Size = UDim2.new(uiConstants[33], table27.holderWidth, uiConstants[33], uiConstants[33])
												table27.optionHolderFrame.Visible = uiConstants[200]
												table27.holderScale.Scale = 0.9
												local n34 = math.min(#argument2.Options, 50)
												local n35 = math.min(16 + n34 * 20 + math.max(n34 - 1, 0) * 7 + (condition18 and n32 + 4 or 0), 300)

												if condition18 and table27.searchBox then
													table27.searchBox.Text = ""
													str6 = ""
													valueFunction55()
												end

												playTween(table27.optionHolderFrame, {
													Position = UDim2.new(uiConstants[33], absolutePosition2.X / scale, 0, (absolutePosition2.Y + absoluteSize.Y + 10) / scale),
													Size = UDim2.new(0, table27.holderWidth, 0, n35),
												}, 0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

												playTween(table27.holderScale, { Scale = uiConstants[18] }, 0.45, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
												playTween(table27.arrowImg, { Rotation = -uiConstants[91] }, 0.25)

												if table27.followConn then
													table27.followConn:Disconnect()
												end

												table27.followConn = table27.buttonFrame:GetPropertyChangedSignal("AbsolutePosition"):Connect(valueFunction60)
												disconnectTrackedConnection(table27.outsideConn)

												table27.outsideConn = trackConnection(userInputService.InputBegan:Connect(function(input)
													if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then
														return
													end

													if not table27.isOpen then
														return
													end

													if table27.detached then
														return
													end

													if valueFunction61(table27.buttonFrame, input.Position) or valueFunction61(table27.optionHolderFrame, input.Position) then
														return
													end
													table27:Close()
												end))

												argument.Library.openDropdowns[table27] = table27
											end

											table27.Close = function()
												if not table27.isOpen then
													return
												end
												table27.isOpen = false
												local absolutePosition2 = table27.buttonFrame.AbsolutePosition
												local absoluteSize = table27.buttonFrame.AbsoluteSize
												local scale = argument.Library.dropdownHolderScale and argument.Library.dropdownHolderScale.Scale or 1

												playTween(table27.optionHolderFrame, {
													Position = UDim2.new(0, absolutePosition2.X / scale, 0, (absolutePosition2.Y + absoluteSize.Y - 10) / scale),
													Size = UDim2.new(0, table27.holderWidth, 0, 0),
												}, uiConstants[100], Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

												playTween(table27.holderScale, { Scale = uiConstants[198] }, 0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
												playTween(table27.arrowImg, { Rotation = 0 }, 0.3)

												if table27.followConn then
													table27.followConn:Disconnect()
													table27.followConn = nil
												end

												if table27.outsideConn then
													disconnectTrackedConnection(table27.outsideConn)
													table27.outsideConn = nil
												end

												argument.Library.openDropdowns[table27] = nil

												task.delay(0.3, function()
													if not table27.isOpen and table27.optionHolderFrame then
														table27.optionHolderFrame.Visible = false
														table27.optionHolderFrame.Parent = nil
													end
												end)

												playTween(table27.buttonFrame, { BackgroundColor3 = argument.Library.config.Colors.Element }, uiConstants[113])
												playTween(UIStroke, { Color = argument.Library.config.Colors.BorderSoft }, 0.2)
												playTween(table27.selectedLabelText, { TextColor3 = argument.Library.config.Colors.SubText }, 0.2)
												playTween(table27.arrowImg, { ImageColor3 = argument.Library.config.Colors.Muted }, 0.2)
											end

											remoteEvent.MouseButton1Click:Connect(function()
												if condition20 then
													return
												end

												if table27.isOpen then
													table27:Close()
												else
													table27:Open()
												end
											end)

											remoteEvent.MouseEnter:Connect(function()
												playTween(table27.buttonFrame, { BackgroundColor3 = argument.Library.config.Colors.ElementHover }, 0.2)
												playTween(UIStroke, { Color = argument.Library.config.Colors.Border }, 0.2)
												playTween(table27.selectedLabelText, { TextColor3 = argument.Library.config.Colors.TextHover }, uiConstants[113])
												playTween(table27.arrowImg, { ImageColor3 = argument.Library.config.Colors.TextHover }, 0.2)
											end)

											remoteEvent.MouseLeave:Connect(function()
												if table27.isOpen then
													return
												end
												playTween(table27.buttonFrame, { BackgroundColor3 = argument.Library.config.Colors.Element }, 0.2)
												playTween(UIStroke, { Color = argument.Library.config.Colors.BorderSoft }, 0.2)
												playTween(table27.selectedLabelText, { TextColor3 = argument.Library.config.Colors.SubText }, 0.2)
												playTween(table27.arrowImg, { ImageColor3 = argument.Library.config.Colors.Muted }, uiConstants[113])
											end)

											table27.Set = function(argument3, value)
												local condition22 = nil

												for _, value114 in argument2.Options, nil, nil do
													if value == value114 then
														condition22 = true
														break
													else
														condition22 = nil
													end
												end

												value = condition22 and value or argument2.Default
												local value2 = table27.value
												table27.value = value
												local value114, originalFireServer, closureFactory = resolveKeyCode()
												table27.selectedLabelText.Text = value114
												valueFunction53(originalFireServer, closureFactory)

												for _, child in pairs(table27.optionContainerFrame:GetChildren()) do
													if child:IsA("TextButton") then
														local attribute = child:GetAttribute("OptionValue")

														if attribute == value or attribute == value2 then
															local fireServerHook = child:FindFirstChild(uiConstants[121])
															local optionCheck = child:FindFirstChild("OptionCheck")
															local condition23 = attribute == table27.value

															if fireServerHook then
																fireServerHook.TextColor3 = condition23 and argument.Library.config.Colors.AccentLight or argument.Library.config.Colors.SubText
															end

															if optionCheck then
																optionCheck.Position = condition23 and UDim2.new(uiConstants[18], -4, uiConstants[81], 0) or UDim2.new(1, 30, 0.5, uiConstants[33])
															end
														end
													end
												end

												if not argument2.NoSave then
													table19.Dropdowns[dropdown] = value
													saveConfig()
												end

												argument2.Callback(value)

												if flyteBBState and flyteBBState.RefreshKeybinds then
													task.defer(flyteBBState.RefreshKeybinds)
												end
											end

											table27.Refresh = function(argument3, options)
												argument2.Options = options
												table27.optionsBuilt = uiConstants[200]
												table27.holderWidth = dragInputChanged()
												local value114, originalFireServer, closureFactory = resolveKeyCode()
												table27.selectedLabelText.Text = value114
												valueFunction53(originalFireServer, closureFactory)
												table27.optionHolderFrame.Size = UDim2.new(0, table27.holderWidth, uiConstants[33], table27.optionHolderFrame.Size.Y.Offset)
												valueFunction55()
											end

											table27:Set(table27.value)
											table27.optionHolderFrame.Parent = nil
											local value = nil

											for _, option in ipairs(argument2.Options) do
												local value114 = dragHandler(option)

												table12.SetMeta(value114, {
													Group = text5,
													Name = option,
													Parent = groupConfig.Name,
													DisplayMode = "select",
													GetState = function()
														return table27.value == option
													end,
												})

												table12.Register(value114, function(argument3, argument4)
													if argument4 == uiConstants[99] then
														if argument3 then
															value = table27.value
															valueFunction54(option)
															return
														end

														if value and value ~= option then
															valueFunction54(value)
														end

														value = nil
														return
													end

													if argument3 then
														valueFunction54(option)
													end
												end)
											end

											argument.elementYPos = argument.elementYPos + 28
											updateSize()
											table.insert(argument.elementsInGroup, table27)
											return table27
										end

										local function addTextbox(argument, argument2)
											local textService = obj[argument]
											local tabConfig = textService.TabConfig
											local groupConfig = textService.GroupConfig
											local updateSize = textService.UpdateSize
											argument2 = argument2 or {}
											argument2.Name = argument2.Name or "Textbox"
											argument2.Placeholder = argument2.Placeholder or ""
											argument2.Default = argument2.Default or ""

											argument2.Callback = argument2.Callback or function()
											end

											local table27 = {}
											local value106 = normalizeSettingName(argument2.SaveId or tabConfig.Name .. ":" .. groupConfig.Name .. ":" .. argument2.Name)
											local value107 = getProperty(table19.Textboxes, value106, argument2.NoSave)
											local value108 = uiConstants[127]
											table27.value = type(value107) == value108 and value107 or argument2.Default
											table27.SaveId = value106
											table27.DefaultValue = argument2.Default
											local elementYPos = argument.elementYPos

											table27.labelText = newInstance("TextLabel", {
												Name = "TextboxLabel",
												FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
												TextColor3 = argument.Library.config.Colors.SubText,
												Text = argument2.Name,
												BackgroundColor3 = argument.Library.config.Colors.White,
												BackgroundTransparency = 1,
												Position = UDim2.new(0, uiConstants[115], uiConstants[33], elementYPos),
												BorderSizePixel = 0,
												BorderColor3 = Color3.new(),
												TextSize = 14,
												Size = UDim2.new(0, 130, 0, 20),
												TextXAlignment = Enum.TextXAlignment.Left,
												Parent = argument.mainFrame,
											})

											table27.inputFrame = newInstance("Frame", {
												Name = uiConstants[87],
												BackgroundColor3 = argument.Library.config.Colors.Element,
												Position = UDim2.new(uiConstants[33], 10, 0, elementYPos + 22),
												BorderColor3 = argument.Library.config.Colors.Black,
												BorderSizePixel = 0,
												Size = UDim2.new(0, 238, 0, 26),
												Parent = argument.mainFrame,
											})

											newInstance("UICorner", { Name = "UICorner", CornerRadius = UDim.new(0, 6), Parent = table27.inputFrame })
											local value109 = newInstance(uiConstants[131], { Name = "UIStroke", Color = argument.Library.config.Colors.BorderSoft, Parent = table27.inputFrame })
											local value110 = newInstance
											local table28 = { Name = "UIGradient" }
											local colorSequence = ColorSequence.new
											local table29 = {}
											local remoteEvent = ColorSequenceKeypoint.new(uiConstants[33], argument.Library.config.Colors.Text)
											local remoteAction = ColorSequenceKeypoint.new(0.493, argument.Library.config.Colors.AccentLight)
											local signal = ColorSequenceKeypoint.new(0.509, argument.Library.config.Colors.AccentLight)
											table29[1] = remoteEvent
											table29[2] = remoteAction
											table29[3] = signal

											do
												local values = table.pack(ColorSequenceKeypoint.new(1, argument.Library.config.Colors.Text))
												table.move(values, 1, values.n, 4, table29)
											end

											table28.Color = colorSequence(table29)
											table28.Rotation = 260
											table28.Parent = value109
											value110("UIGradient", table28)

											table27.textbox = newInstance(uiConstants[9], {
												Name = "TextboxInput",
												FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
												TextColor3 = argument.Library.config.Colors.Text,
												PlaceholderColor3 = argument.Library.config.Colors.SubText,
												Text = table27.value,
												PlaceholderText = argument2.Placeholder,
												BackgroundTransparency = 1,
												Position = UDim2.new(0, 8, 0, uiConstants[33]),
												BorderSizePixel = uiConstants[33],
												BorderColor3 = Color3.new(),
												TextSize = uiConstants[11],
												Size = UDim2.new(1, -uiConstants[30], 1, 0),
												TextXAlignment = Enum.TextXAlignment.Left,
												ClearTextOnFocus = uiConstants[101],
												TextEditable = true,
												Parent = table27.inputFrame,
											})

											table27.Set = function(argument3, argument4)
												table27.value = tostring(argument4 or "")
												table27.textbox.Text = table27.value

												if not argument2.NoSave then
													table19.Textboxes[value106] = table27.value
													saveConfig()
												end

												argument2.Callback(table27.value)
											end

											local table30 = {}

											local function dragHandler()
												local parent = table27.textbox.Parent

												while parent and parent ~= game do
													if parent:IsA("ScrollingFrame") and parent.ScrollingEnabled then
														parent.ScrollingEnabled = false
														table.insert(table30, parent)
													end

													parent = parent.Parent
												end
											end

											local function resolveKeyCode()
												for _, value114 in ipairs(table30) do
													if value114 and value114.Parent then
														value114.ScrollingEnabled = uiConstants[200]
													end
												end

												table.clear(table30)
											end

											local condition18 = false
											local value114 = nil
											local originalFireServer = nil
											local connection = nil

											local function dragInputChanged(argument3)
												local textbox = table27.textbox
												local text = textbox.Text
												local cursorPosition = textbox.CursorPosition
												local selectionStart = textbox.SelectionStart

												if selectionStart and selectionStart > 0 and cursorPosition and cursorPosition > 0 and selectionStart ~= cursorPosition then
													local cursorPosition2 = math.min(selectionStart, cursorPosition)
													local closureFactory = uiConstants[18]
													local n32 = math.max(selectionStart, cursorPosition) - closureFactory
													textbox.Text = text:sub(1, cursorPosition2 - 1) .. text:sub(n32 + 1)
													textbox.CursorPosition = cursorPosition2
													textbox.SelectionStart = cursorPosition2
													return
												end

												if not cursorPosition or cursorPosition <= 1 then
													return
												end
												local cursorPosition2 = math.max(1, cursorPosition - argument3)
												textbox.Text = text:sub(1, cursorPosition2 - 1) .. text:sub(cursorPosition - 1 + 1)
												textbox.CursorPosition = cursorPosition2
												textbox.SelectionStart = cursorPosition2
											end

											local function valueFunction53()
												local condition19 = condition18

												if not condition18 then
													local textbox = table27.textbox
													condition19 = userInputService:GetFocusedTextBox() ~= textbox
												end

												if condition19 then
													return
												end
												condition18 = true

												task.spawn(function()
													task.wait(0.35)
													local now2 = os.clock()

													while true do
														local condition20 = condition18

														if condition18 then
															local textbox = table27.textbox
															condition20 = userInputService:GetFocusedTextBox() == textbox
														end

														if condition20 then
															local n32 = os.clock() - now2
															local n33 = math.clamp(math.floor(n32 * n32 * 10) + 1, 1, 90)
															dragInputChanged(n33)
															task.wait(math.max(0.03, 0.08 - n32 * 0.01))
															continue
														end

														break
													end
												end)
											end

											local function valueFunction54()
												condition18 = uiConstants[101]
											end

											local function valueFunction55()
												disconnectTrackedConnection(value114)
												disconnectTrackedConnection(originalFireServer)

												if connection then
													connection:Disconnect()
												end

												value114 = trackConnection(userInputService.InputBegan:Connect(function(input)
													local condition19 = input.KeyCode == Enum.KeyCode.Backspace

													if condition19 then
														local textbox = table27.textbox
														condition19 = userInputService:GetFocusedTextBox() == textbox
													end

													if condition19 then
														valueFunction53()
													end
												end))

												originalFireServer = trackConnection(userInputService.InputEnded:Connect(function(input)
													if input.KeyCode == Enum.KeyCode.Backspace then
														valueFunction54()
													end
												end))

												connection = table27.textbox:GetPropertyChangedSignal("Text"):Connect(function()
													local textbox = table27.textbox

													if userInputService:GetFocusedTextBox() == textbox and userInputService:IsKeyDown(Enum.KeyCode.Backspace) then
														valueFunction53()
													end
												end)
											end

											local function valueFunction56()
												valueFunction54()
												disconnectTrackedConnection(value114)
												value114 = nil
												disconnectTrackedConnection(originalFireServer)
												originalFireServer = nil

												if connection then
													connection:Disconnect()
													connection = nil
												end
											end

											table27.textbox.Focused:Connect(function()
												dragHandler()
												valueFunction55()

												if touchEnabled then
													task.defer(function()
														local textbox = table27.textbox

														if userInputService:GetFocusedTextBox() == textbox then
															table27.textbox.CursorPosition = #table27.textbox.Text + 1
															table27.textbox.SelectionStart = uiConstants[18]
														end
													end)
												end

												playTween(table27.inputFrame, { BackgroundColor3 = argument.Library.config.Colors.ElementHover }, 0.2)
												playTween(value109, { Color = argument.Library.config.Colors.Border }, 0.2)
												playTween(table27.labelText, { TextColor3 = argument.Library.config.Colors.Text }, uiConstants[113])
												playTween(table27.textbox, { TextColor3 = argument.Library.config.Colors.Text }, uiConstants[113])
											end)

											table27.textbox.FocusLost:Connect(function()
												valueFunction56()
												resolveKeyCode()
												table27.value = table27.textbox.Text
												playTween(table27.inputFrame, { BackgroundColor3 = argument.Library.config.Colors.Element }, 0.2)
												playTween(value109, { Color = argument.Library.config.Colors.BorderSoft }, 0.2)
												playTween(table27.labelText, { TextColor3 = argument.Library.config.Colors.SubText }, 0.2)
												playTween(table27.textbox, { TextColor3 = argument.Library.config.Colors.Text }, 0.2)

												if not argument2.NoSave then
													table19.Textboxes[value106] = table27.value
													saveConfig()
												end

												argument2.Callback(table27.value)
											end)

											argument2.Callback(table27.value)
											argument.elementYPos = argument.elementYPos + 56
											updateSize()
											table.insert(argument.elementsInGroup, table27)
											return table27
										end

										local function addDivider(argument)
											local updateSize = obj[argument].UpdateSize

											local Frame = newInstance("Frame", {
												Name = uiConstants[166],
												BackgroundColor3 = argument.Library.config.Colors.BorderSoft,
												BackgroundTransparency = 0.4,
												Position = UDim2.new(0, 14, 0, argument.elementYPos + 6),
												BorderSizePixel = uiConstants[33],
												Size = UDim2.new(uiConstants[18], -28, 0, 1),
												Parent = argument.mainFrame,
											})

											argument.elementYPos = argument.elementYPos + 14
											updateSize()
											return Frame
										end

										local function addSection(argument, argument2)
											local updateSize = obj[argument].UpdateSize
											argument2 = argument2 or "Section"
											local n32 = argument.elementYPos + uiConstants[115]

											local textService = newInstance(uiConstants[170], {
												Name = "SectionAccentBar",
												BackgroundColor3 = argument.Library.config.AccentColor,
												BorderSizePixel = uiConstants[33],
												Position = UDim2.new(uiConstants[33], 10, 0, n32 + 4),
												Size = UDim2.new(uiConstants[33], uiConstants[70], uiConstants[33], uiConstants[49]),
												Parent = argument.mainFrame,
											})

											newInstance("UICorner", { CornerRadius = UDim.new(1, 0), Parent = textService })

											newInstance("UIGradient", {
												Name = "SectionAccentGradient",
												Color = ColorSequence.new({
													ColorSequenceKeypoint.new(0, argument.Library.config.AccentColor),
													ColorSequenceKeypoint.new(1, argument.Library.config.Colors.AccentLight),
												}),
												Rotation = 90,
												Parent = textService,
											})

											newInstance("TextLabel", {
												Name = "SectionLabel",
												FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
												TextColor3 = argument.Library.config.Colors.Text,
												Text = argument2,
												BackgroundTransparency = uiConstants[18],
												Position = UDim2.new(uiConstants[33], 18, 0, n32),
												BorderSizePixel = 0,
												TextSize = uiConstants[49],
												Size = UDim2.new(uiConstants[18], -uiConstants[185], 0, uiConstants[108]),
												TextXAlignment = Enum.TextXAlignment.Left,
												Parent = argument.mainFrame,
											})

											newInstance("Frame", {
												Name = uiConstants[94],
												BackgroundColor3 = argument.Library.config.Colors.BorderSoft,
												BackgroundTransparency = 0.5,
												BorderSizePixel = 0,
												Position = UDim2.new(0, 18, 0, n32 + uiConstants[197]),
												Size = UDim2.new(uiConstants[18], -36, 0, 1),
												Parent = argument.mainFrame,
											})

											argument.elementYPos = n32 + 30
											updateSize()
										end

										local function addLabel(argument, argument2)
											local updateSize = obj[argument].UpdateSize
											argument2 = argument2 or {}
											argument2.Text = argument2.Text or "Label"
											local elementYPos = argument.elementYPos

											local textService = newInstance(uiConstants[65], {
												Name = uiConstants[60],
												FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
												TextColor3 = argument.Library.config.Colors.SubText,
												Text = argument2.Text,
												BackgroundColor3 = argument.Library.config.Colors.White,
												BackgroundTransparency = 1,
												Position = UDim2.new(uiConstants[33], 10, 0, elementYPos),
												BorderSizePixel = 0,
												BorderColor3 = Color3.new(),
												TextSize = uiConstants[46],
												Size = UDim2.new(0.92, uiConstants[33], 0, 20),
												TextXAlignment = Enum.TextXAlignment.Left,
												Parent = argument.mainFrame,
											})

											argument.elementYPos = argument.elementYPos + 24
											updateSize()
											return textService
										end

										addGroup = function(argument, argument2)
											local config = argument.Config
											argument2 = argument2 or {}
											argument2.Name = argument2.Name or uiConstants[1]
											argument2.Side = argument2.Side or "Left"
											argument2.Icon = argument2.Icon or "rbxassetid://10723427199"
											local table27 = { elementsInGroup = {}, Library = argument.Library, elementYPos = 35 }
											local leftColumnFrame = argument2.Side == uiConstants[150] and argument.leftColumnFrame or argument.rightColumnFrame

											table27.mainFrame = newInstance("Frame", {
												Name = uiConstants[176],
												Active = true,
												BackgroundColor3 = argument.Library.config.Colors.Secondary,
												Position = UDim2.new(0, uiConstants[18], 0, 0),
												BorderColor3 = argument.Library.config.Colors.Black,
												BorderSizePixel = 0,
												Size = UDim2.new(0, 260, 0, 50),
												Parent = leftColumnFrame,
											})

											local UIStroke = newInstance("UIStroke", { Name = uiConstants[131], Color = argument.Library.config.Colors.BorderSoft, Parent = table27.mainFrame })
											local textService = newInstance
											local table28 = { Name = "UIGradient" }
											local colorSequence = ColorSequence.new
											local table29 = {}
											local value106 = ColorSequenceKeypoint.new(0, argument.Library.config.Colors.Text)
											local value107 = ColorSequenceKeypoint.new(0.493, argument.Library.config.Colors.AccentLight)
											local value108 = ColorSequenceKeypoint.new(0.509, argument.Library.config.Colors.AccentLight)
											table29[1] = value106
											table29[2] = value107
											table29[3] = value108

											do
												local values = table.pack(ColorSequenceKeypoint.new(uiConstants[18], argument.Library.config.Colors.Text))
												table.move(values, 1, values.n, 4, table29)
											end

											table28.Color = colorSequence(table29)
											table28.Rotation = uiConstants[68]
											table28.Parent = UIStroke
											textService("UIGradient", table28)
											newInstance(uiConstants[137], { Name = uiConstants[137], CornerRadius = UDim.new(0, 11), Parent = table27.mainFrame })

											newInstance("UIAspectRatioConstraint", {
												Name = "UIAspectRatioConstraint",
												Parent = newInstance("ImageLabel", {
													Name = "GroupIcon",
													BorderColor3 = argument.Library.config.Colors.Black,
													BackgroundColor3 = argument.Library.config.Colors.White,
													Image = argument2.Icon,
													BackgroundTransparency = 1,
													Position = UDim2.new(0, 10, 0, 10),
													BorderSizePixel = uiConstants[33],
													Size = UDim2.new(uiConstants[33], 16, 0, 16),
													Parent = table27.mainFrame,
												}),
											})

											newInstance("TextLabel", {
												Name = "GroupName",
												FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
												TextColor3 = argument.Library.config.Colors.Text,
												Text = argument2.Name,
												BackgroundColor3 = argument.Library.config.Colors.White,
												BackgroundTransparency = 1,
												Position = UDim2.new(0, 32, uiConstants[33], uiConstants[35]),
												BorderSizePixel = 0,
												BorderColor3 = Color3.new(),
												TextSize = 15,
												Size = UDim2.new(0, 100, 0, 16),
												TextXAlignment = Enum.TextXAlignment.Left,
												Parent = table27.mainFrame,
											})

											local function updateSize(argument3)
												local n32 = table27.elementYPos + 10

												if argument3 and argument3 > uiConstants[33] then
													playTween(table27.mainFrame, { Size = UDim2.new(0, 260, 0, n32) }, argument3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
												else
													table27.mainFrame.Size = UDim2.new(0, 260, 0, n32)
												end
											end

											table27.UpdateSize = updateSize

											obj[table27] = {
												TabConfig = config,
												GroupConfig = argument2,
												UpdateSize = updateSize,
												CreateKeybindPill = function(argument3, argument4, argument5, arg6, arg7, arg8, arg9)
													local table30 = arg9 or {}
													local table31 = {}
													local value109 = table12.Get(argument4)
													local text5 = value109 == Enum.KeyCode.Unknown and "" or table12.Display(value109)
													local value110 = arg6 or uiConstants[186]

													if table30.Group then
														table12.SetMeta(argument4, {
															Group = table30.Group,
															Name = table30.Name or argument4,
															Parent = table30.Parent,
															DisplayMode = table30.DisplayMode,
															GetState = table30.GetState,
														})
													end

													local function dragHandler(arg10)
														return math.max(valueFunction47(arg10, 11, Enum.Font.GothamSemibold) + 24, table30.MinWidth or 0)
													end

													local function resolveKeyCode(arg10)
														if typeof(argument5) == "function" then
															return argument5(arg10)
														end
														return argument5
													end

													local remoteEvent = dragHandler(text5)

													table31.frame = newInstance("Frame", {
														Name = "KeybindPill",
														BackgroundColor3 = value109 == Enum.KeyCode.Unknown and table27.Library.config.Colors.Surface or table27.Library.config.Colors.Element,
														BackgroundTransparency = value109 == Enum.KeyCode.Unknown and 0.25 or 0,
														Position = resolveKeyCode(remoteEvent),
														BorderColor3 = table27.Library.config.Colors.Black,
														BorderSizePixel = 0,
														Size = UDim2.new(0, remoteEvent, 0, value110),
														ZIndex = arg7 or 5,
														ClipsDescendants = uiConstants[200],
														Parent = argument3,
													})

													newInstance("UICorner", { Name = "UICorner", CornerRadius = UDim.new(1, 0), Parent = table31.frame })

													local UIStroke2 = newInstance("UIStroke", {
														Name = uiConstants[131],
														Color = table27.Library.config.Colors.BorderSoft,
														Transparency = value109 == Enum.KeyCode.Unknown and 0.35 or uiConstants[33],
														Parent = table31.frame,
													})

													table31.label = newInstance("TextLabel", {
														Name = "KeybindLabel",
														FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
														TextColor3 = value109 == Enum.KeyCode.Unknown and table27.Library.config.Colors.Muted or table27.Library.config.Colors.SubText,
														Text = text5,
														BackgroundTransparency = 1,
														Position = UDim2.new(0, 0, 0, uiConstants[33]),
														BorderSizePixel = 0,
														TextSize = 11,
														Size = UDim2.new(uiConstants[18], -18, 1, 0),
														TextXAlignment = Enum.TextXAlignment.Center,
														ZIndex = (arg7 or 5) + 1,
														Parent = table31.frame,
													})

													table31.keyboardIconImg = newInstance("ImageLabel", {
														Name = "KeyboardIcon",
														ImageColor3 = value109 == Enum.KeyCode.Unknown and table27.Library.config.Colors.Muted or table27.Library.config.Colors.SubText,
														BackgroundColor3 = table27.Library.config.Colors.White,
														Image = "rbxassetid://10723416765",
														BackgroundTransparency = uiConstants[18],
														Position = value109 == Enum.KeyCode.Unknown and UDim2.new(uiConstants[81], -5.5, uiConstants[81], -5) or UDim2.new(1, -16, 0.5, -5),
														BorderColor3 = Color3.new(),
														BorderSizePixel = 0,
														Size = UDim2.new(0, uiConstants[192], uiConstants[33], uiConstants[192]),
														ZIndex = (arg7 or 5) + 1,
														Parent = table31.frame,
													})

													newInstance("UIAspectRatioConstraint", { Name = "UIAspectRatioConstraint", Parent = table31.keyboardIconImg })

													local remoteAction = newInstance(uiConstants[39], {
														Name = "KeybindHitbox",
														Text = "",
														AutoButtonColor = uiConstants[101],
														BackgroundTransparency = uiConstants[18],
														Size = UDim2.new(1, 0, 1, 0),
														ZIndex = (arg7 or 5) + uiConstants[70],
														Parent = table31.frame,
													})

													local Frame = nil
													local UIScale = nil
													local TextButton = nil
													local TextButton2 = nil
													local signal = nil

													local function dragInputChanged()
														if not TextButton or not TextButton2 then
															return
														end
														local value114 = table12.GetMode(argument4)

														playTween(TextButton, {
															BackgroundColor3 = value114 == "Hold" and table27.Library.config.AccentColor or table27.Library.config.Colors.Element,
														}, 0.22, Enum.EasingStyle.Quint)

														playTween(TextButton2, {
															BackgroundColor3 = value114 == "Toggle" and table27.Library.config.AccentColor or table27.Library.config.Colors.Element,
														}, 0.22, Enum.EasingStyle.Quint)
													end

													local function valueFunction53()
														if not Frame then
															return
														end
														local value114 = Frame
														local originalFireServer = UIScale

														if signal then
															disconnectTrackedConnection(signal)
															signal = nil
														end

														Frame = nil
														UIScale = nil
														TextButton = nil
														TextButton2 = nil

														if originalFireServer then
															playTween(originalFireServer, { Scale = 0.9 }, 0.18, Enum.EasingStyle.Quint, Enum.EasingDirection.In)
														end

														task.delay(0.2, function()
															if value114 and value114.Parent then
																value114:Destroy()
															end
														end)
													end

													local function valueFunction54(arg10)
														if Frame then
															valueFunction53()
															return
														end
														valueFunction53()
														local n32 = table31.frame.AbsolutePosition + Vector2.new(table31.frame.AbsoluteSize.X + 8, -uiConstants[72])
														arg10 = arg10 or n32

														Frame = newInstance("Frame", {
															Name = "KeybindModeWindow",
															BackgroundColor3 = table27.Library.config.Colors.Secondary,
															Position = UDim2.new(uiConstants[33], arg10.X, 0, arg10.Y),
															BorderColor3 = table27.Library.config.Colors.Black,
															BorderSizePixel = 0,
															Size = UDim2.new(uiConstants[33], 112, uiConstants[33], uiConstants[97]),
															ZIndex = 20000,
															Parent = table27.Library.dropdownHolderRef,
														})

														UIScale = newInstance("UIScale", { Name = "KeybindModeScale", Scale = 0.9, Parent = Frame })
														newInstance("UICorner", { Name = "UICorner", CornerRadius = UDim.new(uiConstants[33], 8), Parent = Frame })
														newInstance("UIStroke", { Name = "UIStroke", Color = table27.Library.config.Colors.BorderSoft, Parent = Frame })

														local Frame2 = newInstance("Frame", {
															Name = "ModeHolder",
															BackgroundTransparency = uiConstants[18],
															Position = UDim2.new(0, uiConstants[174], 0, 5),
															Size = UDim2.new(1, -10, 1, -10),
															ZIndex = 20001,
															Parent = Frame,
														})

														newInstance("UIListLayout", {
															Name = "ModeList",
															FillDirection = Enum.FillDirection.Horizontal,
															Padding = UDim.new(0, 6),
															SortOrder = Enum.SortOrder.LayoutOrder,
															Parent = Frame2,
														})

														TextButton = newInstance("TextButton", {
															Name = "HoldMode",
															Text = "Hold",
															AutoButtonColor = false,
															FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
															TextSize = uiConstants[49],
															TextColor3 = table27.Library.config.Colors.Text,
															BackgroundColor3 = table27.Library.config.Colors.Element,
															BorderSizePixel = uiConstants[33],
															Size = UDim2.new(0.5, -uiConstants[61], uiConstants[18], 0),
															ZIndex = 20002,
															Parent = Frame2,
														})

														TextButton2 = newInstance("TextButton", {
															Name = "ToggleMode",
															Text = uiConstants[4],
															AutoButtonColor = false,
															FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
															TextSize = 12,
															TextColor3 = table27.Library.config.Colors.Text,
															BackgroundColor3 = table27.Library.config.Colors.Element,
															BorderSizePixel = 0,
															Size = UDim2.new(0.5, -3, 1, 0),
															ZIndex = 20002,
															Parent = Frame2,
														})

														newInstance("UICorner", { Name = "UICorner", CornerRadius = UDim.new(uiConstants[33], 6), Parent = TextButton })
														newInstance("UICorner", { Name = "UICorner", CornerRadius = UDim.new(0, 6), Parent = TextButton2 })

														TextButton.MouseButton1Click:Connect(function()
															table12.SetMode(argument4, "Hold")
															dragInputChanged()
														end)

														TextButton2.MouseButton1Click:Connect(function()
															table12.SetMode(argument4, uiConstants[4])
															dragInputChanged()
														end)

														TextButton.MouseEnter:Connect(function()
															if table12.GetMode(argument4) ~= "Hold" then
																playTween(TextButton, { BackgroundColor3 = table27.Library.config.Colors.ElementHover }, 0.18)
															end
														end)

														TextButton.MouseLeave:Connect(dragInputChanged)

														TextButton2.MouseEnter:Connect(function()
															if table12.GetMode(argument4) ~= "Toggle" then
																playTween(TextButton2, { BackgroundColor3 = table27.Library.config.Colors.ElementHover }, uiConstants[136])
															end
														end)

														TextButton2.MouseLeave:Connect(dragInputChanged)
														dragInputChanged()

														signal = trackConnection(userInputService.InputBegan:Connect(function(input)
															if input.UserInputType ~= Enum.UserInputType.MouseButton1 and input.UserInputType ~= Enum.UserInputType.Touch then
																return
															end

															if not Frame then
																return
															end
															local position = input.Position
															local absolutePosition = Frame.AbsolutePosition
															local absoluteSize = Frame.AbsoluteSize
															local absolutePosition2 = table31.frame.AbsolutePosition
															local absoluteSize2 = table31.frame.AbsoluteSize

															if not (position.X >= absolutePosition.X and position.X <= absolutePosition.X + absoluteSize.X and position.Y >= absolutePosition.Y and position.Y <= absolutePosition.Y + absoluteSize.Y) and not (position.X >= absolutePosition2.X and position.X <= absolutePosition2.X + absoluteSize2.X and position.Y >= absolutePosition2.Y and position.Y <= absolutePosition2.Y + absoluteSize2.Y) then
																valueFunction53()
															end
														end))

														playTween(Frame, { Position = UDim2.new(0, n32.X, 0, n32.Y) }, 0.32, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
														playTween(UIScale, { Scale = 1 }, uiConstants[143], Enum.EasingStyle.Back, Enum.EasingDirection.Out)
													end

													table31.Set = function(arg10, arg11)
														local text = arg11 == Enum.KeyCode.Unknown and "" or table12.Display(arg11)
														local value114 = dragHandler(text)
														table31.label.Text = text

														playTween(table31.frame, {
															Size = UDim2.new(0, value114, 0, value110),
															Position = resolveKeyCode(value114),
															BackgroundColor3 = arg11 == Enum.KeyCode.Unknown and table27.Library.config.Colors.Surface or table27.Library.config.Colors.Element,
															BackgroundTransparency = arg11 == Enum.KeyCode.Unknown and uiConstants[26] or uiConstants[33],
														}, 0.25, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)

														playTween(table31.label, {
															TextColor3 = arg11 == Enum.KeyCode.Unknown and table27.Library.config.Colors.Muted or table27.Library.config.Colors.SubText,
														}, 0.2)

														playTween(UIStroke2, {
															Color = table27.Library.config.Colors.BorderSoft,
															Transparency = arg11 == Enum.KeyCode.Unknown and 0.35 or 0,
														}, 0.2)

														playTween(table31.keyboardIconImg, {
															Position = arg11 == Enum.KeyCode.Unknown and UDim2.new(0.5, -uiConstants[123], uiConstants[81], -5) or UDim2.new(1, -uiConstants[30], 0.5, -uiConstants[174]),
															ImageColor3 = arg11 == Enum.KeyCode.Unknown and table27.Library.config.Colors.Muted or table27.Library.config.Colors.SubText,
														}, 0.2)
													end

													table12.RegisterDisplay(argument4, function(arg10)
														table31:Set(arg10)
													end)

													table31.Listen = function()
														valueFunction53()
														table31.label.Text = "..."
														local value114 = dragHandler("...")

														playTween(table31.frame, {
															Size = UDim2.new(uiConstants[33], value114, 0, value110),
															Position = resolveKeyCode(value114),
															BackgroundColor3 = table27.Library.config.Colors.ElementHover,
															BackgroundTransparency = 0,
														}, uiConstants[26], Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)

														playTween(table31.label, { TextColor3 = table27.Library.config.Colors.TextHover }, 0.2)
														playTween(UIStroke2, { Color = table27.Library.config.Colors.Border, Transparency = uiConstants[33] }, 0.2)
														playTween(table31.keyboardIconImg, { Position = UDim2.new(1, -uiConstants[30], 0.5, -5), ImageColor3 = table27.Library.config.Colors.TextHover }, 0.2)

														table12.BeginListen(argument4, function(arg10)
															table31:Set(arg10)
														end, function(arg10)
															if not table30.Group then
																return true
															end
															local originalFireServer = table12.FindDuplicate(table30.Group, argument4, arg10)
															if originalFireServer then
																table27.Library:Notify({ Title = "You already have " .. originalFireServer .. " set as " .. table12.Display(arg10) .. "!" })
																return false
															end
															return true
														end)
													end

													remoteAction.InputBegan:Connect(function(input)
														if input.UserInputType == Enum.UserInputType.MouseButton1 then
															table31:Listen()
															return
														end

														if input.UserInputType == Enum.UserInputType.MouseButton2 then
															valueFunction54(input.Position)
														end
													end)

													table31.OpenMode = function(arg10, arg11)
														valueFunction54(arg11)
													end

													remoteAction.MouseEnter:Connect(function()
														playTween(table31.frame, { BackgroundColor3 = table27.Library.config.Colors.ElementHover, BackgroundTransparency = 0 }, 0.2)
														playTween(table31.label, { TextColor3 = table27.Library.config.Colors.TextHover }, 0.2)
														playTween(UIStroke2, { Color = table27.Library.config.Colors.Border, Transparency = 0 }, 0.2)
														playTween(table31.keyboardIconImg, { ImageColor3 = table27.Library.config.Colors.TextHover }, uiConstants[113])
													end)

													remoteAction.MouseLeave:Connect(function()
														local value114 = table12.Get(argument4)

														playTween(table31.frame, {
															BackgroundColor3 = value114 == Enum.KeyCode.Unknown and table27.Library.config.Colors.Surface or table27.Library.config.Colors.Element,
															BackgroundTransparency = value114 == Enum.KeyCode.Unknown and 0.25 or 0,
														}, 0.2)

														playTween(table31.label, {
															TextColor3 = value114 == Enum.KeyCode.Unknown and table27.Library.config.Colors.Muted or table27.Library.config.Colors.SubText,
														}, uiConstants[113])

														playTween(UIStroke2, {
															Color = table27.Library.config.Colors.BorderSoft,
															Transparency = value114 == Enum.KeyCode.Unknown and 0.35 or 0,
														}, 0.2)

														playTween(table31.keyboardIconImg, {
															ImageColor3 = value114 == Enum.KeyCode.Unknown and table27.Library.config.Colors.Muted or table27.Library.config.Colors.SubText,
														}, 0.2)
													end)

													if arg8 then
														table12.Register(argument4, arg8)
													end

													return table31
												end,
											}

											table27.AddToggle = addToggle
											table27.AddSlider = addSlider
											table27.AddDoubleSlider = addDoubleSlider
											table27.AddButton = addButton
											table27.AddKeybind = addKeybind
											table27.AddDropdown = addDropdown
											table27.AddTextbox = addTextbox
											table27.AddDivider = addDivider
											table27.AddSection = addSection
											table27.AddLabel = addLabel
											updateSize()
											table.insert(argument.groupsInTab, table27)
											return table27
										end
									end
								end

								do
									local obj2 = setmetatable({}, { __mode = "key" })

									local function addTab(argument, argument2)
										local textService = obj2[argument]
										argument2 = argument2 or {}
										argument2.Name = argument2.Name or "Tab"
										argument2.Description = argument2.Description or uiConstants[181]
										argument2.Icon = argument2.Icon or "rbxassetid://94219370057308"

										local currentTabYay = {
											Config = argument2,
											groupsInTab = {},
											isActive = false,
											Library = argument.Library,
											buttonFrame = newInstance("Frame", {
												Name = "TabButton",
												Active = true,
												BackgroundColor3 = argument.Library.config.AccentColor,
												BackgroundTransparency = 1,
												BorderColor3 = argument.Library.config.Colors.Black,
												BorderSizePixel = 0,
												Size = UDim2.new(0, 136, 0, 28),
												Parent = argument.tabHolderFrame,
											}),
										}

										newInstance("UICorner", { Name = "UICorner", CornerRadius = UDim.new(0, 7), Parent = currentTabYay.buttonFrame })

										currentTabYay.iconImg = newInstance("ImageLabel", {
											Name = "TabIcon",
											ImageColor3 = argument.Library.config.Colors.Muted,
											BackgroundColor3 = argument.Library.config.Colors.White,
											Image = argument2.Icon,
											BackgroundTransparency = 1,
											Position = UDim2.new(0, 9, 0.5, -7),
											BorderColor3 = Color3.new(),
											BorderSizePixel = 0,
											Size = UDim2.new(0, 14, 0, 14),
											Parent = currentTabYay.buttonFrame,
										})

										currentTabYay.nameLabel = newInstance("TextLabel", {
											Name = "TabName",
											FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
											TextColor3 = argument.Library.config.Colors.Muted,
											Text = argument2.Name,
											BackgroundColor3 = argument.Library.config.Colors.White,
											BackgroundTransparency = 1,
											Position = UDim2.new(uiConstants[33], 30, 0.5, -8),
											BorderSizePixel = 4,
											BorderColor3 = Color3.new(),
											TextSize = 15,
											Size = UDim2.new(0, uiConstants[158], 0, 16),
											TextXAlignment = Enum.TextXAlignment.Left,
											Parent = currentTabYay.buttonFrame,
										})

										local TextButton = newInstance("TextButton", {
											Name = "TabClickButton",
											Text = "",
											BackgroundTransparency = 1,
											Size = UDim2.new(uiConstants[18], uiConstants[33], 1, 0),
											Parent = currentTabYay.buttonFrame,
										})

										currentTabYay.contentFadeFrame = newInstance("CanvasGroup", {
											Name = uiConstants[24],
											Active = true,
											BackgroundTransparency = 1,
											Position = UDim2.new(0, 4, 0, 4),
											Size = UDim2.new(1, -8, uiConstants[18], -8),
											GroupTransparency = uiConstants[18],
											Visible = false,
											Parent = argument.Library.contentHolderFrame,
										})

										local function dragHandler(argument3, argument4)
											if n26(3578) < 16212 then
												local ScrollingFrame = newInstance("ScrollingFrame", {
													Name = argument3,
													Active = true,
													BackgroundTransparency = uiConstants[18],
													Position = argument4,
													Size = UDim2.new(0, uiConstants[83], 1, 0),
													ScrollingDirection = Enum.ScrollingDirection.Y,
													ScrollBarThickness = uiConstants[33],
													ScrollBarImageTransparency = uiConstants[18],
													ScrollingEnabled = true,
													CanvasSize = UDim2.new(0, 0, uiConstants[33], 0),
													AutomaticCanvasSize = Enum.AutomaticSize.Y,
													Parent = currentTabYay.contentFadeFrame,
												})

												newInstance("UIPadding", {
													Name = "UIPadding",
													PaddingTop = UDim.new(0, 2),
													PaddingBottom = UDim.new(0, 8),
													PaddingLeft = UDim.new(uiConstants[33], 3),
													PaddingRight = UDim.new(0, 3),
													Parent = ScrollingFrame,
												})

												newInstance("UIListLayout", {
													Name = "UIListLayout",
													Padding = UDim.new(0, 10),
													SortOrder = Enum.SortOrder.LayoutOrder,
													Parent = ScrollingFrame,
												})

												return ScrollingFrame
											end

											while true do
											end
										end

										currentTabYay.leftColumnFrame = dragHandler(uiConstants[95], UDim2.new(uiConstants[33], 0, 0, 0))
										currentTabYay.rightColumnFrame = dragHandler(uiConstants[144], UDim2.new(uiConstants[33], 274, 0, 0))

										currentTabYay.Activate = function()
											if argument.Library.openDropdowns then
												for _, openDropdown in pairs(argument.Library.openDropdowns) do
													if openDropdown.Close then
														openDropdown:Close()
													end
												end
											end

											if argument.Library.currentTabYay then
												argument.Library.currentTabYay:Deactivate()
											end

											argument.Library.currentTabYay = currentTabYay
											currentTabYay.isActive = true
											currentTabYay.contentFadeFrame.Visible = true
											currentTabYay.contentFadeFrame.GroupTransparency = 1
											playTween(currentTabYay.contentFadeFrame, { GroupTransparency = 0 }, 0.4, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
											local n32 = table.find(argument.tabsInSection, currentTabYay) or 1
											local position = argument.tabIndicatorFrame.Position
											local udim2 = UDim2.new(0, uiConstants[192], uiConstants[33], 39 + (n32 - 1) * uiConstants[48])
											playTween(argument.tabIndicatorFrame, { Position = udim2 }, uiConstants[64], Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)

											for _, tabIndicatorTrail in ipairs(argument.tabIndicatorTrails) do
												local udim22 = UDim2.new(position.X.Scale, position.X.Offset, position.Y.Scale, position.Y.Offset - tabIndicatorTrail.offset)
												local udim23 = UDim2.new(udim2.X.Scale, udim2.X.Offset, udim2.Y.Scale, udim2.Y.Offset - tabIndicatorTrail.offset)
												tabIndicatorTrail.frame.Position = udim22
												tabIndicatorTrail.frame.BackgroundTransparency = tabIndicatorTrail.alpha
												playTween(tabIndicatorTrail.frame, { Position = udim23, BackgroundTransparency = 1 }, uiConstants[64] + tabIndicatorTrail.delay, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
											end

											playTween(currentTabYay.iconImg, { ImageColor3 = argument.Library.config.Colors.Text }, uiConstants[64])
											playTween(currentTabYay.nameLabel, { TextColor3 = argument.Library.config.Colors.Text }, uiConstants[64])
											argument.Library.tabNameLabel.Text = argument2.Name
											argument.Library.tabDescriptionLabel.Text = argument2.Description
										end

										currentTabYay.Deactivate = function()
											currentTabYay.isActive = false
											currentTabYay.contentFadeFrame.Visible = false
											currentTabYay.contentFadeFrame.GroupTransparency = 1
											playTween(currentTabYay.iconImg, { ImageColor3 = argument.Library.config.Colors.Muted }, 0.35)
											playTween(currentTabYay.nameLabel, { TextColor3 = argument.Library.config.Colors.Muted }, uiConstants[64])
										end

										TextButton.MouseButton1Click:Connect(function()
											if not currentTabYay.isActive then
												currentTabYay:Activate()
											end
										end)

										TextButton.MouseEnter:Connect(function()
											if not currentTabYay.isActive then
												playTween(currentTabYay.nameLabel, { TextColor3 = argument.Library.config.Colors.TextHover }, uiConstants[100])
												playTween(currentTabYay.iconImg, { ImageColor3 = argument.Library.config.Colors.TextHover }, uiConstants[100])
											end
										end)

										TextButton.MouseLeave:Connect(function()
											if not currentTabYay.isActive then
												playTween(currentTabYay.nameLabel, { TextColor3 = argument.Library.config.Colors.Muted }, 0.3)
												playTween(currentTabYay.iconImg, { ImageColor3 = argument.Library.config.Colors.Muted }, 0.3)
											end
										end)

										currentTabYay.AddGroup = addGroup
										table.insert(argument.tabsInSection, currentTabYay)
										table.insert(argument.Library.tabsGoWoosh, currentTabYay)

										if #argument.Library.tabsGoWoosh == 1 then
											currentTabYay:Activate()
										end

										task.defer(textService)
										return currentTabYay
									end

									index.CreateSection = function(argument, argument2)
										local table27 = argument2 or {}
										table27.Name = table27.Name or uiConstants[183]
										table27.Icon = table27.Icon or "rbxassetid://98092584632154"

										local table28 = {
											tabsInSection = {},
											isExpanded = uiConstants[200],
											Library = argument,
											containerFrame = newInstance("Frame", {
												Name = "SectionContainerYay",
												Active = uiConstants[200],
												BackgroundTransparency = 1,
												Size = UDim2.new(0, uiConstants[45], 0, 32),
												ClipsDescendants = true,
												Parent = argument.sectionHolderScroll,
											}),
										}

										table28.mainFrame = newInstance("Frame", {
											Name = "SectionMainFrame",
											Active = true,
											BackgroundColor3 = argument.config.Colors.Secondary,
											Position = UDim2.new(0, 1, 0, 2),
											BorderColor3 = argument.config.Colors.Black,
											BorderSizePixel = uiConstants[33],
											Size = UDim2.new(0, 156, 0, 28),
											Parent = table28.containerFrame,
										})

										local UIStroke = newInstance("UIStroke", { Name = "UIStroke", Color = argument.config.Colors.BorderSoft, Parent = table28.mainFrame })
										local textService = newInstance
										local table29 = { Name = "UIGradient" }
										local colorSequence = ColorSequence.new
										local table30 = {}
										local value106 = ColorSequenceKeypoint.new(0, argument.config.Colors.Text)
										local value107 = ColorSequenceKeypoint.new(0.493, argument.config.Colors.AccentLight)
										local value108 = ColorSequenceKeypoint.new(0.509, argument.config.Colors.AccentLight)
										table30[1] = value106
										table30[2] = value107
										table30[3] = value108

										do
											local values = table.pack(ColorSequenceKeypoint.new(1, argument.config.Colors.Text))
											table.move(values, 1, values.n, 4, table30)
										end

										table29.Color = colorSequence(table30)
										table29.Rotation = uiConstants[68]
										table29.Parent = UIStroke
										textService("UIGradient", table29)
										newInstance("UICorner", { Name = uiConstants[137], CornerRadius = UDim.new(0, 7), Parent = table28.mainFrame })

										newInstance("UIAspectRatioConstraint", {
											Name = "UIAspectRatioConstraint",
											Parent = newInstance("ImageLabel", {
												Name = "SectionIcon",
												BorderColor3 = argument.config.Colors.Black,
												BackgroundColor3 = argument.config.Colors.White,
												Image = table27.Icon,
												BackgroundTransparency = 1,
												Position = UDim2.new(0, uiConstants[115], 0.5, -7),
												BorderSizePixel = 0,
												Size = UDim2.new(uiConstants[33], 14, uiConstants[33], 14),
												Parent = table28.mainFrame,
											}),
										})

										newInstance("TextLabel", {
											Name = "SectionName",
											FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
											TextColor3 = argument.config.Colors.Text,
											Text = table27.Name,
											BackgroundColor3 = argument.config.Colors.White,
											BackgroundTransparency = 1,
											Position = UDim2.new(0, 32, 0.5, -8.5),
											BorderSizePixel = 0,
											BorderColor3 = Color3.new(),
											TextSize = uiConstants[147],
											Size = UDim2.new(uiConstants[33], uiConstants[158], 0, 16),
											TextXAlignment = Enum.TextXAlignment.Left,
											Parent = table28.mainFrame,
										})

										local ImageButton = newInstance("ImageButton", {
											Name = "ExpandCollapseButton",
											BackgroundColor3 = argument.config.Colors.White,
											Image = "rbxassetid://111626678408582",
											BackgroundTransparency = 1,
											Position = UDim2.new(1, -24, 0.5, -8),
											BorderColor3 = Color3.new(),
											BorderSizePixel = 0,
											Size = UDim2.new(0, 16, 0, 16),
											Parent = table28.mainFrame,
										})

										table28.tabIndicatorFrame = newInstance("Frame", {
											Name = uiConstants[47],
											BackgroundColor3 = argument.config.AccentColor,
											BackgroundTransparency = 0,
											BorderSizePixel = 0,
											Position = UDim2.new(0, 11, 0, uiConstants[42]),
											Size = UDim2.new(0, 136, 0, uiConstants[185]),
											Parent = table28.containerFrame,
										})

										newInstance("UICorner", { Name = uiConstants[137], CornerRadius = UDim.new(uiConstants[33], uiConstants[72]), Parent = table28.tabIndicatorFrame })
										table28.tabIndicatorTrails = {}

										for i = 1, 4 do
											local n32 = 28 + i * 3
											local n33 = (n32 - 28) / 2

											local Frame = newInstance("Frame", {
												Name = uiConstants[20] .. i,
												BackgroundColor3 = argument.config.AccentColor,
												BackgroundTransparency = 1,
												BorderSizePixel = uiConstants[33],
												Position = UDim2.new(uiConstants[33], uiConstants[192], 0, uiConstants[42] - n33),
												Size = UDim2.new(uiConstants[33], 136, 0, n32),
												Parent = table28.containerFrame,
											})

											newInstance("UICorner", { Name = uiConstants[164] .. i, CornerRadius = UDim.new(0, 7), Parent = Frame })
											table.insert(table28.tabIndicatorTrails, { frame = Frame, alpha = 0.6 - i * 0.1, delay = i * 0.06, offset = n33 })
										end

										table28.tabHolderFrame = newInstance("Frame", {
											Name = "TabHolderFrame",
											BackgroundTransparency = 1,
											Position = UDim2.new(uiConstants[33], 11, 0, 39),
											Size = UDim2.new(uiConstants[33], 146, 0, 0),
											ClipsDescendants = uiConstants[200],
											Parent = table28.containerFrame,
										})

										table28.tabHolderScale = newInstance("UIScale", { Name = uiConstants[175], Scale = uiConstants[18], Parent = table28.tabHolderFrame })

										table28.tabLayoutThing = newInstance(uiConstants[106], {
											Name = "UIListLayout",
											Padding = UDim.new(uiConstants[33], 5),
											SortOrder = Enum.SortOrder.LayoutOrder,
											Parent = table28.tabHolderFrame,
										})

										local function dragHandler()
											local n32 = #table28.tabsInSection > 0 and #table28.tabsInSection * 28 + (#table28.tabsInSection - uiConstants[18]) * uiConstants[174] or 0
											table28.tabHolderFrame.Size = UDim2.new(uiConstants[33], uiConstants[3], 0, n32)

											if table28.isExpanded then
												playTween(table28.containerFrame, { Size = UDim2.new(0, uiConstants[45], 0, 32 + n32 + 14) }, 0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
											end
										end

										table28.tabLayoutThing:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(dragHandler)

										local function toggleIsExpanded()
											table28.isExpanded = not table28.isExpanded
											playTween(ImageButton, { Rotation = table28.isExpanded and uiConstants[33] or -uiConstants[91] }, 0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out)

											if table28.isExpanded then
												local y = table28.tabLayoutThing.AbsoluteContentSize.Y
												table28.tabHolderScale.Scale = 0.92
												playTween(table28.containerFrame, { Size = UDim2.new(0, 158, 0, 32 + y + 14) }, 0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
												playTween(table28.tabHolderScale, { Scale = 1 }, 0.55, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
												playTween(table28.tabIndicatorFrame, { BackgroundTransparency = 0 }, 0.4, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

												for _, tabIndicatorTrail in ipairs(table28.tabIndicatorTrails) do
													tabIndicatorTrail.frame.BackgroundTransparency = 1
												end
											else
												playTween(table28.tabHolderScale, { Scale = 0.94 }, uiConstants[139], Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
												playTween(table28.containerFrame, { Size = UDim2.new(0, 158, 0, uiConstants[14]) }, 0.45, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
												playTween(table28.tabIndicatorFrame, { BackgroundTransparency = 1 }, 0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

												for _, tabIndicatorTrail in ipairs(table28.tabIndicatorTrails) do
													tabIndicatorTrail.frame.BackgroundTransparency = uiConstants[18]
												end
											end
										end

										ImageButton.MouseButton1Click:Connect(toggleIsExpanded)

										newInstance(uiConstants[39], {
											Name = uiConstants[179],
											Text = "",
											BackgroundTransparency = uiConstants[18],
											Size = UDim2.new(1, 0, uiConstants[18], 0),
											Parent = table28.mainFrame,
										}).MouseButton1Click:Connect(toggleIsExpanded)

										table.insert(argument.sectionRefreshers, dragHandler)
										obj2[table28] = dragHandler
										table28.AddTab = addTab
										table.insert(argument.sectionsAreAwesome, table28)
										return table28
									end
								end
							end

							index.SetAccentColor = function(argument, accentColor)
								argument.config.AccentColor = accentColor
							end

							index.Destroy = function(argument)
								if argument.Destroyed then
									return
								end
								argument.Destroyed = true
								invokeSafely(valueFunction43)

								for key in table26, nil, nil do
									key:Disconnect()
								end

								table.clear(table26)
								inputChangedHandler = nil

								if argument.dropdownFrames then
									for _, dropdownFrame in ipairs(argument.dropdownFrames) do
										dropdownFrame:Destroy()
									end

									argument.dropdownFrames = nil
								end

								if table12 and table12.Destroy then
									table12.Destroy()
								end

								if argument.screenGuiYay and argument.screenGuiYay.Parent then
									argument.screenGuiYay:Destroy()
								end

								argument.screenGuiYay = nil

								if getgenv().FlyteBB == argument then
									getgenv().FlyteBB = nil
								end
							end

							value100 = index
							value101 = playTween
							value102 = table12
							table23 = nil
							value103 = nil
							valueFunction38 = nil
							valueFunction39 = nil
							valueFunction40 = nil
							table24 = nil
							table25 = nil

							valueFunction43 = function()
								if not flyteBBState or flyteBBState.Unloading then
									return
								end
								flyteBBState.Unloading = true
								flyteBBState.Loaded = uiConstants[101]
								local table27 = table20 or {}

								for key, textService in table27, nil, nil do
									if type(textService) == "boolean" then
										table20[key] = uiConstants[101]
									end
								end

								if table25 then
									if table25.UnlockAll then
										invokeSafely(table25.UnlockAll.Stop, true)
									end

									if table25.UIExtra then
										invokeSafely(table25.UIExtra.HideOverlays)
									end

									if table25.AFK then
										invokeSafely(table25.AFK.Toggle, uiConstants[101])
									end

									if table25.Script then
										invokeSafely(table25.Script.Toggle, false)
									end

									if table25.Render then
										invokeSafely(table25.Render.DisableFX, false)
										invokeSafely(table25.Render.SetAntiLag, false)
									end

									if table25.Visuals then
										invokeSafely(table25.Visuals.ClearESP)
									end

									if table25.Streak then
										invokeSafely(table25.Streak.Stop)
									end

									if table25.Stats then
										invokeSafely(table25.Stats.Stop)
									end

									if table25.AutoPlay then
										invokeSafely(table25.AutoPlay.Stop)
									end

									if table25.Staff then
										invokeSafely(table25.Staff.Set, false)
									end

									if table25.Quasar then
										invokeSafely(table25.Quasar.SetBlindness, false)
										invokeSafely(table25.Quasar.SetDisorientate, false)
										invokeSafely(table25.Quasar.Reset)
									end

									if table25.Phantom then
										invokeSafely(table25.Phantom.Reset)
									end

									if table25.Animation then
										invokeSafely(table25.Animation.Reset)
									end
								end

								if table23 then
									invokeSafely(table23.Destroy)
								end

								cleanupResources(flyteBBState)
								flyteBBState.Connections = {}

								if flyteBBState.PreclickQueue then
									table.clear(flyteBBState.PreclickQueue)
								end

								local parry = table25 and table25.Parry

								if parry then
									local fire = table25.Parry.Fire
									parry = getgenv().FlyteParry == fire
								end

								if parry then
									getgenv().FlyteParry = nil
								end

								flyteBBState.Unloaded = true

								if getgenv().FlyteBB_State == flyteBBState then
									getgenv().FlyteBB_State = nil
								end
							end

							do
								local virtualInputManager = Instance.new("VirtualInputManager")
								Data = require(replicatedStorage.Packages.Replion).Client:WaitReplion("Data")
								local table27 = { MouseButton1 = 0, MouseButton2 = 1, MouseButton3 = uiConstants[70] }
								local text5 = nil

								flyteBBState = {
									Unload = valueFunction43,
									Loaded = uiConstants[101],
									ParryMethod = uiConstants[7],
									ESPLabels = {},
									ESPConnections = {},
									AbilityActive = {},
									AbilityCooldowns = {},
									AbilityUses = {},
									Connections = {},
									SpamParries = {},
									AutoSpamData = { {}, { 0, uiConstants[33] } },
									StatsPeak = {},
									ExtraStats = {},
									StaffDetected = {},
								}

								getgenv().FlyteBB_State = flyteBBState
								updatePing()
								flyteBBState.Connections["Data Ping"] = task.spawn(function()while true do task.wait(0.1); updatePing ();end;end)

								local function dragHandler()
									local bind3 = Data:Get({ "Settings", "Keybinds", "Block", "PC" })
									local bind1 = bind3 and bind3.Bind1
									local bind2 = bind3 and bind3.Bind2
									bind3 = bind3 and bind3.Bind3
									text5 = bind1 and not table27[bind1] and bind1 or bind2 and not table27[bind2] and bind2 or bind3 and not table27[bind3] and bind3 or bind1 or bind2 or bind3 or "F"
								end

								dragHandler()
								flyteBBState.Connections["Block Bind"] = Data:OnDescendantChange({ uiConstants[58], "Keybinds", "Block" }, dragHandler)

								valueFunction41 = function()
									if userInputService.TouchEnabled then
										local viewportSize = workspace.CurrentCamera.ViewportSize
										local n32 = viewportSize.X / 2
										local n33 = viewportSize.Y / 2
										virtualInputManager:SendTouchEvent(10, 0, n32, n33)
										virtualInputManager:SendTouchEvent(10, 2, n32, n33)
										return true
									end

									local textService = table27[text5]

									if textService then
										virtualInputManager:SendMouseButtonEvent(0, 0, textService, true, game, uiConstants[33])
										virtualInputManager:SendMouseButtonEvent(0, 0, textService, false, game, 0)
										return true
									end

									local value106 = Enum.KeyCode[text5]
									if not value106 then
										return false
									end
									virtualInputManager:SendKeyEvent(true, value106, false, game)
									virtualInputManager:SendKeyEvent(false, value106, uiConstants[101], game)
									return true
								end
							end
						end

						local updatePing, valueFunction43, trackConnection, currentCamera, Lighting, alive, runtime, balls, trainingBalls, inputChangedHandler
						local textService, value106, duration, newInstance, getProperty, valueFunction47, disconnectTrackedConnection, valueFunction49, abilityButtonPress, dragHandler
						local resolveKeyCode, obj, dragInputChanged, valueFunction53, valueFunction54, valueFunction55, valueFunction56, valueFunction57, obj2, valueFunction58
						local valueFunction59, valueFunction60, valueFunction61, valueFunction62, valueFunction63, valueFunction64, valueFunction65, valueFunction66, valueFunction67, condition18
						local n32, value107, value108, valueFunction68

						do
							do
								local value109, table26

								do
									do
										updatePing = function(argument)
											local value110 = flyteBBState.Connections[argument]

											if value110 then
												cleanupResources(value110)
												flyteBBState.Connections[argument] = nil
											end
										end

										table20 = {}

										do
											local table27 = {
												anticurve = "Anticurve",
												esp = uiConstants[196],
												fflags = "FFlags",
												kh = "KH",
												timehole = "TimeHole",
												ui = "UI",
											}

											local table28 = {
												table19.Toggles,
												table19.Sliders,
												table19.DoubleSliders,
												table19.Dropdowns,
												table19.Textboxes,
											}

											local function valueFunction69(argument, argument2)
												if argument2 and argument == "custom_streak" then
													return uiConstants[105]
												end
												local text5 = (argument2 and argument:match("^(.-)(:notify)$") or argument):gsub("FFlags", "Fflags")

												for _, value110 in { uiConstants[196], uiConstants[155], uiConstants[130], uiConstants[13], "VIM", uiConstants[55], "ID", uiConstants[167], "VFX", "R15", "R6" }, nil, nil do
													text5 = text5:gsub(value110, uiConstants[188] .. value110 .. "_")
												end

												local str6 = text5:gsub("(%l)(%u)", "%1_%2"):gsub("(%u)(%u%l)", "%1_%2"):gsub("_+", "_"):gsub("^_", ""):gsub("_$", ""):gsub("[^_]+", function(argument3)
													local value110 = table27[string.lower(argument3)]
													local str6

													if value110 then
														str6 = value110
													else
														str6 = argument3:sub(1, 1):upper() .. argument3:sub(uiConstants[70])
													end

													return str6
												end)

												if argument2 then
													return normalizeSettingName(str6:gsub("_Enabled$", "") .. "")
												end
												return str6:gsub("_", "")
											end

											valueFunction43 = function(argument)
												for key, value110 in argument, nil, nil do
													local remoteEvent = valueFunction69(key, uiConstants[200])

													for _, remoteAction in table28, nil, nil do
														if remoteAction[remoteEvent] ~= nil then
															value110 = remoteAction[remoteEvent]
															break
														end
													end

													table20[valueFunction69(key)] = cloneTable(value110)
												end
											end

											trackConnection = function(argument, argument2)
												return function(argument3)
													table20[valueFunction69(argument)] = argument3

													if argument2 then
														argument2(argument3)
													end
												end
											end
										end
									end

									do
										local trainingArea, lobby

										do
											valueFunction43({ MenuScale = uiConstants[158] })

											Configs = {
												Folder = "Flyte/settings",
												AutoloadPath = "Flyte/settings/autoload.txt",
											}

											configController = Configs

											Configs.SyncUnlock = function()
												if type(table19.UnlockAll) ~= "table" then
													return
												end
												table20.UnlockAllSword = type(table19.UnlockAll.Sword) == "string" and table19.UnlockAll.Sword or ""
												table20.UnlockAllExplosion = type(table19.UnlockAll.Explosion) == "string" and table19.UnlockAll.Explosion or ""
												table20.UnlockAllEmotes = type(table19.UnlockAll.Emotes) == "table" and table19.UnlockAll.Emotes or {}
												table20.UnlockAllAccessory = table19.UnlockAll.Accessory == true
												table20.UnlockAllFinishers = type(table19.UnlockAll.Finishers) == "table" and table19.UnlockAll.Finishers or {}
												table20.UnlockAllFavorites = type(table19.UnlockAll.Favorites) == "table" and table19.UnlockAll.Favorites or { Sword = {}, Explosion = {}, Emote = {} }
											end

											Configs.SyncUnlock()

											Configs.Name = function(argument)
												if type(argument) ~= "string" or argument:gsub("%s+", "") == "" then
													return
												end
												local text5 = argument:gsub("^%s+", ""):gsub("%s+$", "")
												if string.lower(text5) == "autoload" or text5:find("[\\/:*?\"<>|]") then
													return
												end
												return text5
											end

											Configs.MakeFolder = function()
												if not isfolder("Flyte") then
													makefolder("Flyte")
												end

												if not isfolder(Configs.Folder) then
													makefolder(Configs.Folder)
												end
											end

											Configs.GetPath = function(argument)
												local value110 = Configs.Name(argument)
												if not value110 then
													return
												end
												return Configs.Folder .. "/" .. value110 .. ".json"
											end

											Configs.Copy = function(argument, argument2)
												table.clear(argument)

												for key, value110 in argument2, nil, nil do
													argument[key] = cloneTable(value110)
												end
											end

											Configs.New = function()
												local table27 = {
													UnlockAll = {
														Sword = "",
														Explosion = "",
														Emotes = {},
														Accessory = false,
														Finishers = {},
														Favorites = { Sword = {}, Explosion = {}, Emote = {} },
													},
												}

												for _, value110 in table21, nil, nil do
													table27[value110] = table27[value110] or {}
												end

												return table27
											end

											Configs.Defaults = function()
												local value110 = Configs.New()

												if table24 then
													for _, remoteEvent in table24.toggles, nil, nil do
														if remoteEvent.SaveId and remoteEvent.DefaultValue ~= nil then
															local remoteAction = uiConstants[57]
															local keybinds = typeof(remoteEvent.DefaultValue) == remoteAction and value110.Keybinds or value110.Toggles
															local saveId = remoteEvent.SaveId
															local signal = uiConstants[57]
															keybinds[saveId] = typeof(remoteEvent.DefaultValue) == signal and remoteEvent.DefaultValue.Name or cloneTable(remoteEvent.DefaultValue)
														end

														if remoteEvent.NotifySaveId then
															value110.Toggles[remoteEvent.NotifySaveId] = remoteEvent.DefaultNotify
														end
													end

													for _, remoteEvent in table24.sliders, nil, nil do
														if remoteEvent.SaveId and remoteEvent.DefaultValue ~= nil then
															local remoteAction = uiConstants[145]
															;(type(remoteEvent.DefaultValue) == remoteAction and value110.DoubleSliders or value110.Sliders)[remoteEvent.SaveId] = cloneTable(remoteEvent.DefaultValue)
														end
													end

													for _, remoteEvent in table24.dropdowns, nil, nil do
														if remoteEvent.SaveId and remoteEvent.DefaultValue ~= nil then
															value110.Dropdowns[remoteEvent.SaveId] = cloneTable(remoteEvent.DefaultValue)
														end
													end

													for _, remoteEvent in table24.textboxes, nil, nil do
														if remoteEvent.SaveId and remoteEvent.DefaultValue ~= nil then
															value110.Textboxes[remoteEvent.SaveId] = cloneTable(remoteEvent.DefaultValue)
														end
													end
												end

												return value110
											end

											Configs.Current = function()
												local value110 = Configs.New()

												for _, remoteEvent in table21, nil, nil do
													Configs.Copy(value110[remoteEvent], table19[remoteEvent])
												end

												return value110
											end

											Configs.Validate = function(argument)
												argument = type(argument) == "table" and argument or {}
												migrateConfig(argument)
												local value110 = Configs.Defaults()

												for _, remoteEvent in table21, nil, nil do
													if type(argument[remoteEvent]) == "table" then
														Configs.Copy(value110[remoteEvent], argument[remoteEvent])
													end
												end

												for _, remoteEvent in { uiConstants[187], "manual_spam_enabled" }, nil, nil do
													value110.Toggles[remoteEvent] = nil
												end

												normalizeKeybindModes(value110.Dropdowns)
												return value110
											end

											Configs.Apply = function(argument)
												local value110 = Configs.Validate(argument)
												local remoteEvent = cloneTable(table19.Keybinds)
												Configs.Applying = true

												for _, remoteAction in table21, nil, nil do
													Configs.Copy(table19[remoteAction], value110[remoteAction])
												end

												Configs.SyncUnlock()

												local function valueFunction69(argument2, argument3)
													for _, remoteAction in argument2, nil, nil do
														local saveId = remoteAction.SaveId

														if saveId and remoteAction.Set and argument3[saveId] ~= nil then
															remoteAction:Set(cloneTable(argument3[saveId]))
														end

														if remoteAction.SetNotify and remoteAction.NotifySaveId and argument3[remoteAction.NotifySaveId] ~= nil then
															remoteAction:SetNotify(argument3[remoteAction.NotifySaveId])
														end
													end
												end

												if table24 then
													valueFunction69(table24.toggles, table19.Toggles)
													valueFunction69(table24.sliders, table19.Sliders)

													for _, remoteAction in table24.sliders, nil, nil do
														local saveId = remoteAction.SaveId and table19.DoubleSliders[remoteAction.SaveId]

														if remoteAction.Set and type(saveId) == "table" then
															remoteAction:Set(saveId.Min, saveId.Max)
														end
													end

													valueFunction69(table24.dropdowns, table19.Dropdowns)
													valueFunction69(table24.textboxes, table19.Textboxes)

													for _, remoteAction in table24.toggles, nil, nil do
														local saveId = remoteAction.SaveId
														saveId = saveId and table19.Keybinds[saveId]

														if remoteAction.Set and saveId ~= nil then
															local signal = value102.Resolve(type(saveId) == "table" and saveId.Key or saveId)
															local value114 = uiConstants[57]

															if typeof(signal) == value114 then
																remoteAction:Set(signal)
															end
														end
													end
												end

												for key, remoteAction in table19.Keybinds, nil, nil do
													if type(remoteAction) == "table" then
														value102.SetMode(key, remoteAction.Mode or "Toggle")
														value102.Set(key, value102.Resolve(remoteAction.Key))
													end
												end

												for key in remoteEvent, nil, nil do
													if table19.Keybinds[key] == nil then
														value102.Set(key, Enum.KeyCode.Unknown)
													end
												end

												Configs.Applying = nil
												saveConfig()

												if flyteBBState and flyteBBState.RefreshKeybinds then
													task.defer(flyteBBState.RefreshKeybinds)
												end

												task.defer(function()
													if table25.UnlockAll and table25.UnlockAll.Status == "active" then
														table25.UnlockAll.LoadFavorites()
														table25.UnlockAll.ApplyFavorites()
														table25.UnlockAll.ApplySaved()
													elseif flyteBBState and flyteBBState.Loaded and table20.UnlockAllEnabled and table25.UnlockAll then
														table25.UnlockAll.Toggle(uiConstants[200])
													end
												end)
											end

											Configs.Refresh = function(argument)
												Configs.MakeFolder()
												local table27 = {}

												for _, value110 in listfiles(argument.Folder) do
													local match = tostring(value110):gsub("\\", "/"):match("/([^/]+)%.json$")

													if match and match ~= "autoload" then
														table.insert(table27, match)
													end
												end

												table.sort(table27)
												return table27
											end

											Configs.Save = function(argument, argument2, argument3)
												local value110 = Configs.Name(argument2)
												if not value110 then
													return false, "invalid config name"
												end
												Configs.MakeFolder()
												local current = Configs.Current
												table11.Write(Configs.GetPath(value110), current())

												if argument3 ~= uiConstants[101] then
													argument.Selected = value110
												end

												argument.Active = value110
												return true
											end

											Configs.Load = function(argument, argument2)
												local selected = Configs.Name(argument2)
												local value110 = selected and Configs.GetPath(selected)
												if not value110 or not isfile(value110) then
													selected = selected and "config does not exist"
													return false, selected or uiConstants[118]
												end
												local remoteEvent = table11.Read(value110)
												if type(remoteEvent) ~= "table" then
													return false, "failed to decode config"
												end
												argument.Selected = selected
												argument.Active = selected
												Configs.Apply(remoteEvent)
												return true
											end

											Configs.Delete = function(argument, argument2)
												local text5 = Configs.Name(argument2)
												local value110 = text5 and Configs.GetPath(text5)
												if not value110 or not isfile(value110) then
													text5 = text5 and uiConstants[146] or "no config is selected"
													return false, text5
												end
												delfile(value110)

												if argument.Autoload == text5 then
													argument:ClearAutoload()
												end

												if argument.Selected == text5 then
													argument.Selected = nil
												end

												if argument.Active == text5 then
													argument.Active = nil
												end

												return uiConstants[200]
											end

											Configs.Reset = function(argument, argument2)
												local value110 = Configs.Name(argument2)
												if not value110 then
													return false, "no config is selected"
												end
												Configs.MakeFolder()
												local remoteEvent = Configs.GetPath(value110)
												local remoteAction = Configs.Defaults()
												table11.Write(remoteEvent, remoteAction)

												if argument.Selected == value110 then
													Configs.Apply(remoteAction)
												end

												return true
											end

											Configs.SetAutoload = function(argument, argument2)
												local value110 = Configs.Name(argument2)
												local remoteEvent = value110 and Configs.GetPath(value110)
												if not remoteEvent or not isfile(remoteEvent) then
													value110 = value110 and uiConstants[146]
													return false, value110 or "no config is selected"
												end
												Configs.MakeFolder()
												writefile(Configs.AutoloadPath, value110)
												argument.Autoload = value110
												return true
											end

											Configs.GetAutoload = function(argument)
												Configs.MakeFolder()
												if not isfile(Configs.AutoloadPath) then
													argument.Autoload = nil
													return "none"
												end
												local value110 = Configs.Name(readfile(Configs.AutoloadPath))
												argument.Autoload = value110
												return value110 or "none"
											end

											Configs.ClearAutoload = function(argument)
												if isfile(Configs.AutoloadPath) then
													delfile(Configs.AutoloadPath)
												end

												argument.Autoload = nil
												return true
											end

											Configs.LoadAutoload = function(argument)
												local autoload = argument:GetAutoload()

												if autoload ~= "none" then
													argument:Load(autoload)
												end
											end

											table25 = {}
											currentCamera = workspace.CurrentCamera
											Lighting = game:GetService("Lighting")
											alive = workspace:WaitForChild("Alive")
											runtime = workspace:WaitForChild("Runtime")
											balls = workspace:WaitForChild("Balls")
											trainingBalls = workspace:FindFirstChild("TrainingBalls")
											inputChangedHandler = localPlayer:WaitForChild(uiConstants[193])

											do
												local lobbyTraining = workspace:FindFirstChild("LobbyTraining", true)
												trainingArea = lobbyTraining and lobbyTraining:FindFirstChild("TrainingArea")
												lobby = lobbyTraining and lobbyTraining:FindFirstChild("Lobby")
											end
										end

										local table27 = nil
										local hotbar = inputChangedHandler:WaitForChild("Hotbar")
										value109 = hotbar:WaitForChild(uiConstants[2])
										textService = hotbar:WaitForChild("Block"):FindFirstChild(uiConstants[21])
										value106 = value109:FindFirstChild(uiConstants[21])
										duration = value109:WaitForChild("Duration")

										table26 = {
											"Calming Deflection",
											"Raging Deflection",
											uiConstants[73],
											"Aerodynamic Slash",
											"Forcefield",
											"Infinity",
											"Fracture",
											uiConstants[5],
											"Ninja Dash",
											"Dribble",
											"Dragon Spirit",
										}

										newInstance = function(argument)
											argument = argument and argument:FindFirstChild("HumanoidRootPart")
											if not argument or not trainingArea then
												return false
											end
											local value110 = trainingArea.CFrame:PointToObjectSpace(argument.Position)
											local n33 = trainingArea.Size * 0.5
											local x = n33.X
											local condition19 = math.abs(value110.X) <= x

											if condition19 then
												local y = n33.Y
												condition19 = math.abs(value110.Y) <= y
											end

											local condition20

											if condition19 then
												local z = n33.Z
												condition20 = math.abs(value110.Z) <= z
											else
												condition20 = condition19
											end

											return condition20
										end

										getProperty = function(argument)
											return argument and argument.PrimaryPart and (argument.Parent == alive or newInstance(argument))
										end

										valueFunction47 = function()
											if table27 then
												return table27
											end
											table27 = {}
											local descendants = lobby and lobby:GetDescendants() or {}

											for _, value110 in descendants, nil, nil do
												local isBasePart = value110:IsA("BasePart")
												local condition19

												if isBasePart then
													local remoteEvent = uiConstants[200]
													condition19 = value110:GetAttribute(uiConstants[114]) == remoteEvent
												else
													condition19 = isBasePart
												end

												if condition19 then
													table27[#table27 + 1] = value110
												end
											end

											return table27
										end
									end
								end

								do
									do
										do
											local function valueFunction69(argument)
												if not argument then
													return uiConstants[101]
												end

												for _, value110 in table26, nil, nil do
													local remoteEvent = argument:FindFirstChild(value110)

													if remoteEvent and remoteEvent.Enabled then
														if value110 == uiConstants[156] or value110 == uiConstants[160] then
															local ready = value109:FindFirstChild("ready")
															ready = ready and ready:FindFirstChild(uiConstants[171])
															local condition19 = not value109.Red.Visible

															if condition19 then
																condition19 = not ready

																if not condition19 then
																	condition19 = (tonumber(ready.Text) or uiConstants[33]) > 0
																end
															end

															value110 = condition19 and value110 or nil
															return value110
														end

														value110 = value106 and value106.Offset.Y >= 0.49 and value110 or nil
														return value110
													end
												end
											end

											disconnectTrackedConnection = function(argument)
												local condition19 = argument:GetAttribute(uiConstants[119]) == true

												if not condition19 then
													condition19 = flyteBBState.InvisibilityCharacter == argument

													if condition19 then
														condition19 = os.clock() < (flyteBBState.InvisibilityUntil or uiConstants[33])
													end
												end

												return condition19
											end

											flyteBBState.Connections["Invisibility Request"] = replicatedStorage.Remotes.VisualBindableCD.Event:Connect(function()
												local character = localPlayer.Character
												local condition19

												if character then
													local value110 = uiConstants[5]
													condition19 = localPlayer:GetAttribute("CurrentlyEquippedAbility") == value110
												else
													condition19 = character
												end

												if condition19 then
													flyteBBState.InvisibilityCharacter = character
													flyteBBState.InvisibilityUntil = os.clock() + 3
												end
											end)

											valueFunction49 = function(argument)
												local character = localPlayer.Character
												character = character and character:FindFirstChild("Abilities")
												character = character and character:FindFirstChild(argument)
												return localPlayer:GetAttribute("CurrentlyEquippedAbility") == argument and character and character.Enabled and duration.Visible
											end

											abilityButtonPress = replicatedStorage.Remotes.AbilityButtonPress

											dragHandler = function(argument)
												if not valueFunction69(argument) then
													return false
												end
												abilityButtonPress:Fire()
												return true
											end
										end
									end

									valueFunction43({
										ParryAccuracy = 1,
										ParryRange = 0,
										AntiCurveEnabled = true,
										BackwardsAntiCurveEnabled = true,
										AutoParryType = uiConstants[90],
										SelectedParryType = uiConstants[132],
										ParryLoopType = "PreSimulation",
										CooldownProtectionEnabled = uiConstants[101],
										AutoAbilityEnabled = false,
										RandomizedParryAccuracy = uiConstants[101],
										RandomAccuracyMin = 1,
										RandomAccuracyMax = uiConstants[158],
									})

									resolveKeyCode = function(argument)
										local attribute = argument and argument:GetAttribute("target")
										if attribute and attribute ~= "" then
											return attribute
										end
										local targetAttachment = argument and argument:FindFirstChild("TargetAttachment")
										local model = targetAttachment and targetAttachment.Value and targetAttachment.Value:FindFirstAncestorWhichIsA("Model")

										while model and model:FindFirstChild("ActualCharacter") do
											model = model.ActualCharacter.Value
										end

										return model and model.Name
									end

									obj = setmetatable({}, { __mode = uiConstants[124] })

									do
										local table27 = {}
										local value110 = nil

										for _, remoteEvent in replicatedStorage.Packages._Index["sleitnick_net@0.1.0"].net:GetChildren() do
											if remoteEvent:IsA("UnreliableRemoteEvent") and remoteEvent.Name ~= "URE/ReplicateBallPosition" then
												local connection = remoteEvent.OnClientEvent:Connect(function(F,P)if typeof(F)=="Instance"and typeof(P)=="Vector3"and(F.Parent== balls or F.Parent== trainingBalls )then local x= obj [F];if not x then x={}; obj [F]=x;end;x.Position=P;x.UpdatedAt=os.clock();if not  value110 then for F,P in  table27 ,nil,nil do if F~= remoteEvent then P:Disconnect(); flyteBBState .Connections[F]=nil;end;end; value110 = remoteEvent ;end;end;end)
												table27[remoteEvent] = connection
												flyteBBState.Connections[remoteEvent] = connection
											end
										end
									end
								end
							end

							do
								dragInputChanged = function(argument)
									if argument then
										argument = argument:IsA("BasePart") and argument or argument:IsA("Model") and argument.PrimaryPart or argument:FindFirstChild("Body")
									end

									return argument
								end

								valueFunction53 = function(argument, argument2, argument3)
									local value109 = obj[argument]

									if not value109 then
										value109 = argument2 or dragInputChanged(argument)
										value109 = value109 and obj[value109]
									end

									local condition19

									if value109 then
										condition19 = (argument3 or os.clock()) - (value109.UpdatedAt or uiConstants[33]) <= uiConstants[152]
									else
										condition19 = value109
									end

									if condition19 then
										return value109.Position
									end
								end

								valueFunction54 = function(argument)
									local value109 = valueFunction53(argument)
									if value109 then
										return value109
									end
									local value110 = dragInputChanged(argument)
									return value110 and value110.Position or Vector3.zero
								end

								valueFunction55 = function(argument)
									local zoomies = argument and argument:FindFirstChild("zoomies")
									if zoomies then
										return zoomies.VectorVelocity
									end
									local attribute = argument and argument:GetAttribute("Velocity")
									return typeof(attribute) == "Vector3" and attribute or Vector3.zero
								end

								valueFunction56 = function(argument)
									local body

									if argument then
										local attribute = argument:IsA("BasePart") and argument:GetAttribute("realBall")

										if attribute then
											body = attribute
										else
											body = argument:IsA("Model") and argument:FindFirstChild("Body") and argument:FindFirstChild(uiConstants[149])
										end
									else
										body = argument
									end

									return body
								end

								valueFunction57 = function(argument)
									return argument and argument:IsA("Model") and argument:FindFirstChild("Body") and argument:FindFirstChild(uiConstants[149]) and not argument:FindFirstChild("zoomies")
								end

								obj2 = setmetatable({}, { __mode = "key" })

								valueFunction58 = function(argument)
									local value109 = obj2[argument]

									if not value109 then
										local value110 = resolveKeyCode(argument)
										local table26 = { Parried = false, ParryResetAt = 0, Target = value110, LoopTarget = value110 }
										obj2[argument] = table26
										value109 = table26
									end

									return value109
								end

								do
									local function valueFunction69()
										return (dataPing or localPlayer:GetNetworkPing() * 1000) / 1000
									end

									valueFunction59 = function()
										local n33 = dataPing

										if not dataPing then
											local value109 = uiConstants[66]
											n33 = localPlayer:GetNetworkPing() * value109
										end

										return n33
									end

									valueFunction60 = function(argument, argument2, argument3)
										local huge = math.huge
										local children = argument3 and valueFunction47() or alive:GetChildren()
										local value109 = nil

										for _, value110 in children, nil, nil do
											if value110 ~= argument then
												local isBasePart = value110:IsA("BasePart") and value110 or value110.PrimaryPart or value110:FindFirstChild("HumanoidRootPart")
												local condition19

												if isBasePart then
													condition19 = not argument3

													if not condition19 then
														condition19 = isBasePart.Parent

														if condition19 then
															condition19 = (isBasePart:GetAttribute(uiConstants[138]) or 1) > uiConstants[33]
														end
													end
												else
													condition19 = isBasePart
												end

												if condition19 then
													local magnitude = (argument2 - isBasePart.Position).Magnitude

													if magnitude < huge then
														huge = magnitude
														value109 = isBasePart
													end
												end
											end
										end

										return huge, value109, #children
									end

									valueFunction61 = function(F)local P= localPlayer .Character;local x=P and(P.PrimaryPart or(P:FindFirstChild("HumanoidRootPart")));P= alive and  alive .Parent and  alive or(workspace:FindFirstChild("Alive"));local T=type(F)=="string"and P and(P:FindFirstChild(F));F=T and(T.PrimaryPart or(T:FindFirstChild("HumanoidRootPart")));P=x and F and x.Position-F.Position;return P and P.Magnitude>0.001 and P or nil;end
									valueFunction62 = function(F,P)local x=P.Zoomies;local f= resolveKeyCode (F);if not  table20 .BackwardsAntiCurveEnabled or not x or F.Parent== trainingBalls or f== localPlayer .Name then return;end;if F:GetAttribute("DribbleActive")==true then P.CurveReference=nil;return;end;F=x.VectorVelocity;f=F.Magnitude;if f~=f or f==math.huge or f<0.001 then return;end;P.CurveReference=F;end
									valueFunction63 = function(F,P,x,f)if not  table20 .BackwardsAntiCurveEnabled or not F or F.Parent== trainingBalls or( valueFunction57 (F))then return false;end;if(x or( resolveKeyCode (F)))~= localPlayer .Name then return false;end;local h,M= valueFunction58 (F),P.Magnitude;if M~=M or M==math.huge or M<0.001 then return false;end;local C,Y,R=h.CurveSource,h.CurveTargetDirection,F:GetAttribute("from");if f and(not C or not Y)then if type(R)=="string"and R~=""and R~= localPlayer .Name then C,Y=R,( valueFunction61 (R));end;end;if not C or R~=C or not Y then return false;end;F=Y.Magnitude;if F<0.001 then return false;end;x=h.CurveReference;local J,l=x and x.Magnitude or 0,Y:Dot(P)/(F*M);if J<0.001 then return f and M>=35 and l<-0.45;end;f,R=x:Dot(P)/(J*M),false;if f>0.2 and l>=-0.45 and l<0 then local t= valueFunction61 (C);local U=t and t.Magnitude or 0;if U>0.001 then local H=t:Dot(P)/(U*M);R=f>0.95 and l<-0.2 and H<-0.2;if H<l then l,F,Y=H,U,t;end;end;end;local t=R or f>0.2 and l<-0.45;if not t and(math.abs(Y.Y)>F*0.1 or f>0.2 and l<-0.2)then local F,U,H=Vector3.new(x.X,0,x.Z),Vector3.new(P.X,0,P.Z),Vector3.new(Y.X,0,Y.Z);local P,x,Y=F.Magnitude,U.Magnitude,H.Magnitude;if P>J*0.35 and x>M*0.35 and Y>0.001 then t=F:Dot(U)/(P*x)>0.2 and H:Dot(U)/(Y*x)<-0.45;if t and Y<=1 then R= valueFunction61 (C);local T=R and(Vector3.new(R.X,0,R.Z));local F=T and T.Magnitude or 0;t=F>0.001 and T:Dot(U)<-0.45*F*x;end;end;end;if not t and l>0.2 and f<0 then h.CurveReference=nil;end;return t;end

									valueFunction64 = function(argument)
										local connections = argument.Connections
										local curveVelocity = connections and connections.CurveVelocity

										if curveVelocity then
											curveVelocity:Disconnect()
											connections.CurveVelocity = nil
										end

										argument.CurveReference = nil
										argument.CurveSource = nil
										argument.CurveTargetDirection = nil
										argument.CurveReady = nil
										argument.CurveVersion = (argument.CurveVersion or 0) + 1
									end

									valueFunction65 = function(argument)
										argument.CurveTime = os.clock()
										argument.CurveWarping = nil
									end

									valueFunction66 = function(argument)
										argument.CurveTime = nil
										argument.CurveWarping = nil
									end

									valueFunction67 = function(argument, argument2, argument3, argument4, argument5, arg6, arg7, arg8, arg9)
										if not table20.AntiCurveEnabled or not argument or argument.Parent == trainingBalls or valueFunction57(argument) then
											return false
										end

										if (arg8 or resolveKeyCode(argument)) ~= localPlayer.Name then
											return false
										end
										argument4 = argument4 or valueFunction55(argument)
										arg6 = arg6 or argument4.Magnitude
										if arg6 ~= arg6 or arg6 == math.huge or arg6 < 0.001 then
											return false
										end

										if not argument2 then
											argument2 = localPlayer.Character

											if argument2 then
												argument2 = argument2:FindFirstChild("HumanoidRootPart") or argument2.PrimaryPart
											end
										end

										if not argument2 then
											return false
										end

										if not arg7 then
											arg7 = argument2.Position - (argument3 or valueFunction54(argument))
										end

										argument5 = argument5 or arg7.Magnitude
										if argument5 ~= argument5 or argument5 == math.huge or argument5 < 0.001 then
											return false
										end
										local value109 = valueFunction58(argument)
										local n33 = arg7:Dot(argument4) / argument5 * arg6
										local n34 = math.min(arg6 / uiConstants[158], 40)
										local n35 = 7 * math.max(n33, 0)
										local n36 = 15 - math.min(argument5 / 1000, uiConstants[147]) + n35 + n34

										if argument5 < n36 then
											value109.CurveTime = nil
											value109.CurveWarping = nil
											return false
										end

										local now2 = os.clock()
										arg9 = arg9 or valueFunction69()
										local n37 = math.max(argument5 / arg6 - arg9, 0)

										if n33 < 0.85797987377317875 then
											value109.CurveWarping = now2
										end

										local curveWarping = value109.CurveWarping

										if curveWarping then
											if now2 - curveWarping < n37 * (1 - math.clamp(n33, 0, 1)) then
												return true
											end
											value109.CurveWarping = nil
										end

										local curveTime = value109.CurveTime

										if curveTime then
											if now2 - curveTime < n37 / 1.5 and n37 > n36 / arg6 then
												return true
											end
											value109.CurveTime = nil
										end

										return n33 < 0.5 - arg9
									end
								end
							end

							condition18 = false
							n32 = 0
							value107 = nil
							value108 = nil

							valueFunction68 = function(argument)
								condition18 = false
								n32 = 0
								value107 = nil
								value108 = nil
								flyteBBState.SelfDribbleBall = nil
								flyteBBState.SelfDribbleAway = nil
								flyteBBState.AutoBall = nil
								flyteBBState.AutoParryAt = nil
								flyteBBState.ManualBall = nil
								flyteBBState.ExtraParryCooldownUntil = nil
								local value109 = balls or workspace:FindFirstChild(uiConstants[182])
								if not value109 then
									return
								end

								for _, value110 in value109:GetChildren() do
									if valueFunction56(value110) then
										local remoteEvent = valueFunction58(value110)
										remoteEvent.Parried = false
										remoteEvent.ParryResetAt = 0
										remoteEvent.AutoParryAt = nil
										remoteEvent.TriggerbotParried = false
										remoteEvent.InvisibleReturnAway = nil
										valueFunction66(remoteEvent)
										local condition19

										if argument then
											local name = localPlayer.Name
											condition19 = resolveKeyCode(value110) == name
										else
											condition19 = argument
										end

										if condition19 then
											remoteEvent.TargetChanges = math.max(remoteEvent.TargetChanges or 0, uiConstants[70])
										end
									end
								end
							end

							do
								local function valueFunction69(argument, argument2)
									if not table25.Ball or not table25.Ball.GetAllBalls then
										return
									end
									local text5 = tostring(argument)
									local value109 = uiConstants[165]
									local position = typeof(argument2) == value109 and argument2:IsA("BasePart") and argument2.Position
									local value110 = nil
									local remoteEvent = nil
									local remoteAction = nil
									local signal = nil

									for _, value114 in table25.Ball.GetAllBalls() do
										local magnitude = nil

										if position then
											magnitude = (valueFunction54(value114) - position).Magnitude

											if not value110 or magnitude < value110 then
												value110 = magnitude
												remoteEvent = value114
											end
										end

										if value114.Name == text5 and (not remoteAction or magnitude and magnitude < signal) then
											remoteAction = value114
											signal = magnitude
										end
									end

									return remoteAction or remoteEvent or table25.Ball.GetMainBall()
								end

								if replicatedStorage.Remotes:FindFirstChild("ParrySuccessAll") then
									flyteBBState.Connections["Parry All"] = replicatedStorage.Remotes.ParrySuccessAll.OnClientEvent:Connect(function(argument, argument2, argument3, argument4, argument5)
										local abilityESPEnabled = table20.AbilityESPEnabled

										if abilityESPEnabled then
											local value109 = uiConstants[165]
											abilityESPEnabled = typeof(argument4) == value109
										end

										if abilityESPEnabled and argument4:IsA(uiConstants[134]) and argument4 ~= localPlayer then
											local character = argument4.Character

											if (character and table25.Visuals and table25.Visuals.GetInfo(argument4, character)) == "Slashes of Fury" and character:GetAttribute("FuryCatch") then
												local huge = math.huge
												local position = typeof(argument2) == "Instance" and argument2:IsA(uiConstants[53]) and argument2.Position
												local value109 = nil

												for _, value110 in workspace.Balls:GetChildren() do
													if value110:IsA(uiConstants[53]) and not value110:GetAttribute("realBall") then
														if value110.Name == tostring(argument5 or argument) then
															value109 = value110
															break
														elseif position then
															local magnitude = (value110.Position - position).Magnitude

															if magnitude < huge then
																value109 = value110
																huge = magnitude
															end
														end
													end
												end

												if value109 then
													local table26 = flyteBBState.AbilityUses[argument4]

													if not table26 or table26.Character ~= character or table26.Ability ~= "Slashes of Fury" then
														table25.Visuals.ClearFury(table26)

														table26 = {
															Ability = "Slashes of Fury",
															Character = character,
															Uses = 0,
															Started = workspace:GetServerTimeNow(),
														}

														flyteBBState.AbilityUses[argument4] = table26
													end

													table26.Uses = math.min(table26.Uses + 1, 35)
													table25.Visuals.UpdateFuryCount(value109, table26)
												end
											end
										end

										local character = localPlayer.Character
										local primaryPart = character and character.PrimaryPart
										if not primaryPart then
											return
										end
										local value109 = valueFunction69(argument, argument2)
										if not value109 then
											return
										end

										if argument4 == localPlayer then
											local now2 = os.clock()
											local value110 = uiConstants[66]
											local n33 = math.clamp(valueFunction59() / value110 + uiConstants[22], 0.15, 1)
											local autoBall = flyteBBState.AutoBall
											local remoteEvent = autoBall and obj2[autoBall]
											local condition19 = autoBall and autoBall.Parent and remoteEvent and remoteEvent.AutoParryAt and now2 - remoteEvent.AutoParryAt <= n33

											if not condition19 then
												autoBall = value109
											end

											local remoteAction = valueFunction58(autoBall)
											local condition20

											if condition19 then
												condition20 = condition19
											else
												condition20 = remoteAction.AutoParryAt and now2 - remoteAction.AutoParryAt <= n33
											end

											local condition21 = not condition20

											if condition21 then
												remoteAction.Parried = true
												remoteAction.ParryResetAt = now2 + 0.6
												condition18 = true
												value107 = autoBall
												n32 = remoteAction.ParryResetAt
											end

											remoteAction.AutoParryAt = nil

											if flyteBBState.AutoBall == autoBall then
												flyteBBState.AutoBall = nil
											end

											if condition21 then
												local name = localPlayer.Name
												condition21 = resolveKeyCode(autoBall) == name
											end

											if condition21 then
												flyteBBState.ManualBall = autoBall

												if table20.TriggerbotEnabled then
													remoteAction.TriggerbotTarget = localPlayer.Name
													remoteAction.TriggerbotParried = uiConstants[200]
												end
											end

											local ball = condition20 and table20.AutoParryEnabled and table25.Loop and table25.Loop.MainParryLoop and table25.Ball

											if ball then
												local signal = uiConstants[18]
												ball = #table25.Ball.GetAllBalls() > signal
											end

											if ball then
												table25.Loop.MainParryLoop()
											end

											return
										end

										local value110 = valueFunction55(value109)
										local magnitude = value110.Magnitude
										if magnitude < 0.001 then
											return
										end
										local unit = value110.Unit
										local n33 = primaryPart.Position - valueFunction54(value109)
										local magnitude2 = n33.Magnitude
										if magnitude2 < uiConstants[116] then
											return
										end
										local remoteEvent = n33.Unit:Dot(unit)

										if table20.AutoParryEnabled and magnitude > 100 and argument2 and argument2.Parent and argument2.Parent ~= character and argument2.Parent.Parent == alive and not condition18 then
											local getClosest = table25.Player and table25.Player.GetClosest and table25.Player.GetClosest()

											if getClosest and getClosest.PrimaryPart and (primaryPart.Position - getClosest.PrimaryPart.Position).Magnitude < 15 and magnitude2 < 15 and remoteEvent > -0.25 and valueFunction67(value109) then
												condition18 = uiConstants[200]
												value107 = value109
												n32 = os.clock() + 0.6

												if not valueFunction40(nil, nil, nil, nil, nil, table20.ParryAccuracy or 50) then
													condition18 = uiConstants[101]
													value107 = nil
												end
											end
										end
									end)
								end
							end
						end

						local valueFunction69, valueFunction70, valueFunction71

						do
							do
								valueFunction43({
									FuryDetection = true,
									FurySpamHit = false,
									FuryParryAmount = uiConstants[59],
									FuryParryDelay = 0.05,
									FuryParryMethod = "Remote",
								})

								do
									local function valueFunction72()
										local function valueFunction73()
											local character = localPlayer.Character
											local abilities = character and character:FindFirstChild("Abilities")
											abilities = abilities and abilities:FindFirstChild("Slashes of Fury")
											local hotbar = localPlayer.PlayerGui:FindFirstChild("Hotbar")
											local red = hotbar and hotbar:FindFirstChild("Ability") and hotbar.Ability:FindFirstChild("Red")

											if table20.FuryDetection and character and character.Parent == alive and abilities and abilities.Enabled and red and not red.Visible and #balls:GetChildren() > 0 then
												flyteBBState.FuryCatch = true
												flyteBBState.FuryActive = false
											end
										end

										local function unreconstructedFunction74(argument)
											if not table20.FuryDetection or not flyteBBState.FuryCatch then
												return
											end
											local value109 = argument:FindFirstChildOfClass(uiConstants[65])
											if not value109 then
												return
											end
											flyteBBState.FuryActive = uiConstants[200]
											local n33 = tonumber(value109.Text) or 0
											local table26 = {}
											local furyParryMethod = table20.FuryParryMethod
											local value110 = n33

											while true do
												local now2 = os.clock()
												local furyParryMethod2 = table20.FuryParryMethod
												local num = tonumber(value109.Text)

												if num then
													local remoteEvent

													if furyParryMethod2 == furyParryMethod then
														remoteEvent = n33
													else
														table.clear(table26)
														furyParryMethod = furyParryMethod2
														remoteEvent = num
														value110 = num
													end

													if furyParryMethod2 == "Remote" then
														n33 = math.max(remoteEvent, num)
													else
														for i = 1, math.min(math.max(num - value110, 0), #table26) do
															table.remove(table26, 1)
														end

														while table26[1] and now2 >= table26[1] do
															table.remove(table26, 1)
														end

														local n34 = math.max(value110, num)
														n33 = n34 + #table26
														value110 = n34
													end
												end

												num = table20.FurySpamHit and num

												if num then
													num = n33 < (table20.FuryParryAmount or uiConstants[59])
												end

												if num then
													local remoteEvent

													if furyParryMethod2 == "Remote" and table25.Parry and table25.Parry.Fire then
														flyteBBState.ParryMethod = "Remote"
														remoteEvent = table25.Parry.Fire()
													else
														remoteEvent = table25.Animation.Input(furyParryMethod2)
													end

													if remoteEvent then
														n33 += 1

														if furyParryMethod2 ~= uiConstants[90] then
															local n34 = #table26 + 1
															local max = math.max
															local remoteAction = uiConstants[110]
															local signal = uiConstants[22]
															table26[n34] = os.clock() + max(remoteAction, valueFunction59() / 1000 + signal)
														end
													end
												end

												local furyParryDelay = table20.FuryParryDelay or 0.12
												local wait_ = task.wait
												local condition19 = furyParryMethod2 == "Remote" and furyParryDelay

												if not condition19 then
													local remoteEvent = uiConstants[33]
													condition19 = math.max(furyParryDelay - os.clock() - now2, remoteEvent)
												end

												wait_(condition19)
												if not (not table20.FuryDetection or not flyteBBState.FuryCatch or not value109:IsDescendantOf(workspace)) then
													continue
												end
												break
											end

											flyteBBState.FuryCatch = false
											flyteBBState.FuryActive = false
										end

										local function getParryTiming(child)
											local text5 = "Fury Ball " .. child:GetDebugId()
											local comboCounter = child:FindFirstChild("ComboCounter")

											if comboCounter then
												task.spawn(unreconstructedFunction74, comboCounter)
											end

											updatePing(text5)

											flyteBBState.Connections[text5] = child.ChildAdded:Connect(function(child2)
												if child2.Name == "ComboCounter" then
													unreconstructedFunction74(child2)
												end
											end)
										end

										for _, value109 in balls:GetChildren() do
											getParryTiming(value109)
										end

										flyteBBState.Connections["Fury Ball Added"] = balls.ChildAdded:Connect(getParryTiming)

										flyteBBState.Connections["Fury Ball Removed"] = balls.ChildRemoved:Connect(function(child)
											updatePing("Fury Ball " .. child:GetDebugId())
										end)

										local UserInputService = require(replicatedStorage.UserInputService)
										local SettingsController = require(replicatedStorage.Controllers.SettingsController)
										local net = replicatedStorage.Packages._Index["sleitnick_net@0.1.0"].net

										flyteBBState.Connections["Fury Input"] = UserInputService.InputBegan:Connect(function(input, gameProcessed)
											if not gameProcessed and SettingsController:UseBind(input, "Ability") then
												valueFunction73()
											end
										end)

										flyteBBState.Connections["Fury Button"] = abilityButtonPress.Event:Connect(valueFunction73)

										flyteBBState.Connections["Fury Catch"] = net["RE/SlashesOfFuryCatch"].OnClientEvent:Connect(function()
											flyteBBState.FuryCatch = uiConstants[200]
											flyteBBState.FuryActive = false
										end)

										flyteBBState.Connections["Fury End"] = net["RE/SlashesOfFuryEnd"].OnClientEvent:Connect(function()
											flyteBBState.FuryCatch = false
											flyteBBState.FuryActive = false
										end)
									end

									valueFunction40 = function(spamBall, argument, argument2, argument3, argument4, argument5)
										local character = localPlayer.Character
										if not getProperty(character) then
											return false
										end

										if disconnectTrackedConnection(character) then
											return false
										end

										if not spamBall then
											spamBall = table25.Ball and table25.Ball.GetMainBall and table25.Ball.GetMainBall()
										end

										if not spamBall then
											return false
										end
										argument = argument or table20.AutoParryType

										if argument == "Remote" then
											if table25.Parry and table25.Parry.Fire then
												flyteBBState.ParryMethod = "Remote"
												local condition19 = not argument3

												if condition19 then
													local name = localPlayer.Name
													condition19 = resolveKeyCode(spamBall) ~= name
												end

												if condition19 then
													return false
												end

												if valueFunction57(spamBall) then
													flyteBBState.ParryMethod = "VIM"
													if not table25.Animation.VIM() then
														return false
													end
												else
													local now2 = os.clock()

													if flyteBBState.ParryCooldownUntil and now2 >= flyteBBState.ParryCooldownUntil then
														flyteBBState.AutoParryAnimationPlayed = nil
													end

													local condition20 = not flyteBBState.AutoParryAnimationPlayed and (not flyteBBState.ParryCooldownUntil or now2 >= flyteBBState.ParryCooldownUntil)
													local value109, value110 = table25.Parry.Fire(argument2 and table25.Curve.GetCFrame() or nil)
													if not value109 then
														return false
													end

													if condition20 and flyteBBState.ParryMethod == "Remote" then
														if value110 or table25.Animation.PlayAnimation(uiConstants[200]) then
															flyteBBState.AutoParryAnimationPlayed = true
														end
													end
												end
											end
										else
											local condition19 = not argument3

											if condition19 then
												local name = localPlayer.Name
												condition19 = resolveKeyCode(spamBall) ~= name
											end

											if condition19 then
												return false
											end
											local n33 = uiConstants[33]

											if argument == "Mouse Click" and argument5 then
												local primaryPart = character.PrimaryPart
												local magnitude = valueFunction55(spamBall).Magnitude

												if primaryPart and magnitude > 0 then
													local n34 = (primaryPart.Position - valueFunction54(spamBall)).Magnitude / magnitude
													local n35 = math.clamp((argument5 - 1) / 99, 0, 1)
													n33 = math.clamp(n34 * (0.16 - n35 * 0.07), 0.02 - n35 * 0.008, 0.055 - n35 * 0.01)
												end
											end

											if not table25.Animation.Input(argument, nil, n33) then
												return false
											end
										end

										if table20.AutoSpamEnabled then
											local now2 = os.clock()

											while flyteBBState.SpamParries[1] and flyteBBState.SpamParries[1] < now2 - 0.75 do
												table.remove(flyteBBState.SpamParries, 1)
											end

											flyteBBState.SpamParries[#flyteBBState.SpamParries + uiConstants[18]] = now2
											local condition19 = not argument3

											if condition19 then
												local name = localPlayer.Name
												condition19 = resolveKeyCode(spamBall) == name
											end

											if condition19 then
												flyteBBState.SpamBall = spamBall
												flyteBBState.SpamTargetAt = now2
											end
										end

										flyteBBState.PreclickFired = nil
										flyteBBState.PreclickCooldown = nil
										flyteBBState.ParryActiveUntil = os.clock() + math.max(0, 0.5 - (argument4 or valueFunction59()) / 2000)
										flyteBBState.CooldownProtected = nil
										return true
									end

									local function valueFunction73()
										if flyteBBState.InfinityParried or not table20.InfinityDetection then
											return false
										end
										local getMainBall = table25.Ball and table25.Ball.GetMainBall and table25.Ball.GetMainBall()
										local character = localPlayer.Character
										character = character and character:FindFirstChild("HumanoidRootPart")
										local condition19 = not getMainBall or not character

										if not condition19 then
											local name = localPlayer.Name
											condition19 = resolveKeyCode(getMainBall) ~= name
										end

										if not condition19 then
											local position = character.Position
											condition19 = (valueFunction54(getMainBall) - position).Magnitude > 10
										end

										if condition19 then
											return uiConstants[101]
										end
										flyteBBState.InfinityParried = true
										local value109 = valueFunction58(getMainBall)

										if value109 then
											value109.Parried = true
											value109.ParryResetAt = os.clock() + 0.6
										end

										condition18 = true
										value107 = getMainBall
										n32 = os.clock() + 0.6
										if valueFunction40(getMainBall, table20.AutoParryType, uiConstants[200]) then
											return true
										end

										if value109 then
											value109.Parried = uiConstants[101]
										end

										condition18 = false
										value107 = nil
										flyteBBState.InfinityParried = false
										return false
									end

									valueFunction43({
										InfinityDetection = true,
										FreezeDetection = false,
										DeathSlashDetection = true,
										DeathSlashMinigame = uiConstants[101],
										SingularityDetection = true,
										TimeHoleDetection = true,
										ForcefieldDetection = false,
										ParryOnDribble = uiConstants[101],
										DribbleDetection = uiConstants[101],
									})

									table25.Detection = {}

									table25.Detection.GetDribbleBall = function(argument)
										local condition19 = not table20.ParryOnDribble or not argument or not valueFunction56(argument) or argument:GetAttribute("DribbleActive") ~= true

										if not condition19 then
											local name = localPlayer.Name
											condition19 = resolveKeyCode(argument) == name
										end

										if condition19 then
											return
										end
										local value109 = balls
										local value110

										if balls then
											value110 = value109
										else
											value110 = workspace:FindFirstChild(uiConstants[182])
										end

										if not value110 then
											return
										end

										for _, remoteEvent in value110:GetChildren() do
											if remoteEvent ~= argument and remoteEvent.Name == argument.Name and not valueFunction56(remoteEvent) and remoteEvent:GetAttribute("highlighted") == true then
												return argument
											end
										end
									end

									table25.Detection.GetSelfDribbleBall = function(selfDribbleBall, argument)
										if not table20.DribbleDetection then
											flyteBBState.SelfDribbleBall = nil
											flyteBBState.SelfDribbleAway = nil
											return nil, false
										end

										local condition19 = not selfDribbleBall.Parent or not valueFunction56(selfDribbleBall) or selfDribbleBall:GetAttribute("DribbleActive") ~= true
										local condition20

										if condition19 then
											condition20 = condition19
										else
											local name = localPlayer.Name
											condition20 = resolveKeyCode(selfDribbleBall) ~= name
										end

										if condition20 then
											if flyteBBState.SelfDribbleBall == selfDribbleBall then
												flyteBBState.SelfDribbleBall = nil
												flyteBBState.SelfDribbleAway = nil
											end

											return nil, false
										end

										if flyteBBState.SelfDribbleBall ~= selfDribbleBall then
											flyteBBState.SelfDribbleBall = selfDribbleBall
											flyteBBState.SelfDribbleAway = false
										end

										local condition21 = (argument.Position - valueFunction54(selfDribbleBall)):Dot(valueFunction55(selfDribbleBall)) > 0

										if not condition21 then
											flyteBBState.SelfDribbleAway = true
										end

										return selfDribbleBall, flyteBBState.SelfDribbleAway and condition21
									end

									table25.Detection.TrackAbilityUse = function(argument, argument2, argument3, maximum, argument4)
										local serverTimeNow = workspace:GetServerTimeNow()
										local table26 = flyteBBState.AbilityUses[argument]

										if not table26 or table26.Ability ~= argument3 or table26.Character ~= argument2 then
											table26 = { Ability = argument3, Character = argument2, Recoveries = {} }
											flyteBBState.AbilityUses[argument] = table26
										end

										for i = #table26.Recoveries, 1, -1 do
											if table26.Recoveries[i] <= serverTimeNow then
												table.remove(table26.Recoveries, i)
											end
										end

										table26.Maximum = maximum

										if #table26.Recoveries < maximum then
											table26.Recoveries[#table26.Recoveries + 1] = serverTimeNow + argument4
										end
									end

									valueFunction69 = function(argument, argument2)
										local condition19 = table20.FreezeDetection and argument:GetAttribute("Frozen") == true

										if condition19 then
											condition19 = (argument2 or resolveKeyCode(argument)) == localPlayer.Name
										end

										local condition20

										if condition19 then
											condition20 = not (table20.AutoPlayEnabled and table20.HitFreeze)
										else
											condition20 = condition19
										end

										return condition20
									end

									table25.Detection.BlocksParry = function(argument, argument2, argument3)
										local humanoidRootPart = argument3 or argument2 and argument2:FindFirstChild("HumanoidRootPart")
										if not humanoidRootPart then
											return true
										end

										if argument and valueFunction69(argument) then
											return true
										end
										local tornado = runtime:FindFirstChild("Tornado")

										if tornado then
											local attribute = tornado:GetAttribute("TornadoTime")

											if flyteBBState.Tornado ~= tornado or flyteBBState.TornadoDuration ~= attribute or not flyteBBState.TornadoAt then
												flyteBBState.Tornado = tornado
												flyteBBState.TornadoDuration = attribute
												flyteBBState.TornadoAt = tick()
											end

											local tornadoAt = flyteBBState.TornadoAt
											if tick() - tornadoAt < (attribute or 1) + 0.314159 then
												return true
											end
										elseif flyteBBState.Tornado then
											flyteBBState.Tornado = nil
											flyteBBState.TornadoDuration = nil
											flyteBBState.TornadoAt = nil
										end

										if table20.SingularityDetection and humanoidRootPart:FindFirstChild("SingularityCape") then
											return true
										end

										if table20.FuryDetection and (flyteBBState.FuryCatch or flyteBBState.FuryActive) then
											return true
										end

										if table20.DeathSlashDetection and flyteBBState.DeathSlash then
											return true
										end
										local abilities = argument2:FindFirstChild("Abilities")
										local visible = duration and duration.Visible
										local timeHole = abilities and abilities:FindFirstChild("Time Hole")
										if table20.TimeHoleDetection and (flyteBBState.TimeHole or visible and timeHole and timeHole.Enabled) then
											return true
										end

										if table20.InfinityDetection and (flyteBBState.InfinityActive or valueFunction49("Infinity")) then
											return true
										end

										if table20.ForcefieldDetection and valueFunction49("Forcefield") and (humanoidRootPart:FindFirstChild("MaxShield") or humanoidRootPart:FindFirstChild("Shield")) then
											return uiConstants[200]
										end
										return uiConstants[101], abilities
									end

									flyteBBState.Connections["Parry Cooldown"] = replicatedStorage.Remotes.VisualCD.OnClientEvent:Connect(function(argument, argument2, argument3)
										if not argument then
											return
										end
										local now2 = os.clock()

										if argument2 then
											flyteBBState.ParryCooldownUntil = now2 + (tonumber(argument3) or 1.3)
											local value109 = uiConstants[66]
											local n33 = math.clamp(valueFunction59() / value109 + 0.1, 0.15, 1)

											if not (flyteBBState.AutoBall or flyteBBState.AutoParryAt and now2 - flyteBBState.AutoParryAt <= n33) and not (flyteBBState.AutoSpamParryAt and now2 - flyteBBState.AutoSpamParryAt <= n33) then
												flyteBBState.ExtraParryCooldownUntil = flyteBBState.ParryCooldownUntil
											end

											flyteBBState.PreclickCooldown = flyteBBState.PreclickFired or nil
											flyteBBState.PreclickFired = nil
											flyteBBState.ParryActiveUntil = now2 + math.max(0, uiConstants[81] - valueFunction59() / 2000)
											flyteBBState.CooldownProtected = nil
										else
											flyteBBState.ParryCooldownUntil = nil
											flyteBBState.ExtraParryCooldownUntil = nil
											flyteBBState.AutoParryAt = nil
											flyteBBState.AutoParryAnimationPlayed = nil
											flyteBBState.PreclickCooldown = nil
											flyteBBState.CooldownProtected = nil
											flyteBBState.ManualBall = nil

											if table20.TriggerbotEnabled then
												table25.Triggerbot.Update()
											elseif table20.AutoParryEnabled then
												task.spawn(table25.Loop.MainParryLoop)
											end
										end
									end)

									table25.Detection.UseProtection = function(argument, argument2)
										local now2 = os.clock()

										if not (flyteBBState.ParryCooldownUntil and now2 < flyteBBState.ParryCooldownUntil or textService and textService.Offset.Y < 0.49) then
											flyteBBState.ParryCooldownUntil = nil
											flyteBBState.PreclickFired = nil
											flyteBBState.PreclickCooldown = nil
											flyteBBState.CooldownProtected = nil
										elseif table20.CooldownProtectionEnabled then
											if flyteBBState.CooldownProtected then
												return true
											end

											if now2 < (flyteBBState.ParryActiveUntil or 0) then
												return true
											end
											local getMainBall = table25.Ball and table25.Ball.GetMainBall and table25.Ball.GetMainBall()
											local magnitude = (getMainBall and valueFunction55(getMainBall) or Vector3.zero).Magnitude
											local condition19 = not getMainBall or magnitude < uiConstants[59]
											local condition20

											if condition19 then
												condition20 = condition19
											else
												local name = localPlayer.Name
												condition20 = resolveKeyCode(getMainBall) ~= name
											end

											if condition20 then
												return true
											end

											if flyteBBState.PreclickCooldown then
												local n33 = valueFunction59() / 1000
												if math.max(0, (argument.PrimaryPart.Position - valueFunction54(getMainBall)).Magnitude - uiConstants[174]) / magnitude - n33 > math.max(0, 0.5 - n33) then
													return uiConstants[200]
												end
											end

											if value106 and value106.Offset.Y >= 0.49 then
												flyteBBState.CooldownProtected = true
												abilityButtonPress:Fire()
												return uiConstants[200], true
											end

											return true
										end

										if argument2 then
											return false
										end

										if table20.AutoAbilityEnabled then
											argument = argument and argument:FindFirstChild("Abilities")

											if table25.Ball and table25.Ball.GetMainBall then
												table25.Ball.GetMainBall()
											end

											if dragHandler(argument) then
												return true, true
											end
										end

										return false
									end

									local function unreconstructedFunction74()
										local deathSlashTimer

										while true do
											deathSlashTimer = localPlayer.PlayerGui:FindFirstChild("DeathSlashTimer")
											deathSlashTimer = deathSlashTimer and deathSlashTimer:FindFirstChild("Frame")

											if not deathSlashTimer then
												runService.PreRender:Wait()
											end

											if not (deathSlashTimer or not flyteBBState.DeathSlash or not table20.DeathSlashDetection or not table20.DeathSlashMinigame) then
												continue
											end
											break
										end

										if not deathSlashTimer or not flyteBBState.DeathSlash or not table20.DeathSlashDetection or not table20.DeathSlashMinigame then
											return
										end

										while true do
											runService.PreRender:Wait()
											if not (not flyteBBState.DeathSlash or not table20.DeathSlashDetection or not table20.DeathSlashMinigame or deathSlashTimer.Visible) then
												continue
											end
											break
										end

										local imageLabel = deathSlashTimer:FindFirstChild("ImageLabel")
										local circle = deathSlashTimer:FindFirstChild("Circle")
										local inner = deathSlashTimer:FindFirstChild("Inner")
										local n33 = circle and inner and (circle.Size.X.Scale + inner.Size.X.Scale) / 2

										while flyteBBState.DeathSlash and table20.DeathSlashDetection and table20.DeathSlashMinigame and deathSlashTimer.Visible and imageLabel and n33 do
											if imageLabel.Size.X.Scale <= n33 then
												abilityButtonPress:Fire()
												return
											end
											runService.PreRender:Wait()
										end
									end

									table25.Detection.Start = function()
										flyteBBState.Connections.Infinity = replicatedStorage.Remotes.InfinityBall.OnClientEvent:Connect(function(argument, argument2)
											local infinityActive = flyteBBState.InfinityActive

											if argument2 then
												if valueFunction49("Infinity") then
													flyteBBState.InfinityActive = uiConstants[200]
													flyteBBState.InfinityParried = uiConstants[101]
												end
											elseif infinityActive then
												flyteBBState.InfinityActive = false

												if table20.InfinityDetection then
													task.defer(valueFunction73)
												end
											end
										end)

										flyteBBState.Connections["Death Slash"] = replicatedStorage.Remotes.DeathBall.OnClientEvent:Connect(function(argument, argument2)
											if argument ~= localPlayer and argument ~= localPlayer.Name then
												return
											end
											local deathSlash = flyteBBState.DeathSlash
											flyteBBState.DeathSlash = argument2 == true

											if flyteBBState.DeathSlash and not deathSlash and table20.DeathSlashDetection and table20.DeathSlashMinigame then
												task.spawn(unreconstructedFunction74)
											end
										end)

										task.spawn(function()
											local net = replicatedStorage.Packages._Index["sleitnick_net@0.1.0"].net

											flyteBBState.Connections["Time Hole"] = net["RE/TimeHoleActivate"].OnClientEvent:Connect(function(argument)
												if argument == localPlayer or argument == localPlayer.Name then
													flyteBBState.TimeHole = true
												end
											end)

											flyteBBState.Connections["Time Hole End"] = net["RE/TimeHoleDeactivate"].OnClientEvent:Connect(function()
												flyteBBState.TimeHole = false
											end)
										end)
									end

									table25.Detection.Start()
									valueFunction72()
								end
							end

							do
								local valueFunction72, valueFunction73

								do
									table25.Staff = {
										Group = 12836673,
										Roles = {
											Mod = true,
											Support = true,
											Admin = true,
											Developer = uiConstants[200],
											["Lead Developer"] = true,
											Management = uiConstants[200],
											Executive = true,
											["Co-Owner"] = uiConstants[200],
											Contributor = true,
											["Trial QA"] = true,
											Holder = true,
										},
									}

									valueFunction43({ StaffDetection = false, StaffDetectionMode = "warn" })

									table25.Staff.Check = function(argument)
										if argument == localPlayer then
											return
										end

										if flyteBBState.StaffDetected[argument] or argument.Parent ~= playersService then
											return
										end
										local ok, result = pcall(argument.GetRoleInGroup, argument, table25.Staff.Group)

										if ok and table25.Staff.Roles[result] then
											flyteBBState.StaffDetected[argument] = true
											local text5 = "Staff Detected: " .. argument.Name .. " | " .. result

											if table20.StaffDetectionMode == "kick" then
												localPlayer:Kick(text5)
											else
												value103:Notify({ Title = text5, Duration = uiConstants[147], Icon = "rbxassetid://128616761621643" })
											end
										end
									end

									table25.Staff.Set = function(argument)
										if not argument then
											updatePing("Staff")
											table.clear(flyteBBState.StaffDetected)
											return
										end

										for _, value109 in playersService:GetPlayers() do
											table25.Staff.Check(value109)
										end

										flyteBBState.Connections.Staff = playersService.PlayerAdded:Connect(function(player)
											task.wait(1)

											if table20.StaffDetection then
												table25.Staff.Check(player)
											end
										end)
									end

									valueFunction43({ DeviceSpoofType = "PC" })
									table25.DeviceSpoof = {}

									table25.DeviceSpoof.Apply = function()
										local text5 = [[local Source = %q
if not game:IsLoaded() then game.Loaded:Wait() end
local Queue = queue_on_teleport or queueonteleport or (syn and syn.queue_on_teleport) or (fluxus and fluxus.queue_on_teleport)
local Players = game:GetService('Players')
local Player = Players.LocalPlayer or Players.PlayerAdded:Wait()
local Environment = getgenv()
if Environment.FlyteDeviceSpoofQueue then
    Environment.FlyteDeviceSpoofQueue:Disconnect()
end
local Queued = false
Environment.FlyteDeviceSpoofQueue = Player.OnTeleport:Connect(function()
    if not Queued then
        Queue(Source:format(Source))
        Queued = true
    end
end)
local Device = ]] .. httpService:JSONEncode(table20.DeviceSpoofType == "Mobile" and "Phone" or table20.DeviceSpoofType) .. "if game.GameId ~= " .. tostring(game.GameId) .. [[ then return end
local Previous = Environment.FlyteDeviceSpoofRun
if Previous and Previous.JobId == game.JobId and Previous.Device == Device then return end
if Previous and Previous.Restore then Previous.Restore() end
local Run = {Device = Device, JobId = game.JobId}
Environment.FlyteDeviceSpoofRun = Run
while not workspace:GetAttribute('ClientModulesLoaded') do
    workspace:GetAttributeChangedSignal('ClientModulesLoaded'):Wait()
end
if Environment.FlyteDeviceSpoofRun ~= Run then return end
local ReplicatedStorage = game:GetService('ReplicatedStorage')
local Listener = require(ReplicatedStorage:WaitForChild('ClientGameModules'):WaitForChild('DeviceListener'))
local Observe = Listener.Observe

local function Apply(Callback)
    if Run.Restore then Run.Restore() end
    task.spawn(function()
        local Success, Result = pcall(function()
            Callback(Device)
            Callback(Listener.Device)
        end)
        if not Success then
            Environment.FlyteDeviceSpoofRun = nil
            error(Result, 0)
        end
        Environment.FlyteDeviceSpoofApplied = {Device = Device, JobId = game.JobId}
    end)
end

for _, Connection in Listener.OnChange:GetConnections() do
    if debug.info(Connection._fn, 's') == 'ReplicatedStorage.Controllers.PlayerProfileController' then
        Apply(Connection._fn)
        return
    end
end

local function ObserveDevice(Self, Callback)
    if debug.info(Callback, 's') == 'ReplicatedStorage.Controllers.PlayerProfileController' then
        Apply(Callback)
        return Self.OnChange:Connect(Callback)
    end

    return Observe(Self, Callback)
end

Run.Restore = function()
    if Listener.Observe == ObserveDevice then Listener.Observe = Observe end
    Run.Restore = nil
end
Listener.Observe = ObserveDevice
]]

										local str6 = text5:format(text5)

										if genv.FlyteDeviceSpoofQueue then
											genv.FlyteDeviceSpoofQueue:Disconnect()
											genv.FlyteDeviceSpoofQueue = nil
										end
										;(queue_on_teleport or queueonteleport or syn and syn.queue_on_teleport or fluxus and fluxus.queue_on_teleport)(str6)
										value103:Notify({ Title = "Rejoining...", Duration = uiConstants[18] })
										task.wait(0.2)

										if not pcall(teleportService.TeleportToPlaceInstance, teleportService, game.PlaceId, game.JobId, localPlayer) then
											game.ExperienceService:LaunchExperience({ placeId = game.PlaceId, gameInstanceId = game.JobId })
										end
									end

									table25.LoadCurves = function()
										table25.Curve = {}
										table25.Curve.Random = Random.new()

										table25.Curve.GetCFrame = function(argument, argument2)
											local selectedParryType = table20.SelectedParryType or "Camera"
											local cFrame = currentCamera.CFrame
											if selectedParryType == "Camera" or selectedParryType == "BB Camera" then
												return cFrame
											end
											local humanoidRootPart = localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart")
											if not humanoidRootPart then
												return cFrame
											end

											if selectedParryType == "Randomized Backwards" then
												local cFrame2 = humanoidRootPart.CFrame
												local value109 = table25.Curve.Random:NextNumber(0, 6.2831853071795862)
												local value110 = table25.Curve.Random:NextNumber(0.2, 0.7)
												local upVector = cFrame2.UpVector
												return CFrame.lookAt(humanoidRootPart.Position, humanoidRootPart.Position + (-cFrame2.LookVector + (cFrame2.RightVector * math.cos(value109) + upVector * math.sin(value109)) * value110).Unit * 10000)
											end

											if selectedParryType == "Backwards" then
												local n33 = -cFrame.LookVector * 10000
												return CFrame.new(cFrame.Position, cFrame.Position + Vector3.new(n33.X, uiConstants[33], n33.Z)), nil
											end
											argument = argument or table25.Player.GetClosest()

											if argument then
												argument = argument:IsA("BasePart") and argument or argument.PrimaryPart or argument:FindFirstChild("HumanoidRootPart")
											end

											if argument and argument2 then
												local value109 = currentCamera:WorldToScreenPoint(argument.Position)
												local value110 = uiConstants[70]
												local y = value109.Y
												argument2[1] = value109.X
												argument2[value110] = y
											end

											if selectedParryType == "Stop" then
												return CFrame.new(humanoidRootPart.Position, humanoidRootPart.Position + Vector3.new(0, -3500, uiConstants[33]))
											end

											if selectedParryType == "Random" then
												argument = argument and argument.Position - humanoidRootPart.Position
												local lookVector = argument or cFrame.LookVector
												if lookVector.Magnitude < 0.001 then
													return cFrame
												end
												local unit = lookVector.Unit
												local unit2 = unit:Cross(math.abs(unit.Y) < 0.9 and Vector3.new(0, 1, uiConstants[33]) or Vector3.new(1, 0, 0)).Unit
												local value109 = unit2:Cross(unit)
												local value110 = table25.Curve.Random:NextNumber(0, 6.2831853071795862)
												local random2 = table25.Curve.Random
												return CFrame.new(humanoidRootPart.Position, humanoidRootPart.Position + (unit2 * math.cos(value110) + value109 * math.sin(value110) - unit * random2:NextNumber(uiConstants[100], 0.8)).Unit * 1500)
											end

											if selectedParryType == "High" then
												return CFrame.new(humanoidRootPart.Position, humanoidRootPart.Position + Vector3.new(0, 9e18, uiConstants[33]))
											end

											if not argument then
												return humanoidRootPart.CFrame
											end
											local position = argument.Position
											if selectedParryType == "Straight" then
												return CFrame.new(humanoidRootPart.Position, position + Vector3.new(0, 10, 0))
											end

											if selectedParryType == "Dot" then
												return (position - humanoidRootPart.Position).Magnitude > 0.001 and CFrame.lookAt(humanoidRootPart.Position, position) or humanoidRootPart.CFrame
											end
											return humanoidRootPart.CFrame
										end
									end

									table25.LoadCurves()

									table25.LoadParry = function()
										local CollectionService = game:GetService("CollectionService")
										local table26 = {}
										local table27 = { 0, 0 }
										local table28 = { 1.5, 1.25, 1, 0.75, 0.625 }
										local ServerInfo = require(replicatedStorage.ServerInfo)
										local UniverseIds = require(replicatedStorage.Shared.UniverseIds)
										local condition19 = not ServerInfo.isDungeonsMatchServer() and game.PlaceId ~= UniverseIds.RankedMatches.PlaceId and game.PlaceId ~= UniverseIds.RankedMatchesNoAbility.PlaceId and not ServerInfo.isMedalServer() and not ServerInfo.isClanWarServer() and not ServerInfo.isTournamentMatchServer()
										local NoobParryEnabled

										if condition19 then
											local value109 = uiConstants[200]
											NoobParryEnabled = require(replicatedStorage.Common.Utils).FFlag.GetInstantFFlag("NoobParryEnabled", value109)
										else
											NoobParryEnabled = condition19
										end

										local swordsController = replicatedStorage.Controllers["SwordsController \12"]
										local PRY = require(swordsController.PRY)

										local function unreconstructedFunction74()
											error("devirt: storing a non-empty VM table into a register (at 54:73)")
										end

										local value109, value110 = unreconstructedFunction74()
										local remoteEvent = nil
										local remoteAction = nil
										local time = nil
										local table29 = {}
										local signal = require(replicatedStorage.Packages.Signal).new()
										signal:Connect(PRY)
										local condition20 = identifyexecutor() == "Volt"
										local value114 = nil
										local originalFireServer = nil
										local closureFactory = newcclosure
										local fireServerHook = hookfunction(Instance.new("RemoteEvent").FireServer, closureFactory(function(F,...)if not  remoteEvent and not checkcaller()then local P,x,f,h,M,C,Y,R=...;if P== value110 and type(x)=="string"and type(f)=="string"and type(h)=="number"and typeof(M)=="CFrame"and type(C)=="table"and type(Y)=="table"and type(R)=="boolean"then  remoteEvent =F; remoteAction =x;end;end;return  originalFireServer (F,...);end))

										local function getParryTiming()
											local n33 = table28[(Data:Get("timesParried") or 0) + uiConstants[18]] or 0.5
											if not NoobParryEnabled then
												return n33
											end
											local Kills = Data:Get("TotalStats.Kills") or 0
											return Kills < 20 and n33 * Kills / 20 or n33
										end

										local function valueFunction76(argument, argument2, argument3, argument4, argument5)
											time = time or value109(remoteAction, "TIME")
											local text5 = tostring(math.floor(workspace:GetServerTimeNow() * uiConstants[158]))
											table.clear(table29)

											for i = 1, #text5 do
												local byte = string.byte
												local n33 = (i - uiConstants[18]) % #time + uiConstants[18]
												table29[i] = string.char(bit32.bxor((string.byte(text5, i) + i) % 256, byte(time, n33)))
											end

											local str6 = table.concat(table29)

											for i = 1, argument do
												fireServerHook(remoteEvent, value110, remoteAction, str6, argument2, argument3, argument4, argument5, false)
											end
										end

										table25.Parry = {}

										table25.Parry.NativeClick = function()
											if condition20 then
												if not value114 or not value114.Enabled then
													value114 = nil
													local hotbar = localPlayer.PlayerGui:FindFirstChild("Hotbar")
													hotbar = hotbar and hotbar:FindFirstChild("Block")

													if hotbar then
														for _, value118 in getconnections(hotbar.Activated) do
															local function_ = value118.Function
															if value118.Enabled and function_ and getfenv(function_).script == swordsController then
																value114 = value118
																break
															end
														end
													end
												end

												if value114 then
													value114:Fire()
													return true
												end
											end

											return valueFunction41()
										end

										local function valueFunction77(argument)
											if argument then
												return false
											end
											local selectedParryType = table20.SelectedParryType or "Camera"
											return selectedParryType ~= uiConstants[132] and selectedParryType ~= "BB Camera" and selectedParryType ~= "Backwards" and selectedParryType ~= "Randomized Backwards"
										end

										local function valueFunction78(argument, argument2, argument3)
											argument = argument or table26
											argument2 = argument2 or table27
											table.clear(argument)
											local character = localPlayer.Character
											local condition21 = table20.SelectedParryType == "BB Camera"
											local condition22 = character and character.Parent ~= alive and newInstance(character)

											if condition21 then
												condition22 = character and character.Parent == workspace.Dead and localPlayer:GetAttribute("LobbyTraining")
											end

											local vector2

											if userInputService.TouchEnabled then
												local viewportSize = currentCamera.ViewportSize
												vector2 = Vector2.new(viewportSize.X / 2, viewportSize.Y / 2)
											else
												vector2 = userInputService:GetMouseLocation()
											end

											local y = vector2.Y
											argument2[uiConstants[18]] = vector2.X
											argument2[2] = y

											if condition21 and condition22 then
												for _, value118 in workspace.Dead:GetChildren() do
													local playerFromCharacter = playersService:GetPlayerFromCharacter(value118)
													local humanoidRootPart = value118:FindFirstChild("HumanoidRootPart")

													if playerFromCharacter and playerFromCharacter:GetAttribute("LobbyTraining") and humanoidRootPart then
														argument[value118.Name] = currentCamera:WorldToScreenPoint(humanoidRootPart.Position)
													end
												end

												for _, value118 in CollectionService:GetTagged("LobbyTrainingTarget") do
													argument[value118.Name] = currentCamera:WorldToScreenPoint(value118.Position)
												end

												return argument, argument2
											end

											local huge = math.huge
											local children

											if condition22 then
												children = valueFunction47()
											else
												local parent = alive and alive.Parent and alive or workspace:FindFirstChild("Alive")
												children = nil

												if parent then
													alive = parent
													children = parent:GetChildren()
												end
											end

											if not children then
												return argument, argument2
											end
											local value118

											for _, value119 in children, nil, nil do
												local primaryPart = condition22 and value119 or value119.PrimaryPart

												if not condition22 and condition21 then
													primaryPart = value119:FindFirstChild("HumanoidRootPart")
												end

												local condition23

												if primaryPart then
													condition23 = not condition22

													if not condition23 then
														condition23 = value119.Parent

														if condition23 then
															condition23 = (value119:GetAttribute(uiConstants[138]) or uiConstants[18]) > 0
														end
													end
												else
													condition23 = primaryPart
												end

												if condition23 then
													local value120, value121 = currentCamera:WorldToScreenPoint(primaryPart.Position)
													argument[value119.Name] = value120

													if argument3 and value119 ~= character and value121 then
														local n33 = value120.X - vector2.X
														local n34 = value120.Y - vector2.Y
														local n35 = n33 * n33 + n34 * n34

														if n35 < huge then
															huge = n35
															value118 = value119
														end
													end
												elseif argument3 and not condition22 and value119 ~= character then
													local humanoidRootPart = value119:FindFirstChild("HumanoidRootPart")

													if humanoidRootPart then
														local value120, value121 = currentCamera:WorldToScreenPoint(humanoidRootPart.Position)
														local n33 = value120.X - vector2.X
														local n34 = value120.Y - vector2.Y
														local n35 = n33 * n33 + n34 * n34

														if value121 and n35 < huge then
															huge = n35
															value118 = value119
														end
													end
												end
											end

											return argument, argument2, value118
										end

										table25.Parry.GetData = function(argument, argument2)
											local table30 = argument2 or { {}, { uiConstants[33], 0 } }
											local value118, value119, value120 = valueFunction78(table30[1], table30[uiConstants[70]], valueFunction77(argument))
											argument = argument or table25.Curve.GetCFrame(value120, value119)
											table30[1] = value118
											table30[2] = value119
											table30[3] = argument
											return table30
										end

										table25.Parry.Fire = function(argument, argument2, argument3, argument4)
											local character = localPlayer.Character
											if character and disconnectTrackedConnection(character) then
												return false
											end
											local value118, value119

											if argument3 then
												value118 = argument3[1]
												value119 = argument3[uiConstants[70]]
												argument = argument3[3]
											else
												local value120
												value118, value119, value120 = valueFunction78(nil, nil, valueFunction77(argument))
												argument = argument or table25.Curve.GetCFrame(value120, value119)
											end

											local value120 = getParryTiming()
											argument4 = argument4 or uiConstants[18]
											if remoteAction then
												valueFunction76(argument4, value120, argument, value118, value119)
												return true
											end

											for i = 1, argument4 do
												signal:Fire(value120, argument, value118, value119, uiConstants[101])

												if remoteAction then
													local n33 = argument4 - i

													if n33 > 0 then
														valueFunction76(n33, value120, argument, value118, value119)
													end

													break
												end
											end

											return true
										end

										local fire = table25.Parry.Fire
										getgenv().FlyteParry = fire
									end

									table25.LoadParry()

									valueFunction43({
										AutoPreclickEnabled = false,
										PreclickForAll = false,
										PreclickAfterVelocity = 0,
										PreclickDelay = 135,
									})

									flyteBBState.PreclickQueue = {}

									valueFunction70 = function()
										updatePing("Preclick")
									end

									valueFunction72 = function()
										local character = localPlayer.Character
										return character and character.Parent == alive and not disconnectTrackedConnection(character) and not character:GetAttribute("DEATH_SLASH_STANCE") and not character:GetAttribute("IsRagingDeflection") and not character:GetAttribute("IsRapture") and not valueFunction49("Infinity") and not valueFunction49("Forcefield")
									end

									do
										local function unreconstructedFunction74()
											if not valueFunction72() then
												return false
											end
											local value109

											if (userInputService.TouchEnabled or table20.AutoParryType == "Remote") and table25.Parry and table25.Parry.Fire then
												flyteBBState.ParryMethod = "Remote"
												local value110
												value109, value110 = table25.Parry.Fire(nil, uiConstants[200])

												if value109 and not value110 then
													table25.Animation.PlayAnimation(true)
												end
											else
												if userInputService.TouchEnabled or table20.AutoParryType == "Remote" then
													return uiConstants[101]
												end
												flyteBBState.ParryMethod = "VIM"
												value109 = table25.Animation.VIM(true)
											end

											if value109 then
												flyteBBState.PreclickFired = true
											end

											return value109
										end

										valueFunction73 = function()
											if flyteBBState.Connections.Preclick then
												return
											end

											flyteBBState.Connections.Preclick = runService.Heartbeat:Connect(function()
												local preclickQueue = flyteBBState.PreclickQueue
												if not preclickQueue or #preclickQueue <= 0 then
													valueFunction70()
													return
												end
												local character = localPlayer.Character
												if not character or not character.Parent or character.Parent ~= alive then
													return
												end

												for i = #preclickQueue, uiConstants[18], -1 do
													local value109 = preclickQueue[i]
													local fireAt = value109.FireAt

													if os.clock() >= fireAt then
														if (table20.PreclickAfterVelocity or 0) <= value109.Speed then
															unreconstructedFunction74()
														end

														table.remove(preclickQueue, i)
													end
												end

												if #preclickQueue <= 0 then
													valueFunction70()
												end
											end)
										end
									end
								end

								do
									local function unreconstructedFunction74(argument)
										if not valueFunction72() then
											return
										end
										table.insert(flyteBBState.PreclickQueue, { FireAt = os.clock() + (table20.PreclickDelay or 135) / uiConstants[66], Speed = valueFunction55(argument).Magnitude })
										valueFunction73()
									end

									valueFunction71 = function()
										if flyteBBState.Connections["Auto Preclick"] then
											return
										end
										local VFXController = require(replicatedStorage.Controllers.VFXController)
										if not getupvalues then
											return
										end
										local value109 = nil

										for _, value110 in getupvalues(VFXController.Start) do
											if typeof(value110) == "Instance" and value110:IsA("RemoteEvent") then
												value109 = value110
												break
											else
												value109 = nil
											end
										end

										if not value109 then
											return
										end

										flyteBBState.Connections["Auto Preclick"] = value109.OnClientEvent:Connect(function(argument, argument2, argument3, argument4, argument5, arg6)
											if not table20.AutoPreclickEnabled or not arg6 or argument4 == localPlayer.Character then
												return
											end

											if table20.PreclickForAll or argument5 == localPlayer.Character then
												unreconstructedFunction74(argument3)
											end
										end)
									end
								end
							end
						end

						local valueFunction72

						do
							do
								valueFunction72 = function()
									updatePing("Auto Preclick")
									valueFunction70()

									if flyteBBState.PreclickQueue then
										table.clear(flyteBBState.PreclickQueue)
									end
								end

								table25.LoadAnimations = function()
									table25.Animation = {}
									table25.Animation.Controller = require(replicatedStorage.Controllers.AnimationController)
									table25.Animation.SwordAPI = require(replicatedStorage.Shared.SwordAPI)
									local n33 = 0
									local condition19 = uiConstants[101]
									local value109 = uiConstants[33]
									local condition20 = false
									local table26 = {}

									local function valueFunction73(argument)
										local value110 = table26[argument]

										if not value110 then
											local swordData = table25.UnlockAll and table25.UnlockAll.SwordData
											swordData = swordData and swordData[argument] or replicatedStorage.Shared.ReplicatedInstances.Swords.GetSword:Invoke(argument)
											table26[argument] = swordData
											value110 = swordData
										end

										return value110
									end

									table25.Animation.Reset = function()
										value109 += uiConstants[18]

										if condition20 then
											condition20 = false
											mouse1release()
										end

										if type(flyteBBState.GrabAnimation) == "table" then
											for _, value110 in flyteBBState.GrabAnimation, nil, nil do
												pcall(value110.Stop, value110, 0)
											end

											table.clear(flyteBBState.GrabAnimation)
										end

										n33 = 0
										condition19 = uiConstants[200]
										flyteBBState.AutoParryAnimationPlayed = nil
									end

									table25.Animation.GetSword = function(argument)
										local attribute = argument and argument:GetAttribute("CurrentlyEquippedSword") or localPlayer:GetAttribute("CurrentlyEquippedSword")

										if table25.UnlockAll and table25.UnlockAll.Status == "active" and table25.UnlockAll.Sword then
											attribute = table25.UnlockAll.Sword

											if argument then
												argument:SetAttribute("CurrentlyEquippedSword", attribute)
											end

											localPlayer:SetAttribute("CurrentlyEquippedSword", attribute)
										end

										return attribute
									end

									local function unreconstructedFunction74(argument, argument2)
										return table25.Animation.SwordAPI:GetAnimations(argument, { "Parry", "GrabParry" }, argument2.AnimationType, argument2.SwordType)
									end

									local function getParryTiming(argument, argument2)
										local character = argument or localPlayer.Character
										local humanoid = character and (character:FindFirstChildOfClass("Humanoid") or character:WaitForChild("Humanoid", 5))

										if humanoid then
											humanoid = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator", 5)
										end

										if not humanoid or character ~= localPlayer.Character then
											return
										end
										argument2 = argument2 or table25.Animation.GetSword(character)
										argument2 = argument2 and valueFunction73(argument2)
										if not argument2 or character ~= localPlayer.Character then
											return
										end
										local value110 = unreconstructedFunction74(character, argument2)
										pcall(contentProvider.PreloadAsync, contentProvider, value110)
										if character ~= localPlayer.Character then
											return
										end

										for _, remoteEvent in value110, nil, nil do
											table25.Animation.Controller:LoadAnimation(humanoid, remoteEvent, true)
										end
									end

									table25.Animation.PreloadSword = function(argument)
										task.spawn(getParryTiming, localPlayer.Character, argument)
									end

									table25.Animation.ParryAnimation = function()
										local character = localPlayer.Character
										local humanoid = character and character:FindFirstChildOfClass("Humanoid")
										if not humanoid then
											return uiConstants[101]
										end
										local animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator", 1)
										if not animator then
											return false
										end
										local value110 = table25.Animation.GetSword(character)
										if not value110 then
											return false
										end
										local remoteEvent = valueFunction73(value110)
										if not remoteEvent or character ~= localPlayer.Character then
											return false
										end

										for _, remoteAction in table25.Animation.Controller:GetPlayingAnimationTracks(animator) do
											if remoteAction:GetAttribute("GrabParry") or remoteAction:GetAttribute("Parry") or remoteAction.Name == "GrabParry" or remoteAction.Name == "Grab" then
												remoteAction:Stop(remoteAction:GetAttribute("StopFadeTime") or 0.1)
											elseif remoteAction.Name == "SuccessParry" or remoteAction.Name == "Success" then
												remoteAction:Stop(remoteAction:GetAttribute("StopFadeTime") or 0.1)
											end
										end

										local remoteAction = flyteBBState
										local signal = uiConstants[145]
										remoteAction.GrabAnimation = type(flyteBBState.GrabAnimation) == signal and flyteBBState.GrabAnimation or {}
										table.clear(flyteBBState.GrabAnimation)
										local condition21 = false

										for _, value114 in unreconstructedFunction74(character, remoteEvent) do
											local originalFireServer = table25.Animation.Controller:LoadAnimation(animator, value114, true)
											local attribute = originalFireServer:GetAttribute("PlaySpeed") or uiConstants[18]
											originalFireServer:Play(originalFireServer:GetAttribute("PlayFadeTime") or uiConstants[22], originalFireServer:GetAttribute("PlayWeight") or 1, attribute)
											character:SetAttribute("ParryTime", math.max(character:GetAttribute("ParryTime") or 0, originalFireServer.Length == 0 and 1 or (originalFireServer.Length - originalFireServer.TimePosition) * attribute))
											flyteBBState.GrabAnimation[#flyteBBState.GrabAnimation + uiConstants[18]] = originalFireServer
											condition21 = true
										end

										return condition21
									end

									table25.Animation.PlayAnimation = function(argument, argument2)
										alive = alive and alive.Parent and alive or workspace:FindFirstChild("Alive")
										local character = localPlayer.Character
										if not getProperty(character) or disconnectTrackedConnection(character) then
											return uiConstants[101]
										end

										if argument2 == "Animation + Click" then
											table25.Parry.NativeClick()
										elseif argument2 == "Click" then
											return table25.Parry.NativeClick()
										end

										local now2 = os.clock()

										if argument or now2 - n33 >= 0.2 or condition19 then
											n33 = now2
											condition19 = false
											return table25.Animation.ParryAnimation()
										end

										return false
									end

									table25.Animation.BypassCooldown = function()
										condition19 = true
									end

									table25.Animation.VIM = function(argument)
										local character = localPlayer.Character
										if character and disconnectTrackedConnection(character) then
											return false
										end

										if not argument and userInputService:GetFocusedTextBox() then
											return false
										end
										return valueFunction41()
									end

									table25.Animation.Input = function(argument, argument2, argument3)
										flyteBBState.ParryMethod = "VIM"
										if argument ~= "Mouse Click" then
											return table25.Animation.VIM(argument2)
										end
										local character = localPlayer.Character
										character = character and disconnectTrackedConnection(character)
										local focusedTextBox

										if character then
											focusedTextBox = character
										else
											focusedTextBox = not argument2 and userInputService:GetFocusedTextBox()
										end

										if focusedTextBox then
											return uiConstants[101]
										end
										value109 += 1
										local value110 = value109

										if condition20 then
											condition20 = uiConstants[101]
											mouse1release()
										end

										mouse1press()
										if not argument3 or argument3 <= 0 then
											mouse1release()
											return uiConstants[200]
										end
										condition20 = true

										task.delay(argument3, function()
											if condition20 and value109 == value110 then
												condition20 = false
												mouse1release()
											end
										end)

										return uiConstants[200]
									end

									flyteBBState.Connections["Animation Sword"] = localPlayer:GetAttributeChangedSignal("CurrentlyEquippedSword"):Connect(table25.Animation.PreloadSword)
									table25.Animation.PreloadSword()
								end

								table25.LoadAnimations()
								table25.Player = {}

								table25.Player.GetClosest = function()
									local character = localPlayer.Character
									if not character or not character.PrimaryPart or not alive then
										return nil
									end
									local huge = math.huge
									local value109 = nil

									for _, value110 in alive:GetChildren() do
										if value110 ~= character then
											local primaryPart = value110.PrimaryPart or value110:FindFirstChild("HumanoidRootPart")

											if primaryPart then
												local magnitude = (character.PrimaryPart.Position - primaryPart.Position).Magnitude

												if magnitude < huge then
													huge = magnitude
													value109 = value110
												end
											end
										end
									end

									return value109
								end

								table25.Ball = { List = {}, TrainingList = {} }

								do
									local function valueFunction73(argument, argument2, argument3, argument4)
										local n33 = argument2 - (argument3 or valueFunction54(argument))
										local magnitude = n33.Magnitude
										if magnitude < 0.001 then
											return 0, 0
										end
										local value109 = n33:Dot(argument4 or valueFunction55(argument))
										if value109 <= 0 then
											return math.huge, magnitude
										end
										return magnitude * magnitude / value109, magnitude
									end

									table25.Ball.GetAllBalls = function()
										local character = localPlayer.Character
										return character and character.Parent ~= alive and newInstance(character) and table25.Ball.TrainingList or table25.Ball.List
									end

									table25.Ball.GetMainBall = function()
										local value109 = table25.Ball.GetAllBalls()
										local character = localPlayer.Character
										character = character and character.PrimaryPart
										character = character and character.Position
										local value110 = nil
										local remoteEvent = nil
										local remoteAction, signal

										for _, value114 in value109, nil, value110 do
											local name = localPlayer.Name

											if resolveKeyCode(value114) == name then
												if not character then
													table25.Ball.Target = value114
													return value114
												end
												local originalFireServer, closureFactory = valueFunction73(value114, character)

												if not remoteEvent or originalFireServer < remoteEvent or originalFireServer == remoteEvent and closureFactory < remoteAction then
													remoteEvent = originalFireServer
													remoteAction = closureFactory
													signal = value114
												end
											end
										end

										table25.Ball.Target = signal
										return signal
									end

									valueFunction43({ BallStatsEnabled = false })
									table25.BallStats = {}

									table25.BallStats.CreatePanel = function(argument, text, argument2)
										local json = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
										local json2 = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
										local screenGui = Instance.new("ScreenGui")
										screenGui.Name = "tungtungtungsahur" .. argument2
										screenGui.ResetOnSpawn = uiConstants[101]
										screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
										screenGui.IgnoreGuiInset = true
										parentGui(screenGui)
										local canvasGroup = Instance.new("CanvasGroup")
										canvasGroup.Name = "StatsGroup"
										canvasGroup.BackgroundTransparency = 1
										canvasGroup.Position = UDim2.new(uiConstants[33], argument, 0, 150)
										canvasGroup.Size = UDim2.new(0, 210, uiConstants[33], 96)
										canvasGroup.GroupTransparency = uiConstants[18]
										canvasGroup.Parent = screenGui
										local uiScale = Instance.new("UIScale")
										uiScale.Name = "StatsScale"
										uiScale.Scale = uiConstants[198]
										uiScale.Parent = canvasGroup
										local frame = Instance.new("Frame")
										frame.Name = "brobinipizanini"
										frame.BackgroundColor3 = colors.Primary
										frame.BorderSizePixel = uiConstants[33]
										frame.Position = UDim2.new(0, 0, 0, 0)
										frame.Size = UDim2.new(1, 0, 1, uiConstants[33])
										frame.Parent = canvasGroup
										local textButton = Instance.new("TextButton")
										textButton.Name = "clickblocker"
										textButton.Text = ""
										textButton.AutoButtonColor = false
										textButton.BackgroundTransparency = 1
										textButton.BorderSizePixel = 0
										textButton.Size = UDim2.new(1, uiConstants[33], 1, uiConstants[33])
										textButton.ZIndex = uiConstants[33]
										textButton.Parent = frame
										local uiCorner = Instance.new("UICorner")
										uiCorner.CornerRadius = UDim.new(0, 11)
										uiCorner.Parent = frame
										local uiStroke = Instance.new("UIStroke")
										uiStroke.Color = colors.BorderSoft
										uiStroke.Parent = frame
										local instance = Instance.new(uiConstants[21])
										local colorSequence = ColorSequence.new
										local table26 = {}
										local value109 = ColorSequenceKeypoint.new(0, colors.Text)
										local value110 = ColorSequenceKeypoint.new(0.493, colors.AccentLight)
										local remoteEvent = ColorSequenceKeypoint.new(0.509, colors.AccentLight)
										local new = ColorSequenceKeypoint.new
										local text2 = colors.Text
										table26[1] = value109
										table26[2] = value110
										table26[3] = remoteEvent

										do
											local values = table.pack(new(1, text2))
											table.move(values, 1, values.n, 4, table26)
										end

										instance.Color = colorSequence(table26)
										instance.Rotation = 260
										instance.Parent = uiStroke
										local imageLabel = Instance.new("ImageLabel")
										imageLabel.Name = "igivup"
										imageLabel.BackgroundTransparency = 1
										imageLabel.BorderSizePixel = 0
										imageLabel.Image = "rbxassetid://10723427199"
										imageLabel.Position = UDim2.new(0, 10, 0, 10)
										imageLabel.Size = UDim2.new(uiConstants[33], uiConstants[30], uiConstants[33], 16)
										imageLabel.Parent = frame
										Instance.new("UIAspectRatioConstraint", imageLabel)
										local textLabel = Instance.new("TextLabel")
										textLabel.Name = "v0rtexdisgay"
										textLabel.FontFace = json
										textLabel.Text = text
										textLabel.TextColor3 = colors.Text
										textLabel.TextSize = 15
										textLabel.TextXAlignment = Enum.TextXAlignment.Left
										textLabel.BackgroundTransparency = uiConstants[18]
										textLabel.BorderSizePixel = uiConstants[33]
										textLabel.Position = UDim2.new(uiConstants[33], 32, uiConstants[33], 8)
										textLabel.Size = UDim2.new(1, -uiConstants[79], 0, 16)
										textLabel.Parent = frame
										local frame2 = Instance.new("Frame")
										frame2.Name = "divider"
										frame2.BackgroundColor3 = colors.BorderSoft
										frame2.BorderSizePixel = uiConstants[33]
										frame2.Position = UDim2.new(0, uiConstants[115], 0, 32)
										frame2.Size = UDim2.new(1, -20, 0, 1)
										frame2.Parent = frame
										local textLabel2 = Instance.new("TextLabel")
										textLabel2.Name = "veloc1"
										textLabel2.FontFace = json
										textLabel2.Text = "velocity"
										textLabel2.TextColor3 = colors.SubText
										textLabel2.TextSize = 14
										textLabel2.TextXAlignment = Enum.TextXAlignment.Left
										textLabel2.BackgroundTransparency = 1
										textLabel2.BorderSizePixel = uiConstants[33]
										textLabel2.Position = UDim2.new(0, 12, uiConstants[33], 40)
										textLabel2.Size = UDim2.new(0, 100, uiConstants[33], 18)
										textLabel2.Parent = frame
										local instance2 = Instance.new(uiConstants[65])
										instance2.Name = "velocplace"
										instance2.FontFace = json2
										instance2.Text = "0.0"
										instance2.TextColor3 = colors.Text
										instance2.TextSize = 14
										instance2.TextXAlignment = Enum.TextXAlignment.Right
										instance2.BackgroundTransparency = 1
										instance2.BorderSizePixel = 0
										instance2.Position = UDim2.new(1, -112, uiConstants[33], uiConstants[78])
										instance2.Size = UDim2.new(0, 100, 0, 18)
										instance2.Parent = frame
										local textLabel3 = Instance.new("TextLabel")
										textLabel3.Name = "velocpeaktext"
										textLabel3.FontFace = json
										textLabel3.Text = "peak velocity"
										textLabel3.TextColor3 = colors.SubText
										textLabel3.TextSize = uiConstants[46]
										textLabel3.TextXAlignment = Enum.TextXAlignment.Left
										textLabel3.BackgroundTransparency = 1
										textLabel3.BorderSizePixel = 0
										textLabel3.Position = UDim2.new(0, 12, 0, 64)
										textLabel3.Size = UDim2.new(0, 120, 0, 18)
										textLabel3.Parent = frame
										local textLabel4 = Instance.new("TextLabel")
										textLabel4.Name = "peakvaluetext"
										textLabel4.FontFace = json2
										textLabel4.Text = "0.0"
										textLabel4.TextColor3 = colors.AccentLight
										textLabel4.TextSize = uiConstants[46]
										textLabel4.TextXAlignment = Enum.TextXAlignment.Right
										textLabel4.BackgroundTransparency = 1
										textLabel4.BorderSizePixel = uiConstants[33]
										textLabel4.Position = UDim2.new(1, -112, 0, 64)
										textLabel4.Size = UDim2.new(uiConstants[33], uiConstants[158], 0, 18)
										textLabel4.Parent = frame
										textButton.ZIndex = 10
										value99(canvasGroup, textButton)

										return {
											Gui = screenGui,
											Group = canvasGroup,
											Title = textLabel,
											Velocity = instance2,
											Peak = textLabel4,
											DisplayVelocity = 0,
											DisplayPeak = 0,
										}
									end

									local function unreconstructedFunction74(argument, argument2)
										local group = argument.Group
										local statsScale = group and group:FindFirstChild("StatsScale")
										local n33 = argument2 and 0 or 1

										if group then
											value101(group, { GroupTransparency = n33 }, argument2 and 0.45 or 0.35, argument2 and Enum.EasingStyle.Exponential or Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
										end

										if statsScale then
											value101(statsScale, { Scale = argument2 and 1 or uiConstants[198] }, argument2 and 0.5 or 0.35, argument2 and Enum.EasingStyle.Back or Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
										end
									end

									table25.BallStats.Toggle = function(ballStatsEnabled)
										table20.BallStatsEnabled = ballStatsEnabled

										if not ballStatsEnabled then
											updatePing("Ball Stats")
											local statsPanel = flyteBBState.StatsPanel
											flyteBBState.StatsPanel = nil
											flyteBBState.StatsBall = nil
											local extraStats = flyteBBState.ExtraStats
											flyteBBState.ExtraStats = {}
											flyteBBState.StatsPeak = {}

											if statsPanel then
												unreconstructedFunction74(statsPanel, false)

												task.delay(0.35, function()
													if statsPanel and statsPanel.Gui then
														statsPanel.Gui:Destroy()
													end
												end)
											end

											for _, value109 in extraStats, nil, nil do
												unreconstructedFunction74(value109, false)
											end

											task.delay(0.35, function()
												for _, value109 in extraStats, nil, nil do
													value109.Gui:Destroy()
												end
											end)

											return
										end

										if not flyteBBState.StatsPanel then
											flyteBBState.StatsPanel = table25.BallStats.CreatePanel(20, "ball stats", "")
											unreconstructedFunction74(flyteBBState.StatsPanel, uiConstants[200])
										end

										flyteBBState.StatsPeak = {}
										flyteBBState.ExtraStats = {}
										flyteBBState.StatsBall = nil
										updatePing("Ball Stats")

										flyteBBState.Connections["Ball Stats"] = runService.Heartbeat:Connect(function()
											if not table20.BallStatsEnabled then
												return
											end
											local now2 = os.clock()
											if now2 - (flyteBBState.StatsUpdate or 0) < 0.05 then
												return
											end
											flyteBBState.StatsUpdate = now2
											local value109 = table25.Ball.GetAllBalls()

											if #value109 == uiConstants[33] then
												flyteBBState.StatsBall = nil

												for key, value110 in flyteBBState.ExtraStats, nil, nil do
													value110.Gui:Destroy()
													flyteBBState.ExtraStats[key] = nil
												end

												return
											end

											if flyteBBState.StatsBall and not flyteBBState.StatsBall.Parent then
												flyteBBState.StatsBall = nil
											end

											for key, value110 in flyteBBState.ExtraStats, nil, nil do
												if not key.Parent then
													value110.Gui:Destroy()
													flyteBBState.ExtraStats[key] = nil
												end
											end

											for key in flyteBBState.StatsPeak, nil, nil do
												if not key.Parent then
													flyteBBState.StatsPeak[key] = nil
												end
											end

											local table26 = {}

											for _, value110 in value109, nil, nil do
												table26[value110] = true
											end

											if flyteBBState.StatsBall and not table26[flyteBBState.StatsBall] then
												flyteBBState.StatsBall = nil

												if n24 >= 4766 then
													while true do
													end
												end
											end

											for key, value110 in flyteBBState.ExtraStats, nil, nil do
												if not table26[key] then
													value110.Gui:Destroy()
													flyteBBState.ExtraStats[key] = nil
												end
											end

											if not flyteBBState.StatsBall then
												local value110 = table25.Ball.GetMainBall(true)
												local table27 = {}

												for _, remoteEvent in value109, nil, nil do
													if not flyteBBState.ExtraStats[remoteEvent] then
														table.insert(table27, remoteEvent)
													end
												end

												local statsBall = value110 and not flyteBBState.ExtraStats[value110] and value110 or table27[uiConstants[18]]

												if statsBall then
													flyteBBState.StatsBall = statsBall
												end
											end

											for _, value110 in value109, nil, nil do
												if value110 ~= flyteBBState.StatsBall and not flyteBBState.ExtraStats[value110] then
													flyteBBState.ExtraStats[value110] = table25.BallStats.CreatePanel(20, "ball stats", tostring(value110:GetDebugId(0)))
													unreconstructedFunction74(flyteBBState.ExtraStats[value110], true)
													flyteBBState.ExtraStats[value110].PeakValue = 0
												end
											end

											local statsPanel = flyteBBState.StatsPanel
											local statsBall = flyteBBState.StatsBall
											local n33 = 0
											local n34 = 0

											if statsBall then
												local value110 = valueFunction58(statsBall)
												local zoomies = value110.Zoomies

												if not zoomies or zoomies.Parent ~= statsBall then
													zoomies = statsBall:FindFirstChild("zoomies")
													value110.Zoomies = zoomies
												end

												if zoomies then
													n34 = zoomies.VectorVelocity.Magnitude
													n33 = flyteBBState.StatsPeak[statsBall] or n33

													if n33 < n34 then
														flyteBBState.StatsPeak[statsBall] = n34
														n33 = n34
													end
												else
													n33 = flyteBBState.StatsPeak[statsBall] or 0
												end
											end

											statsPanel.DisplayVelocity = statsPanel.DisplayVelocity + (n34 - statsPanel.DisplayVelocity) * 0.15
											statsPanel.DisplayPeak = statsPanel.DisplayPeak + (n33 - statsPanel.DisplayPeak) * 0.15
											statsPanel.Velocity.Text = string.format("%.1f", statsPanel.DisplayVelocity)
											statsPanel.Peak.Text = string.format("%.1f", statsPanel.DisplayPeak)
											local n35 = 0

											for _, value110 in value109, nil, nil do
												if value110 ~= statsBall and flyteBBState.ExtraStats[value110] then
													n35 += 1
													local remoteEvent = flyteBBState.ExtraStats[value110]
													remoteEvent.Title.Text = "ball stats #" .. n35
													local lastTargetX = uiConstants[108] + n35 * 222

													if remoteEvent.LastTargetX ~= lastTargetX then
														remoteEvent.LastTargetX = lastTargetX
														value101(remoteEvent.Group, { Position = UDim2.new(uiConstants[33], lastTargetX, 0, 150) }, 0.3)
													end

													local magnitude = uiConstants[33]
													local displayPeak = remoteEvent.DisplayPeak or 0
													local remoteAction = valueFunction58(value110)
													local zoomies = remoteAction.Zoomies

													if not zoomies or zoomies.Parent ~= value110 then
														local zoomies2 = value110:FindFirstChild("zoomies")
														remoteAction.Zoomies = zoomies2
														zoomies = zoomies2
													end

													if zoomies then
														magnitude = zoomies.VectorVelocity.Magnitude

														if (remoteEvent.PeakValue or 0) < magnitude then
															remoteEvent.PeakValue = magnitude
														end

														displayPeak = remoteEvent.PeakValue or 0
													end

													remoteEvent.DisplayVelocity = remoteEvent.DisplayVelocity + (magnitude - remoteEvent.DisplayVelocity) * uiConstants[110]
													remoteEvent.DisplayPeak = remoteEvent.DisplayPeak + (displayPeak - remoteEvent.DisplayPeak) * uiConstants[110]
													remoteEvent.Velocity.Text = string.format("%.1f", remoteEvent.DisplayVelocity)
													remoteEvent.Peak.Text = string.format("%.1f", remoteEvent.DisplayPeak)
												end
											end
										end)
									end

									flyteBBState.Connections.Character = localPlayer.CharacterAdded:Connect(function()
										table25.Animation.Reset()
										table25.Animation.PreloadSword()
										flyteBBState.InfinityActive = false
										flyteBBState.InfinityParried = uiConstants[101]
										flyteBBState.TimeHole = uiConstants[101]
										flyteBBState.FuryCatch = uiConstants[101]
										flyteBBState.FuryActive = false
										flyteBBState.DeathSlash = false
										flyteBBState.StaffDetected = {}

										if table25.Phantom then
											table25.Phantom.Reset()
										end

										if table25.Quasar then
											table25.Quasar.Reset()
										end
									end)

									valueFunction43({
										AntiPhantomEnabled = false,
										AntiPhantomBlatant = false,
										AntiPhantomType = "Spam",
										AntiFlashCounterEnabled = false,
										AntiFlashCounterBlatant = false,
										AntiFlashCounterType = "Spam",
									})

									table25.Phantom = {}

									table25.Phantom.Reset = function()
										flyteBBState.PhantomTarget = nil
										flyteBBState.PhantomAbility = nil
										flyteBBState.PhantomData = nil
									end

									table25.Phantom.Trigger = function(argument, phantomTarget, argument2)
										local antiPhantomEnabled, antiPhantomBlatant, antiPhantomType

										if argument == "Phantom" then
											antiPhantomEnabled = table20.AntiPhantomEnabled
											antiPhantomBlatant = table20.AntiPhantomBlatant
											antiPhantomType = table20.AntiPhantomType
										else
											antiPhantomEnabled = table20.AntiFlashCounterEnabled
											antiPhantomBlatant = table20.AntiFlashCounterBlatant
											antiPhantomType = table20.AntiFlashCounterType
										end

										if not antiPhantomEnabled then
											return
										end

										if argument2 ~= localPlayer.Character or typeof(phantomTarget) ~= "Instance" or not phantomTarget:IsA("Model") then
											return
										end
										flyteBBState.PhantomTarget = phantomTarget
										flyteBBState.PhantomAbility = nil

										flyteBBState.PhantomData = {
											Name = argument,
											Blatant = antiPhantomBlatant,
											Type = antiPhantomType,
											Ball = argument == "Phantom" and table25.Ball.GetMainBall() or nil,
											Expires = os.clock() + 1.25,
										}
									end

									table25.Phantom.Released = function(ball)
										local phantomData = flyteBBState.PhantomData
										local phantomTarget = flyteBBState.PhantomTarget
										if not phantomData or phantomData.Name ~= "Phantom" or not phantomTarget or phantomData.Ball and phantomData.Ball ~= ball then
											return false
										end
										local name = phantomTarget.Name

										if resolveKeyCode(ball) ~= name then
											phantomData.Position = nil
											phantomData.Released = false
											return false
										end

										phantomData.Ball = ball
										local value109 = valueFunction54(ball)

										if phantomData.Position and value109 ~= phantomData.Position then
											phantomData.Released = true
										end

										phantomData.Position = value109
										return phantomData.Released == true
									end

									table25.Phantom.Update = function()
										local phantomData = flyteBBState.PhantomData
										local phantomTarget = flyteBBState.PhantomTarget
										local character = localPlayer.Character
										character = character and character:FindFirstChild("HumanoidRootPart")
										local humanoidRootPart = phantomTarget and phantomTarget:FindFirstChild("HumanoidRootPart")
										local humanoid = phantomTarget and phantomTarget:FindFirstChildOfClass("Humanoid")
										local condition19 = not phantomData

										if not condition19 then
											local expires = phantomData.Expires
											condition19 = os.clock() >= expires
										end

										if condition19 or not character or not humanoidRootPart or not humanoid or humanoid.Health <= 0 then
											table25.Phantom.Reset()
											return
										end
										local n33 = character.Position - humanoidRootPart.Position
										local magnitude = n33.Magnitude

										if phantomData.Blatant and magnitude < 32 then
											character.CFrame = character.CFrame + (magnitude > 0.1 and n33.Unit or -humanoidRootPart.CFrame.LookVector) * (32 - magnitude)
											table25.Phantom.Reset()
											return
										end

										return phantomTarget, magnitude, phantomData
									end

									flyteBBState.Connections.Phantom = replicatedStorage.Remotes.ActivateAbility.OnClientEvent:Connect(function(argument, argument2)
										if argument:GetAttribute("Ability") == "Phantom" then
											table25.Phantom.Trigger("Phantom", argument, argument2 and argument2.target)
										end
									end)

									flyteBBState.Connections.FlashCounter = replicatedStorage.Remotes.PlrFlashCountered.OnClientEvent:Connect(function(argument, argument2)
										table25.Phantom.Trigger("Flash Counter", argument, argument2)
									end)

									valueFunction43({ AntiBlindness = false, AntiDisorientate = false })
									table25.Quasar = {}

									table25.Quasar.Reset = function()
										flyteBBState.QuasarUntil = nil
									end

									table25.Quasar.ClearBlindness = function(argument)
										Lighting.Blindness.Enabled = false

										if not argument then
											for _, value109 in Lighting:GetChildren() do
												if value109:IsA("Atmosphere") and value109.Name == "Blindness" then
													table25.Quasar.ClearBlindness(value109)
												end
											end

											return
										end

										local quasarAtmosphere = flyteBBState.QuasarAtmosphere
										argument.Density = quasarAtmosphere and quasarAtmosphere.Density or 0
										argument.Offset = quasarAtmosphere and quasarAtmosphere.Offset or 0
										argument.Haze = quasarAtmosphere and quasarAtmosphere.Haze or 0
										argument.Glare = quasarAtmosphere and quasarAtmosphere.Glare or uiConstants[33]

										if quasarAtmosphere then
											argument.Color = quasarAtmosphere.Color
											argument.Decay = quasarAtmosphere.Decay
										end
									end

									table25.Quasar.SetBlindness = function(argument)
										flyteBBState.QuasarAtmosphere = argument and Lighting:FindFirstChildWhichIsA("Atmosphere") or nil
									end

									table25.Quasar.SetDisorientate = function(argument)
										updatePing("Quasar Camera")
										flyteBBState.QuasarCamera = nil
										if not argument then
											return
										end

										flyteBBState.Connections["Quasar Camera"] = runService.PreRender:Connect(function()
											local currentCamera2 = workspace.CurrentCamera

											if currentCamera2 then
												flyteBBState.QuasarCamera = currentCamera2.CFrame
											end
										end)
									end

									flyteBBState.Connections.Quasar = replicatedStorage.Remotes.PlrQuasared.OnClientEvent:Connect(function(argument, argument2)
										if argument2 ~= localPlayer.Character then
											return
										end
										argument = argument and argument:FindFirstChild("Upgrades")
										argument = argument and argument:FindFirstChild("Quasar")
										flyteBBState.QuasarUntil = os.clock() + 5 + (argument and argument.Value or 0)

										if table20.AntiBlindness then
											table25.Quasar.ClearBlindness()
										end

										local quasarCamera = table20.AntiDisorientate and flyteBBState.QuasarCamera

										if quasarCamera then
											task.defer(function()
												local currentCamera2 = workspace.CurrentCamera

												if currentCamera2 and table20.AntiDisorientate then
													local rotation = quasarCamera.Rotation
													currentCamera2.CFrame = CFrame.new(currentCamera2.CFrame.Position) * rotation
												end
											end)
										end
									end)

									flyteBBState.Connections["Quasar Blindness"] = Lighting.Blindness:GetPropertyChangedSignal("Enabled"):Connect(function()
										local antiBlindness = table20.AntiBlindness

										if antiBlindness then
											antiBlindness = os.clock() < (flyteBBState.QuasarUntil or 0)
										end

										if antiBlindness and Lighting.Blindness.Enabled then
											Lighting.Blindness.Enabled = false
										end
									end)

									flyteBBState.Connections["Quasar Atmosphere"] = Lighting.ChildAdded:Connect(function(child)
										if not table20.AntiBlindness or not child:IsA("Atmosphere") then
											return
										end
										local condition19 = child.Name == "Blindness"
										local condition20

										if condition19 then
											condition20 = os.clock() < (flyteBBState.QuasarUntil or 0)
										else
											condition20 = condition19
										end

										if condition20 then
											table25.Quasar.ClearBlindness(child)
										elseif child.Name ~= "Blindness" then
											flyteBBState.QuasarAtmosphere = child
										end
									end)

									valueFunction43({
										AutoSpamType = "Remote",
										AutoSpamEnabled = false,
										AutoSpamAnimFix = true,
										AutoSpamAnimFixType = "Animation",
										AutoSpamThreshold = 2,
										DynamicSpamThreshold = false,
										ManualSpamEnabled = false,
										ManualSpamType = "Remote",
										ManualSpamAnimFix = true,
										ManualSpamAnimFixType = "Animation",
									})

									table25.Loop = {}

									table25.Loop.InvisDetection = function(argument)
										alive = alive and alive.Parent and alive or workspace:FindFirstChild("Alive")
										local condition19 = uiConstants[101]

										for _, value109 in alive:GetChildren() do
											if value109 ~= argument then
												if not disconnectTrackedConnection(value109) then
													return uiConstants[101]
												end
												condition19 = true
											end
										end

										return condition19
									end

									table25.Loop.MainParryLoop = function(argument)
										local autoParryEnabled = table20.AutoParryEnabled
										if not autoParryEnabled and not table20.DribbleDetection then
											return
										end
										local now2 = os.clock()
										alive = alive and alive.Parent and alive or workspace:FindFirstChild("Alive")
										local character = localPlayer.Character
										if not getProperty(character) then
											return
										end

										if disconnectTrackedConnection(character) then
											return
										end
										local primaryPart = character.PrimaryPart
										local value109 = table25.Ball.GetAllBalls()
										if #value109 == 0 then
											return
										end

										if table25.Detection.UseProtection(character, true) then
											return
										end
										local autoParryType = table20.AutoParryType
										local condition19 = autoParryType == uiConstants[90]

										if condition19 then
											condition19 = now2 < (flyteBBState.ExtraParryCooldownUntil or 0)
										end

										if condition19 then
											return
										end
										flyteBBState.ExtraParryCooldownUntil = nil

										if condition18 and now2 >= n32 then
											condition18 = false
											value107 = nil
										end

										local value110 = valueFunction59()
										local n33 = value110 / uiConstants[66]
										local n34 = math.clamp(value110 / 10, 10, 16.7)
										local n35 = math.clamp(n33 * uiConstants[81] - 0.05, 0, 0.04)
										local parryRange = table20.ParryRange or uiConstants[33]
										local position = primaryPart.Position
										local name = localPlayer.Name
										local remoteEvent, remoteAction = table25.Detection.BlocksParry(nil, character, primaryPart)
										if remoteEvent then
											return
										end
										local condition20 = #value109 > uiConstants[18]
										local autoBall = condition20 and flyteBBState.AutoBall
										local signal = nil

										if autoBall then
											local autoBall2 = flyteBBState.AutoBall
											local value114 = obj2[autoBall2]
											local condition21 = autoParryEnabled and autoBall2.Parent and autoBall2:GetAttribute("from") == name
											signal = nil

											if condition21 then
												signal = table25.Loop.InvisDetection(character)
											end

											local condition22 = not signal and autoBall2.Parent and resolveKeyCode(autoBall2) == name

											if condition22 then
												condition22 = now2 < (value114 and value114.ParryResetAt or 0)
											end

											if condition22 then
												return
											end
											flyteBBState.AutoBall = nil
										end

										local n36 = 0

										if condition20 then
											for _, value114 in value109, nil, nil do
												local originalFireServer = obj2[value114]
												local closureFactory = value114 and resolveKeyCode(value114)
												local parried = originalFireServer and originalFireServer.Parried

												if parried then
													parried = now2 < (originalFireServer.ParryResetAt or 0)
												end

												if parried then
													n36 += 1
												elseif closureFactory == name and not valueFunction69(value114, closureFactory) then
													local huge = math.huge

													if valueFunction73(value114, position) < huge then
														n36 += 1
													end
												end

												if not (uiConstants[18] < n36) then
													continue
												end
												break
											end
										end

										local condition21 = n36 > 1
										local value114 = nil
										local originalFireServer = nil
										local closureFactory = nil
										local fireServerHook = nil
										local value118 = nil
										local value119 = nil
										local value120 = nil
										local condition22 = nil
										local value121 = nil
										local value122 = nil
										local value123 = nil

										for _, value124 in value109, nil, nil do
											if value124 then
												local value125 = valueFunction58(value124)
												local value126 = resolveKeyCode(value124)

												if not valueFunction69(value124, value126) then
													local value127 = nil
													local condition23 = nil

													if table20.DribbleDetection then
														value127, condition23 = table25.Detection.GetSelfDribbleBall(value124, primaryPart)
													end

													local condition24 = not value127 and autoParryEnabled and value124:GetAttribute("from") == name
													local condition25 = false

													if condition24 then
														if signal ~= nil then
															condition25 = signal
														else
															condition25 = table25.Loop.InvisDetection(character)
															signal = condition25
														end
													end

													if condition25 then
														if value125.InvisibleReturnAway == nil then
															value125.InvisibleReturnAway = not value125.Parried
														end

														local value128 = (position - valueFunction54(value124)):Dot(valueFunction55(value124))
														condition23 = value128 > 0

														if value128 < 0 then
															value125.InvisibleReturnAway = true
														end

														local invisibleReturnAway = value125.InvisibleReturnAway

														if invisibleReturnAway then
															value127 = value124
														else
															value127 = value124
															condition23 = invisibleReturnAway
														end
													else
														value125.InvisibleReturnAway = nil
													end

													if not (not autoParryEnabled and not value127) then
														if value127 and (condition25 and value125.InvisibleReturnAway or not condition25 and flyteBBState.SelfDribbleAway) then
															value125.Parried = false
															value125.ParryResetAt = uiConstants[33]

															if flyteBBState.ManualBall == value124 then
																flyteBBState.ManualBall = nil
															end

															if value107 == value124 then
																condition18 = false
																value107 = nil
																n32 = 0
															end
														end

														if flyteBBState.AutoBall == value124 and value126 ~= name then
															flyteBBState.AutoBall = nil
														end

														if flyteBBState.ManualBall == value124 then
															if value126 == name then
																continue
															end
															flyteBBState.ManualBall = nil
														end

														if value125.LoopTarget ~= value126 then
															value125.Parried = uiConstants[101]
															value125.ParryResetAt = 0

															if value125.Target ~= value126 then
																if value126 == name then
																	valueFunction65(value125)
																else
																	valueFunction66(value125)
																end
															end

															value125.LoopTarget = value126

															if value126 == name and value107 == value124 then
																condition18 = false
																value107 = nil
																n32 = 0
															end
														end

														if value126 ~= name then
															value125.Parried = false
														elseif value125.Parried then
															if now2 < (value125.ParryResetAt or 0) then
																continue
															end
															value125.Parried = uiConstants[101]
														end

														local condition26 = value108 == value124 and value124 or nil

														if value108 and table25.Detection.GetDribbleBall(value108) ~= value108 then
															if value107 == value108 then
																condition18 = false
																value107 = nil
																n32 = 0
															end

															value108 = nil
															condition26 = nil
														end

														if table20.ParryOnDribble and not value108 then
															condition26 = table25.Detection.GetDribbleBall(value124)

															if condition26 then
																value108 = condition26
															end
														end

														if not (value124:GetAttribute("DribbleActive") == true and not table20.ParryOnDribble and not value127 and value126 ~= name) then
															local value128 = condition26 or value127 or value124
															local value129 = dragInputChanged(value128)
															local vectorVelocity = value128 == value124 and value125.Zoomies and value125.Zoomies.VectorVelocity or valueFunction55(value128)
															local magnitude = vectorVelocity.Magnitude
															local condition27 = value128 == value124 and value126 or resolveKeyCode(value128)
															local position2 = valueFunction53(value128, value129, now2) or value129 and value129.Position or Vector3.zero
															local n37 = position - position2
															local magnitude2 = n37.Magnitude
															local n38 = math.max(table20.ParryAccuracy or 50, uiConstants[18])
															local phantomData = flyteBBState.PhantomData
															local phantomTarget = flyteBBState.PhantomTarget
															phantomTarget = phantomTarget and phantomTarget:FindFirstChild("HumanoidRootPart")
															local magnitude3 = phantomData and phantomData.Name == "Phantom" and not phantomData.Blatant and phantomData.Type == "Spam" and phantomTarget and (position - phantomTarget.Position).Magnitude

															if table20.RandomizedParryAccuracy then
																local n39 = math.clamp(table20.RandomAccuracyMin or 1, 1, 100)
																n38 = math.random(n39, math.clamp(table20.RandomAccuracyMax or 100, n39, 100))
															end

															if magnitude3 and magnitude3 > 30 then
																n38 = 100
															elseif magnitude3 and not phantomData.Released then
																continue
															end

															local condition28 = not value127

															if not (condition28 and (table20.BackwardsAntiCurveEnabled and valueFunction63(value128, vectorVelocity, condition27, condition20) or valueFunction67(value128, primaryPart, position2, vectorVelocity, magnitude2, magnitude, n37, condition27, n33))) then
																if not (value127 and not condition23) then
																	local n39 = math.clamp((n38 - 1) / 99, 0, 1)
																	local n40 = n39 * n39 * (uiConstants[61] - 2 * n39)
																	local n41 = 2.4 + math.clamp(magnitude - 9.5, 0, 990.5) * 0.002
																	local n42 = magnitude / n41 * (0.75 + n39 * 0.43)
																	local condition29 = n42 <= 9.5
																	local n43 = condition29 and math.min(n34, magnitude * n33) or n34 + math.min(magnitude * n35, uiConstants[36])
																	local n44 = n43 + math.max(n42, 9.5)
																	local n45

																	if not (n38 > 70) then
																		n45 = n44
																	else
																		local n46 = math.clamp((n38 - uiConstants[6]) / uiConstants[36], 0, 1)
																		local n47 = n46 * n46 * (3 - 2 * n46)
																		local attribute = value124:GetAttribute("from")
																		local condition30 = type(attribute) == "string" and alive and alive:FindFirstChild(attribute)

																		if condition30 then
																			condition30 = condition30.PrimaryPart or condition30:FindFirstChild("HumanoidRootPart")
																		end

																		condition30 = condition30 and (position - condition30.Position).Magnitude
																		local n48 = condition30 and math.clamp((8 - condition30) / uiConstants[61], 0, 1) or 0

																		if condition30 and magnitude2 > condition30 + 3 then
																			n48 = uiConstants[33]
																		end

																		local n49 = (condition29 and math.min(n34, magnitude * n33) or n34) + math.max(magnitude / n41 * (0.75 + n39 * 0.2), 9.5)
																		local n50 = n34 + magnitude / n41 * (1.4 + n39 * 0.2)
																		local n51 = math.clamp((magnitude - 1000) / 800, uiConstants[33], 1)
																		local n52 = n50 + math.max(n49 - n50, 0) * n51
																		n45 = n44 + (n52 + (n49 - n52) * n48 - n44) * n47
																	end

																	local n46

																	if condition21 and n38 > uiConstants[6] then
																		n46 = math.max(n45, n44)
																	else
																		n46 = n45
																	end

																	condition29 = condition29 and (n34 - n43) * (1 - n40) or uiConstants[33]
																	local n47 = condition26 and n43 * (1 - n40 * 0.5) or 0
																	local condition30 = autoParryType == "Mouse Click"

																	if condition30 then
																		condition30 = magnitude * (argument or 0)
																	end

																	local n48 = n46 + parryRange + condition29 + n47 + (condition30 or uiConstants[33])
																	local condition31 = table20.AutoAbilityEnabled and not value127 and value126 == name and magnitude2 <= n46
																	local v130 = nil
																	local v131 = nil

																	if condition31 then
																		v130, v131 = valueFunction73(value124, position, position2, vectorVelocity)

																		if not value114 or v130 < value114 or v130 == value114 and v131 < originalFireServer then
																			value114 = v130
																			originalFireServer = v131
																			closureFactory = value124
																		end
																	end

																	condition28 = condition28 and value126 ~= name and n37:Dot(vectorVelocity) > 0

																	if condition28 then
																		if signal ~= nil then
																			condition28 = signal
																		else
																			signal = table25.Loop.InvisDetection(character)
																			condition28 = signal
																		end
																	end

																	if (condition28 or not value127 and value126 == name or condition26 or condition23) and magnitude2 <= n48 and not value125.Parried and (not condition18 or value107 ~= value124) then
																		local condition32 = condition28 or condition23 or not value127 and value126 == name

																		if not condition32 and condition26 then
																			condition32 = table25.Detection.GetDribbleBall(condition26) == condition26
																		end

																		if condition32 then
																			if condition20 and not v130 then
																				v130, v131 = valueFunction73(value128, position, position2, vectorVelocity)
																			end

																			if not fireServerHook or v130 < value118 or v130 == value118 and v131 < value119 then
																				condition22 = not not (condition28 or condition26 or value127)
																				fireServerHook = value124
																				value118 = v130
																				value119 = v131
																				value120 = value125
																				value121 = n38
																				value122 = condition23
																				value123 = condition25
																			end
																		end
																	end
																end
															end
														end
													end
												end
											end
										end

										if closureFactory and dragHandler(remoteAction) then
											condition18 = true
											value107 = closureFactory
											n32 = now2 + 0.6
											return
										end

										if not fireServerHook then
											return
										end
										value120.Parried = true
										value120.ParryResetAt = now2 + 0.6
										value120.AutoParryAt = now2
										condition18 = true
										value107 = fireServerHook
										n32 = value120.ParryResetAt
										flyteBBState.AutoBall = fireServerHook

										if not valueFunction40(fireServerHook, autoParryType, nil, condition22, value110, value121) then
											value120.Parried = false
											value120.ParryResetAt = 0
											value120.AutoParryAt = nil
											flyteBBState.AutoBall = nil
											condition18 = false
											value107 = nil
											n32 = 0
											return
										end

										if autoParryType == "Remote" then
											flyteBBState.AutoParryAt = now2
										end

										if value122 then
											if value123 then
												value120.InvisibleReturnAway = false
											else
												flyteBBState.SelfDribbleAway = uiConstants[101]
											end
										end
									end
								end
							end

							table25.Loop.ResetSpam = function()
								table.clear(flyteBBState.SpamParries)
								flyteBBState.SpamBall = nil
								flyteBBState.SpamTargetAt = nil
								flyteBBState.AutoSpamAt = nil
								flyteBBState.AutoSpamCarry = 0
								flyteBBState.AutoSpamTime = nil
							end

							table25.Loop.AutoSpamLoop = function()
								local antiPhantomEnabled = table20.AntiPhantomEnabled or table20.AntiFlashCounterEnabled
								local value109 = nil
								local value110 = nil
								local condition19 = nil

								if antiPhantomEnabled then
									value109, condition19, value110 = table25.Phantom.Update()
								end

								if value109 and not value110.Blatant and value110.Type == "Ability" then
									table25.Loop.ResetSpam()

									if flyteBBState.PhantomAbility ~= value109 and value106 and value106.Offset.Y >= 0.49 then
										flyteBBState.PhantomAbility = value109
										abilityButtonPress:Fire()
									end

									return
								end

								local condition20 = value109 ~= nil
								if not table20.AutoSpamEnabled and not condition20 then
									table25.Loop.ResetSpam()
									return
								end
								local now2 = os.clock()
								local n33 = math.min(now2 - (flyteBBState.AutoSpamTime or now2), 0.066666666666666666)
								flyteBBState.AutoSpamTime = now2
								if table20.DeathSlashDetection and flyteBBState.DeathSlash then
									table25.Loop.ResetSpam()
									return
								end
								alive = alive and alive.Parent and alive or workspace:FindFirstChild("Alive")
								if table20.InfinityDetection and (flyteBBState.InfinityActive or valueFunction49("Infinity")) then
									table25.Loop.ResetSpam()
									return
								end
								local character = localPlayer.Character
								local primaryPart = character and character.PrimaryPart
								if table20.ForcefieldDetection and primaryPart and valueFunction49("Forcefield") and (primaryPart:FindFirstChild("MaxShield") or primaryPart:FindFirstChild("Shield")) then
									table25.Loop.ResetSpam()
									return
								end
								local condition21 = character and character.Parent ~= alive and newInstance(character)
								if not primaryPart or character.Parent ~= alive and not condition21 then
									return
								end

								if disconnectTrackedConnection(character) then
									return
								end
								local remoteEvent = table25.Ball.GetAllBalls()
								if #remoteEvent == 0 then
									return
								end
								local position = primaryPart.Position
								local ball = condition20 and value110.Ball or flyteBBState.SpamBall
								local condition22 = not condition20

								if condition22 then
									ball = table25.Ball.GetMainBall() or ball
								end

								if ball and not table.find(remoteEvent, ball) then
									if condition20 then
										value110.Ball = nil
										value110.Position = nil
										value110.Released = false
									else
										flyteBBState.SpamBall = nil
										flyteBBState.SpamTargetAt = nil
									end

									ball = nil
								end

								if not ball and condition20 and value110.Name == "Phantom" then
									for _, remoteAction in remoteEvent, nil, nil do
										local name = value109.Name
										if resolveKeyCode(remoteAction) == name then
											ball = remoteAction
											break
										end
									end
								end

								local magnitude = ball and (position - valueFunction54(ball)).Magnitude or math.huge

								if not ball and condition20 then
									for _, remoteAction in remoteEvent, nil, nil do
										local magnitude2 = (position - valueFunction54(remoteAction)).Magnitude

										if magnitude2 < magnitude then
											magnitude = magnitude2
											ball = remoteAction
										end
									end
								end

								if not ball then
									return
								end
								local remoteAction = resolveKeyCode(ball)
								if not remoteAction then
									return
								end
								local magnitude2 = valueFunction55(ball).Magnitude
								local signal = valueFunction59()
								local n34 = math.min(0.3 + signal / 1000, uiConstants[81])
								local condition23 = now2 - (flyteBBState.AutoSpamAt or 0) <= n34
								if character:GetAttribute("Pulsed") then
									return
								end

								if condition20 and value110.Name == "Phantom" and (condition19 > 30 or not table25.Phantom.Released(ball)) then
									table25.Loop.ResetSpam()
									return
								end

								if magnitude2 < uiConstants[22] and (not condition20 or value110.Name ~= "Phantom") then
									return
								end

								if condition22 then
									local attribute = remoteAction == localPlayer.Name and ball:GetAttribute("from") or remoteAction
									local value114 = uiConstants[127]
									condition19 = type(attribute) == value114 and attribute ~= localPlayer.Name and alive:FindFirstChild(attribute)

									if condition19 then
										condition19 = condition19.PrimaryPart or condition19:FindFirstChild("HumanoidRootPart")
									end

									condition19 = condition19 and (position - condition19.Position).Magnitude or valueFunction60(character, position, condition21)
								end

								condition19 = condition19 or valueFunction60(character, position, condition21)
								if condition19 == math.huge then
									return
								end

								if magnitude < 0.1 then
									return
								end

								if condition22 then
									if remoteAction == localPlayer.Name then
										flyteBBState.SpamTargetAt = now2
									else
										local n35 = now2 - (flyteBBState.SpamTargetAt or 0)
										if (condition23 and n34 or math.min(0.15 + signal / 2000, 0.25)) < n35 then
											return
										end
									end
								end

								local n35 = math.clamp(10 + signal / 10, 10, uiConstants[59])
								local n36 = #remoteEvent >= 2 and 3 or uiConstants[33]
								local n37 = table20.AutoSpamType ~= "Remote" and uiConstants[147] or 0
								local n38 = math.min(0.5 + signal / 1000, 0.75)
								local condition24 = condition20 and condition19 <= 30
								local n39 = 1

								if not condition24 then
									local n40 = n35 + math.min(magnitude2 / 6, 95) + n36 + n37
									local n41 = n35 + math.min(magnitude2 / 6, 30) + n36 + n37
									condition24 = condition19 <= n41 and magnitude <= n40

									if condition24 and not condition20 and not condition23 then
										if table20.DynamicSpamThreshold then
											n39 = math.clamp(math.ceil(math.min(math.max(condition19 / n41, magnitude / n40), uiConstants[70] * math.max(condition19, magnitude) / magnitude2 * n38) * 3), 1, 3)
										else
											n39 = math.clamp(math.round(table20.AutoSpamThreshold or 2), 1, 4)
										end
									end
								end

								if not condition24 then
									return
								end

								if condition22 and remoteAction == localPlayer.Name and condition19 > 30 and magnitude > 30 then
									return
								end

								if condition22 then
									local n40 = now2 - n38

									while flyteBBState.SpamParries[uiConstants[18]] and flyteBBState.SpamParries[1] < n40 do
										table.remove(flyteBBState.SpamParries, uiConstants[18])
									end

									if not condition23 and #flyteBBState.SpamParries < n39 then
										return
									end
								end

								if condition22 then
									flyteBBState.AutoSpamAt = now2
								end

								if table20.AutoSpamType == "Remote" then
									flyteBBState.ParryMethod = "Remote"

									if table25.Parry and table25.Parry.Fire then
										flyteBBState.AutoSpamCarry = (flyteBBState.AutoSpamCarry or uiConstants[33]) + math.max(n33 * 120 - uiConstants[18], 0)
										local value114 = uiConstants[72]
										local n40 = math.min(math.floor(flyteBBState.AutoSpamCarry), value114)
										flyteBBState.AutoSpamCarry = math.min(flyteBBState.AutoSpamCarry - n40, 7)
										local originalFireServer, closureFactory = table25.Parry.Fire(nil, uiConstants[200], n40 > 0 and table25.Parry.GetData(nil, flyteBBState.AutoSpamData), n40 + 1)

										if originalFireServer then
											flyteBBState.AutoSpamParryAt = now2
											flyteBBState.ExtraParryCooldownUntil = nil
										end

										if originalFireServer and not closureFactory and table20.AutoSpamAnimFix then
											table25.Animation.PlayAnimation(nil, table20.AutoSpamAnimFixType)
										end
									end
								else
									flyteBBState.AutoSpamCarry = 0

									if table25.Animation.Input(table20.AutoSpamType, true) then
										flyteBBState.AutoSpamParryAt = now2
										flyteBBState.ExtraParryCooldownUntil = nil
									end
								end
							end

							table25.Loop.RefreshAutoSpam = function()
								if table20.AutoSpamEnabled or table20.AntiPhantomEnabled or table20.AntiFlashCounterEnabled then
									if not flyteBBState.Connections["Auto Spam"] then
										flyteBBState.Connections["Auto Spam"] = runService.PreSimulation:Connect(table25.Loop.AutoSpamLoop)
									end

									return
								end

								updatePing("Auto Spam")
								table25.Loop.ResetSpam()
							end

							table25.MobileControls = { X = 240, Y = 150, Width = 180, Gap = uiConstants[49] }

							table25.MobileControls.GetX = function(argument)
								return table25.MobileControls.X + (argument - uiConstants[18]) * (table25.MobileControls.Width + table25.MobileControls.Gap)
							end

							table25.MobileControls.Layout = function()
								local table26 = {}

								if flyteBBState.SpamPanel then
									table.insert(table26, flyteBBState.SpamPanel)
								end

								if flyteBBState.TriggerPanel then
									table.insert(table26, flyteBBState.TriggerPanel)
								end

								for key, value109 in table26, nil, nil do
									local value110 = table25.MobileControls.GetX(key)

									if value109.Group and (value109.LastTargetX ~= value110 or not value109.Shown) then
										local n33 = not value109.Shown and 0.45 or 0.3
										value109.LastTargetX = value110
										value109.Shown = uiConstants[200]

										value101(value109.Group, {
											Position = UDim2.new(0, value110, uiConstants[33], table25.MobileControls.Y),
											GroupTransparency = uiConstants[33],
										}, n33, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
									end
								end
							end

							table25.MobileControls.Remove = function(argument)
								if not argument or not argument.Gui then
									return
								end

								if argument.Group then
									value101(argument.Group, {
										Position = UDim2.new(0, (argument.LastTargetX or table25.MobileControls.X) + table25.MobileControls.Width + table25.MobileControls.Gap, 0, table25.MobileControls.Y),
										GroupTransparency = uiConstants[18],
									}, uiConstants[64], Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
								end

								task.delay(0.35, function()
									if argument.Gui then
										argument.Gui:Destroy()
									end
								end)
							end

							table25.ManualSpam = { Data = { {}, { 0, 0 } }, Carry = 0 }

							table25.MobileControls.Create = function(argument, argument2, argument3, argument4)
								local json = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
								local value109 = table25.MobileControls.GetX(argument3)

								local ScreenGui = createInstance("ScreenGui", {
									Name = argument,
									ResetOnSpawn = false,
									ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
									IgnoreGuiInset = true,
								})

								parentGui(ScreenGui)

								local CanvasGroup = createInstance("CanvasGroup", {
									Name = "Main",
									BackgroundTransparency = 1,
									Position = UDim2.new(0, value109 + table25.MobileControls.Width + table25.MobileControls.Gap, uiConstants[33], table25.MobileControls.Y),
									Size = UDim2.new(0, table25.MobileControls.Width, 0, 56),
									GroupTransparency = 1,
									Parent = ScreenGui,
								})

								local TextButton = createInstance("TextButton", {
									Name = "Button",
									AutoButtonColor = false,
									BackgroundColor3 = colors.Primary,
									BorderSizePixel = uiConstants[33],
									Size = UDim2.new(1, 0, uiConstants[18], 0),
									Text = "",
									Parent = CanvasGroup,
								})

								createInstance("UICorner", { CornerRadius = UDim.new(0, 11), Parent = TextButton })
								local UIStroke = createInstance("UIStroke", { Color = colors.BorderSoft, Parent = TextButton })

								local TextLabel = createInstance("TextLabel", {
									Name = "Title",
									FontFace = json,
									Text = argument2,
									TextColor3 = colors.SubText,
									TextSize = 15,
									BackgroundTransparency = 1,
									Size = UDim2.new(1, 0, 1, 0),
									Parent = TextButton,
								})

								value99(CanvasGroup, TextButton)
								TextButton.MouseButton1Click:Connect(argument4)
								return { Gui = ScreenGui, Group = CanvasGroup, Title = TextLabel, Stroke = UIStroke, Shown = false }
							end

							table25.MobileControls.Update = function(argument, argument2, argument3)
								if not argument or not argument.Title then
									return
								end
								argument.Title.Text = argument3 and argument2 .. " (on)" or argument2
								argument.Title.TextColor3 = argument3 and colors.AccentLight or colors.SubText
								argument.Stroke.Color = argument3 and colors.AccentLight or colors.BorderSoft
								table25.MobileControls.Layout()
							end

							table25.ManualSpam.Refresh = function()
								if not table20.ManualSpamUIEnabled then
									local spamPanel = flyteBBState.SpamPanel
									flyteBBState.SpamPanel = nil
									table25.MobileControls.Remove(spamPanel)
									table25.MobileControls.Layout()
									return
								end

								if not flyteBBState.SpamPanel then
									flyteBBState.SpamPanel = table25.MobileControls.Create("ManualSpam", "manual spam", 1, function()
										local manualSpam = table24 and table24.toggles.Manual_Spam

										if manualSpam and manualSpam.Set then
											manualSpam:Set(not table20.ManualSpamEnabled)
										else
											table25.ManualSpam.SetEnabled(not table20.ManualSpamEnabled)
										end
									end)
								end

								table25.MobileControls.Update(flyteBBState.SpamPanel, "manual spam", table20.ManualSpamEnabled)
							end

							valueFunction43({
								TriggerbotEnabled = uiConstants[101],
								TriggerbotType = uiConstants[90],
								TriggerbotDelay = 0,
								TriggerbotRandomize = false,
								TriggerbotDelayMin = 0,
								TriggerbotDelayMax = 200,
								TriggerbotIgnoreSpawn = false,
								TriggerbotUIEnabled = false,
							})

							table25.Triggerbot = table25.Triggerbot or {}

							table25.Triggerbot.Fire = function(argument, argument2, argument3)
								local now2 = os.clock()
								local condition19 = flyteBBState.ManualBall == argument

								if condition19 then
									local name = localPlayer.Name
									condition19 = resolveKeyCode(argument) == name
								end

								if not condition19 then
									condition19 = now2 < (flyteBBState.ExtraParryCooldownUntil or uiConstants[33])
								end

								if condition19 then
									return false
								end
								local triggerbotParried = {}
								argument2.TriggerbotParried = triggerbotParried
								argument2.AutoParryAt = now2
								flyteBBState.AutoParryAt = now2
								local triggerbotParried2 = valueFunction40(argument, table20.TriggerbotType, true, argument3) == true

								if argument2.TriggerbotParried == triggerbotParried then
									argument2.TriggerbotParried = triggerbotParried2
								end

								if not triggerbotParried2 then
									if argument2.AutoParryAt == now2 then
										argument2.AutoParryAt = nil
									end

									if flyteBBState.AutoParryAt == now2 then
										flyteBBState.AutoParryAt = nil
									end
								end

								return triggerbotParried2
							end

							table25.Triggerbot.TryParry = function(argument, argument2, triggerbotTarget)
								if not table20.TriggerbotEnabled or not argument or not argument.Parent or not argument2 or not valueFunction56(argument) then
									return
								end
								triggerbotTarget = triggerbotTarget or resolveKeyCode(argument)

								if argument2.TriggerbotTarget ~= triggerbotTarget then
									if argument2.TriggerbotTarget and flyteBBState.ManualBall == argument then
										flyteBBState.ManualBall = nil
									end

									argument2.TriggerbotTarget = triggerbotTarget
									argument2.TriggerbotParried = uiConstants[101]
								end

								local condition19 = not (triggerbotTarget == localPlayer.Name)

								if condition19 and flyteBBState.ManualBall == argument then
									flyteBBState.ManualBall = nil
								end

								local value109 = condition19 and table25.Detection.GetDribbleBall(argument)
								if condition19 and not value109 then
									argument2.TriggerbotParried = uiConstants[101]
									return
								end

								if argument2.TriggerbotParried then
									return
								end
								local character = localPlayer.Character
								if not getProperty(character) then
									return
								end

								if table20.TriggerbotIgnoreSpawn then
									local attribute = argument:GetAttribute("from")
									if not attribute or attribute == "" then
										return
									end
								end

								if table25.Detection.BlocksParry(argument, character) then
									return
								end
								local value110, remoteEvent = table25.Detection.UseProtection(character)
								if value110 then
									argument2.TriggerbotParried = remoteEvent == true
									return
								end
								local triggerbotDelay = table20.TriggerbotDelay or uiConstants[33]

								if table20.TriggerbotRandomize then
									local triggerbotDelayMin = table20.TriggerbotDelayMin or 0
									local triggerbotDelayMax = table20.TriggerbotDelayMax or 200
									local max = math.max
									triggerbotDelay = math.random(math.min(triggerbotDelayMin, triggerbotDelayMax), max(triggerbotDelayMin, triggerbotDelayMax))
								end

								if triggerbotDelay <= uiConstants[33] then
									table25.Triggerbot.Fire(argument, argument2, value109 ~= nil)
									return
								end
								local triggerbotParried = {}
								argument2.TriggerbotParried = triggerbotParried

								task.delay(triggerbotDelay / 1000, function()
									if argument2.TriggerbotParried ~= triggerbotParried then
										return
									end
									local condition20 = value109 and table25.Detection.GetDribbleBall(value109) == value109
									local condition21 = not table20.TriggerbotEnabled or not argument.Parent or not valueFunction56(argument)

									if not condition21 then
										local name = localPlayer.Name
										condition21 = resolveKeyCode(argument) ~= name and not condition20
									end

									if condition21 or table25.Detection.BlocksParry(argument, localPlayer.Character) then
										argument2.TriggerbotParried = false
										return
									end
									argument2.TriggerbotParried = false
									table25.Triggerbot.Fire(argument, argument2, condition20 and true or false)
								end)
							end

							table25.Triggerbot.Update = function()
								if not table20.TriggerbotEnabled then
									return
								end

								for _, value109 in table25.Ball.GetAllBalls() do
									table25.Triggerbot.TryParry(value109, valueFunction58(value109))
								end
							end

							table25.Triggerbot.RefreshUI = function()
								if not table20.TriggerbotUIEnabled then
									local triggerPanel = flyteBBState.TriggerPanel
									flyteBBState.TriggerPanel = nil
									table25.MobileControls.Remove(triggerPanel)
									table25.MobileControls.Layout()
									return
								end

								if not flyteBBState.TriggerPanel then
									flyteBBState.TriggerPanel = table25.MobileControls.Create("Triggerbot", "triggerbot", flyteBBState.SpamPanel and 2 or 1, function()
										local condition19 = not table20.TriggerbotEnabled
										local triggerbot = table24 and table24.toggles.Triggerbot
										if triggerbot and triggerbot.Set then
											triggerbot:Set(condition19)
											return
										end
										table25.Triggerbot.SetEnabled(condition19)
									end)
								end

								table25.MobileControls.Update(flyteBBState.TriggerPanel, "triggerbot", table20.TriggerbotEnabled)
							end

							table25.Triggerbot.SetEnabled = function(triggerbotEnabled)
								if table20.TriggerbotEnabled == triggerbotEnabled then
									return
								end

								if triggerbotEnabled then
									flyteBBState.AutoParryTriggerbot = nil
									flyteBBState.TriggerbotAutoParry = table20.AutoParryEnabled or nil

									if table20.AutoParryEnabled then
										local autoParry = table24 and table24.toggles.Auto_Parry

										if autoParry and autoParry.Set then
											autoParry:Set(false)
										else
											table20.AutoParryEnabled = uiConstants[101]
										end
									end
								end

								table20.TriggerbotEnabled = triggerbotEnabled
								if not flyteBBState.Loaded then
									return
								end

								if triggerbotEnabled then
									valueFunction38()
								else
									valueFunction39()
									local triggerbotAutoParry = flyteBBState.TriggerbotAutoParry
									flyteBBState.TriggerbotAutoParry = nil

									if triggerbotAutoParry then
										local autoParry = table24 and table24.toggles.Auto_Parry

										if autoParry and autoParry.Set then
											autoParry:Set(true)
										else
											table20.AutoParryEnabled = true
											valueFunction68(true)
											task.defer(table25.Loop.MainParryLoop)
										end
									end
								end

								table25.Triggerbot.RefreshUI()
							end

							table25.Loop.ManualSpamLoop = function(argument, argument2, argument3)
								if not table20.ManualSpamEnabled then
									return
								end

								if not (table20.DeathSlashDetection and flyteBBState.DeathSlash) then
									if table20.ManualSpamType == "Remote" then
										flyteBBState.ParryMethod = uiConstants[90]

										if table25.Parry and table25.Parry.Fire then
											local value109, value110 = table25.Parry.Fire(nil, true, argument, argument3)

											if value109 and not value110 and argument2 ~= uiConstants[101] and table20.ManualSpamAnimFix and table20.ManualSpamAnimFixType == "Click" then
												table25.Animation.PlayAnimation(nil, "Click")
											end

											return value109, value110
										end

										return
									end

									return table25.Animation.Input(table20.ManualSpamType, true)
								end

								if n28(3586) < 2192 then
									return
								end

								while true do
								end
							end

							table25.ManualSpam.Start = function()
								updatePing("Manual Spam")
								table20.ManualSpamEnabled = true
								table25.ManualSpam.Refresh()
								table25.ManualSpam.Time = os.clock()
								table25.ManualSpam.Carry = 0

								flyteBBState.Connections["Manual Spam"] = runService.PreSimulation:Connect(function()
									if not table20.ManualSpamEnabled then
										return
									end
									alive = alive and alive.Parent and alive or workspace:FindFirstChild("Alive")
									local character = localPlayer.Character
									if not character or character.Parent ~= alive then
										return
									end
									local now2 = os.clock()
									local n33 = math.min(now2 - table25.ManualSpam.Time, 0.066666666666666666)
									table25.ManualSpam.Time = now2
									local n34

									if table20.ManualSpamType == "Remote" then
										local manualSpam = table25.ManualSpam
										manualSpam.Carry = manualSpam.Carry + math.max(n33 * 120 - 1, 0)
										n34 = math.min(math.floor(table25.ManualSpam.Carry), 7)
										table25.ManualSpam.Carry = math.min(table25.ManualSpam.Carry - n34, 7)
									else
										table25.ManualSpam.Carry = 0
										n34 = 0
									end

									local value109, value110 = table25.Loop.ManualSpamLoop(n34 > 0 and table25.Parry.GetData(nil, table25.ManualSpam.Data), nil, n34 + 1)

									if value109 then
										flyteBBState.ManualSpamAt = now2
									end

									if value109 and not value110 and table20.ManualSpamEnabled and table20.ManualSpamType == uiConstants[90] and table20.ManualSpamAnimFix and table20.ManualSpamAnimFixType ~= "Click" then
										table25.Animation.PlayAnimation(nil, table20.ManualSpamAnimFixType)
									end
								end)

								alive = alive and alive.Parent and alive or workspace:FindFirstChild("Alive")
								local character = localPlayer.Character

								if character and character.Parent == alive then
									local value109, value110 = table25.Loop.ManualSpamLoop()

									if value109 and not value110 and table20.ManualSpamType == "Remote" and table20.ManualSpamAnimFix and table20.ManualSpamAnimFixType ~= "Click" then
										table25.Animation.PlayAnimation(nil, table20.ManualSpamAnimFixType)
									end
								end
							end

							table25.ManualSpam.Stop = function()
								local manualSpamEnabled = table20.ManualSpamEnabled
								table20.ManualSpamEnabled = false
								table25.ManualSpam.Refresh()
								updatePing("Manual Spam")

								if manualSpamEnabled and table20.ManualSpamType == uiConstants[90] and table20.ManualSpamAnimFix then
									task.spawn(table25.Animation.PlayAnimation)
								end
							end

							table25.ManualSpam.SetEnabled = function(argument)
								if argument then
									table25.ManualSpam.Start()
								else
									table25.ManualSpam.Stop()
								end
							end

							valueFunction43({ KeybindListEnabled = false })
							table25.UIExtra = {}

							do
								local function valueFunction73()
									local json = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal)
									local json2 = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.Bold, Enum.FontStyle.Normal)

									local ScreenGui = createInstance("ScreenGui", {
										Name = "FlyteKeybindList",
										ResetOnSpawn = false,
										ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
										IgnoreGuiInset = true,
									})

									parentGui(ScreenGui)

									local CanvasGroup = createInstance("CanvasGroup", {
										Name = "Main",
										BackgroundTransparency = uiConstants[18],
										Position = UDim2.new(0, 32, uiConstants[81], -120),
										Size = UDim2.new(0, 260, uiConstants[33], 48),
										GroupTransparency = 1,
										Parent = ScreenGui,
									})

									local UIScale = createInstance("UIScale", { Name = "ListScale", Scale = uiConstants[198], Parent = CanvasGroup })

									local Frame = createInstance("Frame", {
										Name = "MainFrame",
										BackgroundColor3 = colors.Primary,
										BorderSizePixel = uiConstants[33],
										Size = UDim2.new(1, 0, 1, 0),
										ClipsDescendants = uiConstants[200],
										Parent = CanvasGroup,
									})

									createInstance(uiConstants[137], { CornerRadius = UDim.new(uiConstants[33], uiConstants[192]), Parent = Frame })
									createInstance("UIStroke", { Color = colors.BorderSoft, Parent = Frame })

									createInstance("ImageLabel", {
										Name = "Icon",
										BackgroundTransparency = 1,
										Image = "rbxassetid://10723416765",
										ImageColor3 = colors.SubText,
										Position = UDim2.new(uiConstants[33], 10, 0, 10),
										Size = UDim2.new(uiConstants[33], 16, uiConstants[33], 16),
										Parent = Frame,
									})

									createInstance(uiConstants[65], {
										Name = "Title",
										FontFace = json2,
										Text = "keybind list",
										TextColor3 = colors.Text,
										TextSize = 15,
										TextXAlignment = Enum.TextXAlignment.Left,
										BackgroundTransparency = 1,
										Position = UDim2.new(0, 32, 0, 8),
										Size = UDim2.new(1, -uiConstants[79], 0, 18),
										Parent = Frame,
									})

									createInstance("Frame", {
										Name = "Divider",
										BackgroundColor3 = colors.BorderSoft,
										BorderSizePixel = uiConstants[33],
										Position = UDim2.new(uiConstants[33], 10, 0, uiConstants[97]),
										Size = UDim2.new(1, -20, 0, 1),
										Parent = Frame,
									})

									local value109 = createInstance(uiConstants[170], {
										Name = "Holder",
										BackgroundTransparency = uiConstants[18],
										Position = UDim2.new(0, 10, uiConstants[33], 43),
										Size = UDim2.new(1, -20, 0, 0),
										Parent = Frame,
									})

									local value110 = createInstance(uiConstants[39], {
										Name = "Drag",
										Text = "",
										AutoButtonColor = false,
										BackgroundTransparency = 1,
										Size = UDim2.new(uiConstants[18], 0, 0, 36),
										ZIndex = 10,
										Parent = Frame,
									})

									value99(CanvasGroup, value110)
									return { Gui = ScreenGui, Group = CanvasGroup, Scale = UIScale, Holder = value109, Rows = {}, Font = json }
								end

								table25.UIExtra.RefreshKeybindList = function()
									local keybindPanel = flyteBBState.KeybindPanel
									if not keybindPanel then
										return
									end
									local value109 = value102.GetAll()
									local table26 = {}

									for key, value110 in value109, nil, nil do
										local table27 = keybindPanel.Rows[value110.Id]
										local n33 = (key - uiConstants[18]) * 22

										if not table27 then
											local instance = Instance.new(uiConstants[170])
											instance.Name = value110.Id
											instance.BackgroundColor3 = colors.Secondary
											instance.BackgroundTransparency = 1
											instance.BorderSizePixel = 0
											instance.Position = UDim2.new(0, 0, uiConstants[33], n33 + 8)
											instance.Size = UDim2.new(uiConstants[18], 0, 0, 18)
											instance.Parent = keybindPanel.Holder
											local frame = Instance.new("Frame")
											frame.Name = "Check_Box"
											frame.BackgroundColor3 = colors.Element
											frame.BackgroundTransparency = 1
											frame.BorderSizePixel = 0
											frame.Position = UDim2.new(0, 0, uiConstants[81], -uiConstants[72])
											frame.Size = UDim2.new(0, uiConstants[46], 0, uiConstants[46])
											frame.Parent = instance
											local uiScale = Instance.new("UIScale")
											uiScale.Scale = 0.6
											uiScale.Parent = frame
											local imageLabel = Instance.new("ImageLabel")
											imageLabel.Name = "Check"
											imageLabel.BackgroundTransparency = 1
											imageLabel.Image = "rbxassetid://114461119629011"
											imageLabel.ImageColor3 = colors.AccentLight
											imageLabel.ImageTransparency = 1
											imageLabel.Position = UDim2.new(uiConstants[81], -uiConstants[72], 0.5, -7)
											imageLabel.Size = UDim2.new(0, 14, 0, 14)
											imageLabel.Parent = frame
											local instance2 = Instance.new(uiConstants[65])
											instance2.Name = "Name"
											instance2.FontFace = keybindPanel.Font
											instance2.TextColor3 = colors.SubText
											instance2.TextSize = 13
											instance2.TextXAlignment = Enum.TextXAlignment.Left
											instance2.BackgroundTransparency = 1
											instance2.Position = UDim2.new(0, 22, uiConstants[33], 0)
											instance2.Size = UDim2.new(1, -126, 1, 0)
											instance2.TextTransparency = 1
											instance2.Parent = instance
											local textLabel = Instance.new("TextLabel")
											textLabel.Name = "Key"
											textLabel.FontFace = keybindPanel.Font
											textLabel.TextColor3 = colors.AccentLight
											textLabel.TextSize = 13
											textLabel.TextXAlignment = Enum.TextXAlignment.Right
											textLabel.BackgroundTransparency = uiConstants[18]
											textLabel.Position = UDim2.new(1, -102, 0, 0)
											textLabel.Size = UDim2.new(0, 102, uiConstants[18], 0)
											textLabel.TextTransparency = 1
											textLabel.Parent = instance
											table27 = { Frame = instance, Name = instance2, Key = textLabel, Check = imageLabel, CheckScale = uiScale }
											keybindPanel.Rows[value110.Id] = table27
											value101(instance, { Position = UDim2.new(uiConstants[33], 0, uiConstants[33], n33), BackgroundTransparency = 0.45 }, uiConstants[64], Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
											value101(instance2, { TextTransparency = 0 }, uiConstants[100])
											value101(textLabel, { TextTransparency = uiConstants[33] }, 0.3)
										else
											value101(table27.Frame, { Position = UDim2.new(0, 0, 0, n33) }, uiConstants[64], Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
										end

										table27.Name.Text = string.lower(value110.Name)
										table27.Key.Text = value110.Key .. " [" .. string.lower(value110.Mode) .. "]"
										local condition19 = value110.Active == uiConstants[200]
										value101(table27.CheckScale, { Scale = condition19 and uiConstants[18] or 0.6 }, 0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
										value101(table27.Check, { ImageTransparency = condition19 and 0 or uiConstants[18], Rotation = condition19 and 0 or -45 }, 0.28, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

										value101(table27.Name, {
											Position = UDim2.new(0, condition19 and uiConstants[197] or 0, 0, 0),
											Size = UDim2.new(1, condition19 and -126 or -104, 1, 0),
										}, 0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

										table26[value110.Id] = uiConstants[200]
									end

									for key, value110 in keybindPanel.Rows, nil, nil do
										if not table26[key] then
											keybindPanel.Rows[key] = nil

											value101(value110.Frame, {
												BackgroundTransparency = uiConstants[18],
												Position = value110.Frame.Position + UDim2.new(0, 0, 0, 8),
											}, 0.25)

											value101(value110.Name, { TextTransparency = 1 }, uiConstants[113])
											value101(value110.Key, { TextTransparency = 1 }, 0.2)
											value101(value110.Check, { ImageTransparency = 1, Rotation = -45 }, 0.2)
											value101(value110.CheckScale, { Scale = 0.6 }, 0.2)

											task.delay(0.26, function()
												if value110.Frame then
													value110.Frame:Destroy()
												end
											end)
										end
									end

									local value110 = uiConstants[197]
									value101(keybindPanel.Group, { Size = UDim2.new(uiConstants[33], 260, 0, 48 + math.max(#value109, 1) * value110) }, 0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
									keybindPanel.Holder.Size = UDim2.new(uiConstants[18], -uiConstants[108], 0, math.max(#value109, 1) * 22)
								end

								table25.UIExtra.ToggleKeybindList = function(keybindListEnabled)
									table20.KeybindListEnabled = keybindListEnabled
									if not keybindListEnabled then
										table25.UIExtra.HideKeybindList(true)
										return
									end

									if not flyteBBState.KeybindPanel then
										flyteBBState.KeybindPanel = valueFunction73()
									end

									flyteBBState.RefreshKeybinds = table25.UIExtra.RefreshKeybindList
									table25.UIExtra.RefreshKeybindList()
									local keybindPanel = flyteBBState.KeybindPanel
									value101(keybindPanel.Group, { GroupTransparency = 0 }, 0.45, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
									value101(keybindPanel.Scale, { Scale = 1 }, 0.5, Enum.EasingStyle.Back, Enum.EasingDirection.Out)
								end
							end
						end

						do
							table25.UIExtra.HideKeybindList = function(argument)
								if argument ~= uiConstants[101] then
									table20.KeybindListEnabled = false
								end

								if flyteBBState.KeybindPanel then
									local keybindPanel = flyteBBState.KeybindPanel
									flyteBBState.KeybindPanel = nil
									flyteBBState.RefreshKeybinds = nil
									value101(keybindPanel.Group, { GroupTransparency = 1 }, 0.35, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
									value101(keybindPanel.Scale, { Scale = 0.92 }, uiConstants[64], Enum.EasingStyle.Quint, Enum.EasingDirection.Out)

									task.delay(uiConstants[64], function()
										if keybindPanel.Gui then
											keybindPanel.Gui:Destroy()
										end
									end)
								end
							end

							table25.UIExtra.HideOverlays = function()
								flyteBBState.RefreshKeybinds = nil
								updatePing("Ball Stats")

								for _, value109 in { "KeybindPanel", "StatsPanel", "SpamPanel", "TriggerPanel" }, nil, nil do
									local value110 = flyteBBState[value109]
									flyteBBState[value109] = nil

									if value110 and value110.Gui then
										value110.Gui:Destroy()
									end
								end

								local extraStats = flyteBBState.ExtraStats or {}

								for _, value109 in extraStats, nil, nil do
									if value109.Gui then
										value109.Gui:Destroy()
									end
								end

								flyteBBState.ExtraStats = {}
							end

							table25.LoadRender = function()
								local table26 = {
									BallEmit = uiConstants[200],
									Upgrade = uiConstants[200],
									Arch2 = true,
									MaxHook = uiConstants[200],
									Wave = true,
									Totem = true,
									TotemRange = uiConstants[200],
									InfinityFX = true,
									maxTransmission = true,
									transmissionpart = true,
									Tornado = true,
									Barrier = true,
									GUARDIAN_DRAGON = uiConstants[200],
									DRAGON_POSITIONER = true,
									SpiritDeflect = true,
									Vanity = uiConstants[200],
									dash = true,
									Summon = true,
									MaxBlink = true,
								}

								table25.Render = {}
								local table27 = { Spawn = uiConstants[200], Rhythm = uiConstants[200], Leaderboards = true, Map = true, UiClaimer = true }

								local table28 = {
									ParticleEmitter = true,
									Beam = uiConstants[200],
									Trail = true,
									Smoke = true,
									Fire = uiConstants[200],
									Sparkles = true,
									PointLight = true,
									SpotLight = true,
									SurfaceLight = true,
								}

								local numberSequence = NumberSequence.new(1)

								local table29 = {
									"Workspace.Spawn.Limited",
									"Workspace.Spawn.ItemDuelsNPC",
									"Workspace.Spawn.AFK",
									"Workspace.Spawn.GroupCrate",
									"Workspace.Spawn.Portal",
									"Workspace.Spawn.ExplosionCratesSign",
									"Workspace.Spawn.SwordCratesSign",
									"Workspace.Spawn.MenuRings",
									"Workspace.Spawn.Spinnyy",
									"Workspace.Leaderboards",
									"Workspace.Rhythm.Runtime.Map.Decoration",
									"Workspace.Rhythm.Runtime.Map.Visuals",
									"Workspace.Rhythm.Track",
								}

								local table30 = {}

								local function valueFunction73(argument)
									local className = argument.ClassName
									return className == "Sound" or className:find("Audio", 1, true) ~= nil
								end

								local function unreconstructedFunction74(argument)
									local value109 = argument:IsDescendantOf(balls)
									local condition19

									if value109 then
										condition19 = value109
									else
										condition19 = trainingBalls ~= nil and argument:IsDescendantOf(trainingBalls)
									end

									return condition19
								end

								local function getParryTiming(argument)
									while argument and argument.Parent and argument.Parent ~= workspace do
										argument = argument.Parent
									end

									return argument and table27[argument.Name] == uiConstants[200]
								end

								local function valueFunction76(argument)
									local fullName = argument:GetFullName()

									for _, value109 in table29, nil, nil do
										if fullName == value109 or fullName:sub(1, #value109 + uiConstants[18]) == value109 .. "." then
											return uiConstants[200]
										end
									end

									return false
								end

								local function valueFunction77(argument)
									if argument:IsA("Model") and table25.UnlockAll.GetSwordData(argument.Name) then
										return true
									end
									local parent = argument.Parent

									while parent and parent ~= workspace and parent ~= runtime do
										if parent:IsA("Model") and table25.UnlockAll.GetSwordData(parent.Name) then
											return uiConstants[200]
										end
										local value109 = string.lower(parent.Name)
										if value109 == "sord" or value109 == "blade" then
											return true
										end
										parent = parent.Parent
									end

									return uiConstants[101]
								end

								local function valueFunction78(argument, argument2)
									flyteBBState.RenderCache = flyteBBState.RenderCache or {}
									local table31 = flyteBBState.RenderCache[argument]

									if not table31 then
										table31 = {}
										flyteBBState.RenderCache[argument] = table31
									end

									for key, value109 in argument2, nil, nil do
										if table31[key] == nil then
											table31[key] = argument[key]
										end

										argument[key] = value109
									end
								end

								local function valueFunction79()
									local renderCache = flyteBBState.RenderCache
									flyteBBState.RenderCache = nil
									if not renderCache then
										return
									end

									local function valueFunction80(argument, argument2)
										for key, value109 in argument2, nil, nil do
											argument[key] = value109
										end
									end

									for key, value109 in renderCache, nil, nil do
										if key.Parent then
											valueFunction80(key, value109)
										else
											pcall(valueFunction80, key, value109)
										end
									end
								end

								local function valueFunction80(argument, argument2, argument3)
									if valueFunction73(argument) then
										return
									end

									if argument:IsA("Highlight") then
										return
									end

									if table28[argument.ClassName] then
										if argument:IsA("ParticleEmitter") or argument:IsA("Beam") or argument:IsA("Trail") then
											valueFunction78(argument, { Enabled = false, Transparency = numberSequence })
										else
											valueFunction78(argument, { Enabled = false })
										end

										if argument:IsA("ParticleEmitter") then
											argument:Clear()
										end
									elseif argument:IsA("Decal") or argument:IsA("Texture") then
										valueFunction78(argument, { Transparency = 1 })
									elseif argument3 and (argument:IsA("SurfaceGui") or argument:IsA("BillboardGui")) then
										valueFunction78(argument, { Enabled = false })
									elseif argument:IsA("BasePart") then
										if unreconstructedFunction74(argument) then
											return
										end

										if argument2 or (valueFunction76(argument) or table30[argument]) and not valueFunction77(argument) then
											valueFunction78(argument, { LocalTransparencyModifier = 1, CanCollide = false, CanTouch = false, CanQuery = false })
										end
									end
								end

								local function valueFunction81(argument)
									while argument and argument.Parent and argument.Parent ~= runtime do
										argument = argument.Parent
									end

									return argument and argument.Parent == runtime and argument
								end

								local function valueFunction82(argument)
									if not argument or not argument.Parent then
										return
									end

									if argument:IsDescendantOf(runtime) then
										local pos = valueFunction81(argument)

										if pos then
											pos = pos.Name:find("PortalFor_") or pos.Name:find("WaypointFor_") or table26[pos.Name]
										end

										if pos then
											return
										end
										valueFunction80(argument, true, false)
									elseif (argument:IsA("SurfaceGui") or argument:IsA("BillboardGui")) and getParryTiming(argument) then
										valueFunction80(argument, false, true)
									else
										valueFunction80(argument, uiConstants[101])
									end
								end

								table25.Render.DisableFX = function(noRender)
									flyteBBState.NoRender = noRender
									updatePing("Render Workspace")

									if not noRender then
										valueFunction79()
										table.clear(table30)
										return
									end

									local descendants = workspace:GetDescendants()
									table.clear(table30)

									for _, value109 in descendants, nil, nil do
										if valueFunction73(value109) then
											local basePart = value109:FindFirstAncestorWhichIsA("BasePart")

											if basePart and not unreconstructedFunction74(basePart) then
												table30[basePart] = uiConstants[200]
											end
										end
									end

									for _, value109 in descendants, nil, nil do
										valueFunction82(value109)
									end

									flyteBBState.Connections["Render Workspace"] = workspace.DescendantAdded:Connect(function(descendant)
										if not flyteBBState.NoRender then
											return
										end

										if valueFunction73(descendant) then
											local basePart = descendant:FindFirstAncestorWhichIsA("BasePart")

											if basePart and not unreconstructedFunction74(basePart) then
												table30[basePart] = true
												valueFunction80(basePart, false)
											end

											return
										end

										valueFunction82(descendant)
									end)
								end

								local table31 = { BloomEffect = true, BlurEffect = uiConstants[200], DepthOfFieldEffect = true, SunRaysEffect = true }

								local function valueFunction83(argument, argument2, argument3)
									flyteBBState.AntiLagCache = flyteBBState.AntiLagCache or {}
									local table32 = flyteBBState.AntiLagCache[argument]

									if not table32 then
										table32 = {}
										flyteBBState.AntiLagCache[argument] = table32
									end

									if table32[argument2] == nil then
										table32[argument2] = argument[argument2]
									end

									argument[argument2] = argument3
								end

								local function antiLagRestore()
									flyteBBState.AntiLag = false
									flyteBBState.AntiLagRestore = nil
									cleanupResources(flyteBBState.AntiLagConnections or {})
									flyteBBState.AntiLagConnections = nil
									local antiLagCache = flyteBBState.AntiLagCache
									flyteBBState.AntiLagCache = nil
									antiLagCache = antiLagCache or {}

									for key, value109 in antiLagCache, nil, nil do
										pcall(function()
											for key2, value110 in value109, nil, nil do
												key[key2] = value110
											end
										end)
									end
								end

								local function valueFunction84(descendant)
									if not flyteBBState.AntiLag then
										return
									end
									local className = descendant.ClassName

									if className == "Atmosphere" then
										valueFunction83(descendant, "Density", 0)
										valueFunction83(descendant, "Haze", 0)
										valueFunction83(descendant, "Glare", uiConstants[33])
										return
									end

									if className == "Clouds" then
										valueFunction83(descendant, "Enabled", false)
										return
									end

									if not table31[className] then
										return
									end
									local antiLagCache = flyteBBState.AntiLagCache and flyteBBState.AntiLagCache[descendant]
									if antiLagCache and antiLagCache.Enabled ~= nil then
										return
									end
									valueFunction83(descendant, "Enabled", false)

									flyteBBState.AntiLagConnections[#flyteBBState.AntiLagConnections + 1] = descendant:GetPropertyChangedSignal("Enabled"):Connect(function()
										if flyteBBState.AntiLag and descendant.Enabled then
											descendant.Enabled = uiConstants[101]
										end
									end)
								end

								table25.Render.SetAntiLag = function(argument)
									antiLagRestore()
									if not argument then
										return
									end
									flyteBBState.AntiLag = true
									flyteBBState.AntiLagConnections = {}
									flyteBBState.AntiLagRestore = antiLagRestore
									local Lighting2 = game:GetService("Lighting")
									local terrain = workspace.Terrain
									local level01 = Enum.QualityLevel.Level01
									valueFunction83(settings().Rendering, "QualityLevel", level01)
									valueFunction83(Lighting2, "GlobalShadows", false)
									valueFunction83(Lighting2, "EnvironmentDiffuseScale", 0)
									valueFunction83(Lighting2, "EnvironmentSpecularScale", uiConstants[33])
									valueFunction83(terrain, "WaterWaveSize", uiConstants[33])
									valueFunction83(terrain, "WaterWaveSpeed", 0)
									valueFunction83(terrain, "WaterReflectance", 0)

									local function valueFunction85(argument2)
										if not argument2 then
											return
										end

										for _, value109 in argument2:GetDescendants() do
											valueFunction84(value109)
										end

										flyteBBState.AntiLagConnections[#flyteBBState.AntiLagConnections + 1] = argument2.DescendantAdded:Connect(valueFunction84)
									end

									valueFunction85(Lighting2)
									valueFunction85(terrain)
									valueFunction85(workspace.CurrentCamera)

									flyteBBState.AntiLagConnections[#flyteBBState.AntiLagConnections + uiConstants[18]] = workspace:GetPropertyChangedSignal("CurrentCamera"):Connect(function()
										valueFunction85(workspace.CurrentCamera)
									end)
								end
							end

							table25.LoadRender()

							flyteBBState.Connections[uiConstants[182]] = task.spawn(function()
								local function valueFunction73(argument, argument2)
									local value109 = valueFunction58(argument)
									value109.TargetChanges = 0
									value109.Target = resolveKeyCode(argument)
									value109.LoopTarget = value109.Target
									value109.Parried = false
									value109.ParryResetAt = 0
									value109.AutoParryAt = nil
									valueFunction66(value109)
									value109.Zoomies = nil
									value109.CurveReference = nil
									value109.CurveSource = nil
									value109.CurveTargetDirection = nil
									value109.CurveReady = nil
									value109.CurveVersion = 0
									value109.Connections = {}

									local function unreconstructedFunction74()
										local curveVelocity = value109.Connections.CurveVelocity

										if curveVelocity then
											curveVelocity:Disconnect()
											value109.Connections.CurveVelocity = nil
										end
									end

									local function getParryTiming(zoomies)
										local referenceVelocity = value109.Connections.ReferenceVelocity

										if referenceVelocity then
											referenceVelocity:Disconnect()
											value109.Connections.ReferenceVelocity = nil
										end

										value109.Zoomies = zoomies

										if zoomies then
											value109.Connections.ReferenceVelocity = zoomies:GetPropertyChangedSignal("VectorVelocity"):Connect(function()if  table20 .BackwardsAntiCurveEnabled then  valueFunction62 ( argument , value109 );end;end)
											valueFunction62(argument, value109)
										end
									end

									local function valueFunction76(F,P)if  value109 .CurveVersion~=F or not  argument .Parent or  resolveKeyCode ( argument )~= localPlayer .Name then return;end; unreconstructedFunction74 (); value109 .CurveReady=true;if  table20 .AutoParryEnabled and not P then task.spawn( table25 .Loop.MainParryLoop);end;end

									local function valueFunction77()
										if valueFunction56(argument) then
											if table.find(argument2, argument) then
												return
											end
											table.insert(argument2, argument)

											if flyteBBState.Loaded and table20.TriggerbotEnabled then
												table25.Triggerbot.TryParry(argument, value109)
											elseif flyteBBState.Loaded and table20.AutoParryEnabled then
												task.spawn(table25.Loop.MainParryLoop)
											end
										else
											local value110 = table.find(argument2, argument)

											if value110 then
												table.remove(argument2, value110)
											end
										end
									end

									getParryTiming(argument:FindFirstChild("zoomies"))
									local targetAttachment = argument:FindFirstChild("TargetAttachment")
									value109.Connections.Target = (targetAttachment and targetAttachment.Changed or argument:GetAttributeChangedSignal("target")):Connect(function() value109 .TargetChanges=( value109 .TargetChanges or 0)+1;local F= resolveKeyCode ( argument );local P= value109 .Target~=F;if P or not  targetAttachment then  value109 .Parried=false; value109 .ParryResetAt=0;if  flyteBBState .ManualBall== argument then  flyteBBState .ManualBall=nil;end;if  value107 == argument then  condition18 =false; value107 =nil; n32 =0;end;end;if P then if F== localPlayer .Name then  valueFunction65 ( value109 );else  valueFunction66 ( value109 );end;end;if  table20 .TriggerbotEnabled then  table25 .Triggerbot.TryParry( argument , value109 ,F);end;if P then  value109 .CurveVersion= value109 .CurveVersion+1;if F== localPlayer .Name and  table20 .BackwardsAntiCurveEnabled then if  argument :GetAttribute("DribbleActive")==true then  value109 .CurveReference=nil;end; value109 .CurveSource=type( value109 .Target)=="string"and  value109 .Target~=""and  value109 .Target~= localPlayer .Name and  value109 .Target or nil; value109 .CurveTargetDirection= valueFunction61 ( value109 .CurveSource); value109 .CurveReady=nil;local P= value109 .CurveVersion;local x= value109 .Zoomies;if  table20 .BackwardsAntiCurveEnabled and  argument .Parent~= trainingBalls and not  valueFunction57 ( argument )and x then local f;f=x:GetPropertyChangedSignal("VectorVelocity"):Connect(function()if  value109 .Connections.CurveVelocity==f then  valueFunction76 (P);end;end); value109 .Connections.CurveVelocity=f;local f=x.VectorVelocity;local x,h=f.Magnitude, value109 .CurveReference;local M,C=h and h.Magnitude or 0, localPlayer .Character;local Y=C and C.PrimaryPart;C= value109 .CurveTargetDirection or Y and Y.Position- valueFunction54 ( argument );if M<0.001 or x>=0.001 and(h:Dot(f)<=0 or C and C:Dot(f)>=0)then  valueFunction76 (P,true);end;else  valueFunction76 (P,true);end;else  unreconstructedFunction74 (); value109 .CurveReference=nil; value109 .CurveSource=nil; value109 .CurveTargetDirection=nil; value109 .CurveReady=nil; valueFunction62 ( argument , value109 );end;end; value109 .Target=F;if  flyteBBState .AutoBall== argument and F~= localPlayer .Name then  flyteBBState .AutoBall=nil;if  table20 .AutoParryEnabled and# argument2 >1 and  table25 .Loop and  table25 .Loop.MainParryLoop then  table25 .Loop.MainParryLoop();end;elseif F== localPlayer .Name and  table20 .AutoParryEnabled and(# argument2 >1 or  value109 .CurveReady or not  table20 .BackwardsAntiCurveEnabled)and  table25 .Loop and  table25 .Loop.MainParryLoop then  table25 .Loop.MainParryLoop();end;if  table25 .Ball.Target== argument and F~= localPlayer .Name then  table25 .Ball.Target=nil;end;end)

									if targetAttachment then
										value109.Connections.TriggerbotTarget = argument:GetAttributeChangedSignal("target"):Connect(function()
											if table20.TriggerbotEnabled then
												table25.Triggerbot.TryParry(argument, value109)
											end
										end)
									end

									value109.Connections.TriggerbotSpawn = argument:GetAttributeChangedSignal("from"):Connect(function()
										if table20.TriggerbotEnabled and table20.TriggerbotIgnoreSpawn then
											table25.Triggerbot.TryParry(argument, value109)
										end
									end)

									value109.Connections.Real = argument:GetAttributeChangedSignal("realBall"):Connect(valueFunction77)

									value109.Connections.ChildAdded = argument.ChildAdded:Connect(function(child)
										if child.Name == "zoomies" then
											getParryTiming(child)
										end

										valueFunction77()
									end)

									value109.Connections.ChildRemoved = argument.ChildRemoved:Connect(function(child)
										if child == value109.Zoomies then
											getParryTiming(nil)
											unreconstructedFunction74()

											if not value109.CurveReady then
												valueFunction76(value109.CurveVersion)
											end
										end

										valueFunction77()
									end)

									flyteBBState.Connections[argument] = value109.Connections
									valueFunction77()
								end

								local function unreconstructedFunction74(argument, argument2)
									if value107 == argument then
										value107 = nil
										condition18 = false
										n32 = 0
									end

									if flyteBBState.AutoBall == argument then
										flyteBBState.AutoBall = nil
									end

									local value109 = table.find(argument2, argument)

									if value109 then
										table.remove(argument2, value109)
									end

									if table25.Ball.Target == argument then
										table25.Ball.Target = nil
									end

									local value110 = dragInputChanged(argument)
									obj[argument] = nil

									if value110 and value110 ~= argument then
										obj[value110] = nil
									end

									local remoteEvent = obj2[argument]

									if remoteEvent and remoteEvent.Connections then
										cleanupResources(remoteEvent.Connections)
									end

									flyteBBState.Connections[argument] = nil
									obj2[argument] = nil
								end

								local function getParryTiming(argument, argument2, argument3)
									for _, value109 in argument:GetChildren() do
										valueFunction73(value109, argument2)
									end

									flyteBBState.Connections[argument3 .. " Added"] = argument.ChildAdded:Connect(function(child)
										valueFunction73(child, argument2)
									end)

									flyteBBState.Connections[argument3 .. " Removed"] = argument.ChildRemoved:Connect(function(child)
										unreconstructedFunction74(child, argument2)
									end)
								end

								getParryTiming(balls, table25.Ball.List, "Ball")

								local function valueFunction76(child)
									if child.Name ~= "TrainingBalls" then
										return
									end
									trainingBalls = child
									updatePing("Training Folder")
									getParryTiming(child, table25.Ball.TrainingList, "Training Ball")
								end

								flyteBBState.Connections["Training Folder"] = workspace.ChildAdded:Connect(valueFunction76)
								local trainingBalls2 = workspace:FindFirstChild("TrainingBalls")

								if trainingBalls2 then
									valueFunction76(trainingBalls2)
								end
							end)

							valueFunction43({ UnlockAllEnabled = uiConstants[101] })

							do
								local unlockAll = {
									Run = uiConstants[33],
									Types = { "Sword", "Explosion" },
									Connections = {},
									Originals = {},
									SavedEquipped = {},
									Defaults = {},
									SwordData = {},
									Clones = {},
									Favorites = { Sword = {}, Explosion = {}, Emote = {} },
									Deleted = { Sword = {}, Explosion = {}, Emote = {} },
									ShopState = {},
									ShopChanges = {},
									ShopItems = { Sword = {}, Explosion = {} },
									ShopFields = {
										{ "ItemsMatching", "ItemsMatching" },
										{ "InDeleteMulti", "InDeleteMulti" },
										{ "Owns", "OwnsItem" },
										{ uiConstants[183], "Section" },
										{ "ForceHide", "ForceHide" },
									},
									ShopActive = uiConstants[101],
									FavoriteStates = {},
									DefaultFavorites = {},
									EmoteItems = {},
									EmoteItemsList = {},
									EmoteDisplays = {},
									EmoteItemKeys = {},
									EmoteBuildIndex = 1,
									EmoteBuildToken = 0,
									EmoteBuilding = false,
									EmotesReady = false,
									EmoteCatalogLoaded = uiConstants[101],
									ButtonConnections = {},
									CardConnections = {},
									EquippedEmotes = {},
									Finishers = {},
									DefaultFinishers = {},
									Overlays = {},
									MultiDelete = { Sword = {}, Explosion = {} },
									MultiDeleteCards = {},
								}

								table25.UnlockAll = unlockAll

								unlockAll.Add = function(argument)
									if argument then
										table.insert(unlockAll.Connections, argument)
									end

									return argument
								end

								local function valueFunction73(argument, argument2, argument3)
									local value109 = unlockAll.Originals[argument]

									if value109 then
										argument2[argument3 or argument] = value109
										unlockAll.Originals[argument] = nil
									end
								end

								unlockAll.GetCharacter = function()
									local character = localPlayer.Character
									local humanoid = character and character:FindFirstChildOfClass("Humanoid")
									if character and character.Parent and (not humanoid or humanoid.Health > 0) then
										return character
									end
								end

								unlockAll.Load = function()
									if unlockAll.EmotesFolder then
										return true
									end
									local controllers = replicatedStorage.Controllers
									local shared = replicatedStorage.Shared
									local Replion = require(replicatedStorage.Packages.Replion)
									unlockAll.InventoryClient = require(shared.Inventory).Client
									unlockAll.InventoryShared = require(shared.Inventory.Shared)
									unlockAll.InventoryController = require(controllers.Trading.InventoryController)
									unlockAll.InventoryReplion = Replion.Client:GetReplion("Inventory")
									unlockAll.DataReplion = Replion.Client:GetReplion("Data")
									unlockAll.Shop = require(controllers.UI.ShopController)
									unlockAll.ShopAPI = require(controllers.UI.ShopControllerAPI)
									unlockAll.TradeInfo = require(shared.Trading.TradeInfo)
									unlockAll.Swords = require(shared.ReplicatedInstances.Swords)
									unlockAll.SwordFX = require(shared.ReplicatedInstances.SwordFX)
									unlockAll.EmoteWheel = require(controllers.EmoteWheelController)
									unlockAll.EmoteController = require(controllers.EmoteController)
									unlockAll.DeletePrompt = require(controllers.DeleteItemPromptController)
									unlockAll.FinishersController = require(controllers.FinishersController)
									unlockAll.VFX = require(controllers.VFXController)
									unlockAll.EmotesShared = require(shared.EmotesShared)
									unlockAll.ItemInfo = require(shared.ItemInfo)
									unlockAll.AwakenData = require(shared.SecretAwakenData)
									unlockAll.AwakenBase = {}

									for key, value109 in unlockAll.AwakenData, nil, nil do
										if type(value109) == "table" and value109.Awakened then
											unlockAll.AwakenBase[value109.Awakened.Value] = key
										end
									end

									unlockAll.Trove = require(replicatedStorage.Packages.Trove)
									unlockAll.EmotesFolder = replicatedStorage.Misc.Emotes
									return true
								end

								unlockAll.ShopReady = function()
									local virtualItems = unlockAll.Shop._virtualItems
									if not virtualItems then
										return uiConstants[101]
									end
									local loadInventoryPage = unlockAll.Shop._loadInventoryPage

									if loadInventoryPage then
										for _, value109 in unlockAll.Types, nil, nil do
											if virtualItems[value109] and not next(virtualItems[value109]) then
												loadInventoryPage(value109)
											end
										end
									end

									local inventoryPages = unlockAll.Shop._inventoryPages
									local sword = inventoryPages and inventoryPages.Sword
									inventoryPages = inventoryPages and inventoryPages.Explosion
									return virtualItems.Sword and next(virtualItems.Sword) ~= nil and virtualItems.Explosion and next(virtualItems.Explosion) ~= nil and sword and sword.BatchDepth == uiConstants[33] and inventoryPages and inventoryPages.BatchDepth == 0
								end

								unlockAll.Save = function()
									table19.UnlockAll = table19.UnlockAll or {}
									table19.UnlockAll.Sword = unlockAll.AwakenBase[unlockAll.Sword] or unlockAll.Sword
									table19.UnlockAll.Explosion = unlockAll.Explosion
									local emotes = {}

									for key, value109 in unlockAll.EquippedEmotes, nil, nil do
										emotes[tostring(key)] = value109
									end

									table19.UnlockAll.Emotes = emotes
									table19.UnlockAll.Accessory = unlockAll.Accessory == uiConstants[200]
									table19.UnlockAll.Finishers = table.clone(unlockAll.Finishers)

									table19.UnlockAll.Favorites = {
										Sword = table.clone(unlockAll.Favorites.Sword),
										Explosion = table.clone(unlockAll.Favorites.Explosion),
										Emote = table.clone(unlockAll.Favorites.Emote),
									}

									table20.UnlockAllSword = table19.UnlockAll.Sword or ""
									table20.UnlockAllExplosion = unlockAll.Explosion or ""
									table20.UnlockAllEmotes = table19.UnlockAll.Emotes
									table20.UnlockAllAccessory = table19.UnlockAll.Accessory
									table20.UnlockAllFinishers = table19.UnlockAll.Finishers
									table20.UnlockAllFavorites = table19.UnlockAll.Favorites
									saveConfig()
								end

								unlockAll.LoadFavorites = function()
									for _, value109 in { "Sword", "Explosion", "Emote" }, nil, nil do
										table.clear(unlockAll.Favorites[value109])
										local condition19 = type(table20.UnlockAllFavorites) == "table" and table20.UnlockAllFavorites[value109]

										if type(condition19) == "table" then
											for key, value110 in condition19, nil, nil do
												if value110 == true then
													unlockAll.Favorites[value109][key] = true
												end
											end
										end
									end
								end

								unlockAll.ApplyFavorites = function()
									for key, value109 in unlockAll.Favorites, nil, nil do
										for key2 in value109, nil, nil do
											unlockAll.SetFavorite(key, key2, uiConstants[200], false)
										end
									end
								end

								unlockAll.GetFavoriteState = function(argument, argument2)
									local text5 = argument .. "\0" .. tostring(argument2)
									local value109 = unlockAll.FavoriteStates[text5]
									if value109 then
										return value109
									end
									local favoriteState = unlockAll.InventoryController:GetFavoriteState(argument, argument2)

									if favoriteState then
										unlockAll.FavoriteStates[text5] = favoriteState
										unlockAll.DefaultFavorites[text5] = favoriteState:Get() == true
									end

									return favoriteState
								end

								unlockAll.GetShopFavorites = function()
									if unlockAll.ShopFavorites then
										return unlockAll.ShopFavorites
									end
									local sword = unlockAll.Shop._inventoryPages and unlockAll.Shop._inventoryPages.Sword
									local value109 = sword and getupvalues and getupvalues(sword.MarkDirty)
									value109 = value109 and value109[2]
									local table26 = value109 and getupvalues(value109)
									table26 = table26 and table26[4]
									table26 = table26 and getupvalues(table26) or {}

									for _, value110 in table26, nil, nil do
										if type(value110) == "table" and type(value110.Sword) == "table" and type(value110.Explosion) == "table" then
											unlockAll.ShopFavorites = value110
											return value110
										end
									end
								end

								unlockAll.SetFavorite = function(argument, argument2, argument3, argument4)
									if not unlockAll.Favorites[argument] then
										return
									end
									unlockAll.Favorites[argument][argument2] = argument3 and true or nil
									local value109 = unlockAll.GetFavoriteState(argument, argument2)
									local condition19 = argument ~= "Emote" and unlockAll.GetShopFavorites()

									if condition19 and condition19[argument] then
										condition19[argument][argument2] = argument3 and true or nil
										local inventoryPages = unlockAll.Shop._inventoryPages and unlockAll.Shop._inventoryPages[argument]

										if inventoryPages and inventoryPages.MarkDirty then
											inventoryPages.MarkDirty(nil, uiConstants[200], true)
										end
									end

									if value109 then
										value109:Set(argument3 == true)
									end

									local consoleItems = unlockAll.ConsoleItems and unlockAll.ConsoleItems[argument] and unlockAll.ConsoleItems[argument][argument2]

									if consoleItems then
										consoleItems.Data.IsFavorited:Set(argument3 == uiConstants[200])
									end

									if argument4 ~= false then
										unlockAll.Save()
									end
								end

								unlockAll.ToggleFavorite = function(argument, argument2)
									unlockAll.SetFavorite(argument, argument2, not unlockAll.Favorites[argument][argument2])
								end

								unlockAll.RestoreFavorites = function()
									local value109 = unlockAll.GetShopFavorites()

									for key, value110 in unlockAll.FavoriteStates, nil, nil do
										local condition19 = unlockAll.DefaultFavorites[key] == true
										local text5 = string.find(key, "\0", 1, true)
										local str6 = text5 and string.sub(key, 1, text5 - 1)
										text5 = text5 and string.sub(key, text5 + 1)

										if value109 and value109[str6] and text5 then
											value109[str6][text5] = condition19 and true or nil
										end

										value110:Set(condition19)
									end

									for _, value110 in unlockAll.Types, nil, nil do
										local inventoryPages = unlockAll.Shop._inventoryPages and unlockAll.Shop._inventoryPages[value110]

										if inventoryPages then
											inventoryPages.MarkDirty(nil, uiConstants[200], uiConstants[200])
										end
									end

									table.clear(unlockAll.FavoriteStates)
									table.clear(unlockAll.DefaultFavorites)
								end

								unlockAll.GetShopState = function(T,F)local P=T and T[F];if type(P)=="table"and type(P.Get)=="function"then return P:Get();end;return P;end
								unlockAll.ApplyShopState = function(T,F,P)local x=T and T[F];if type(x)=="table"and type(x.Set)=="function"then x:Set(P);elseif T then T[F]=P;end;end

								unlockAll.SetShopState = function(argument, argument2)
									if not argument then
										return
									end
									local value109 = unlockAll.ShopState[argument]
									if not value109 then
										return
									end
									local table26 = unlockAll.ShopChanges[argument]
									local condition19 = false

									for _, value110 in unlockAll.ShopFields, nil, nil do
										local remoteEvent = value110[1]
										local remoteAction = value110[2]
										local signal = argument2[remoteEvent]

										if signal ~= nil then
											local value114 = unlockAll.GetShopState(argument, remoteAction)

											if value114 ~= signal then
												unlockAll.ApplyShopState(argument, remoteAction, signal)
												table26 = table26 or {}

												if table26[remoteEvent] == nil then
													table26[remoteEvent] = value114
												elseif table26[remoteEvent] == signal then
													table26[remoteEvent] = nil
												end

												condition19 = true
											end

											value109[remoteEvent] = signal
										end
									end

									if table26 then
										unlockAll.ShopChanges[argument] = next(table26) and table26 or nil
									end

									local inventoryPages = unlockAll.Shop._inventoryPages and unlockAll.Shop._inventoryPages[argument.Type]

									if condition19 and inventoryPages and inventoryPages.MarkDirty and inventoryPages.BatchDepth == 0 then
										inventoryPages.MarkDirty(argument, false, true)
									end

									if condition19 and unlockAll.ConsoleItems then
										unlockAll.SyncConsoleItem(argument)
									end
								end

								unlockAll.IsUnlockItem = function(argument)
									local value109 = uiConstants[145]
									local condition19 = type(argument) == value109

									if condition19 then
										condition19 = tostring(argument.Id or ""):match("^UnlockAll:") ~= nil
									end

									return condition19
								end

								unlockAll.GetOwnedItem = function(argument, argument2)
									local value109 = unlockAll.InventoryClient:FindItems(argument, argument2)
									local condition19 = type(value109) == "table" and value109[1]
									local item = condition19 and unlockAll.InventoryClient:GetItem(argument, condition19)

									if item and not unlockAll.IsUnlockItem(item) then
										local value110 = table.clone(item)
										value110.Id = value110.Id or condition19
										return value110
									end

									local table26 = unlockAll.InventoryClient:GetInventory()[argument] or {}

									for _, value110 in table26, nil, nil do
										if value110.Name == argument2 and not unlockAll.IsUnlockItem(value110) then
											return value110
										end
									end
								end

								unlockAll.GetRealEquipped = function(argument)
									local equipped = unlockAll.InventoryClient:GetEquipped(argument)
									if not unlockAll.IsUnlockItem(equipped) then
										return equipped
									end
									return unlockAll.GetOwnedItem(argument, equipped.Name)
								end

								unlockAll.ActivateShop = function()
									if unlockAll.ShopActive then
										return true
									end
									unlockAll.ShopActive = uiConstants[200]
									table.clear(unlockAll.ShopState)
									table.clear(unlockAll.ShopChanges)
									local run = unlockAll.Run
									local n33 = os.clock() + 0.004
									local shop = unlockAll.Shop
									local inventoryPages = shop._inventoryPages
									local shopState = unlockAll.ShopState
									local shopItems = unlockAll.ShopItems
									local deleted = unlockAll.Deleted

									local function unreconstructedFunction74(argument)
										if os.clock() < n33 then
											return true
										end
										runService.Heartbeat:Wait()

										if unlockAll.Run ~= run or unlockAll.Status ~= "active" then
											if argument and argument.EndBatch then
												argument.EndBatch()
											end

											return uiConstants[101]
										end

										n33 = os.clock() + 0.004
										return uiConstants[200]
									end

									for _, value109 in unlockAll.Types, nil, nil do
										local value110 = inventoryPages and inventoryPages[value109]

										if value110 and value110.BeginBatch then
											value110.BeginBatch()
										end

										local table26 = shop._virtualItems[value109] or {}
										local remoteEvent = shopItems[value109]
										local table27 = {}
										table.clear(remoteEvent)

										for _, remoteAction in table26, nil, nil do
											local name = remoteAction.Name

											if name and name ~= "Random" then
												local condition19 = unlockAll.GetShopState(remoteAction, "OwnsItem")

												local table28 = {
													Owns = condition19,
													Section = unlockAll.GetShopState(remoteAction, uiConstants[183]),
													ForceHide = unlockAll.GetShopState(remoteAction, "ForceHide"),
													ItemsMatching = unlockAll.GetShopState(remoteAction, "ItemsMatching"),
													InDeleteMulti = unlockAll.GetShopState(remoteAction, "InDeleteMulti"),
													Virtual = condition19 ~= true,
												}

												shopState[remoteAction] = table28
												local signal = remoteEvent[name]

												if not signal then
													remoteEvent[name] = remoteAction
													condition19 = condition19 and not table28.ForceHide or nil
													table27[name] = condition19
												elseif not table27[name] then
													local value114 = shopState[signal]

													if condition19 and not table28.ForceHide then
														remoteEvent[name] = remoteAction
														table27[name] = uiConstants[200]
													elseif condition19 and not value114.Owns then
														remoteEvent[name] = remoteAction
													elseif value114.ForceHide and not table28.ForceHide then
														remoteEvent[name] = remoteAction
													end
												end
											end

											if not unreconstructedFunction74(value110) then
												return uiConstants[101]
											end
										end

										for _, remoteAction in table26, nil, nil do
											local name = remoteAction.Name

											if name and name ~= "Random" then
												local signal = shopState[remoteAction]
												local value114 = table.clone(signal)

												if remoteAction == remoteEvent[name] then
													local originalFireServer = deleted[value109][name]
													local forceHide = value109 == "Sword" and unlockAll.AwakenBase[name] ~= nil
													local itemsMatching = signal.ItemsMatching or {}

													if originalFireServer or forceHide then
														itemsMatching = {}
													elseif #itemsMatching == 0 then
														itemsMatching = { "UnlockAll:" .. name }
													end

													signal.ItemsMatching = itemsMatching
													signal.InDeleteMulti = 0
													signal.Owns = #itemsMatching > 0
													signal.Section = signal.Owns and "Owned" or "Unowned"
													signal.ForceHide = forceHide
												else
													signal.ForceHide = true
												end

												local table28 = {}

												for _, originalFireServer in unlockAll.ShopFields, nil, nil do
													if signal[originalFireServer[1]] ~= value114[originalFireServer[1]] then
														table28[originalFireServer[1]] = value114[originalFireServer[1]]
													end
												end

												unlockAll.ShopChanges[remoteAction] = next(table28) and table28 or nil
											end

											if not unreconstructedFunction74(value110) then
												return uiConstants[101]
											end
										end

										for _, remoteAction in table26, nil, nil do
											local signal = unlockAll.ShopChanges[remoteAction]

											if signal then
												for _, value114 in unlockAll.ShopFields, nil, nil do
													if signal[value114[1]] ~= nil then
														unlockAll.ApplyShopState(remoteAction, value114[uiConstants[70]], shopState[remoteAction][value114[1]])
													end
												end
											end
										end

										if value110 and value110.MarkDirty then
											value110.MarkDirty(nil, false, true)
										end

										if value110 and value110.EndBatch then
											value110.EndBatch()
										end
									end

									return true
								end

								unlockAll.RestoreShop = function()
									if not unlockAll.ShopActive then
										return
									end
									unlockAll.ShopActive = uiConstants[101]
									local inventoryPages = unlockAll.Shop._inventoryPages

									for _, value109 in unlockAll.Types, nil, nil do
										local value110 = inventoryPages and inventoryPages[value109]

										if value110 and value110.BeginBatch then
											value110.BeginBatch()
										end
									end

									for key, value109 in unlockAll.ShopChanges, nil, nil do
										for _, value110 in unlockAll.ShopFields, nil, nil do
											if value109[value110[1]] ~= nil then
												unlockAll.ApplyShopState(key, value110[2], value109[value110[1]])
											end
										end
									end

									for _, value109 in unlockAll.Types, nil, nil do
										local value110 = inventoryPages and inventoryPages[value109]

										if value110 and value110.MarkDirty then
											value110.MarkDirty(nil, false, true)
										end

										if value110 and value110.EndBatch then
											value110.EndBatch()
										end
									end

									table.clear(unlockAll.ShopState)
									table.clear(unlockAll.ShopChanges)
									table.clear(unlockAll.ShopItems.Sword)
									table.clear(unlockAll.ShopItems.Explosion)
								end

								unlockAll.GetSelected = function()
									local console = unlockAll.Console

									if console then
										local currentPage = console:GetCurrentPage()
										local name = console.PageInfo[currentPage]
										name = name and name.ItemState:Get()
										name = name and name.ItemInfo.Name
										if unlockAll.ShopItems[currentPage] and name then
											return currentPage, name, unlockAll.ShopItems[currentPage][name]
										end
										return
									end

									local selectedItem = unlockAll.Shop and unlockAll.Shop._selectedItem
									local type_ = selectedItem and selectedItem.type
									selectedItem = selectedItem and selectedItem.name
									if (type_ == "Sword" or type_ == "Explosion") and selectedItem then
										return type_, selectedItem, unlockAll.ShopItems[type_][selectedItem]
									end
								end

								unlockAll.MakeOverlay = function(argument, parent, argument2)
									if not parent then
										return
									end
									local textButton = Instance.new("TextButton")
									textButton.Name = "UnlockAll" .. argument
									textButton.Text = ""
									textButton.AutoButtonColor = false
									textButton.BackgroundTransparency = 1
									textButton.BorderSizePixel = 0
									textButton.Size = UDim2.new(1, 0, 1, 0)
									textButton.ZIndex = 100
									textButton.Visible = false
									textButton.Parent = parent
									unlockAll.Add(textButton.Activated:Connect(argument2))
									unlockAll.Overlays[argument] = textButton
								end

								unlockAll.RefreshShop = function()
									if unlockAll.Console then
										return
									end
									local value109, value110, remoteEvent = unlockAll.GetSelected()
									local visible = unlockAll.Status == "active" and remoteEvent ~= nil and not unlockAll.Shop._multiDelete and unlockAll.Deleted[value109][value110] ~= true
									local favorite = unlockAll.Overlays.Favorite
									local delete = unlockAll.Overlays.Delete
									local accessory = unlockAll.Overlays.Accessory
									local finisher = unlockAll.Overlays.Finisher

									if favorite then
										favorite.Visible = visible
									end

									if accessory then
										accessory.Visible = false
									end

									if finisher then
										finisher.Visible = false
									end

									remoteEvent = remoteEvent and unlockAll.ShopState[remoteEvent]
									local owns = visible and remoteEvent ~= nil and remoteEvent.Owns

									if delete then
										delete.Visible = owns and remoteEvent ~= nil
									end

									local shop = inputChangedHandler:FindFirstChild("Shop")
									shop = shop and shop:FindFirstChild("Holder")

									if (value109 == "Sword" or value109 == "Explosion") and shop and shop:FindFirstChild("Favorite") then
										shop.Favorite.Visible = owns

										if owns then
											local condition19 = unlockAll.Favorites[value109][value110] == true
											shop.Favorite.Image = condition19 and "rbxassetid://15697987058" or "rbxassetid://15697981750"
											shop.Favorite.HoverImage = condition19 and "rbxassetid://15697983062" or "rbxassetid://15697987058"
										end
									end

									shop = shop and shop:FindFirstChild("InfoBG")

									if shop and shop:FindFirstChild("SecretUpgrade") then
										shop.SecretUpgrade.Visible = owns and value109 == "Sword" and unlockAll.AwakenData[value110] ~= nil
									end

									local condition19 = value109 and value110 and unlockAll.Deleted[value109][value110] == true

									if shop and shop:FindFirstChild("Delete") then
										shop.Delete.Visible = delete and delete.Visible or false
									end

									local buyButton = shop and shop:FindFirstChild("BuyButton")

									if shop and condition19 then
										for _, remoteAction in {
											"BuyButton",
											"GiftButton",
											"UpgradeButton",
											"Finisher",
											"ChangeStyle",
											"EquipAccessory",
											"SecretUpgrade",
											"CharacterUpgradeButton",
											"UpgradesInfoButton",
											"Equips",
										}, nil, nil do
											local signal = shop:FindFirstChild(remoteAction)

											if signal and signal:IsA("GuiObject") then
												signal.Visible = false
											end
										end
									end

									if buyButton and owns and remoteEvent and remoteEvent.Virtual then
										local condition20 = value109 == "Sword" and unlockAll.Sword == value110 or value109 == "Explosion" and unlockAll.Explosion == value110
										buyButton.Visible = true
										buyButton.Active = true

										if buyButton:FindFirstChild("PriceTag") then
											local price = buyButton.PriceTag:FindFirstChild("Price")
											local textLabel = buyButton.PriceTag:FindFirstChild("TextLabel")

											if price then
												price.Visible = uiConstants[101]
											end

											if textLabel then
												textLabel.Text = condition20 and "Equipped" or "Equip"
											end
										end
									end

									if value109 == "Sword" and owns and remoteEvent and remoteEvent.Virtual and shop and shop:FindFirstChild("Equips") then
										local data = unlockAll.Shop._selectedItem and unlockAll.Shop._selectedItem.data
										local finisher2 = shop.Equips:FindFirstChild("Finisher")
										local equipAccessory = shop.Equips:FindFirstChild("EquipAccessory")

										if finisher2 and data and data.HasFinisher then
											finisher2.Visible = true

											if finisher then
												finisher.Visible = uiConstants[200]
											end

											finisher2.ImageColor3 = Color3.new(uiConstants[18], uiConstants[18], uiConstants[18])
											finisher2.Label.Text = unlockAll.Finishers[value110] and "UNEQUIP" or "EQUIP"
										end

										if equipAccessory and data and data.AccessoryToggleable and unlockAll.Sword == value110 then
											equipAccessory.Visible = true

											if accessory then
												accessory.Visible = true
											end

											equipAccessory.Label.Text = unlockAll.Accessory and "UNEQUIP ACCESSORY" or "EQUIP ACCESSORY"
										end
									end

									if unlockAll.Shop._multiDelete then
										unlockAll.Shop:_updateMultiDeleteVisbility()
									end
								end

								unlockAll.SetAccessory = function(argument)
									unlockAll.Accessory = argument == true
									localPlayer:SetAttribute("ShowSwordAccessory", unlockAll.Accessory)

									if unlockAll.Accessory and unlockAll.Sword then
										unlockAll.ApplySword(unlockAll.Sword)
									elseif not unlockAll.Accessory then
										local value109 = unlockAll.GetCharacter()
										local swordAccessories = value109 and value109:FindFirstChild("SwordAccessories")

										if swordAccessories then
											swordAccessories:Destroy()
										end
									end

									unlockAll.Save()
									unlockAll.RefreshShop()

									for key in unlockAll.Clones, nil, nil do
										unlockAll.UpdateClone(key)
									end
								end

								unlockAll.SetFinisher = function(argument, argument2)
									if not argument then
										return
									end
									local table26 = { "Finishers", "Equipped", argument }

									if unlockAll.DefaultFinishers[argument] == nil and unlockAll.DataReplion then
										unlockAll.DefaultFinishers[argument] = unlockAll.DataReplion:Get(table26) == true
									end

									unlockAll.Finishers[argument] = argument2 and uiConstants[200] or nil

									if unlockAll.DataReplion then
										unlockAll.DataReplion:_set(table26, argument2 == true)
									end

									unlockAll.Save()
									unlockAll.RefreshShop()
								end

								unlockAll.GetCardType = function(argument)
									local shop = inputChangedHandler:FindFirstChild("Shop")
									local pages = shop and shop:FindFirstChild("Holder") and shop.Holder:FindFirstChild("Pages")
									if pages and pages:FindFirstChild("Sword") and argument:IsDescendantOf(pages.Sword) then
										return "Sword"
									end

									if pages and pages:FindFirstChild("Explosion") and argument:IsDescendantOf(pages.Explosion) then
										return "Explosion"
									end
								end

								unlockAll.UpdateMultiDelete = function()
									local value109 = uiConstants[33]

									for _, value110 in unlockAll.Types, nil, nil do
										for _, remoteEvent in unlockAll.MultiDelete[value110], nil, nil do
											value109 += remoteEvent
										end
									end

									local multiDelete = unlockAll.Overlays.MultiDelete

									if multiDelete then
										multiDelete.Visible = unlockAll.Status == "active"
									end

									local shop = inputChangedHandler:FindFirstChild("Shop")
									local deleteItems = shop and shop:FindFirstChild("Holder") and shop.Holder:FindFirstChild("DeleteItems")
									deleteItems = deleteItems and deleteItems:FindFirstChild("Title")

									if deleteItems then
										deleteItems.Text = value109 > 0 and "Delete Items (" .. value109 .. ")" or "Delete Items"
									end
								end

								unlockAll.GetDeleteList = function()
									local shop = inputChangedHandler:FindFirstChild("Shop")
									shop = shop and shop:FindFirstChild("Holder")
									shop = shop and shop:FindFirstChild("DeleteItems")
									local contentsCanvas = shop and shop:FindFirstChild("List") and shop.List:FindFirstChild("ContentsCanvas")
									return contentsCanvas and contentsCanvas:FindFirstChild("ScrollingFrame")
								end

								unlockAll.SetDeleteCount = function(argument, argument2, argument3)
									local value109 = unlockAll.ShopItems[argument][argument2]
									local value110 = value109 and unlockAll.ShopState[value109]
									if not value110 then
										return
									end
									local n33 = math.clamp(argument3, 0, #value110.ItemsMatching)
									unlockAll.MultiDelete[argument][argument2] = n33 > uiConstants[33] and n33 or nil
									unlockAll.SetShopState(value109, { InDeleteMulti = n33, ForceHide = n33 > 0 and n33 == #value110.ItemsMatching })
									local text5 = argument .. "\0" .. argument2
									local clone = unlockAll.MultiDeleteCards[text5]

									if n33 == 0 then
										if clone then
											clone:Destroy()
										end

										unlockAll.MultiDeleteCards[text5] = nil
									else
										local remoteEvent = unlockAll.GetDeleteList()

										if remoteEvent then
											if not clone or clone.Parent ~= remoteEvent then
												local uiListLayout = remoteEvent:FindFirstChildWhichIsA("UIListLayout")
												uiListLayout = uiListLayout and uiListLayout:FindFirstChild("Template")
												local remoteAction = unlockAll.ItemInfo[argument][argument2]
												if not uiListLayout or not remoteAction then
													return
												end
												clone = uiListLayout:Clone()
												clone.Name = argument .. uiConstants[188] .. argument2
												clone.Visible = true
												clone.Button.Label.Text = remoteAction.DisplayName or remoteAction.Name or argument2
												clone.Button.Item.Vector.Image = remoteAction.Icon or ""
												local smallerSlotColors = unlockAll.TradeInfo.SmallerSlotColors
												local default = smallerSlotColors[remoteAction.Rarity] or smallerSlotColors.Default
												clone.Button.Item.Image = default.Image
												clone.Button.Item.HoverImage = default.HoverImage
												clone.Parent = remoteEvent
												unlockAll.MultiDeleteCards[text5] = clone

												local function unreconstructedFunction74()
													unlockAll.SetDeleteCount(argument, argument2, (unlockAll.MultiDelete[argument][argument2] or uiConstants[33]) - 1)
												end

												clone.Button.Activated:Connect(unreconstructedFunction74)
												clone.Button.Item.Activated:Connect(unreconstructedFunction74)
											end

											clone.Button.Item.Label.Text = "x" .. n33
										end
									end

									unlockAll.UpdateMultiDelete()
								end

								unlockAll.ClearMultiDelete = function()
									for _, value109 in unlockAll.Types, nil, nil do
										for key in unlockAll.MultiDelete[value109], nil, nil do
											local value110 = unlockAll.ShopItems[value109][key]

											if value110 and not unlockAll.Deleted[value109][key] then
												unlockAll.SetShopState(value110, { InDeleteMulti = 0, ForceHide = false })
											end
										end
									end

									table.clear(unlockAll.MultiDelete.Sword)
									table.clear(unlockAll.MultiDelete.Explosion)

									for key, value109 in unlockAll.MultiDeleteCards, nil, nil do
										if value109 then
											value109:Destroy()
										end

										unlockAll.MultiDeleteCards[key] = nil
									end

									unlockAll.UpdateMultiDelete()

									if unlockAll.Status == "active" then
										unlockAll.RefreshShop()
									end
								end

								unlockAll.ToggleMultiItem = function(argument)
									if not unlockAll.Shop._multiDelete then
										return
									end
									local value109 = unlockAll.GetCardType(argument)
									local attribute = argument:GetAttribute("Name")
									local value110 = value109 and attribute and unlockAll.ShopItems[value109][attribute]
									if not (value110 and unlockAll.ShopState[value110]) or unlockAll.Deleted[value109][attribute] then
										return
									end
									unlockAll.SetDeleteCount(value109, attribute, (unlockAll.MultiDelete[value109][attribute] or 0) + 1)
								end

								unlockAll.HookMultiCard = function(argument)
									if unlockAll.Status ~= "active" or not argument:IsA("GuiButton") or not unlockAll.GetCardType(argument) or unlockAll.CardConnections[argument] then
										return
									end

									unlockAll.CardConnections[argument] = argument.Activated:Connect(function()
										unlockAll.ToggleMultiItem(argument)
									end)
								end

								unlockAll.CloseMultiDelete = function()
									unlockAll.Shop._multiDelete = nil
									unlockAll.Shop:_updateMultiDeleteVisbility()
									unlockAll.Shop:_updateMultiDelete()
									unlockAll.ClearMultiDelete()
								end

								unlockAll.ConfirmMultiDelete = function()
									if not unlockAll.Shop._multiDelete then
										return
									end
									local table26 = {}
									local value109 = uiConstants[33]

									for _, value110 in unlockAll.Types, nil, nil do
										for key, remoteEvent in unlockAll.MultiDelete[value110], nil, nil do
											value109 += remoteEvent
											table.insert(table26, { Type = value110, Name = key, Quantity = remoteEvent })
										end
									end

									unlockAll.ConfirmDelete(table26, "x" .. value109 .. " items", unlockAll.CloseMultiDelete)
								end

								unlockAll.HookMultiDelete = function(argument)
									local pages = argument:FindFirstChild("Pages")
									local deleteItems = argument:FindFirstChild("DeleteItems")
									local buttons = deleteItems and deleteItems:FindFirstChild("List") and deleteItems.List:FindFirstChild("Buttons")
									local shop = unlockAll.Shop
									unlockAll.Originals.CanDelete = shop._canDelete

									shop._canDelete = function()
										return false
									end

									unlockAll.CloseMultiDelete()
									local updateMultiDelete = shop._updateMultiDelete

									shop._updateMultiDelete = function(argument2)
										if unlockAll.Status ~= "active" then
											return updateMultiDelete(argument2)
										end

										if not argument2._multiDelete then
											unlockAll.ClearMultiDelete()
											return
										end
										unlockAll.UpdateMultiDelete()
									end

									unlockAll.Originals.UpdateMultiDelete = updateMultiDelete
									unlockAll.MakeOverlay("MultiDelete", buttons and buttons:FindFirstChild("Delete"), unlockAll.ConfirmMultiDelete)

									if pages then
										for _, value109 in pages:GetDescendants() do
											unlockAll.HookMultiCard(value109)
										end

										unlockAll.Add(pages.DescendantAdded:Connect(function(descendant)
											task.defer(unlockAll.HookMultiCard, descendant)
										end))
									end

									unlockAll.UpdateMultiDelete()
								end

								unlockAll.HookShop = function()
									local shop = inputChangedHandler:FindFirstChild("Shop")
									shop = shop and shop:FindFirstChild("Holder")
									local infoBG = shop and shop:FindFirstChild("InfoBG")
									if not shop or not infoBG then
										return
									end

									for _, value109 in unlockAll.Types, nil, nil do
										local value110 = unlockAll.Shop._inventoryPages[value109]
										local markDirty = value110.MarkDirty

										local function unreconstructedFunction74(argument)
											local remoteEvent = unlockAll.ShopState[argument]
											if not remoteEvent or not unlockAll.ShopChanges[argument] then
												return
											end

											for _, remoteAction in unlockAll.ShopFields, nil, nil do
												local signal = remoteEvent[remoteAction[1]]

												if unlockAll.GetShopState(argument, remoteAction[2]) ~= signal then
													unlockAll.ApplyShopState(argument, remoteAction[uiConstants[70]], signal)
												end
											end

											if unlockAll.ConsoleItems then
												unlockAll.SyncConsoleItem(argument)
											end
										end

										value110.MarkDirty = function(argument, argument2, argument3)
											if unlockAll.Status == "active" then
												if argument then
													unreconstructedFunction74(argument)
												else
													for _, remoteEvent in unlockAll.Shop._virtualItems[value109], nil, nil do
														unreconstructedFunction74(remoteEvent)
													end
												end
											end

											return markDirty(argument, argument2, argument3)
										end

										unlockAll.Originals["MarkDirty" .. value109] = markDirty
									end

									unlockAll.Add(infoBG.BuyButton.Activated:Connect(function()
										local value109, value110 = unlockAll.GetSelected()

										if value109 == "Sword" then
											unlockAll.SelectSword(value110)
										elseif value109 == "Explosion" then
											unlockAll.SelectExplosion(value110)
										end

										task.defer(unlockAll.RefreshShop)
									end))

									unlockAll.MakeOverlay("Favorite", shop:FindFirstChild("Favorite"), function()
										local value109, value110 = unlockAll.GetSelected()

										if value109 and value110 then
											unlockAll.ToggleFavorite(value109, value110)
											unlockAll.RefreshShop()
										end
									end)

									unlockAll.MakeOverlay("Delete", infoBG:FindFirstChild("Delete"), function()
										if n27(1143) < 5866 then
											local value109, value110, remoteEvent = unlockAll.GetSelected()

											if value109 and value110 and remoteEvent and unlockAll.ShopState[remoteEvent] then
												unlockAll.PromptDelete(value109, value110)
											end

											return
										end

										while true do
										end
									end)

									local secretUpgrade = inputChangedHandler:FindFirstChild("SecretUpgrade")

									if secretUpgrade then
										unlockAll.MakeOverlay("AwakenOpen", infoBG:FindFirstChild("SecretUpgrade"), function()
											local value109, value110 = unlockAll.GetSelected()

											if value109 == "Sword" then
												unlockAll.OpenAwaken(value110)
											end
										end)

										unlockAll.MakeOverlay("Awaken", secretUpgrade.Main.Upgrade, function()
											unlockAll.AwakenSword(unlockAll.AwakenName)
										end)

										unlockAll.Overlays.AwakenOpen.Visible = uiConstants[200]
										unlockAll.Overlays.Awaken.Visible = true
									end

									local equips = infoBG:FindFirstChild("Equips")

									unlockAll.MakeOverlay("Accessory", equips and equips:FindFirstChild("EquipAccessory"), function()
										if n27(2212) < 7940 then
											local value109, value110 = unlockAll.GetSelected()

											if value109 == "Sword" and unlockAll.Sword == value110 then
												unlockAll.SetAccessory(not unlockAll.Accessory)
											end

											return
										end

										while true do
										end
									end)

									unlockAll.MakeOverlay("Finisher", equips and equips:FindFirstChild("Finisher"), function()
										local value109, value110 = unlockAll.GetSelected()

										if value109 == "Sword" then
											unlockAll.SetFinisher(value110, not unlockAll.Finishers[value110])
										end
									end)

									if unlockAll.Shop.itemSelected and unlockAll.Shop.itemSelected.Connect then
										unlockAll.Add(unlockAll.Shop.itemSelected:Connect(function()
											task.defer(unlockAll.RefreshShop)
										end))
									end

									unlockAll.HookMultiDelete(shop)
								end

								unlockAll.SyncConsoleItem = function(argument)
									local value109 = unlockAll.ConsoleItems[argument.Type][argument.Name]
									if not value109 or unlockAll.ShopItems[argument.Type][argument.Name] ~= argument then
										return
									end
									local value110 = unlockAll.ShopState[argument]
									local n33 = value110.ForceHide and 0 or #value110.ItemsMatching
									value109.Data.OwnedCopies:Set(n33)
									unlockAll.ShopAPI:GetItemBaseOwnedState(argument.Type, argument.Name):SetTag("UnlockAll", n33 > uiConstants[33])
									unlockAll.Console:UpdateItem(value109.Data)
								end

								unlockAll.BindConsole = function(argument, argument2)
									for _, value109 in getconnections(argument.Activated) do
										if value109.Enabled then
											value109:Disable()
											table.insert(unlockAll.ConsoleConnections, value109)
										end
									end

									unlockAll.Add(argument.Activated:Connect(argument2))
								end

								unlockAll.HookConsole = function()
									local shopAPI = unlockAll.ShopAPI
									local activeVariant = shopAPI.ActiveVariant
									if not activeVariant then
										return
									end
									unlockAll.Console = activeVariant
									unlockAll.ConsoleItems = { Sword = {}, Explosion = {} }
									unlockAll.ConsoleConnections = {}
									local main = inputChangedHandler.ControllerShop.Main

									for key, value109 in {
										SetEquipped = function(argument, argument2, argument3)
											if not unlockAll.ShopItems[argument2] then
												return unlockAll.Originals.APISetEquipped(argument, argument2, argument3)
											end
											local item = unlockAll.InventoryClient:GetItem(argument2, argument3)
											item = item and item.Name or argument3
											if not unlockAll.ShopItems[argument2][item] or unlockAll.Deleted[argument2][item] then
												return uiConstants[101]
											end

											if argument2 == "Sword" then
												unlockAll.SelectSword(item)
											else
												unlockAll.SelectExplosion(item)
											end

											return uiConstants[200]
										end,
										ToggleFavorited = function(argument, argument2)
											local itemType = argument2.ItemInfo.ItemType
											local name = argument2.ItemInfo.Name
											if not unlockAll.ShopItems[itemType] then
												return unlockAll.Originals.APIToggleFavorited(argument, argument2)
											end
											unlockAll.ToggleFavorite(itemType, name)
											return true
										end,
										ToggleSwordAccessory = function()
											unlockAll.SetAccessory(not unlockAll.Accessory)
										end,
										RequestFinisherEquip = function(argument, argument2)
											unlockAll.SetFinisher(argument2.Name, not unlockAll.Finishers[argument2.Name])
											return uiConstants[200]
										end,
										ToggleSwordStyle = function()
											local value109 = unlockAll.ItemInfo.Sword[unlockAll.Sword]

											if value109 then
												value109 = value109.AnimationStyles[unlockAll.Accessory and "Accessory" or "Base"]
											end

											if value109 and #value109 > uiConstants[33] then
												localPlayer:SetAttribute("AnimationStyle", value109[(table.find(value109, localPlayer:GetAttribute("AnimationStyle")) or uiConstants[33]) % #value109 + 1])
											end
										end,
									}, nil, nil do
										unlockAll.Originals["API" .. key] = shopAPI[key]
										shopAPI[key] = value109
									end

									local buttons = main.DeleteItems.List.Buttons
									local value109 = nil

									for _, value110 in getconnections(buttons.Cancel.Activated) do
										local function_ = value110.Enabled and value110.Function

										if function_ then
											local console = replicatedStorage.Controllers.UI.ShopControllerAPI.Variants.Console
											function_ = getfenv(value110.Function).script == console
										end

										if function_ then
											value109 = value110
											break
										end
									end

									unlockAll.ConsoleCancel = value109

									unlockAll.BindConsole(buttons.Delete, function()
										local table26 = {}
										local value110 = uiConstants[33]

										for key, remoteEvent in debug.getupvalue(activeVariant.GetDeletingItemState, 1) do
											local remoteAction = remoteEvent:Get()
											local itemType = key.ItemInfo.ItemType
											local name = key.ItemInfo.Name

											if remoteAction > 0 and unlockAll.ShopItems[itemType] then
												value110 += remoteAction
												table.insert(table26, { Type = itemType, Name = name, Quantity = remoteAction })
											end
										end

										unlockAll.ConfirmDelete(table26, "x" .. value110 .. " items", function()
											if value109 then
												value109:Fire()
											end
										end)
									end)

									unlockAll.BindConsole(main.Pages.Sword.Right.UpgradeButton, function()
										local value110, remoteEvent = unlockAll.GetSelected()

										if value110 == "Sword" then
											unlockAll.OpenAwaken(remoteEvent)
										end
									end)

									unlockAll.BindConsole(inputChangedHandler.SecretUpgrade.Main.Upgrade, function()
										unlockAll.AwakenSword(unlockAll.AwakenName)
									end)

									local run = unlockAll.Run
									local n33 = os.clock() + 0.004

									for _, value110 in unlockAll.Types, nil, nil do
										for key, remoteEvent in unlockAll.ShopItems[value110], nil, nil do
											local remoteAction = table.clone(remoteEvent.Item)

											if unlockAll.ShopState[remoteEvent].Virtual and value110 == "Sword" then
												local signal = unlockAll.ItemInfo.Sword[key]
												remoteAction.Finisher = signal.HasFinisher or nil
												remoteAction.Accessory = signal.AccessoryUnlockable or nil
											end

											local itemData = shopAPI:GetItemData(value110, shopAPI:ParseItemKey(value110, remoteAction))
											remoteAction.Id = "UnlockAll:" .. value110 .. ":" .. key
											unlockAll.ConsoleItems[value110][key] = { Data = itemData, Item = remoteAction, Favorite = itemData.IsFavorited:Get() }
											itemData.IsFavorited:Set(unlockAll.Favorites[value110][key] == true)
											unlockAll.SyncConsoleItem(remoteEvent)

											if os.clock() >= n33 then
												runService.Heartbeat:Wait()
												if unlockAll.Run ~= run or unlockAll.Status ~= "active" then
													return
												end
												n33 = os.clock() + 0.004
											end
										end

										unlockAll.Add(unlockAll.InventoryClient:OnInventoryChange(value110, function()
											task.defer(function()
												if unlockAll.Run ~= run or unlockAll.Status ~= "active" then
													return
												end

												for _, remoteEvent in unlockAll.ShopItems[value110], nil, nil do
													unlockAll.SyncConsoleItem(remoteEvent)
												end
											end)
										end))

										local remoteEvent = unlockAll[value110]

										if remoteEvent then
											unlockAll.SetEquipped(value110, remoteEvent)
										end
									end
								end

								unlockAll.RestoreConsole = function()
									local console = unlockAll.Console
									if not console then
										return
									end

									if unlockAll.ConsoleCancel then
										unlockAll.ConsoleCancel:Fire()
									end

									for _, value109 in {
										"SetEquipped",
										"ToggleFavorited",
										"ToggleSwordAccessory",
										"RequestFinisherEquip",
										"ToggleSwordStyle",
									}, nil, nil do
										valueFunction73("API" .. value109, unlockAll.ShopAPI, value109)
									end

									for _, value109 in unlockAll.ConsoleConnections, nil, nil do
										value109:Enable()
									end

									for key, value109 in unlockAll.ConsoleItems, nil, nil do
										for key2, value110 in value109, nil, nil do
											value110.Data.OwnedCopies:Set(#unlockAll.InventoryClient:FindItemsWithKey(key, value110.Data.ParsedItemKey))
											value110.Data.IsFavorited:Set(value110.Favorite)
											unlockAll.ShopAPI:GetItemBaseOwnedState(key, key2):SetTag("UnlockAll", nil)
											console:UpdateItem(value110.Data)
										end
									end

									unlockAll.Console = nil
									unlockAll.ConsoleItems = nil
									unlockAll.ConsoleConnections = nil
									unlockAll.ConsoleCancel = nil
								end

								unlockAll.OpenAwaken = function(awakenName)
									local value109 = unlockAll.AwakenData[awakenName]
									if not value109 then
										return
									end
									unlockAll.AwakenName = awakenName
									local secretUpgrade = inputChangedHandler.SecretUpgrade
									secretUpgrade:SetAttribute("ToAwaken", nil)
									local main = secretUpgrade.Main
									main.template1.vector.Image = value109.Regular.Icon
									main.template2.vector.Image = value109.Awakened.Icon
									main.template2.customs.c3.Visible = value109.CustomSlash == true
									main.Progress.Fill.Size = UDim2.fromScale(1, 1)
									local requirement = unlockAll.AwakenData.Requirement
									main.Progress.Progress.Text = requirement .. "/" .. requirement
									require(replicatedStorage.ClientGameModules.GuiHandler):Open("SecretUpgrade")
								end

								unlockAll.DestroyOverlays = function()
									for _, value109 in unlockAll.Overlays, nil, nil do
										if value109 and value109.Parent then
											value109:Destroy()
										end
									end

									table.clear(unlockAll.Overlays)
								end

								unlockAll.ConfirmDelete = function(argument, argument2, argument3)
									local run = unlockAll.Run

									unlockAll.DeletePrompt:PromptConfirmation({
										PromptType = "Single",
										Description = "Are you sure you want to delete " .. argument2 .. "? This cannot be undone.",
									}, function(argument4)
										if not argument4 or unlockAll.Status ~= "active" or unlockAll.Run ~= run then
											return
										end

										for _, value109 in argument, nil, nil do
											unlockAll.DeleteItem(value109.Type, value109.Name, value109.Quantity)
										end

										if argument3 then
											argument3()
										end
									end)
								end

								unlockAll.PromptDelete = function(argument, argument2)
									if not unlockAll.DeletePrompt then
										return unlockAll.DeleteItem(argument, argument2)
									end
									local value109 = unlockAll.ItemInfo[argument] and unlockAll.ItemInfo[argument][argument2]
									unlockAll.ConfirmDelete({ { Type = argument, Name = argument2 } }, "x1 " .. tostring(value109 and (value109.DisplayName or value109.Name) or argument2))
								end

								unlockAll.AwakenSword = function(argument)
									local value109 = argument and unlockAll.AwakenData[argument]
									local value110 = argument and unlockAll.ShopItems.Sword[argument]
									local remoteEvent = value109 and unlockAll.ShopItems.Sword[value109.Awakened.Value]
									local remoteAction = value110 and unlockAll.ShopState[value110]
									if unlockAll.Status ~= "active" or not remoteEvent or not remoteAction or #remoteAction.ItemsMatching == uiConstants[33] then
										return
									end
									unlockAll.AwakenName = nil
									local signal = table.clone(remoteAction.ItemsMatching)
									table.remove(signal)

									unlockAll.SetShopState(value110, {
										ItemsMatching = signal,
										Owns = #signal > 0,
										Section = #signal > 0 and "Owned" or "Unowned",
										ForceHide = #signal == 0,
									})

									local unlockAll2 = value109.Awakened.Value
									local value114 = table.clone(unlockAll.ShopState[remoteEvent].ItemsMatching)
									table.insert(value114, "UnlockAll:" .. unlockAll2)
									unlockAll.Deleted.Sword[unlockAll2] = nil
									unlockAll.SetShopState(remoteEvent, { ItemsMatching = value114, Owns = true, Section = "Owned", ForceHide = false })

									if unlockAll.Sword == argument then
										unlockAll.SelectSword(unlockAll2, false)
									end

									if unlockAll.Console then
										unlockAll.Console.PageInfo.Sword.ItemState:Set(unlockAll.ConsoleItems.Sword[unlockAll2].Data)
									else
										unlockAll.Shop:Select({ type = "Sword", name = unlockAll2, data = unlockAll.GetSwordData(unlockAll2) })
									end

									require(replicatedStorage.ClientGameModules.GuiHandler):Open(unlockAll.Console and "ControllerShop" or "Shop")
									unlockAll.RefreshShop()
								end

								unlockAll.DeleteItem = function(argument, argument2, argument3)
									if unlockAll.Status ~= "active" then
										return
									end

									if argument == "Emote" then
										local value109 = unlockAll.EmoteItems[argument2]
										if not value109 then
											return
										end
										unlockAll.Deleted.Emote[argument2] = uiConstants[200]
										unlockAll.SetFavorite("Emote", argument2, false, false)
										local emote = unlockAll.EmoteCaller and unlockAll.EmoteCaller.Replion.Data.Inventory.Emote

										if emote and emote[value109.Id] then
											emote[value109.Id] = nil

											if unlockAll.EmoteView then
												unlockAll.EmoteView.TriggerUpdate(value109, "Remove")
											end
										end

										for key, value110 in unlockAll.EquippedEmotes, nil, nil do
											if value110 == argument2 then
												unlockAll.EquippedEmotes[key] = nil
											end
										end

										unlockAll.UpdateEmoteWheel()
										unlockAll.Save()
										return
									end

									local value109 = unlockAll.ShopItems[argument] and unlockAll.ShopItems[argument][argument2]
									local value110 = value109 and unlockAll.ShopState[value109]
									if not value110 then
										return
									end
									local remoteEvent = table.clone(value110.ItemsMatching)
									local remoteAction = uiConstants[18]
									local min = math.min
									local n33 = argument3 or 1

									for i = remoteAction, min(n33, #remoteEvent) do
										table.remove(remoteEvent)
									end

									unlockAll.SetShopState(value109, { ItemsMatching = remoteEvent, InDeleteMulti = 0 })

									if #remoteEvent > 0 then
										unlockAll.SetShopState(value109, { ForceHide = false })
										unlockAll.RefreshShop()
										return
									end

									unlockAll.Deleted[argument][argument2] = true
									unlockAll.SetFavorite(argument, argument2, false, false)
									unlockAll.SetShopState(value109, { Owns = false, Section = "Unowned", ForceHide = false })

									if argument == "Sword" and unlockAll.Sword == argument2 then
										unlockAll.RestoreSword(uiConstants[200])
									elseif argument == "Explosion" and unlockAll.Explosion == argument2 then
										unlockAll.RestoreExplosion(true)
									else
										unlockAll.Save()
									end

									unlockAll.RefreshShop()
								end

								unlockAll.PatchSwords = function()
									if unlockAll.SwordsPatched then
										return
									end
									local value = rawget(unlockAll.Swords, "EquipSwordTo")
									local value109 = value and getupvalues and getupvalues(value)
									if not value109 or not setupvalue then
										return
									end
									local value110 = nil

									for key, remoteEvent in value109, nil, nil do
										if typeof(remoteEvent) == "Instance" and remoteEvent.ClassName == "Players" then
											value110 = key
										elseif type(remoteEvent) == "table" and type(rawget(remoteEvent, "cancel")) == "function" and type(rawget(remoteEvent, "begin")) == "function" then
											unlockAll.SwordState = remoteEvent
										end
									end

									if not value110 and value109[uiConstants[61]] == false and value109[4] == true then
										setupvalue(value, 3, playersService)
										value110 = uiConstants[61]
									end

									if value110 and type(value109[value110 + 1]) == "boolean" then
										setupvalue(value, value110 + 1, false)
									end

									unlockAll.SwordsPatched = value110 ~= nil
								end

								unlockAll.GetSwordData = function(argument)
									local value109 = unlockAll.SwordData[argument]
									if value109 then
										return value109
									end
									local swords = unlockAll.Swords
									swords = swords and swords:GetSword(argument)

									if not swords then
										swords = replicatedStorage.Shared.ReplicatedInstances:FindFirstChild("Swords")
										swords = swords and swords:FindFirstChild("GetSword")
										swords = swords and swords:Invoke(argument)
									end

									if swords then
										unlockAll.SwordData[argument] = swords
									end

									return swords
								end

								unlockAll.GetSlash = function(argument)
									local value109 = unlockAll.GetSwordData(argument)
									if not value109 then
										return
									end
									local slashName = value109.SlashName or "SlashEffect"
									unlockAll.SwordFX:GetInstance(slashName)
									return slashName
								end

								unlockAll.RemoveSwords = function(argument, argument2)
									if not argument then
										return
									end

									for _, value109 in argument:GetChildren() do
										if value109:IsA("Model") and value109.Name ~= argument2 and unlockAll.GetSwordData(value109.Name) then
											value109:Destroy()
										end
									end
								end

								unlockAll.GetBlade = function()
									if unlockAll.BladeController then
										return unlockAll.BladeController
									end

									if not getconnections or not getupvalues then
										return
									end
									local fireSwordInfo = replicatedStorage:FindFirstChild("Remotes") and replicatedStorage.Remotes:FindFirstChild("FireSwordInfo")
									if not fireSwordInfo then
										return
									end

									for _, value109 in getconnections(fireSwordInfo.OnClientEvent) do
										local function_ = value109.Function and getupvalues(value109.Function)

										if type(function_) == "table" then
											for _, value110 in function_, nil, nil do
												if type(value110) == "table" and type(value110.SetSword) == "function" then
													unlockAll.BladeController = value110
													return value110
												end
											end
										end
									end
								end

								unlockAll.PatchBlade = function(argument)
									if not argument or unlockAll.Originals.SetSword then
										return
									end
									unlockAll.Originals.SetSword = argument.SetSword

									argument.SetSword = function(argument2, argument3)
										if unlockAll.Status == "active" and unlockAll.Sword then
											argument3 = unlockAll.Sword
										end

										return unlockAll.Originals.SetSword(argument2, argument3)
									end
								end

								unlockAll.ApplySword = function(argument)
									local value109 = unlockAll.GetCharacter()
									if not value109 or not argument then
										return
									end
									local humanoid = value109:FindFirstChildOfClass("Humanoid") or value109:WaitForChild("Humanoid", 2)
									if not humanoid or humanoid.Health <= 0 or not value109:FindFirstChild("HumanoidRootPart") then
										return
									end

									if unlockAll.Sword and not unlockAll.SavedEquipped.Sword then
										unlockAll.Originals.EquippedSword = unlockAll.GetRealEquipped("Sword")
										unlockAll.SavedEquipped.Sword = true
									end

									unlockAll.PatchSwords()
									local swordState = unlockAll.SwordState

									if swordState then
										swordState.cancel(value109)
									end

									if unlockAll.Swords:EquipSwordTo(value109, argument) == false then
										return
									end
									unlockAll.Slash = unlockAll.GetSlash(argument) or unlockAll.Slash

									if not unlockAll.Accessory then
										local swordAccessories = value109:FindFirstChild("SwordAccessories")

										if swordAccessories then
											swordAccessories:Destroy()
										end
									end

									local value110 = unlockAll.GetBlade()

									if value110 then
										unlockAll.PatchBlade(value110)
										value110:SetSword(argument)
									end

									if not unlockAll.Accessory then
										task.defer(function()
											local swordAccessories = value109:FindFirstChild("SwordAccessories")

											if swordAccessories then
												swordAccessories:Destroy()
											end
										end)
									end

									task.defer(unlockAll.RemoveSwords, value109, argument)
								end

								unlockAll.SetEquipped = function(argument, argument2)
									if not unlockAll.SavedEquipped[argument] then
										unlockAll.Originals["Equipped" .. argument] = unlockAll.GetRealEquipped(argument)
										unlockAll.SavedEquipped[argument] = true
									end

									local consoleItems = unlockAll.ConsoleItems and unlockAll.ConsoleItems[argument][argument2]
									unlockAll.InventoryReplion:_set({ "Equipped", argument }, consoleItems and consoleItems.Item or unlockAll.GetOwnedItem(argument, argument2) or { Name = argument2, Id = "UnlockAll:" .. argument .. ":" .. argument2 })

									if unlockAll.Shop and unlockAll.Shop._selectedItem then
										unlockAll.Shop:Select(unlockAll.Shop._selectedItem, true)
									end
								end

								unlockAll.WatchSword = function(argument)
									if not argument then
										return
									end

									unlockAll.Add(argument.DescendantAdded:Connect(function(descendant)
										local sword = unlockAll.Sword
										if unlockAll.Status ~= "active" or not sword then
											return
										end
										local model = descendant:FindFirstAncestorOfClass("Model")

										while model and model.Parent ~= argument do
											model = model:FindFirstAncestorOfClass("Model")
										end

										if not model or not model:GetAttribute("_equippedSword") or model.Name == sword then
											return
										end

										if descendant:IsA("BasePart") or descendant:IsA("Decal") then
											descendant.Transparency = 1
										elseif descendant:IsA("ParticleEmitter") or descendant:IsA("Trail") then
											descendant.Enabled = false
											descendant:Clear()
										elseif descendant:IsA("Beam") or descendant:IsA("Fire") or descendant:IsA("Smoke") or descendant:IsA("Sparkles") or descendant:IsA("Light") then
											descendant.Enabled = false
										end
									end))

									unlockAll.Add(argument:GetAttributeChangedSignal("CurrentlyEquippedSword"):Connect(function()
										local sword = unlockAll.Sword

										if unlockAll.Status == "active" and sword and argument:GetAttribute("CurrentlyEquippedSword") ~= sword then
											task.defer(unlockAll.ApplySword, sword)
										end
									end))

									local humanoid = argument:FindFirstChildOfClass("Humanoid") or argument:WaitForChild("Humanoid", 2)

									if humanoid then
										unlockAll.Add(humanoid.HealthChanged:Connect(function(health)
											local sword = unlockAll.Sword

											if unlockAll.Status == "active" and health > 0 and sword then
												task.defer(unlockAll.ApplySword, sword)
											end
										end))
									end
								end

								unlockAll.ClearCloneTracks = function(argument)
									if not (n25 > 6642) then
										argument.Data = nil

										for key, value109 in argument.OriginalTracks, nil, nil do
											if argument.Animator and argument.Animator.Parent then
												key:Play(0, value109.Weight, value109.Speed)
											end
										end

										table.clear(argument.OriginalTracks)

										for _, value109 in argument.Tracks, nil, nil do
											value109:Stop(0)
											value109:Destroy()
										end

										table.clear(argument.Tracks)
										return
									end

									while true do
									end
								end

								unlockAll.PlayCloneTrack = function(argument, argument2)
									local value109 = unlockAll.Clones[argument]
									if not value109 or not value109.Data or not argument2.IsPlaying then
										return
									end

									for _, value110 in value109.Tracks, nil, nil do
										if argument2 == value110 then
											return
										end
									end

									local animation = argument2.Animation and unlockAll.CloneAnimationTypes[argument2.Animation.AnimationId]
									if not animation then
										return
									end
									local value110 = table25.Animation.SwordAPI:GetAnimations(argument, animation, value109.Data.AnimationType, value109.Data.SwordType)[1]
									if not value110 or value110.AnimationId == argument2.Animation.AnimationId then
										return
									end
									local remoteEvent = value109.Tracks[value110]

									if not remoteEvent then
										remoteEvent = value109.Animator:LoadAnimation(value110)
										value109.Tracks[value110] = remoteEvent
									end

									local weightTarget = argument2.WeightTarget

									if argument2.Looped then
										value109.OriginalTracks[argument2] = { Weight = weightTarget, Speed = argument2.Speed }
									end

									remoteEvent.Priority = argument2.Priority
									remoteEvent.Looped = argument2.Looped
									remoteEvent:Play(0, weightTarget, argument2.Speed)

									if remoteEvent.Length > 0 then
										remoteEvent.TimePosition = math.min(argument2.TimePosition, remoteEvent.Length)
									end

									argument2:Stop(0)
								end

								unlockAll.UpdateClone = function(argument)
									local value109 = unlockAll.Clones[argument]
									if not value109 or value109.Thread or unlockAll.Status ~= "active" or not unlockAll.Sword then
										return
									end
									local humanoid = argument:FindFirstChildOfClass("Humanoid")
									local animator = humanoid and humanoid:FindFirstChildOfClass("Animator")
									if not animator or not argument:FindFirstChild("Torso") or not argument:FindFirstChild("Left Arm") or not argument:FindFirstChild("Right Arm") then
										return
									end

									if value109.Model and value109.Model.Parent == argument and value109.Name == unlockAll.Sword and value109.Accessory == unlockAll.Accessory then
										for _, value110 in argument:GetChildren() do
											if value110 ~= value109.Model and value110:GetAttribute("_equippedSword") then
												value110:Destroy()
											end
										end

										return
									end

									value109.Thread = task.defer(function()
										local sword = unlockAll.Sword
										local accessory = unlockAll.Accessory
										unlockAll.ClearCloneTracks(value109)
										local value110 = unlockAll.GetSwordData(sword)
										local ok, model = pcall(unlockAll.Swords.ForceEquipSwordTo, unlockAll.Swords, argument, sword, nil, accessory)
										if unlockAll.Clones[argument] ~= value109 then
											return
										end

										if not ok or not model or not value110 then
											value109.Thread = nil
											return
										end
										local remoteEvent = value109
										local remoteAction = value109
										value109.Model = model
										remoteEvent.Name = sword
										remoteAction.Accessory = accessory
										local signal = value109
										local value114 = animator
										value109.Data = value110
										signal.Animator = value114

										if not value109.Connections.Animation then
											value109.Connections.Animation = animator.AnimationPlayed:Connect(function(argument2)
												unlockAll.PlayCloneTrack(argument, argument2)
											end)
										end

										for _, originalFireServer in animator:GetPlayingAnimationTracks() do
											unlockAll.PlayCloneTrack(argument, originalFireServer)
										end

										value109.Thread = nil
										unlockAll.UpdateClone(argument)
									end)
								end

								unlockAll.ClearClone = function(argument, argument2)
									local value109 = unlockAll.Clones[argument]
									if not value109 then
										return
									end
									unlockAll.Clones[argument] = nil
									cleanupResources(value109.Connections)
									cleanupResources(value109.Thread)
									unlockAll.ClearCloneTracks(value109)

									if argument2 and value109.Model and argument.Parent then
										local attribute = argument:GetAttribute("EquippedSword") or value109.OriginalSword

										if attribute then
											task.defer(function()
												if argument.Parent and not unlockAll.Clones[argument] then
													unlockAll.Swords:ForceEquipSwordTo(argument, attribute, nil, value109.OriginalAccessory)
												end
											end)
										end
									end
								end

								unlockAll.WatchClone = function(argument)
									local condition19 = unlockAll.Status ~= "active"
									local condition20

									if condition19 then
										condition20 = condition19
									else
										local name = localPlayer.Name
										condition20 = argument:GetAttribute("EncryptedCloneOwner") ~= name
									end

									if condition20 or unlockAll.Clones[argument] then
										return
									end

									if not unlockAll.CloneAnimationTypes then
										local cloneAnimationTypes = {}

										for _, value109 in replicatedStorage.Shared.SwordAPI.Collection:GetDescendants() do
											if value109:IsA("Animation") then
												for _, value110 in { "Idle", "Parry", "GrabParry", "SuccessParry" }, nil, nil do
													if value109:GetAttribute(value110) then
														local remoteEvent = cloneAnimationTypes[value109.AnimationId]
														local animationId = value109.AnimationId
														local condition21 = remoteEvent == nil and value110
														local condition22

														if condition21 then
															condition22 = condition21
														else
															condition22 = remoteEvent == value110 and value110
														end

														condition22 = condition22 or false
														cloneAnimationTypes[animationId] = condition22
														break
													end
												end
											end
										end

										unlockAll.CloneAnimationTypes = cloneAnimationTypes
									end

									local table26 = {
										Connections = {},
										Tracks = {},
										OriginalTracks = {},
										OriginalSword = argument:GetAttribute("EquippedSword"),
										OriginalAccessory = argument:GetAttribute("HasAccessoryEquipped") == true,
									}

									unlockAll.Clones[argument] = table26

									table26.Connections.Loaded = argument.DescendantAdded:Connect(function(descendant)
										local isAnimator = descendant:IsA("Animator")
										local attribute

										if isAnimator then
											attribute = isAnimator
										else
											local condition21 = descendant.Parent == argument

											if condition21 then
												attribute = not table26.Model or descendant:GetAttribute("_equippedSword")
											else
												attribute = condition21
											end
										end

										if attribute then
											task.defer(unlockAll.UpdateClone, argument)
										end
									end)

									unlockAll.UpdateClone(argument)
								end

								unlockAll.WatchEmotes = function(argument)
									local humanoid

									if argument then
										humanoid = argument:FindFirstChildOfClass("Humanoid") or argument:WaitForChild("Humanoid", 2)
									else
										humanoid = argument
									end

									if not humanoid then
										return
									end

									unlockAll.Add(humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function()
										if humanoid.MoveDirection ~= Vector3.zero and unlockAll.EmoteTrove then
											unlockAll.StopEmote()
										end
									end))
								end

								unlockAll.SelectSword = function(sword, argument)
									if not sword or unlockAll.Deleted.Sword[sword] then
										return
									end
									unlockAll.Sword = sword
									unlockAll.Slash = unlockAll.GetSlash(sword)
									table25.Animation.PreloadSword(sword)
									unlockAll.SetEquipped("Sword", sword)
									unlockAll.PatchParrySuccess()

									for _, value109 in game:GetService("CollectionService"):GetTagged("EncryptedClone") do
										unlockAll.WatchClone(value109)
										unlockAll.UpdateClone(value109)
									end

									task.defer(function()
										if unlockAll.Status == "active" and unlockAll.Sword == sword then
											unlockAll.ApplySword(sword)
										end
									end)

									if argument ~= false then
										unlockAll.Save()
									end
								end

								unlockAll.RestoreSword = function(argument)
									local sword = unlockAll.Defaults.Sword or "Base Sword"
									unlockAll.Sword = nil
									unlockAll.Slash = nil

									if unlockAll.SavedEquipped.Sword then
										unlockAll.InventoryReplion:_set({ "Equipped", "Sword" }, unlockAll.Originals.EquippedSword)
										unlockAll.Originals.EquippedSword = nil
										unlockAll.SavedEquipped.Sword = nil
									end

									unlockAll.ApplySword(sword)

									if argument then
										unlockAll.Save()
									end

									for key in unlockAll.Clones, nil, nil do
										invokeSafely(unlockAll.ClearClone, key, true)
									end
								end

								unlockAll.SelectExplosion = function(explosion, argument)
									if not explosion or unlockAll.Deleted.Explosion[explosion] then
										return
									end
									unlockAll.Explosion = explosion
									unlockAll.SetEquipped("Explosion", explosion)
									localPlayer:SetAttribute("CurrentlyEquippedExplosion", explosion)
									local value109 = unlockAll.GetCharacter()

									if value109 then
										value109:SetAttribute("CurrentlyEquippedExplosion", explosion)
									end

									if argument ~= uiConstants[101] then
										unlockAll.Save()
									end
								end

								unlockAll.RestoreExplosion = function(argument)
									local explosion = unlockAll.Defaults.Explosion or "Explosion Normal"
									unlockAll.Explosion = nil

									if unlockAll.SavedEquipped.Explosion then
										unlockAll.InventoryReplion:_set({ "Equipped", "Explosion" }, unlockAll.Originals.EquippedExplosion)
										unlockAll.Originals.EquippedExplosion = nil
										unlockAll.SavedEquipped.Explosion = nil
									end

									localPlayer:SetAttribute("CurrentlyEquippedExplosion", explosion)
									local value109 = unlockAll.GetCharacter()

									if value109 then
										value109:SetAttribute("CurrentlyEquippedExplosion", explosion)
									end

									if argument then
										unlockAll.Save()
									end
								end

								unlockAll.PatchExplosion = function()
									if not unlockAll.VFX or unlockAll.Originals.PlayExplosion then
										return
									end
									unlockAll.Originals.PlayExplosion = unlockAll.VFX.PlayExplosion

									unlockAll.VFX.PlayExplosion = function(argument, argument2, argument3, argument4, argument5, arg6, arg7)
										if unlockAll.Status == "active" and unlockAll.Explosion and arg7 and arg6 == localPlayer.Character then
											argument2 = unlockAll.Explosion
										end

										if unlockAll.Status == "active" and arg7 and arg6 == localPlayer.Character and unlockAll.Sword and unlockAll.Finishers[unlockAll.Sword] and unlockAll.FinishersController then
											local humanoidRootPart = argument5 and argument5:FindFirstChild("HumanoidRootPart")
											local alive2 = workspace:FindFirstChild("Alive")
											local children = alive2 and alive2:GetChildren() or {}
											local n33 = 0

											for _, value109 in children, nil, nil do
												if value109 ~= argument5 then
													n33 += 1
												end
											end

											if humanoidRootPart and alive2 and n33 <= 1 then
												unlockAll.FinishersController:PlayFinisher(unlockAll.Sword, arg6, argument5, humanoidRootPart.CFrame, workspace:GetServerTimeNow())
											end
										end

										return unlockAll.Originals.PlayExplosion(argument, argument2, argument3, argument4, argument5, arg6, arg7)
									end
								end

								unlockAll.PatchParrySuccess = function()
									if not hookfunction or not getconnections or not getinfo then
										return
									end
									local remotes = replicatedStorage:FindFirstChild("Remotes")
									local flyteSwordEffects = genv.FlyteSwordEffects or {}
									genv.FlyteSwordEffects = flyteSwordEffects

									local function unreconstructedFunction74(argument, argument2)
										if unlockAll.Originals[argument] or not argument2 then
											return false
										end

										for _, value109 in getconnections(argument2) do
											if value109.Function and (getinfo(value109.Function).name == "parrySuccessAll" or flyteSwordEffects[argument] == value109.Function) then
												flyteSwordEffects[argument] = value109.Function
												unlockAll.Originals[argument .. "Target"] = value109.Function
												unlockAll.Originals[argument] = hookfunction(value109.Function, function(...)local F={...};if  unlockAll .Status=="active"and  unlockAll .Sword and(tostring(F[4])== localPlayer .Name or type(F[4])=="table"and  unlockAll .Clones[F[4].Character])then local P= unlockAll .Slash;if P then F[1]=P;F[3]= unlockAll .Sword;end;end;return  unlockAll .Originals[ argument ](unpack(F));end)
												return true
											end
										end

										return false
									end

									local parrySuccessAll = remotes and remotes:FindFirstChild("ParrySuccessAll")
									unreconstructedFunction74("Parry_All_Func", parrySuccessAll and parrySuccessAll.OnClientEvent)
									remotes = remotes and remotes:FindFirstChild("ParrySuccessClient")

									if remotes then
										remotes = remotes:IsA("BindableEvent") and remotes.Event or remotes.OnClientEvent
									end

									unreconstructedFunction74("Parry_Client_Func", remotes)
								end

								unlockAll.StopEmote = function()
									if unlockAll.EmoteTrove then
										unlockAll.EmoteTrove:Destroy()
										unlockAll.EmoteTrove = nil
									end

									local character = localPlayer.Character

									if character then
										character:SetAttribute("Emoting", nil)
									end
								end

								unlockAll.PlayEmote = function(argument)
									local value109 = unlockAll.EmotesFolder:FindFirstChild(argument)
									local value110 = unlockAll.GetCharacter()
									local humanoid = value110 and value110:FindFirstChildOfClass("Humanoid")
									if not value109 or not value110 or not humanoid or humanoid.MoveDirection.Magnitude > 0 then
										return
									end
									unlockAll.StopEmote()
									unlockAll.EmoteTrove = unlockAll.Trove.new()
									value110:SetAttribute("Emoting", value109:GetAttribute("EmoteName") or value109.Name)
									local remoteEvent = uiConstants[18]
									unlockAll.EmotesShared:Play(value110, unlockAll.EmoteTrove, value109.Name, true, workspace:GetServerTimeNow(), remoteEvent, nil, false)
								end

								unlockAll.PatchEmotes = function()
									if unlockAll.Originals.EmotePlay then
										return
									end
									unlockAll.Originals.EmotePlay = unlockAll.EmoteController.Play

									unlockAll.EmoteController.Play = function(argument, argument2, argument3)
										local condition19 = unlockAll.Status == "active" and argument2 and unlockAll.EmotesFolder:FindFirstChild(argument2)
										if condition19 and condition19.AnimationId ~= "" and condition19.AnimationId ~= "rbxassetid://0" then
											return unlockAll.PlayEmote(argument2)
										end
										return unlockAll.Originals.EmotePlay(argument, argument2, argument3)
									end

									for _, value109 in { "UpdateHolderEmotes", "UpdateMenuContentEmotes" }, nil, nil do
										local value110 = value109
										unlockAll.Originals[value110] = unlockAll.EmoteWheel[value110]

										unlockAll.EmoteWheel[value110] = function(argument, ...)
											local remoteEvent = unlockAll.Originals[value110]
											local remoteAction = table.pack(...)
											remoteAction.n = 2 + remoteAction.n - 1
											table.move(remoteAction, 1, remoteAction.n, 2, remoteAction)
											remoteAction[1] = argument
											local signal = remoteEvent(table.unpack(remoteAction, 1, remoteAction.n))

											if unlockAll.Status == "active" then
												unlockAll.RefreshEmotes()
											end

											return signal
										end
									end
								end

								unlockAll.GetEmoteSlot = function()
									if unlockAll.EmoteWheel.type == "Menu" then
										return math.clamp(tonumber(unlockAll.EmoteWheel.selected) or 1, uiConstants[18], 24)
									end
									return math.clamp(tonumber(unlockAll.EmoteWheel.selected) or unlockAll.SelectedSlot or 1, 1, uiConstants[35]) + ((tonumber(unlockAll.EmoteWheel.page) or 1) - 1) * 8
								end

								unlockAll.SetEmoteButton = function(argument, argument2)
									local value109 = unlockAll.EmotesFolder:FindFirstChild(argument2)
									if not value109 then
										return
									end
									local attribute = value109:GetAttribute("EmoteName") or value109.Name
									local attribute2 = value109:GetAttribute("Icon") or ""
									local emoteWheel = inputChangedHandler:FindFirstChild("EmoteWheel")
									local wheel = emoteWheel and emoteWheel:FindFirstChild("Wheel")
									emoteWheel = emoteWheel and emoteWheel:FindFirstChild("Menu")
									local value110 = uiConstants[18]
									local n33 = math.floor((argument - 1) / 8) + value110
									wheel = wheel and wheel:FindFirstChild("Holder")
									emoteWheel = emoteWheel and emoteWheel:FindFirstChild("Content")
									local table26 = {}
									local condition19 = n33 == (tonumber(unlockAll.EmoteWheel.page) or 1) and wheel and wheel:FindFirstChild(tostring((argument - 1) % uiConstants[35] + 1))
									emoteWheel = emoteWheel and emoteWheel:FindFirstChild(tostring(argument))
									table26[1] = condition19
									table26[2] = emoteWheel

									for _, remoteEvent in table26, nil, nil do
										if remoteEvent then
											remoteEvent:SetAttribute("EmoteId", argument2)
											remoteEvent:SetAttribute("EmoteName", attribute)
											local vector = remoteEvent:FindFirstChild("Vector")

											if vector then
												vector.Image = attribute2
											elseif remoteEvent:IsA("ImageButton") then
												remoteEvent.Image = attribute2
											end

											local title = remoteEvent:FindFirstChild("Title") or remoteEvent:FindFirstChild("ItemName") or remoteEvent:FindFirstChild("Text")

											if title and title:IsA("TextLabel") then
												title.Text = attribute
											end
										end
									end
								end

								unlockAll.RefreshEmotes = function()
									for key, value109 in unlockAll.EquippedEmotes, nil, nil do
										unlockAll.SetEmoteButton(tonumber(key) or key, value109)
									end
								end

								unlockAll.UpdateEmoteWheel = function()
									local updateHolderEmotes = unlockAll.Originals.UpdateHolderEmotes
									local updateMenuContentEmotes = unlockAll.Originals.UpdateMenuContentEmotes

									if updateHolderEmotes then
										updateHolderEmotes(unlockAll.EmoteWheel)
									else
										unlockAll.EmoteWheel:UpdateHolderEmotes()
									end

									if updateMenuContentEmotes then
										updateMenuContentEmotes(unlockAll.EmoteWheel)
									else
										unlockAll.EmoteWheel:UpdateMenuContentEmotes()
									end

									unlockAll.EmoteWheel:updateCenterText()
									unlockAll.RefreshEmotes()
								end

								unlockAll.ApplyEmote = function(argument, argument2)
									local selectedSlot = tonumber(argument) or unlockAll.GetEmoteSlot()
									if not argument2 or unlockAll.Deleted.Emote[argument2] or not unlockAll.EmotesFolder:FindFirstChild(argument2) then
										return
									end
									unlockAll.SelectedSlot = selectedSlot
									unlockAll.EquippedEmotes[selectedSlot] = argument2
									unlockAll.UpdateEmoteWheel()
									unlockAll.Save()
								end

								unlockAll.GetEmoteScroller = function()
									if unlockAll.EmoteContainer then
										return unlockAll.EmoteContainer
									end
									local emoteWheel = inputChangedHandler:FindFirstChild("EmoteWheel")
									emoteWheel = emoteWheel and emoteWheel:FindFirstChild("List")
									return emoteWheel and emoteWheel:FindFirstChild("Content")
								end

								unlockAll.LoadEmotes = function()
									local emote = unlockAll.InventoryClient:GetInventory().Emote or {}
									if unlockAll.EmoteCatalogLoaded then
										return emote
									end
									table.clear(unlockAll.EmoteItems)
									table.clear(unlockAll.EmoteItemsList)
									table.clear(unlockAll.EmoteDisplays)
									table.clear(unlockAll.EmoteItemKeys)
									local table26 = {}

									for _, value109 in emote, nil, nil do
										if not unlockAll.IsUnlockItem(value109) then
											table26[value109.Name] = uiConstants[200]
										end
									end

									local value109 = uiConstants[116]
									local n33 = os.clock() + value109

									for _, value110 in unlockAll.EmotesFolder:GetChildren() do
										local remoteEvent = unlockAll.ItemInfo.Emote[value110.Name]

										if value110:IsA("Animation") and remoteEvent then
											unlockAll.EmoteDisplays[remoteEvent.DisplayName or remoteEvent.Name] = value110.Name
										end

										if value110:IsA("Animation") and not table26[value110.Name] and remoteEvent and type(remoteEvent.Icon) == "string" and remoteEvent.Icon ~= "" and remoteEvent.Icon ~= "rbxassetid://0" and remoteEvent.Icon ~= value110.AnimationId then
											local table27 = { Name = value110.Name, Id = "UnlockAll:Emote:" .. value110.Name, CreatedAt = 0 }
											unlockAll.EmoteItems[value110.Name] = table27
											table.insert(unlockAll.EmoteItemsList, table27)
											local table28 = { "Id" }
											local id = table27.Id
											unlockAll.EmoteItemKeys[unlockAll.InventoryShared:ItemToKey("Emote", table27, table28)] = id
										end

										if n33 <= os.clock() then
											runService.Heartbeat:Wait()
											n33 = os.clock() + 0.001
										end
									end

									unlockAll.EmoteCatalogLoaded = true
									return emote
								end

								unlockAll.FillEmoteInventory = function()
									if unlockAll.EmotesReady or unlockAll.EmoteBuilding or not unlockAll.EmoteView then
										return
									end
									unlockAll.EmoteBuilding = uiConstants[200]
									unlockAll.EmoteBuildToken = unlockAll.EmoteBuildToken + 1
									local emoteBuildToken = unlockAll.EmoteBuildToken

									task.spawn(function()
										local emoteItemsList = unlockAll.EmoteItemsList
										local emoteInventory = unlockAll.EmoteInventory
										local emoteBuildIndex = unlockAll.EmoteBuildIndex

										while emoteBuildIndex <= #emoteItemsList and unlockAll.EmoteBuildToken == emoteBuildToken do
											local n33 = os.clock() + 0.001

											while true do
												local value109 = emoteItemsList[emoteBuildIndex]

												if not emoteInventory[value109.Id] and not unlockAll.Deleted.Emote[value109.Name] then
													emoteInventory[value109.Id] = value109
													unlockAll.EmoteView.TriggerUpdate(value109, "Insert")
												end

												emoteBuildIndex += 1
												if not (emoteBuildIndex > #emoteItemsList or os.clock() >= n33) then
													continue
												end
												break
											end

											unlockAll.EmoteBuildIndex = emoteBuildIndex

											if emoteBuildIndex <= #emoteItemsList then
												runService.Heartbeat:Wait()
											end
										end

										if unlockAll.EmoteBuildToken == emoteBuildToken then
											unlockAll.EmoteBuilding = false
											unlockAll.EmotesReady = emoteBuildIndex > #emoteItemsList
										end
									end)
								end

								unlockAll.PatchInventory = function(argument)
									if unlockAll.Originals.CreateInventory then
										return
									end
									local emoteSource = unlockAll.EmoteSource

									if not emoteSource or not emoteSource.Parent then
										emoteSource = inputChangedHandler:FindFirstChild("EmoteWheel")
										emoteSource = emoteSource and emoteSource:FindFirstChild("List")
										emoteSource = emoteSource and emoteSource:FindFirstChild("Content")
										unlockAll.EmoteSource = emoteSource
									end

									if not emoteSource then
										return
									end

									if not unlockAll.EmoteContainer then
										local table26 = {}

										for _, value109 in emoteSource:GetDescendants() do
											if value109:IsA("GuiButton") then
												table26[value109] = value109.Archivable
												value109.Archivable = false
											end
										end

										unlockAll.EmoteContainer = emoteSource:Clone()

										for key, value109 in table26, nil, nil do
											key.Archivable = value109
										end

										unlockAll.EmoteContainer.Name = "UnlockAllContent"
										unlockAll.EmoteContainer.Visible = false
										unlockAll.EmoteInventory = table.clone(argument)
										local value109 = unlockAll.InventoryShared.CreateFakeReplion()
										value109.Data = { Inventory = { Emote = unlockAll.EmoteInventory } }
										unlockAll.EmoteCaller = { Replion = value109 }
									end

									unlockAll.Originals.EmoteFindItemsWithKey = unlockAll.InventoryClient.FindItemsWithKey
									unlockAll.Originals.EmoteGetItem = unlockAll.InventoryClient.GetItem

									unlockAll.InventoryClient.FindItemsWithKey = function(argument2, argument3, argument4, ...)
										local condition19 = argument3 == "Emote" and unlockAll.EmoteItemKeys[argument4]
										if unlockAll.Status == "active" and condition19 then
											return { condition19 }
										end
										local emoteFindItemsWithKey = unlockAll.Originals.EmoteFindItemsWithKey
										local value109 = table.pack(...)
										value109.n = 4 + value109.n - 1
										table.move(value109, 1, value109.n, 4, value109)
										value109[1] = argument2
										value109[2] = argument3
										value109[3] = argument4
										return emoteFindItemsWithKey(table.unpack(value109, 1, value109.n))
									end

									unlockAll.InventoryClient.GetItem = function(argument2, argument3, argument4, ...)
										local match = argument3 == "Emote" and tostring(argument4):match("^UnlockAll:Emote:(.+)$")
										if unlockAll.Status == "active" and match and unlockAll.EmoteItems[match] then
											return unlockAll.EmoteItems[match]
										end
										local consoleItems = unlockAll.ConsoleItems and unlockAll.ConsoleItems[argument3]
										local match2 = consoleItems and tostring(argument4):match("^UnlockAll:" .. argument3 .. ":(.+)$")
										if unlockAll.Status == "active" and match2 and consoleItems[match2] then
											return consoleItems[match2].Item
										end
										local emoteGetItem = unlockAll.Originals.EmoteGetItem
										local value109 = table.pack(...)
										value109.n = 4 + value109.n - 1
										table.move(value109, 1, value109.n, 4, value109)
										value109[1] = argument2
										value109[2] = argument3
										value109[3] = argument4
										return emoteGetItem(table.unpack(value109, 1, value109.n))
									end

									local emoteContainer = unlockAll.EmoteContainer
									emoteContainer.Position = emoteSource.Position
									emoteContainer.Size = emoteSource.Size
									emoteContainer.Active = emoteSource.Active
									emoteContainer.Visible = false
									unlockAll.EmoteContainer.Parent = emoteSource.Parent
									unlockAll.EmoteOriginal = emoteSource
									unlockAll.OriginalPosition = emoteSource.Position
									unlockAll.OriginalSize = emoteSource.Size
									unlockAll.OriginalActive = emoteSource.Active
									unlockAll.OriginalVisible = emoteSource.Visible
									emoteSource.Visible = false
									emoteSource.Position = UDim2.fromOffset(-100000, -uiConstants[15])
									emoteSource.Active = false
									unlockAll.Originals.CreateInventory = unlockAll.InventoryController.CreateInventory

									unlockAll.InventoryController.CreateInventory = function(argument2, argument3)
										if unlockAll.Status == "active" and argument3.InventoryType == "Emote" then
											local value109 = table.clone(argument3)
											value109.Caller = unlockAll.EmoteCaller
											value109.Container = unlockAll.EmoteContainer
											value109.WatchOnChange = false

											value109.FindItemsWithKey = function(argument4, argument5)
												local condition19 = argument4 == "Emote" and unlockAll.EmoteItemKeys[argument5]
												if condition19 then
													return unlockAll.EmoteInventory[condition19] and { condition19 } or {}
												end
												return unlockAll.InventoryShared:FindItemsWithKey(unlockAll.EmoteCaller, argument4, argument5)
											end

											local onSlotCreated = value109.OnSlotCreated

											value109.OnSlotCreated = function(argument4, argument5, arg6, arg7, arg8)
												if onSlotCreated then
													onSlotCreated(argument4, argument5, arg6, arg7, arg8)
												end

												if argument5 and argument5.Name and arg7 and arg8 then
													if unlockAll.EmoteItems[argument5.Name] and getconnections then
														for _, value110 in getconnections(arg7.Activated) do
															value110:Disconnect()
														end
													end

													arg8:Add(arg7.Activated:Connect(function()
														local name = argument5.Name
														task.defer(unlockAll.ApplyEmote, unlockAll.GetEmoteSlot(), name)
													end))
												end
											end

											unlockAll.EmoteView = unlockAll.Originals.CreateInventory(argument2, value109)
											return unlockAll.EmoteView
										end

										return unlockAll.Originals.CreateInventory(argument2, argument3)
									end

									if not unlockAll.EmoteView then
										local table26 = {}
										local searchFrame = emoteSource.Parent:FindFirstChild("SearchFrame")

										if searchFrame and getconnections then
											table26[searchFrame.Search.MouseButton1Click] = {}
											table26[searchFrame.SearchBG.SearchInput.FocusLost] = {}

											for key, value109 in table26, nil, nil do
												for _, value110 in getconnections(key) do
													if value110.Function then
														value109[value110.Function] = true
													end
												end
											end
										end

										local createSortOptions = unlockAll.InventoryController.CreateSortOptions

										unlockAll.InventoryController.CreateSortOptions = function()
										end

										unlockAll.EmoteWheel:populateEmoteList()
										unlockAll.InventoryController.CreateSortOptions = createSortOptions

										for key, value109 in table26, nil, nil do
											for _, value110 in getconnections(key) do
												if next(value109) and value110.Function and not value109[value110.Function] then
													value110:Disconnect()
												end
											end
										end
									end

									emoteContainer.Visible = true
									unlockAll.FillEmoteInventory()
								end

								unlockAll.RestoreInventory = function(argument)
									unlockAll.EmoteBuildToken = unlockAll.EmoteBuildToken + 1
									unlockAll.EmoteBuilding = uiConstants[101]
									unlockAll.EmoteBuildIndex = 1
									unlockAll.EmotesReady = uiConstants[101]
									valueFunction73("CreateInventory", unlockAll.InventoryController)
									valueFunction73("EmoteFindItemsWithKey", unlockAll.InventoryClient, "FindItemsWithKey")
									valueFunction73("EmoteGetItem", unlockAll.InventoryClient, "GetItem")

									if unlockAll.EmoteContainer then
										unlockAll.EmoteContainer.Visible = false
										unlockAll.EmoteContainer.Parent = nil
									end

									if unlockAll.EmoteOriginal then
										unlockAll.EmoteOriginal.Position = unlockAll.OriginalPosition
										unlockAll.EmoteOriginal.Size = unlockAll.OriginalSize
										unlockAll.EmoteOriginal.Active = unlockAll.OriginalActive
										unlockAll.EmoteOriginal.Visible = unlockAll.OriginalVisible
										unlockAll.EmoteOriginal = nil
										unlockAll.OriginalPosition = nil
										unlockAll.OriginalSize = nil
										unlockAll.OriginalActive = nil
										unlockAll.OriginalVisible = nil
									end

									if not argument then
										return
									end
									cleanupResources(unlockAll.ButtonConnections)
									table.clear(unlockAll.ButtonConnections)

									if unlockAll.EmoteView then
										unlockAll.EmoteView.Destroy()
										unlockAll.EmoteView = nil
									end

									if unlockAll.EmoteCaller then
										unlockAll.EmoteCaller.Replion:Destroy()
										unlockAll.EmoteCaller = nil
									end

									if unlockAll.EmoteContainer then
										unlockAll.EmoteContainer:Destroy()
										unlockAll.EmoteContainer = nil
									end

									unlockAll.EmoteSource = nil
									unlockAll.EmoteInventory = nil
									unlockAll.EmoteCatalogLoaded = uiConstants[101]
								end

								unlockAll.BindEmoteCard = function(argument)
									local value109 = unlockAll.ButtonConnections[argument]

									if value109 then
										cleanupResources(value109)
										unlockAll.ButtonConnections[argument] = nil
									end

									if unlockAll.Status ~= "active" or not argument.Parent then
										return
									end
									local itemName = argument:FindFirstChild("ItemName")
									local value110 = itemName and unlockAll.EmoteDisplays[itemName.Text]
									if not value110 then
										return
									end

									if not unlockAll.EmoteItems[value110] then
										return
									end
									local favorite = argument:FindFirstChild("Favorite")
									local delete = argument:FindFirstChild("Delete")

									if getconnections and favorite then
										for _, remoteEvent in getconnections(favorite.Activated) do
											remoteEvent:Disconnect()
										end
									end

									if getconnections and delete then
										for _, remoteEvent in getconnections(delete.Activated) do
											remoteEvent:Disconnect()
										end
									end

									local table26 = {}

									if favorite then
										table.insert(table26, favorite.Activated:Connect(function()
											unlockAll.ToggleFavorite("Emote", value110)
										end))
									end

									if delete then
										table.insert(table26, delete.Activated:Connect(function()
											unlockAll.PromptDelete("Emote", value110)
										end))
									end

									unlockAll.ButtonConnections[argument] = table26
								end

								unlockAll.HookEmoteCard = function(argument)
									if unlockAll.Status ~= "active" or not argument:IsA("GuiButton") or not argument:FindFirstChild("ItemName") or unlockAll.CardConnections[argument] then
										return
									end

									unlockAll.CardConnections[argument] = argument.ItemName:GetPropertyChangedSignal(uiConstants[133]):Connect(function()
										task.defer(unlockAll.BindEmoteCard, argument)
									end)

									task.defer(unlockAll.BindEmoteCard, argument)
								end

								unlockAll.HookEmotes = function()
									local value109 = unlockAll.GetEmoteScroller()
									if not value109 then
										return
									end

									for _, value110 in value109:GetDescendants() do
										unlockAll.HookEmoteCard(value110)
									end

									unlockAll.Add(value109.DescendantAdded:Connect(function(descendant)
										task.defer(unlockAll.HookEmoteCard, descendant)
									end))
								end

								unlockAll.SaveDefaults = function()
									local character = localPlayer.Character
									unlockAll.Defaults.Sword = character and character:GetAttribute("CurrentlyEquippedSword") or localPlayer:GetAttribute("CurrentlyEquippedSword") or "Base Sword"
									unlockAll.Defaults.Explosion = localPlayer:GetAttribute("CurrentlyEquippedExplosion") or character and character:GetAttribute("CurrentlyEquippedExplosion") or "Explosion Normal"
									local value109 = uiConstants[200]
									unlockAll.Defaults.Accessory = localPlayer:GetAttribute("ShowSwordAccessory") == value109
								end

								unlockAll.ApplySaved = function()
									local text5 = tostring(table20.UnlockAllSword or "")
									local value109 = unlockAll.AwakenBase[text5] or text5
									local str6 = tostring(table20.UnlockAllExplosion or "")
									local unlockAllEmotes = table20.UnlockAllEmotes or {}
									local accessory = table20.UnlockAllAccessory == true
									unlockAll.Accessory = accessory
									localPlayer:SetAttribute("ShowSwordAccessory", accessory)
									local condition19 = value109 ~= ""
									local condition20

									if condition19 then
										condition20 = not unlockAll.ShopActive or unlockAll.ShopItems.Sword[value109]
									else
										condition20 = condition19
									end

									if condition20 then
										unlockAll.SelectSword(value109, uiConstants[101])
									end

									if str6 ~= "" and (not unlockAll.ShopActive or unlockAll.ShopItems.Explosion[str6]) then
										unlockAll.SelectExplosion(str6, false)
									end

									table.clear(unlockAll.EquippedEmotes)
									local table26 = {}

									for key in unlockAllEmotes, nil, nil do
										local num = tonumber(key)

										if num then
											table.insert(table26, num)
										end
									end

									table.sort(table26)
									local table27 = {}
									local emote = unlockAll.InventoryClient:GetInventory().Emote or {}

									for _, value110 in emote, nil, nil do
										table27[value110.Name] = true
									end

									for _, value110 in table26, nil, nil do
										local remoteEvent = unlockAllEmotes[tostring(value110)] or unlockAllEmotes[value110]

										if remoteEvent and (table27[remoteEvent] or unlockAll.EmoteItems[remoteEvent]) then
											unlockAll.EquippedEmotes[value110] = remoteEvent
										end
									end

									table.clear(unlockAll.Finishers)
									local unlockAllFinishers = table20.UnlockAllFinishers or {}

									for key, value110 in unlockAllFinishers, nil, nil do
										if value110 == true then
											unlockAll.Finishers[key] = uiConstants[200]

											if unlockAll.DataReplion then
												local table28 = { "Finishers", "Equipped", key }
												unlockAll.DefaultFinishers[key] = unlockAll.DataReplion:Get(table28) == true
												unlockAll.DataReplion:_set(table28, true)
											end
										end
									end

									unlockAll.UpdateEmoteWheel()
								end

								unlockAll.RestoreEmotes = function()
									table.clear(unlockAll.EquippedEmotes)
									unlockAll.StopEmote()
									unlockAll.EmoteWheel:UpdateHolderEmotes()
									unlockAll.EmoteWheel:UpdateMenuContentEmotes()
								end

								unlockAll.Start = function()
									if unlockAll.Status then
										return
									end
									unlockAll.Status = "starting"
									local run = unlockAll.Run + uiConstants[18]
									unlockAll.Run = run
									unlockAll.Load()

									while table20.UnlockAllEnabled and unlockAll.Run == run and not unlockAll.ShopReady() do
										runService.Heartbeat:Wait()
									end

									if not table20.UnlockAllEnabled or unlockAll.Run ~= run then
										if unlockAll.Run == run then
											unlockAll.Status = nil
										end

										return
									end

									unlockAll.Status = "active"

									for _, value109 in unlockAll.Deleted, nil, nil do
										table.clear(value109)
									end

									table.clear(unlockAll.EquippedEmotes)
									table.clear(unlockAll.SavedEquipped)
									table.clear(unlockAll.Finishers)
									table.clear(unlockAll.DefaultFinishers)
									unlockAll.Accessory = uiConstants[101]
									unlockAll.Originals.EquippedSword = nil
									unlockAll.Originals.EquippedExplosion = nil
									unlockAll.LoadFavorites()
									unlockAll.SaveDefaults()
									local value109 = unlockAll.LoadEmotes()
									if unlockAll.Run ~= run or unlockAll.Status ~= "active" then
										return
									end
									unlockAll.PatchInventory(value109)
									unlockAll.HookEmotes()
									unlockAll.PatchExplosion()
									unlockAll.PatchEmotes()
									unlockAll.PatchParrySuccess()
									unlockAll.ApplySaved()
									unlockAll.WatchSword(localPlayer.Character)
									local CollectionService = game:GetService("CollectionService")
									unlockAll.Add(CollectionService:GetInstanceAddedSignal("EncryptedClone"):Connect(unlockAll.WatchClone))

									unlockAll.Add(CollectionService:GetInstanceRemovedSignal("EncryptedClone"):Connect(function(argument)
										unlockAll.ClearClone(argument, uiConstants[200])
									end))

									for _, value110 in CollectionService:GetTagged("EncryptedClone") do
										unlockAll.WatchClone(value110)
									end

									unlockAll.WatchEmotes(localPlayer.Character)

									unlockAll.Add(localPlayer:GetAttributeChangedSignal("CurrentlyEquippedSword"):Connect(function()
										local sword = unlockAll.Sword

										if sword and localPlayer:GetAttribute("CurrentlyEquippedSword") ~= sword then
											task.defer(unlockAll.ApplySword, sword)
										end
									end))

									unlockAll.Add(localPlayer.CharacterAdded:Connect(function(character)
										local run2 = unlockAll.Run
										table25.Animation.Reset()
										unlockAll.WatchSword(character)
										unlockAll.WatchEmotes(character)

										task.delay(1, function()
											if unlockAll.Status == "active" and unlockAll.Run == run2 and localPlayer.Character == character and unlockAll.Sword then
												unlockAll.ApplySword(unlockAll.Sword)

												if unlockAll.Explosion then
													localPlayer:SetAttribute("CurrentlyEquippedExplosion", unlockAll.Explosion)
													character:SetAttribute("CurrentlyEquippedExplosion", unlockAll.Explosion)
												end
											end
										end)
									end))

									if not unlockAll.ActivateShop() then
										return
									end
									unlockAll.ApplyFavorites()
									unlockAll.HookShop()
									unlockAll.HookConsole()
								end

								unlockAll.Stop = function(argument)
									if argument then
										for _, value109 in { "Parry_All_Func", "Parry_Client_Func" }, nil, nil do
											local value110 = unlockAll.Originals[value109 .. "Target"]

											if value110 then
												hookfunction(value110, unlockAll.Originals[value109])
												unlockAll.Originals[value109 .. "Target"] = nil
												unlockAll.Originals[value109] = nil
											end
										end
									end

									local status = unlockAll.Status
									unlockAll.Status = nil
									unlockAll.Run = unlockAll.Run + 1

									if status ~= "active" then
										if argument then
											unlockAll.RestoreInventory(true)
										end

										return
									end

									valueFunction73("UpdateMultiDelete", unlockAll.Shop, "_updateMultiDelete")
									valueFunction73("CanDelete", unlockAll.Shop, "_canDelete")

									for _, value109 in unlockAll.Types, nil, nil do
										valueFunction73("MarkDirty" .. value109, unlockAll.Shop._inventoryPages[value109], "MarkDirty")
									end

									unlockAll.CloseMultiDelete()
									cleanupResources(unlockAll.Connections)
									table.clear(unlockAll.Connections)
									cleanupResources(unlockAll.CardConnections)
									table.clear(unlockAll.CardConnections)
									unlockAll.RestoreConsole()
									unlockAll.DestroyOverlays()
									unlockAll.RestoreInventory(argument)
									unlockAll.RestoreShop()
									unlockAll.RestoreFavorites()
									localPlayer:SetAttribute("ShowSwordAccessory", unlockAll.Defaults.Accessory == true)

									for key, value109 in unlockAll.DefaultFinishers, nil, nil do
										if unlockAll.DataReplion then
											unlockAll.DataReplion:_set({ "Finishers", "Equipped", key }, value109 == uiConstants[200])
										end
									end

									table.clear(unlockAll.Finishers)
									table.clear(unlockAll.DefaultFinishers)
									valueFunction73("PlayExplosion", unlockAll.VFX)
									valueFunction73("EmotePlay", unlockAll.EmoteController, "Play")
									valueFunction73("UpdateHolderEmotes", unlockAll.EmoteWheel)
									valueFunction73("UpdateMenuContentEmotes", unlockAll.EmoteWheel)
									unlockAll.RestoreSword()

									if unlockAll.Originals.SetSword and unlockAll.BladeController then
										valueFunction73("SetSword", unlockAll.BladeController)
									end

									unlockAll.RestoreExplosion()
									unlockAll.RestoreEmotes()
									unlockAll.Sword = nil
									unlockAll.Explosion = nil
								end

								unlockAll.Toggle = function(unlockAllEnabled)
									table20.UnlockAllEnabled = unlockAllEnabled

									if unlockAllEnabled then
										task.defer(unlockAll.Start)
									else
										unlockAll.Stop()
									end
								end
							end
						end

						valueFunction43({ CustomStreakEnabled = false, CustomStreak = "" })
						table25.Streak = { Originals = {} }

						table25.Streak.Get = function()
							local num = tonumber(tostring(table20.CustomStreak or ""):match("^%s*(.-)%s*$"))
							return num and math.max(0, math.floor(num))
						end

						table25.Streak.Format = function(argument)
							return (tostring(argument):reverse():gsub("(%d%d%d)", "%1,"):reverse():gsub("^,", ""))
						end

						table25.Streak.Set = function(argument, argument2, argument3)
							if not table25.Streak.Originals[argument] then
								table25.Streak.Originals[argument] = { argument2, argument[argument2] }
							end

							if argument[argument2] ~= argument3 then
								argument[argument2] = argument3
							end
						end

						table25.Streak.RestoreObject = function(argument)
							local value109 = table25.Streak.Originals[argument]
							if not value109 then
								return
							end

							if argument.Parent then
								argument[value109[uiConstants[18]]] = value109[2]
							end

							table25.Streak.Originals[argument] = nil
						end

						table25.Streak.Restore = function()
							for key, value109 in table25.Streak.Originals, nil, nil do
								if key.Parent then
									key[value109[1]] = value109[uiConstants[70]]
								end
							end

							table.clear(table25.Streak.Originals)
						end

						flyteBBState.StreakRestore = table25.Streak.Restore

						table25.Streak.Refresh = function(argument)
							local value109 = table25.Streak.Originals[argument]

							if value109 then
								value109[2] = argument[value109[1]]
							end

							updatePing("Streak Display")
							updatePing("Streak Value")
							updatePing("Streak Flame")
							table25.Streak.Value = nil
							task.defer(table25.Streak.ApplyDisplay)
						end

						table25.Streak.Profile = function()
							local profileCard = inputChangedHandler:FindFirstChild("ProfileCard")
							local profile = profileCard and profileCard:FindFirstChild("Customize") and profileCard.Customize:FindFirstChild("Profile")
							local playerProfile = profile and profile:FindFirstChild("PlayerProfile")
							playerProfile = playerProfile and playerProfile:FindFirstChild("Details")
							profile = profile and profile:FindFirstChild("Achievements")
							return playerProfile and playerProfile:FindFirstChild("Username"), profile and profile:FindFirstChild("Scrollingframe")
						end

						table25.Streak.ApplyDisplay = function()
							if not table20.CustomStreakEnabled then
								return
							end
							local character = localPlayer.Character
							local winStreakDisplay = character and character:FindFirstChild("WinStreakDisplay", true)

							if not winStreakDisplay and character then
								local head = character:FindFirstChild("Head")
								local assets = replicatedStorage:FindFirstChild("Assets")
								local ui = assets and assets:FindFirstChild("UI")
								ui = ui and ui:FindFirstChild("WinStreakDisplay")

								if head and ui then
									winStreakDisplay = ui:Clone()
									winStreakDisplay.Adornee = head
									table25.Streak.Display = winStreakDisplay
									winStreakDisplay.Parent = character
								end
							end

							local main = winStreakDisplay and winStreakDisplay:FindFirstChild("Main")
							local value = main and main:FindFirstChild("Value")
							local icon = main and main:FindFirstChild("Icon")
							if not value or not icon then
								return
							end
							local value109 = table25.Streak.Get()
							if not value109 then
								return
							end
							local text5 = "<b><stroke color='rgb(0, 0, 0)' thickness='2'>" .. table25.Streak.Format(value109) .. "</stroke></b>"
							local str6 = value109 >= 10 and "rbxassetid://75598166115655" or "rbxassetid://89658127170771"
							table25.Streak.Set(winStreakDisplay, "Enabled", true)
							table25.Streak.Set(value, "Text", text5)
							table25.Streak.Set(icon, "Image", str6)

							if table25.Streak.Value ~= value then
								updatePing("Streak Display")
								updatePing("Streak Value")
								updatePing("Streak Flame")
								table25.Streak.Value = value

								flyteBBState.Connections["Streak Display"] = winStreakDisplay:GetPropertyChangedSignal("Enabled"):Connect(function()
									table25.Streak.Refresh(winStreakDisplay)
								end)

								flyteBBState.Connections["Streak Value"] = value:GetPropertyChangedSignal(uiConstants[133]):Connect(function()
									table25.Streak.Refresh(value)
								end)

								flyteBBState.Connections["Streak Flame"] = icon:GetPropertyChangedSignal("Image"):Connect(function()
									table25.Streak.Refresh(icon)
								end)
							end
						end

						table25.Streak.ApplyProfile = function()
							if not table20.CustomStreakEnabled then
								return
							end
							local value109 = table25.Streak.Get()
							if not value109 then
								return
							end
							local condition19 = value109 > (tonumber(Data:Get("TotalStats.BestWinStreak")) or 0)
							local value110 = table25.Streak.Format(value109)
							local profile = inputChangedHandler:FindFirstChild("Profile")
							profile = profile and profile:FindFirstChild("BestWinStreak", true)
							profile = profile and profile:FindFirstChild("Value")

							if profile then
								if condition19 then
									table25.Streak.Set(profile, "Text", value110 .. " Wins")
								else
									table25.Streak.RestoreObject(profile)
								end
							end

							local remoteEvent, remoteAction = table25.Streak.Profile()
							if not remoteEvent or remoteEvent.Text ~= "@" .. localPlayer.Name or not remoteAction then
								return
							end

							for _, signal in remoteAction:GetChildren() do
								local title = signal:FindFirstChild("Title")
								local description = signal:FindFirstChild("Description")

								if title and description and title.Text == "Best Win Streak" then
									if condition19 then
										table25.Streak.Set(description, "Text", value110)
									else
										table25.Streak.RestoreObject(description)
									end

									break
								end
							end
						end

						table25.Streak.BindCharacter = function(argument)
							updatePing("Streak Character UI")

							flyteBBState.Connections["Streak Character UI"] = argument.DescendantAdded:Connect(function(descendant)
								if descendant.Name == "WinStreakDisplay" or descendant.Name == "Value" or descendant.Name == "Icon" then
									if descendant.Name == "WinStreakDisplay" and table25.Streak.Display and descendant ~= table25.Streak.Display then
										table25.Streak.Display:Destroy()
										table25.Streak.Display = nil
									end

									task.defer(table25.Streak.ApplyDisplay)
								end
							end)

							table25.Streak.ApplyDisplay()
						end

						table25.Streak.Stop = function()
							for _, value109 in {
								"Streak Character",
								"Streak Character UI",
								"Streak Display",
								"Streak Value",
								"Streak Flame",
								"Streak Profile",
								"Streak Profile Items",
								"Streak Best",
							}, nil, nil do
								updatePing(value109)
							end

							table25.Streak.Restore()
							local character = localPlayer.Character
							local display = table25.Streak.Display and character

							if display then
								display = (tonumber(character:GetAttribute("Killstreak")) or 0) > 0
							end

							if table25.Streak.Display then
								table25.Streak.Display:Destroy()
								table25.Streak.Display = nil
							end

							if display then
								firesignal(character:GetAttributeChangedSignal("Killstreak"))
							end

							table25.Streak.Value = nil
						end

						table25.Streak.Toggle = function(customStreakEnabled)
							table20.CustomStreakEnabled = customStreakEnabled
							table25.Streak.Stop()
							if not customStreakEnabled or not table25.Streak.Get() then
								return
							end
							flyteBBState.Connections["Streak Character"] = localPlayer.CharacterAdded:Connect(table25.Streak.BindCharacter)

							flyteBBState.Connections["Streak Best"] = Data:OnChange("TotalStats.BestWinStreak", function()
								task.defer(table25.Streak.ApplyProfile)
							end)

							local value109, value110 = table25.Streak.Profile()

							if value109 then
								flyteBBState.Connections["Streak Profile"] = value109:GetPropertyChangedSignal("Text"):Connect(table25.Streak.ApplyProfile)
							end

							if value110 then
								flyteBBState.Connections["Streak Profile Items"] = value110.ChildAdded:Connect(function()
									task.defer(table25.Streak.ApplyProfile)
								end)
							end

							if localPlayer.Character then
								table25.Streak.BindCharacter(localPlayer.Character)
							end

							table25.Streak.ApplyProfile()
						end

						valueFunction43({ ShowWins = false, ShowElims = false, ShowRAP = false })

						table25.Stats = {
							Connections = {},
							Originals = setmetatable({}, { __mode = "key" }),
							Writing = setmetatable({}, { __mode = "key" }),
							Info = {
								Wins = {
									Attribute = "PlayerWins",
									Config = "ShowWins",
									Leaderstat = "Wins",
									Profile = "Wins",
								},
								Elims = {
									Attribute = "PlayerElims",
									Config = "ShowElims",
									Leaderstat = "Elims",
									Profile = "Kills",
								},
								RAP = { Attribute = "TotalRAP", Config = "ShowRAP", Profile = "Rap" },
							},
						}

						table25.Stats.Connect = function(argument, argument2)
							table25.Stats.Connections[#table25.Stats.Connections + 1] = argument:Connect(argument2)
						end

						table25.Stats.ConnectProfile = function(argument, argument2)
							table25.Stats.ProfileConnections = table25.Stats.ProfileConnections or {}
							table25.Stats.ProfileConnections[#table25.Stats.ProfileConnections + 1] = argument:Connect(argument2)
						end

						table25.Stats.RestoreProfile = function()
							local profileOriginal = table25.Stats.ProfileOriginal or {}

							for _, value109 in profileOriginal, nil, nil do
								if value109.Button.Parent then
									table25.Stats.Writing[value109.Button] = uiConstants[200]
									table25.Stats.Writing[value109.Amount] = true
									value109.Button.Visible = value109.Visible
									value109.Amount.Text = value109.Text
									table25.Stats.Writing[value109.Button] = nil
									table25.Stats.Writing[value109.Amount] = nil
								end
							end
						end

						table25.Stats.ClearProfile = function(argument)
							local profileConnections = table25.Stats.ProfileConnections or {}

							for _, value109 in profileConnections, nil, nil do
								value109:Disconnect()
							end

							table.clear(table25.Stats.ProfileConnections or {})

							if argument then
								table25.Stats.RestoreProfile()
							end

							table25.Stats.ProfileOriginal = nil
						end

						table25.Stats.Stop = function()
							for _, value109 in table25.Stats.Connections, nil, nil do
								value109:Disconnect()
							end

							table.clear(table25.Stats.Connections)

							for key, value109 in table25.Stats.Originals, nil, nil do
								if key.Parent then
									table25.Stats.Writing[key] = uiConstants[200]
									key.Value = value109
									table25.Stats.Writing[key] = nil
								end
							end

							table25.Stats.ClearProfile(true)
							table.clear(table25.Stats.Originals)
						end

						table25.Stats.SetValue = function(argument, argument2, argument3)
							if table25.Stats.Originals[argument3] ~= nil then
								return
							end
							table25.Stats.Originals[argument3] = argument3.Value

							local function valueFunction73()
								local attribute = argument:GetAttribute(argument2.Attribute)

								if table20[argument2.Config] and table25.Stats.Originals[argument3] == 0 and type(attribute) == "number" and attribute > uiConstants[33] and argument3.Value ~= attribute then
									table25.Stats.Writing[argument3] = uiConstants[200]
									argument3.Value = attribute
									table25.Stats.Writing[argument3] = nil
								end
							end

							table25.Stats.Connect(argument3:GetPropertyChangedSignal("Value"), function()
								if table25.Stats.Writing[argument3] then
									return
								end
								table25.Stats.Originals[argument3] = argument3.Value
								valueFunction73()
							end)

							table25.Stats.Connect(argument:GetAttributeChangedSignal(argument2.Attribute), valueFunction73)
							valueFunction73()
						end

						table25.Stats.BindPlayer = function(argument)
							local function valueFunction73(argument2)
								for _, value109 in table25.Stats.Info, nil, nil do
									if value109.Leaderstat and table20[value109.Config] then
										local value110 = argument2:FindFirstChild(value109.Leaderstat)

										if value110 and value110:IsA("ValueBase") then
											table25.Stats.SetValue(argument, value109, value110)
										end
									end
								end

								table25.Stats.Connect(argument2.ChildAdded, function(argument3)
									for _, value109 in table25.Stats.Info, nil, nil do
										if value109.Leaderstat and table20[value109.Config] and argument3.Name == value109.Leaderstat and argument3:IsA("ValueBase") then
											table25.Stats.SetValue(argument, value109, argument3)
											break
										end
									end
								end)
							end

							local leaderstats = argument:FindFirstChild("leaderstats")

							if leaderstats then
								valueFunction73(leaderstats)
							else
								table25.Stats.Connect(argument.ChildAdded, function(argument2)
									if argument2.Name == "leaderstats" then
										valueFunction73(argument2)
									end
								end)
							end
						end

						table25.Stats.FormatRAP = function(argument)
							local n33 = uiConstants[18]
							local text5

							if argument >= 1e12 then
								text5 = "T"
								n33 = 1e12
							elseif argument >= 1e9 then
								text5 = "B"
								n33 = 1e9
							elseif argument >= 1000000 then
								text5 = "M"
								n33 = 1000000
							else
								text5 = ""

								if argument >= 1000 then
									text5 = "K"
									n33 = 1000
								end
							end

							if n33 == 1 then
								return tostring(math.floor(argument))
							end
							local n34 = math.floor(argument / n33 * 10) / 10
							return (n34 % 1 == 0 and tostring(math.floor(n34)) or tostring(n34)) .. text5 .. (argument > 1000 and "+" or "")
						end

						table25.Stats.GetProfile = function()
							local profileCard = inputChangedHandler:FindFirstChild("ProfileCard")
							local customize = profileCard and profileCard:FindFirstChild("Customize")
							local profile = customize and customize:FindFirstChild("Profile")
							profile = profile and profile:FindFirstChild("PlayerProfile")
							local details = profile and profile:FindFirstChild("Details")
							return profileCard, details and details:FindFirstChild("Username"), profile and profile:FindFirstChild("Stats")
						end

						table25.Stats.ShowProfile = function(argument, argument2, argument3, argument4)
							local attribute = argument4:GetAttribute(argument2.Attribute)
							if not table20[argument2.Config] or not argument3 or argument3.Visible or type(attribute) ~= "number" then
								return
							end
							table25.Stats.Writing[argument3.Button] = true
							table25.Stats.Writing[argument3.Amount] = true
							argument3.Button.Visible = uiConstants[200]
							argument3.Amount.Text = argument == "RAP" and table25.Stats.FormatRAP(attribute) or table25.Streak.Format(attribute)
							table25.Stats.Writing[argument3.Button] = nil
							table25.Stats.Writing[argument3.Amount] = nil
						end

						table25.Stats.ApplyProfile = function()
							local value109, match, value110 = table25.Stats.GetProfile()
							match = match and match.Text:match("^@(.+)$")
							local remoteEvent = match and playersService:FindFirstChild(match)
							if not value109 or not value109.Enabled or not value110 or not remoteEvent then
								return
							end

							if not table25.Stats.ProfileOriginal then
								table25.Stats.ProfileOriginal = {}

								for key, remoteAction in table25.Stats.Info, nil, nil do
									local signal = value110:FindFirstChild(remoteAction.Profile)
									local amount = signal and signal:FindFirstChild("Amount")

									if signal and amount then
										table25.Stats.ProfileOriginal[key] = { Button = signal, Amount = amount, Visible = signal.Visible, Text = amount.Text }
										local value114 = table25.Stats.ProfileOriginal[key]

										table25.Stats.ConnectProfile(signal:GetPropertyChangedSignal("Visible"), function()
											if not table25.Stats.Writing[signal] then
												value114.Visible = signal.Visible
												table25.Stats.ShowProfile(key, remoteAction, value114, remoteEvent)
											end
										end)

										table25.Stats.ConnectProfile(amount:GetPropertyChangedSignal("Text"), function()
											if not table25.Stats.Writing[amount] then
												value114.Text = amount.Text
												table25.Stats.ShowProfile(key, remoteAction, value114, remoteEvent)
											end
										end)
									end
								end
							end

							table25.Stats.RestoreProfile()

							for key, remoteAction in table25.Stats.Info, nil, nil do
								table25.Stats.ShowProfile(key, remoteAction, table25.Stats.ProfileOriginal[key], remoteEvent)
							end
						end

						table25.Stats.QueueProfile = function()
							if table25.Stats.ProfileQueued then
								return
							end
							table25.Stats.ProfileQueued = true
							table25.Stats.ClearProfile(false)

							task.defer(function()
								table25.Stats.ProfileQueued = nil
								table25.Stats.ApplyProfile()
							end)
						end

						table25.Stats.Toggle = function()
							table25.Stats.Stop()
							if not table20.ShowWins and not table20.ShowElims and not table20.ShowRAP then
								return
							end

							if table20.ShowWins or table20.ShowElims then
								table25.Stats.Connect(playersService.PlayerAdded, table25.Stats.BindPlayer)

								for _, value109 in playersService:GetPlayers() do
									table25.Stats.BindPlayer(value109)
								end
							end

							local value109, value110 = table25.Stats.GetProfile()

							if value109 then
								table25.Stats.Connect(value109:GetPropertyChangedSignal("Enabled"), function()
									if value109.Enabled then
										table25.Stats.QueueProfile()
									end
								end)
							end

							if value110 then
								local queueProfile = table25.Stats.QueueProfile
								table25.Stats.Connect(value110:GetPropertyChangedSignal("Text"), queueProfile)
							end

							table25.Stats.QueueProfile()
						end

						table25.Stats.Queue = function()
							if table25.Stats.Queued then
								return
							end
							table25.Stats.Queued = true

							task.defer(function()
								table25.Stats.Queued = nil
								table25.Stats.Toggle()
							end)
						end

						valueFunction43({
							AutoPlayEnabled = false,
							AutoVoteMap = uiConstants[101],
							HitFreeze = false,
							SpamJump = false,
							AutoPlaySmoothness = uiConstants[169],
							AutoPlayAggressiveness = 45,
							AntiAFK = uiConstants[101],
							AutoRejoinExecute = uiConstants[101],
							ScriptKey = "",
							AutoPlayMode = "Play Edge",
						})

						table25.AFK = {}

						table25.AFK.Toggle = function(argument)
							flyteBBState.AFKConnections = flyteBBState.AFKConnections or {}

							for _, value109 in flyteBBState.AFKConnections, nil, nil do
								if not value109.Enabled then
									value109:Enable()
								end
							end

							table.clear(flyteBBState.AFKConnections)
							if not argument then
								return
							end

							for _, value109 in getconnections(localPlayer.Idled) do
								if value109.Enabled then
									value109:Disable()
									table.insert(flyteBBState.AFKConnections, value109)
								end
							end
						end

						table25.Script = {}

						table25.Script.Queue = function()
							local match = tostring(scriptKey or table20.ScriptKey or ""):match("^%s*(.-)%s*$")
							if match == "" then
								return uiConstants[101]
							end
							queueonteleport(("script_key=%q;\nloadstring(game:HttpGet(\"https://api.luarmor.net/files/value4/loaders/e30ade937c4c9b8ddbb03e976696e380.lua\"))()"):format(match))
							return uiConstants[200]
						end

						table25.Script.Toggle = function(argument)
							updatePing("Auto Rejoin")
							flyteBBState.ScriptRejoining = nil
							if not argument then
								return
							end

							flyteBBState.Connections["Auto Rejoin"] = coreGui:WaitForChild("RobloxPromptGui"):WaitForChild("promptOverlay").ChildAdded:Connect(function(child)
								if child.Name ~= "ErrorPrompt" or flyteBBState.ScriptRejoining or guiService.MenuIsOpen then
									return
								end
								local messageArea = child:WaitForChild("MessageArea", 1)
								if not messageArea or not messageArea:WaitForChild("ErrorFrame", 1) or not table25.Script.Queue() then
									return
								end
								flyteBBState.ScriptRejoining = true
								teleportService:Teleport(game.PlaceId, localPlayer)
							end)
						end

						table25.AutoPlay = { Direction = 1, Voting = {} }

						table25.AutoPlay.Jump = function(argument, argument2)
							if not argument then
								table25.AutoPlay.DoubleJumped = nil
								table25.AutoPlay.JumpAt = nil
								return
							end

							local character = localPlayer.Character
							character = character and character:FindFirstChildOfClass("Humanoid")
							if not character then
								return
							end

							if character.FloorMaterial ~= Enum.Material.Air then
								character:ChangeState(Enum.HumanoidStateType.Jumping)
								table25.AutoPlay.DoubleJumped = false
								table25.AutoPlay.JumpAt = os.clock()
							else
								local condition19 = argument2 and not table25.AutoPlay.DoubleJumped

								if condition19 then
									condition19 = os.clock() - (table25.AutoPlay.JumpAt or 0) >= 0.12
								end

								if condition19 then
									table25.AutoPlay.DoubleJumped = uiConstants[200]
									firesignal(userInputService.JumpRequest)
								end
							end
						end

						table25.AutoPlay.VoteMode = function(argument)
							local voting = table25.AutoPlay.Voting
							local voter = localPlayer.PlayerGui:FindFirstChild("voter")

							if not voter or not voter.Enabled then
								voting.Mode = nil
								voting.ModeAt = nil
								return
							end

							if voting.Mode ~= voter then
								voting.Mode = voter
								voting.ModeAt = argument + 0.25 + math.random() * 0.5
							end

							if not voting.ModeAt or argument < voting.ModeAt then
								return
							end
							voting.ModeAt = nil
							local number1 = voter:FindFirstChild(uiConstants[170])
							number1 = number1 and number1:FindFirstChild("1")
							local value109 = number1 and number1:FindFirstChildWhichIsA(uiConstants[65], uiConstants[200])

							if number1 and value109 and value109.Text == "Classic" then
								firesignal(number1.Activated)
							end
						end

						table25.AutoPlay.VoteMap = function(argument, argument2, argument3, argument4)
							local voting = table25.AutoPlay.Voting
							local gui = argument4:FindFirstChild("GUI")
							local surfaceGui = gui and gui:FindFirstChild("SurfaceGui")
							local top = surfaceGui and surfaceGui:FindFirstChild("Top")

							if not (top and top.Visible) then
								if voting.Map then
									voting.Done = uiConstants[200]
								end

								voting.Map = nil
								voting.MapAt = nil
								voting.Pad = nil
								if voting.Done then
									argument2:MoveTo(argument3.Position)
									return
								end

								if not voting.Waiting then
									voting.Waiting = true
									voting.Moves = math.random(uiConstants[18], 3)
									voting.Move = uiConstants[33]
									voting.MoveAt = argument + 0.4 + math.random()
								end

								if not voting.Target and voting.Move < voting.Moves and argument >= voting.MoveAt then
									local part = argument4:FindFirstChild("Part")
									part = part and part.Position - argument3.Position or Vector3.zero
									local vector = Vector3.new(part.X, 0, part.Z)

									if vector.Magnitude > 0.1 then
										local unit = vector.Unit
										local vector2 = Vector3.new(-unit.Z, 0, unit.X)
										voting.Move = voting.Move + 1
										local position = argument3.Position
										local condition19 = voting.Move == 1

										if condition19 then
											local value109 = uiConstants[153]
											condition19 = 3 + math.random() * value109
										end

										local n33 = position + unit * (condition19 or math.random() * 1.5)
										local value109 = uiConstants[81]
										voting.Target = n33 + vector2 * (math.random() - value109) * (voting.Move == uiConstants[18] and 5 or 3)
									end
								end

								if not voting.Target then
									argument2:MoveTo(argument3.Position)
									return
								end

								if (voting.Target - argument3.Position).Magnitude <= uiConstants[122] then
									voting.Target = nil
									voting.MoveAt = argument + uiConstants[81] + math.random() * 1.5
									argument2:MoveTo(argument3.Position)
								else
									argument2:MoveTo(voting.Target)
								end

								return
							end

							voting.Done = nil
							voting.Waiting = nil
							voting.Moves = nil
							voting.Move = nil
							voting.Target = nil

							if voting.Map ~= top or not voting.Pad or not voting.Pad.Parent then
								voting.Map = top
								voting.MapAt = argument + 0.8 + math.random() * 1.7
								local colliders = argument4:FindFirstChild("Colliders")
								local table26 = {}
								local children = colliders and colliders:GetChildren() or {}

								for _, value109 in children, nil, nil do
									if value109:IsA("BasePart") then
										table26[#table26 + uiConstants[18]] = value109
									end
								end

								voting.Pad = #table26 > 0 and table26[math.random(#table26)]
							end

							local condition19 = not voting.Pad

							if not condition19 then
								condition19 = argument < (voting.MapAt or uiConstants[33])
							end

							if condition19 then
								argument2:MoveTo(argument3.Position)
								return
							end
							local position = voting.Pad.Position
							argument2:MoveTo(Vector3.new(position.X, argument3.Position.Y, position.Z))
						end

						table25.AutoPlay.Stop = function()
							updatePing("Auto Play")
							table25.AutoPlay.Jump(false)
							table.clear(table25.AutoPlay.Voting)
							table25.AutoPlay.Floor = nil
							table25.AutoPlay.Spawn = nil
							table25.AutoPlay.Map = nil
							table25.AutoPlay.Mode = nil
							table25.AutoPlay.Middle = nil
							table25.AutoPlay.MixAt = nil
							table25.AutoPlay.UpdateAt = nil
							table25.AutoPlay.PressureAt = nil
							table25.AutoPlay.PressureUntil = nil
							table25.AutoPlay.Home = nil
							table25.AutoPlay.Anchor = nil
							table25.AutoPlay.AnchorAt = nil
							table25.AutoPlay.EndAt = nil
							table25.AutoPlay.Raycast = nil
							table25.AutoPlay.LobbyTarget = nil
							table25.AutoPlay.LobbySettling = nil
							table25.AutoPlay.LobbyJumpAt = nil
							table25.AutoPlay.LobbyJumpUntil = nil
							table25.AutoPlay.LobbyDouble = nil
							table25.AutoPlay.LobbyDecided = nil
							table25.AutoPlay.LobbyIdle = nil
							table25.AutoPlay.InMatch = nil
							table25.AutoPlay.MatchHadOpponent = nil
							table25.AutoPlay.WonLast = nil
							table25.AutoPlay.ClashUntil = nil
							table25.AutoPlay.ChaseUntil = nil
							table25.AutoPlay.ClashDistance = nil
							table25.AutoPlay.ClashMoveAt = nil
							table25.AutoPlay.ClashTarget = nil
							table25.AutoPlay.Opponent = nil
							table25.AutoPlay.OpponentUntil = nil
							table25.AutoPlay.LastMove = nil
							table25.AutoPlay.Character = nil
						end

						table25.AutoPlay.Step = function()
							alive = alive.Parent and alive or workspace:FindFirstChild("Alive")
							local character = localPlayer.Character
							local humanoid = character and character:FindFirstChildOfClass("Humanoid")
							local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
							if not humanoid or not humanoidRootPart or humanoid.Health <= uiConstants[33] then
								table25.AutoPlay.Jump(uiConstants[101])
								return
							end
							local now2 = os.clock()
							if now2 < (table25.AutoPlay.UpdateAt or uiConstants[33]) then
								return
							end
							table25.AutoPlay.UpdateAt = now2 + 0.066666666666666666

							if table20.AutoVoteMap then
								table25.AutoPlay.VoteMode(now2)
							end

							if character.Parent == workspace:FindFirstChild("Dead") then
								table25.AutoPlay.InMatch = false
								local spawn_ = workspace:FindFirstChild("Spawn")
								spawn_ = spawn_ and spawn_:FindFirstChild("NewPlayerCounter")
								if table20.AutoVoteMap and spawn_ then
									table25.AutoPlay.VoteMap(now2, humanoid, humanoidRootPart, spawn_)
									return
								end

								if not table25.AutoPlay.LobbyDecided then
									table25.AutoPlay.LobbyDecided = true
									table25.AutoPlay.LobbyIdle = table25.AutoPlay.WonLast and math.random(3) ~= 1 or not table25.AutoPlay.WonLast and math.random(5) == 1
								end

								if table25.AutoPlay.LobbyIdle then
									table25.AutoPlay.Jump(false)
									humanoid:MoveTo(humanoidRootPart.Position)
									return
								end

								spawn_ = spawn_ and spawn_:FindFirstChild("Part")
								if not spawn_ then
									table25.AutoPlay.Jump(false)
									return
								end

								if table25.AutoPlay.Character ~= character or not table25.AutoPlay.LobbyTarget then
									local lobbySpawnPlate = workspace:FindFirstChild("LobbySpawnPlate")
									lobbySpawnPlate = lobbySpawnPlate and lobbySpawnPlate:FindFirstChild("DO_NOT_DELETE")
									lobbySpawnPlate = lobbySpawnPlate and lobbySpawnPlate.Position - spawn_.Position or humanoidRootPart.Position - spawn_.Position
									local vector = Vector3.new(lobbySpawnPlate.X, 0, lobbySpawnPlate.Z)
									local unit = vector.Magnitude > uiConstants[22] and vector.Unit or Vector3.zAxis
									local vector2 = Vector3.new(-unit.Z, 0, unit.X)
									table25.AutoPlay.Character = character
									table25.AutoPlay.LobbySettling = uiConstants[101]
									table25.AutoPlay.LobbyJumpAt = now2 + math.random()
									table25.AutoPlay.LobbyJumpUntil = nil
									local x = spawn_.Size.X
									table25.AutoPlay.LobbyTarget = spawn_.Position + unit * (8 + math.random() * 10) + vector2 * (math.random() - 0.5) * x * 0.65
								end

								local lobbyTarget = table25.AutoPlay.LobbyTarget
								local vector = Vector3.new(lobbyTarget.X, humanoidRootPart.Position.Y, lobbyTarget.Z)

								if (Vector3.new(vector.X, 0, vector.Z) - Vector3.new(humanoidRootPart.Position.X, uiConstants[33], humanoidRootPart.Position.Z)).Magnitude > 2.5 then
									if (table25.AutoPlay.LobbyJumpAt or 0) <= now2 then
										table25.AutoPlay.LobbyJumpAt = now2 + 1.2 + math.random() * 2
										table25.AutoPlay.LobbyJumpUntil = now2 + 0.45
										local value109 = uiConstants[81]
										table25.AutoPlay.LobbyDouble = math.random() < value109
									end

									table25.AutoPlay.Jump(now2 < (table25.AutoPlay.LobbyJumpUntil or 0), table25.AutoPlay.LobbyDouble)
									humanoid:MoveTo(vector)
								elseif not table25.AutoPlay.LobbySettling then
									local vector2 = Vector3.new(humanoidRootPart.Position.X - spawn_.Position.X, uiConstants[33], humanoidRootPart.Position.Z - spawn_.Position.Z)
									local unit = vector2.Magnitude > 0.1 and vector2.Unit or Vector3.zAxis
									local vector3 = Vector3.new(-unit.Z, 0, unit.X)
									table25.AutoPlay.LobbySettling = true
									local autoPlay = table25.AutoPlay
									local position = humanoidRootPart.Position
									local value109 = uiConstants[33]
									autoPlay.LobbyTarget = position + vector3 * (math.random(0, 1) == value109 and -uiConstants[18] or 1) * (uiConstants[61] + math.random() * 4) + unit * (math.random() - 0.5) * 3
								else
									table25.AutoPlay.Jump(false)
									humanoid:MoveTo(humanoidRootPart.Position)
								end

								return
							end

							if not alive or character.Parent ~= alive then
								table25.AutoPlay.Jump(false)
								return
							end

							if not table25.AutoPlay.InMatch then
								table25.AutoPlay.InMatch = uiConstants[200]
								table.clear(table25.AutoPlay.Voting)
								table25.AutoPlay.MatchHadOpponent = uiConstants[101]
								table25.AutoPlay.WonLast = false
								table25.AutoPlay.LobbyDecided = false
								table25.AutoPlay.LobbyIdle = nil
								table25.AutoPlay.ClashUntil = nil
								table25.AutoPlay.ChaseUntil = nil
								table25.AutoPlay.ClashDistance = nil
								table25.AutoPlay.ClashMoveAt = nil
								table25.AutoPlay.ClashTarget = nil
								table25.AutoPlay.Opponent = nil
								table25.AutoPlay.OpponentUntil = nil
								table25.AutoPlay.LastMove = nil
								table25.AutoPlay.Home = nil
								table25.AutoPlay.Anchor = nil
								table25.AutoPlay.AnchorAt = nil
								table25.AutoPlay.EndAt = nil
							end

							local value109, value110, remoteEvent = valueFunction60(character, humanoidRootPart.Position)
							local opponent = table25.AutoPlay.Opponent
							local parent = opponent and opponent.Parent

							if parent then
								parent = now2 < (table25.AutoPlay.OpponentUntil or 0)
							end

							if parent then
								local magnitude = (humanoidRootPart.Position - opponent.Position).Magnitude

								if magnitude <= value109 + 2.5 then
									value110 = opponent
									value109 = magnitude
								end
							end

							if value110 ~= table25.AutoPlay.Opponent then
								table25.AutoPlay.Opponent = value110
								table25.AutoPlay.OpponentUntil = now2 + 0.65
							end

							if remoteEvent > 1 then
								table25.AutoPlay.MatchHadOpponent = uiConstants[200]
							elseif table25.AutoPlay.MatchHadOpponent then
								table25.AutoPlay.WonLast = true
							end

							if remoteEvent <= 1 then
								table25.AutoPlay.EndAt = table25.AutoPlay.EndAt or now2 + 0.5 + math.random() * 0.7

								if table25.AutoPlay.EndAt <= now2 then
									table25.AutoPlay.Jump(false)
									humanoid:MoveTo(humanoidRootPart.Position)
									return
								end
							else
								table25.AutoPlay.EndAt = nil
							end

							table25.AutoPlay.Character = character
							table25.AutoPlay.LobbyTarget = nil
							table25.AutoPlay.LobbySettling = nil
							table25.AutoPlay.Jump(table20.SpamJump, uiConstants[200])
							local map = workspace:FindFirstChild("Map")

							if table25.AutoPlay.Map ~= map or table25.AutoPlay.Mode ~= table20.AutoPlayMode or not table25.AutoPlay.Floor or not table25.AutoPlay.Floor.Parent then
								table25.AutoPlay.Map = map
								table25.AutoPlay.Mode = table20.AutoPlayMode
								table25.AutoPlay.Floor = map and map:FindFirstChild("FLOOR", true)
								table25.AutoPlay.Spawn = table20.AutoPlayMode ~= "Play Edge" and map and map:FindFirstChild("BALLSPAWN", uiConstants[200])
								table25.AutoPlay.Raycast = nil
								table25.AutoPlay.Home = nil
								table25.AutoPlay.Anchor = nil

								if table25.AutoPlay.Floor then
									local raycastParams = RaycastParams.new()
									raycastParams.FilterType = Enum.RaycastFilterType.Include
									raycastParams.FilterDescendantsInstances = { table25.AutoPlay.Floor:FindFirstAncestorOfClass("Model") or map }
									raycastParams.RespectCanCollide = uiConstants[200]
									raycastParams.IgnoreWater = true
									table25.AutoPlay.Raycast = raycastParams
								end
							end

							local floor2 = table25.AutoPlay.Floor
							if not floor2 or not floor2:IsA("BasePart") then
								return
							end
							local n33 = valueFunction59() / 1000
							local middle = table25.AutoPlay.Middle
							local middle2 = table20.AutoPlayMode == "Play Middle"

							if table20.AutoPlayMode == "Mix" then
								local condition19 = table25.AutoPlay.Middle == nil

								if not condition19 then
									condition19 = now2 >= (table25.AutoPlay.MixAt or 0)
								end

								if condition19 then
									local n34 = remoteEvent <= 2 and 0.8

									if not n34 then
										n34 = math.clamp(0.55 - n33 * 2 - math.max(remoteEvent - uiConstants[153], 0) * 0.04 + ((not value110 or value109 > 28) and 0.12 or 0), 0.35, 0.75)
									end

									table25.AutoPlay.Middle = math.random() < n34
									table25.AutoPlay.MixAt = now2 + 4 + math.random() * 4
								end

								middle2 = table25.AutoPlay.Middle
							end

							if middle ~= middle2 then
								table25.AutoPlay.Middle = middle2
								table25.AutoPlay.Home = nil
								table25.AutoPlay.Anchor = nil
							end

							local spawn_ = table25.AutoPlay.Spawn
							spawn_ = middle2 and spawn_ and spawn_:IsA("BasePart") and spawn_ or floor2
							local vector = Vector3.new(spawn_.Position.X, humanoidRootPart.Position.Y, spawn_.Position.Z)
							local vector2 = Vector3.new(humanoidRootPart.Position.X - vector.X, 0, humanoidRootPart.Position.Z - vector.Z)
							local unit = vector2.Magnitude > 1 and vector2.Unit or Vector3.xAxis
							local n34 = middle2 and math.max(spawn_.Size.X, spawn_.Size.Z) or uiConstants[33]
							local n35 = math.min(floor2.Size.X, floor2.Size.Z) * (middle2 and 0.13 or 0.31)
							local n36 = middle2 and math.max(n34 * 0.75, humanoid.WalkSpeed * 0.45) or uiConstants[33]
							local direction = table25.AutoPlay.Direction
							local n37 = Vector3.new(-unit.Z, 0, unit.X) * direction
							local n38 = vector + unit * n35
							local n39 = math.clamp((table20.AutoPlayAggressiveness or uiConstants[195]) / 100, 0.01, 1)
							local n40 = (18 + humanoid.WalkSpeed * n33 * (8 + math.min(math.max(remoteEvent - 2, 0), 4))) * (1 + (0.45 - n39) * (n39 > 0.45 and 1.18 or 0.5))
							local condition19 = value110 and value109 < n40

							if not table25.AutoPlay.Home then
								local autoPlay = table25.AutoPlay
								local n41 = humanoid.WalkSpeed * 0.5
								autoPlay.Home = math.abs(vector2.Magnitude - n35) > n41 and n38 or humanoidRootPart.Position
								table25.AutoPlay.Anchor = table25.AutoPlay.Home
								table25.AutoPlay.AnchorAt = now2
							end

							local vector3

							if condition19 then
								local n41 = humanoidRootPart.Position - value110.Position
								local vector4 = Vector3.new(n41.X, uiConstants[33], n41.Z)
								vector3 = nil

								if vector4.Magnitude > 0.1 then
									local direction2 = table25.AutoPlay.Direction
									local unit2 = (vector4.Unit + Vector3.new(-vector4.Unit.Z, 0, vector4.Unit.X) * direction2 * 0.55).Unit
									local n42 = math.min(n40 - value109 + humanoid.WalkSpeed * 0.25, humanoid.WalkSpeed)
									local home = humanoidRootPart.Position + unit2 * n42
									local vector5 = Vector3.new(home.X - vector.X, 0, home.Z - vector.Z)
									local n43 = n35 + humanoid.WalkSpeed * 0.45

									if n43 < vector5.Magnitude then
										local n44 = vector5.Unit * n43
										home = Vector3.new(vector.X, humanoidRootPart.Position.Y, vector.Z) + n44
									elseif middle2 and vector5.Magnitude < n36 then
										home = vector + (vector5.Magnitude > uiConstants[22] and vector5.Unit or unit) * n36
									end

									local n44 = home - humanoidRootPart.Position
									vector3 = Vector3.new(n44.X, uiConstants[33], n44.Z)

									if vector3.Magnitude < uiConstants[18] then
										vector3 = (n37 - unit * uiConstants[64]).Unit * n42
										home = humanoidRootPart.Position + vector3
									end

									table25.AutoPlay.Home = home
									table25.AutoPlay.Anchor = table25.AutoPlay.Home
								end
							else
								local anchor = table25.AutoPlay.Anchor or humanoidRootPart.Position
								local condition20 = (Vector3.new(anchor.X, 0, anchor.Z) - Vector3.new(humanoidRootPart.Position.X, 0, humanoidRootPart.Position.Z)).Magnitude < 1.5

								if not condition20 then
									condition20 = now2 >= (table25.AutoPlay.AnchorAt or uiConstants[33])
								end

								vector3 = nil

								if condition20 then
									local remoteAction = uiConstants[64]

									if math.random() < remoteAction then
										table25.AutoPlay.Direction = -table25.AutoPlay.Direction
										n37 = -n37
									end

									table25.AutoPlay.AnchorAt = now2 + 0.6 + math.random() * 0.8
									local walkSpeed = humanoid.WalkSpeed
									table25.AutoPlay.Anchor = table25.AutoPlay.Home + n37 * humanoid.WalkSpeed * (0.2 + math.random() * 0.25) + unit * (math.random() - 0.5) * walkSpeed * 0.25
									vector3 = nil
								end
							end

							local n41 = (table25.AutoPlay.Anchor or table25.AutoPlay.Home) - humanoidRootPart.Position
							local vector4 = Vector3.new(n41.X, uiConstants[33], n41.Z)
							local unit2 = vector4.Magnitude > 2 and vector4.Unit or Vector3.zero
							local condition20 = now2 >= (flyteBBState.ParryActiveUntil or uiConstants[33])

							if condition20 then
								condition20 = now2 < (flyteBBState.ParryCooldownUntil or 0)
							end

							local unit3 = nil
							local unit4 = nil

							if not disconnectTrackedConnection(character) then
								unit3 = nil
								unit4 = nil

								for _, remoteAction in table25.Ball.GetAllBalls() do
									local signal = valueFunction58(remoteAction)
									local magnitude = valueFunction55(remoteAction).Magnitude
									local name = localPlayer.Name
									local condition21 = resolveKeyCode(remoteAction) == name
									local hitFreeze = table20.HitFreeze and condition21

									if hitFreeze then
										local value114 = uiConstants[200]
										hitFreeze = remoteAction:GetAttribute("Frozen") == value114
									end

									if condition21 and condition20 then
										local n42 = humanoidRootPart.Position - valueFunction54(remoteAction)
										local vector5 = Vector3.new(n42.X, 0, n42.Z)

										if vector5.Magnitude > 0.1 then
											unit3 = vector5.Unit
											unit4 = nil
											break
										else
											unit3 = nil
											unit4 = nil
										end
									else
										if condition21 then
											condition21 = (signal.TargetChanges or 0) <= 1 and magnitude <= humanoid.WalkSpeed or hitFreeze
										end

										if condition21 then
											local position = humanoidRootPart.Position
											local n42 = valueFunction54(remoteAction) - position
											local vector5 = Vector3.new(n42.X, uiConstants[33], n42.Z)

											if not (vector5.Magnitude > 0.1) then
												unit3 = nil
												unit4 = nil
											else
												unit4 = vector5.Unit
												unit3 = nil
												break
											end
										else
											unit3 = nil
											unit4 = nil
										end
									end
								end
							end

							if value110 and not unit3 then
								local n42 = math.clamp((n40 - value109) / n40, 0, uiConstants[18])

								if n42 > uiConstants[33] and vector3 and vector3.Magnitude > uiConstants[22] then
									unit2 = unit2:Lerp(vector3.Unit, n42)
								end

								local n43 = math.clamp(math.clamp(1 - n33 / uiConstants[22], 0, 1) * (0.6 + n39 * 0.4) + n39 * 0.25 + math.max(n39 - 0.45, 0) * 0.5, 0, 1)

								if (table25.AutoPlay.PressureAt or uiConstants[33]) <= now2 then
									local n44 = math.clamp(n39 / 0.45, 0.65, 2)
									local min = math.min
									local n45 = remoteEvent == 2 and 0.3 + n43 * 0.35 or n43 * 0.45
									local remoteAction = uiConstants[18]
									local signal = min(n45 * math.clamp(n44, 0.55, 1.8), remoteAction)
									table25.AutoPlay.PressureAt = now2 + ((remoteEvent == 2 and 2.5 or 3) + math.random() * 3) / n44
									table25.AutoPlay.PressureUntil = math.random() < signal and now2 + (0.65 + math.random() * 0.55) * math.clamp(n44, 0.75, uiConstants[122]) or 0
								end

								local condition21 = n42 == 0

								if condition21 then
									condition21 = now2 < (table25.AutoPlay.PressureUntil or 0)
								end

								if condition21 and value109 < n40 * (2 + n39) then
									local n44 = value110.Position - humanoidRootPart.Position
									unit2 = unit2:Lerp(Vector3.new(n44.X, uiConstants[33], n44.Z).Unit, 0.35 + n43 * uiConstants[139])
								end

								if remoteEvent == 2 then
									local autoSpamEnabled = table20.AutoSpamEnabled

									if autoSpamEnabled then
										autoSpamEnabled = now2 - (flyteBBState.AutoSpamAt or uiConstants[33]) < uiConstants[113]
									end

									if not autoSpamEnabled then
										autoSpamEnabled = table20.ManualSpamEnabled

										if autoSpamEnabled then
											autoSpamEnabled = now2 - (flyteBBState.ManualSpamAt or 0) < 0.2
										end
									end

									if autoSpamEnabled then
										local condition22 = now2 >= (table25.AutoPlay.ClashUntil or 0)
										table25.AutoPlay.ClashUntil = now2 + 0.4

										if not condition22 and table25.AutoPlay.ClashDistance and value109 > table25.AutoPlay.ClashDistance + 0.3 then
											table25.AutoPlay.ChaseUntil = now2 + 0.9
										end

										if condition22 then
											table25.AutoPlay.ClashMoveAt = nil
											table25.AutoPlay.ClashTarget = nil
										end

										table25.AutoPlay.ClashDistance = value109
									end

									if now2 < (table25.AutoPlay.ClashUntil or 0) then
										local n44 = value110.Position - humanoidRootPart.Position
										local vector5 = Vector3.new(n44.X, 0, n44.Z)
										local condition22 = vector5.Magnitude > 0.1

										if condition22 then
											condition22 = value109 > 9

											if not condition22 then
												condition22 = now2 < (table25.AutoPlay.ChaseUntil or 0)
											end
										end

										if condition22 then
											local position = value110.Position
											middle2 = middle2 and vector2.Magnitude < n36 + 12 and vector5.Unit:Dot(unit) < 0

											if middle2 then
												position = humanoidRootPart.Position + (n37 + unit * 0.25).Unit * uiConstants[49]
											end

											humanoid:MoveTo(position)
										else
											if (table25.AutoPlay.ClashMoveAt or 0) <= now2 then
												table25.AutoPlay.ClashMoveAt = now2 + 0.35 + math.random() * 0.5
												table25.AutoPlay.ClashTarget = humanoidRootPart.Position + (vector5.Magnitude > 0.1 and Vector3.new(-vector5.Z, 0, vector5.X).Unit or Vector3.zero) * (math.random(3) == 1 and math.random(-2, 2) or 0)
											end

											humanoid:MoveTo(table25.AutoPlay.ClashTarget or humanoidRootPart.Position)
										end

										return
									end
								end
							end

							if unit3 then
								unit2 = unit3
							elseif unit4 then
								unit2 = (unit4 * 0.9 + n37 * 0.1).Unit
							end

							if unit2.Magnitude > 0.1 then
								local unit5 = unit2.Unit

								if middle2 and vector2.Magnitude < n36 + 12 and unit5:Dot(unit) < 0 then
									unit5 = (n37 + unit * 0.25).Unit
								end

								local hit = table25.AutoPlay.Raycast and workspace:Raycast(humanoidRootPart.Position, unit5 * 12, table25.AutoPlay.Raycast)

								if hit then
									local vector5 = Vector3.new(hit.Normal.X, 0, hit.Normal.Z)

									if uiConstants[22] < vector5.Magnitude then
										local unit6 = vector5.Unit
										local vector6 = Vector3.new(-unit6.Z, 0, unit6.X)

										if vector6:Dot(unit5) < 0 then
											vector6 = -vector6
										end

										unit5 = (vector6 + unit6 * 0.35).Unit
									end
								end

								if not unit4 and not unit3 and table25.AutoPlay.LastMove and table25.AutoPlay.LastMove:Dot(unit5) > -0.6 then
									local clamp = math.clamp
									local autoPlaySmoothness = table20.AutoPlaySmoothness or 50
									local remoteAction = uiConstants[18]
									local n42 = 0.82 - (clamp(autoPlaySmoothness, 1, 100) - remoteAction) / 99 * 0.48

									if condition19 then
										n42 = math.min(n42 + 0.18, 0.9)
									end

									local signal = table25.AutoPlay.LastMove:Lerp(unit5, n42)

									if uiConstants[22] < signal.Magnitude then
										unit5 = signal.Unit
									end
								end

								table25.AutoPlay.LastMove = unit5
								humanoid:MoveTo(humanoidRootPart.Position + unit5 * 12)
							else
								table25.AutoPlay.LastMove = nil
								humanoid:MoveTo(humanoidRootPart.Position)
							end
						end

						table25.AutoPlay.Toggle = function(autoPlayEnabled)
							table20.AutoPlayEnabled = autoPlayEnabled
							table25.AutoPlay.Stop()

							if autoPlayEnabled then
								flyteBBState.Connections["Auto Play"] = runService.PreSimulation:Connect(table25.AutoPlay.Step)
							end
						end

						valueFunction43({ AvatarEnabled = false, AvatarUser = "", KHEnabled = false })

						table25.LoadRewards = function()
							local rewards = { Items = {} }
							table25.Rewards = rewards
							local controllers = replicatedStorage.Controllers
							local InfiniteBattlepassData = require(replicatedStorage.Shared.InfiniteBattlepass.InfiniteBattlepassData)
							local rewards2 = nil
							local BattlepassPlaytimeRewardsData = nil
							local Quests = nil
							local table26 = {}
							local table27 = {}

							local function valueFunction73(...)
								local playerGui = localPlayer.PlayerGui

								for _, value109 in { ... }, nil, nil do
									playerGui = playerGui:FindFirstChild(value109)
									if not playerGui then
										return
									end
								end

								return playerGui
							end

							rewards.Notify = function(argument, argument2)
								local value109 = table24 and table24.toggles[argument]

								if flyteBBState.Loaded and table20[argument] and value109 and value109.notify and type(argument2) == "string" and argument2 ~= "" then
									value103:Notify({ Title = "Got " .. argument2 })
								end
							end

							local function unreconstructedFunction74(argument, argument2, argument3, argument4, argument5)
								valueFunction43({ [argument] = false })
								rewards.Items[#rewards.Items + 1] = { ID = argument, Name = argument2, Run = argument3, Interval = argument4 or 5, Next = 0, Notify = argument5 }
							end

							local function getParryTiming(argument, argument2, argument3, argument4, argument5, arg6)
								if not argument2 or not argument2.Visible or table26[argument2] then
									return false
								end
								local value109 = getconnections
								local text5 = arg6 or "Activated"

								for _, value110 in value109(argument2[text5]) do
									if value110.Enabled and value110.Function and getfenv(value110.Function).script == argument3 then
										table26[argument2] = { ID = argument, Check = argument4, Names = argument5 }
										value110:Fire()
										return uiConstants[200]
									end
								end

								return uiConstants[101]
							end

							unreconstructedFunction74("Claim_Daily_Rewards", "Auto Claim Daily", function()
								local CurrentDailyLoginType = Data:Get("CurrentDailyLoginType")
								local value109 = Data:Get({ "DailyLoginData", CurrentDailyLoginType })
								local condition19 = (CurrentDailyLoginType == "D30" or CurrentDailyLoginType == "Longterm") and value109 and type(value109.NextClaim) == "number"

								if condition19 then
									local nextClaim = value109.NextClaim
									condition19 = workspace:GetServerTimeNow() >= nextClaim
								end

								if condition19 then
									local claim = valueFunction73("DailyLogin_" .. CurrentDailyLoginType .. "_Rewards")

									if claim then
										local condition20 = CurrentDailyLoginType == "D30" and claim.Page.Rewards:FindFirstChild("Day" .. value109.DaysClaimedStreak + 1, true)

										if condition20 then
											claim = condition20
										else
											claim = CurrentDailyLoginType == "Longterm" and claim.Frame.Claim
										end
									end

									local nextClaim = value109.NextClaim

									getParryTiming("Claim_Daily_Rewards", claim, controllers.UI.DailyLoginController, function()
										return Data:Get({ "DailyLoginData", CurrentDailyLoginType, "NextClaim" }) ~= nextClaim
									end)
								end

								local BattlepassDailyLogin = InfiniteBattlepassData.isEnabled() and valueFunction73("BattlepassDailyLogin", "Background", uiConstants[170], "ScrollingFrame")

								if BattlepassDailyLogin then
									for _, value110 in BattlepassDailyLogin:GetChildren() do
										if value110:GetAttribute("State") == "Claimable" then
											local num = tonumber(value110.Day.Text:match("%d+"))

											if num then
												getParryTiming("Claim_Daily_Rewards", value110.Claim, localPlayer.PlayerScripts.Client.UIBinders.BattlepassDailyLogin, function()
													return table.find(Data:Get("NewDailyLoginAwardList") or {}, num) ~= nil
												end)
											end

											break
										end
									end
								end

								local WelcomeBackEvent = Data:Get("WelcomeBackEvent")
								local condition20

								if WelcomeBackEvent then
									condition20 = workspace:GetServerTimeNow() < (WelcomeBackEvent.EventEndTime or uiConstants[33])
								else
									condition20 = WelcomeBackEvent
								end

								condition20 = condition20 and valueFunction73("NewWelcomeBack", "Frame", "Views", "Login", "Days")

								if condition20 then
									for _, value110 in condition20:GetChildren() do
										local claim = value110:FindFirstChild("Claim")
										local layoutOrder = claim and value110.LayoutOrder

										if claim and claim.Visible and layoutOrder <= WelcomeBackEvent.DailyLoginStreak and not WelcomeBackEvent.ClaimedDailyRewards[layoutOrder] then
											getParryTiming("Claim_Daily_Rewards", claim, controllers.WelcomeBackController.EventControllers.Login, function()
												local WelcomeBackEvent2 = Data:Get("WelcomeBackEvent")
												return WelcomeBackEvent2 and WelcomeBackEvent2.ClaimedDailyRewards[layoutOrder] == true
											end, nil, "MouseButton1Click")

											break
										end
									end
								end
							end)

							unreconstructedFunction74("Claim_Playtime_Rewards", "Auto Claim Playtime", function()
								rewards2 = rewards2 or require(replicatedStorage.Common.PlaytimeRewardsInfo).Rewards
								BattlepassPlaytimeRewardsData = BattlepassPlaytimeRewardsData or require(replicatedStorage.Shared.Battlepass.BattlepassPlaytimeRewardsData)
								Quests = Quests or require(replicatedStorage.Shared.Quests)
								local PlaytimeRewardsData = Data:Get("PlaytimeRewardsData")

								if PlaytimeRewardsData then
									for key, value109 in rewards2, nil, nil do
										local condition19 = not PlaytimeRewardsData.ClaimedRewards[tostring(key)]

										if condition19 then
											local n33 = PlaytimeRewardsData.TimerStart + value109.Duration
											condition19 = workspace:GetServerTimeNow() >= n33
										end

										if condition19 then
											local playtimeRewardsController = controllers.UI.PlaytimeRewardsController

											getParryTiming("Claim_Playtime_Rewards", valueFunction73("PlaytimeRewards", "PlaytimeRewards", "Page", "List", "RewardsList", tostring(key), "ClaimButton"), playtimeRewardsController, function()
												return Data:Get({ "PlaytimeRewardsData", "ClaimedRewards", tostring(key) }) == true
											end)

											break
										end
									end
								end

								if InfiniteBattlepassData.isEnabled() then
									local ClaimedPlaytimeRewards = Data:Get("ClaimedPlaytimeRewards") or {}

									for key, value109 in BattlepassPlaytimeRewardsData, nil, nil do
										if value109.Seconds <= (Data:Get("SecondsPlayedToday") or 0) and not table.find(ClaimedPlaytimeRewards, key) then
											local BattlepassPlaytimeRewards = valueFunction73("BattlepassPlaytimeRewards", "PlaytimeRewards", "MainFrame", "Grid", tostring(key))

											getParryTiming("Claim_Playtime_Rewards", BattlepassPlaytimeRewards and BattlepassPlaytimeRewards.Claim.Claim, controllers.Battlepass.BattlepassPlaytimeRewardsController, function()
												return table.find(Data:Get("ClaimedPlaytimeRewards") or {}, key) ~= nil
											end)

											break
										end
									end
								end

								local CurrentQuests = Data:Get("CurrentQuests") or {}

								for _, value109 in CurrentQuests, nil, nil do
									local condition19 = Quests[value109]

									if condition19 then
										condition19 = (Data:Get({ "QuestStats", condition19.stat }) or 0) >= condition19.goal
									end

									if condition19 then
										condition19 = not table.find(Data:Get("QuestsAwarded") or {}, value109)
									end

									if condition19 then
										local questsController = controllers.UI.QuestsController

										getParryTiming("Claim_Playtime_Rewards", valueFunction73("NewDailyQuests", "Holder", "Quests", value109, "Intermediate"), questsController, function()
											return table.find(Data:Get("QuestsAwarded") or {}, value109) ~= nil
										end)
									end
								end
							end)

							if InfiniteBattlepassData.isEnabled() then
								unreconstructedFunction74("Claim_Battlepass_Rewards", "Auto Claim Battlepass", function()
									if not InfiniteBattlepassData.isEnabled() then
										return
									end
									local Battlepass = valueFunction73("Battlepass", "Main", "Background", "Left", "ClaimAll")
									if not Battlepass or not Battlepass.Visible or table26[Battlepass] then
										return
									end
									local InfiniteBattlepass = Data:Get("InfiniteBattlepass")
									local table28 = {}
									local getTierFromXP = InfiniteBattlepassData.SeasonData.Rewards.getTierFromXP
									local xp = InfiniteBattlepass.Quests.XP or uiConstants[33]

									for i = 1, getTierFromXP(xp) do
										local value109 = InfiniteBattlepassData.SeasonData.Rewards.getReward(i, localPlayer)

										for _, value110 in { "Free", "Premium" }, nil, nil do
											if value109 and value109[value110:lower()] and (value110 == "Free" or InfiniteBattlepass.Premium == true) and not InfiniteBattlepass.Claimed[value110][tostring(i)] then
												table28[#table28 + 1] = { value110, tostring(i) }
											end
										end
									end

									if #table28 == 0 then
										return
									end

									getParryTiming("Claim_Battlepass_Rewards", Battlepass, controllers.Battlepass.BattlepassTierController, function()
										local Claimed = Data:Get("InfiniteBattlepass.Claimed")

										for _, value109 in table28, nil, nil do
											if not Claimed[value109[1]][value109[2]] then
												return false
											end
										end

										return true
									end)
								end)
							end

							unreconstructedFunction74("Auto_Wheel_Spins", "Auto Spin Wheel", function()
								local rolls = Data:Get("rolls") or uiConstants[33]
								if rolls <= 0 then
									return
								end
								local Wheel = valueFunction73("Wheel", "Default")
								if not Wheel or Wheel:GetAttribute("Spinning") then
									return
								end
								local wheelMenu = Wheel.WheelMenu

								getParryTiming("Auto_Wheel_Spins", wheelMenu.Button.SpinButton, Wheel.SpinWheelClient, function()
									return (Data:Get("rolls") or uiConstants[33]) < rolls and not Wheel:GetAttribute("Spinning")
								end, function()
									return wheelMenu.Win.Text:match("^You won (.-)!$")
								end)
							end, 12, uiConstants[200])

							if InfiniteBattlepassData.isEnabled() then
								local condition19 = require(replicatedStorage.Shared.BattlepassUIType) == "Window"

								local function valueFunction76(spinID, argument)
									if not InfiniteBattlepassData.isEnabled() or Data:Get("InfiniteBattlepass.UseSteps") then
										return
									end

									if os.clock() < (rewards.SpinUntil or 0) then
										return
									end
									local n33 = Data:Get("InfGachaRounds" .. InfiniteBattlepassData.Season) or 0

									if argument then
										local condition20 = n33 > 0 or InfiniteBattlepassData.SeasonData.Currency.Name ~= "Gold"

										if not condition20 then
											local value109 = uiConstants[200]
											condition20 = Data:Get("CanPurchaseInfGachaRounds" .. InfiniteBattlepassData.Season .. "DailyExtra") ~= value109
										end

										if not condition20 then
											condition20 = (Data:Get("InfiniteBattlepass.Currency") or uiConstants[33]) < 400
										end

										if condition20 then
											return
										end
									elseif n33 <= 0 then
										return
									end

									local BattlepassSpinGacha = condition19 and valueFunction73("BattlepassSpinGacha", "Main") or valueFunction73("Battlepass", "Main", "Background", "Views", "SpinGacha")
									local value109 = rewards
									local value110 = rewards
									local remoteEvent = uiConstants[147]
									local spinUntil = os.clock() + remoteEvent
									value109.SpinID = spinID
									value110.SpinUntil = spinUntil

									if not getParryTiming(spinID, BattlepassSpinGacha and BattlepassSpinGacha.Background.Spin.Spin, controllers.Battlepass.BattlepassSpinGachaController, function()
										local condition20 = argument and Data:Get("CanPurchaseInfGachaRounds" .. InfiniteBattlepassData.Season .. "DailyExtra") ~= true

										if not condition20 then
											condition20 = not argument

											if condition20 then
												condition20 = (Data:Get("InfGachaRounds" .. InfiniteBattlepassData.Season) or uiConstants[33]) < n33
											end
										end

										return condition20
									end) then
										local remoteAction = rewards
										rewards.SpinID = nil
										remoteAction.SpinUntil = nil
									end
								end

								unreconstructedFunction74("Auto_Battlepass_Spins", "Auto Battlepass", function()
									valueFunction76("Auto_Battlepass_Spins", false)
								end, 12, true)

								unreconstructedFunction74("Auto_Gold_Spin", "Auto Kraken Spin", function()
									valueFunction76("Auto_Gold_Spin", uiConstants[200])
								end, uiConstants[49], uiConstants[200])
							end

							rewards.Step = function()
								for key, value109 in table26, nil, nil do
									if value109.Check() then
										table26[key] = nil
										rewards.Notify(value109.ID, type(value109.Names) == "function" and value109.Names() or value109.Names)
									elseif not key.Parent then
										table26[key] = nil
									end
								end

								for _, value109 in rewards.Items, nil, nil do
									local condition19 = table20[value109.ID]

									if condition19 then
										local next_ = value109.Next
										condition19 = os.clock() >= next_
									end

									if condition19 then
										local interval = value109.Interval
										value109.Next = os.clock() + interval

										if not pcall(value109.Run) then
											value109.Next = os.clock() + 30
										end
									end
								end
							end

							rewards.Toggle = function()
								if not flyteBBState.Loaded then
									return
								end
								local condition19 = uiConstants[101]

								for _, value109 in rewards.Items, nil, nil do
									if table20[value109.ID] then
										condition19 = true
										break
									end
								end

								if not condition19 then
									updatePing("Rewards")
									return
								end

								if flyteBBState.Connections.Rewards then
									return
								end
								local rewards3 = {}
								flyteBBState.Connections.Rewards = rewards3

								rewards3.Results = replicatedStorage.Remote.RemoteEvent.OnClientEvent:Connect(function(argument, argument2, argument3)
									local spinID = rewards.SpinID

									if spinID then
										local spinUntil = rewards.SpinUntil
										spinID = os.clock() <= spinUntil
									end

									if spinID and type(argument3) == "table" then
										if argument == "GachaSpinStartBottom" then
											local value109 = table27
											local gachaSpinEndBottom = {}
											local spinID2 = rewards.SpinID
											local displayName = argument3.DisplayName or argument3.ItemName
											gachaSpinEndBottom[1] = spinID2
											gachaSpinEndBottom[2] = displayName
											value109.GachaSpinEndBottom = gachaSpinEndBottom
										elseif argument == "GachaSpinStartTop" then
											local value109 = table27
											local gachaSpinEndTop = {}
											local spinID2 = rewards.SpinID
											local displayName = argument3.DisplayName or argument3.ItemName
											gachaSpinEndTop[1] = spinID2
											gachaSpinEndTop[2] = displayName
											value109.GachaSpinEndTop = gachaSpinEndTop
										end
									end

									local value109 = table27[argument]

									if value109 then
										table27[argument] = nil
										rewards.Notify(value109[1], value109[2])
									end
								end)

								rewards3.Loop = task.spawn(function()
									while flyteBBState.Loaded and flyteBBState.Connections.Rewards == rewards3 do
										rewards.Step()
										task.wait(1)
									end
								end)
							end
						end

						table25.LoadRewards()

						table25.LoadAvatar = function()
							local flyteavatarcache1 = replicatedStorage:FindFirstChild("flyteavatarcache1")

							if flyteavatarcache1 then
								flyteavatarcache1:Destroy()
							end

							local folder = Instance.new("Folder")
							folder.Name = "flyteavatarcache1"
							folder.Parent = replicatedStorage
							local folder2 = Instance.new("Folder")
							folder2.Name = "Original"
							folder2.Parent = folder
							table23 = { Sources = {}, UserIDs = {}, SourceFolder = folder, Stash = folder2, Clones = {}, BindRun = 0 }
							local value109 = nil
							local value110 = nil
							local remoteEvent = uiConstants[33]
							local remoteAction = nil
							local signal = nil

							table23.BindImage = function(argument, argument2)
								if not table23.Images or not argument or not argument2 or table23.Images[argument] then
									return
								end
								local table26 = { Original = argument.Image, Username = argument2 }
								table23.Images[argument] = table26

								table26.Update = function()
									local image = argument.Image

									if image ~= table26.Applied then
										table26.Original = image
									end

									if argument2.Text ~= "@" .. localPlayer.Name or table26.Original:match("^rbxthumb://type=AvatarHeadShot&id=(%d+)&") ~= tostring(localPlayer.UserId) then
										table26.Applied = nil
										return
									end
									table26.Applied = table26.Original:gsub("&id=%d+&", "&id=" .. value109 .. "&", 1)

									if image ~= table26.Applied then
										argument.Image = table26.Applied
									end
								end

								table26.ImageChanged = argument:GetPropertyChangedSignal("Image"):Connect(table26.Update)
								table26.UserChanged = argument2:GetPropertyChangedSignal("Text"):Connect(table26.Update)

								table26.Destroying = argument.Destroying:Connect(function()
									cleanupResources(table26)

									if table23.Images then
										table23.Images[argument] = nil
									end
								end)

								table26.Update()
							end

							table23.UpdateImages = function()
								if table23.Images then
									for _, value114 in table23.Images, nil, nil do
										value114.Update()
									end

									return
								end

								table23.Images = {}

								local function valueFunction73(argument)
									local parent = argument and argument.Parent
									if not parent then
										return
									end

									if argument.Name == "AvatarImage" and parent.Name == "PlayerHeader" then
										table23.BindImage(argument, parent:FindFirstChild("PlayerName", true))
									elseif argument.Name == "PlayerName" then
										local playerHeader = argument:FindFirstAncestor("PlayerHeader")

										if playerHeader then
											table23.BindImage(playerHeader:FindFirstChild("AvatarImage"), argument)
										end
									elseif argument.Name == "Player" and parent.Name == "PlayerProfile" then
										local details = parent:FindFirstChild("Details")
										table23.BindImage(argument, details and details:FindFirstChild("Username"))
									elseif argument.Name == "Username" and parent.Name == "Details" and parent.Parent.Name == "PlayerProfile" then
										table23.BindImage(parent.Parent:FindFirstChild("Player"), argument)
									end

									if not (n24 < 4731) then
										return
									end

									while true do
									end
								end

								local images = table23.Images

								local function unreconstructedFunction74(descendant)
									if descendant.Name == "AvatarImage" or descendant.Name == "PlayerName" or descendant.Name == "Player" or descendant.Name == "Username" then
										task.defer(function()
											if table23.Images == images then
												pcall(valueFunction73, descendant)
											end
										end)
									end
								end

								local table26 = { inputChangedHandler.DescendantAdded:Connect(unreconstructedFunction74) }
								flyteBBState.Connections["Avatar Images"] = table26

								pcall(function()
									table26[#table26 + 1] = coreGui.DescendantAdded:Connect(unreconstructedFunction74)
									local playerHeader = coreGui:FindFirstChild("PlayerHeader", true)

									if playerHeader then
										valueFunction73(playerHeader:FindFirstChild("AvatarImage"))
									end
								end)

								local profileCard = inputChangedHandler:FindFirstChild("ProfileCard")
								profileCard = profileCard and profileCard:FindFirstChild("PlayerProfile", true)

								if profileCard then
									valueFunction73(profileCard:FindFirstChild("Player"))
								end
							end

							table23.RestoreImages = function()
								updatePing("Avatar Images")
								local images = table23.Images
								table23.Images = nil
								local table26 = images or {}

								for key, value114 in table26, nil, nil do
									cleanupResources(value114)

									pcall(function()
										if value114.Applied and key.Image == value114.Applied and value114.Username.Text == "@" .. localPlayer.Name then
											key.Image = value114.Original
										end
									end)
								end
							end

							table23.IsBodyAppearance = function(argument)
								return argument:IsA("Shirt") or argument:IsA("Pants") or argument:IsA("ShirtGraphic") or argument:IsA("BodyColors") or argument:IsA("CharacterMesh") or argument:IsA("Accoutrement")
							end

							table23.IsHeadAppearance = function(argument)
								return argument:IsA("Decal") or argument:IsA("SpecialMesh")
							end

							table23.GetInput = function()
								return string.match(tostring(table20.AvatarUser or ""), "^%s*(.-)%s*$")
							end

							table23.SearchCurrent = function(argument, argument2)
								local condition19 = table20.AvatarEnabled and argument == remoteEvent

								if condition19 then
									condition19 = argument2 == table23.GetInput():lower()
								end

								return condition19
							end

							table23.IsAppearanceReady = function(argument)
								return argument and (argument:GetAttribute("AppearanceLoaded") == true or argument == localPlayer.Character and localPlayer:HasAppearanceLoaded())
							end

							table23.GetUserID = function(argument)
								local value114 = string.match(tostring(argument or ""), "^%s*(.-)%s*$")
								if value114 == "" then
									return
								end
								local text5 = value114:lower()
								local originalFireServer = table23.UserIDs[text5]
								if originalFireServer then
									return originalFireServer
								end
								local num = tonumber(value114)

								if num then
									if num ~= num or num <= 0 or num == math.huge or num % uiConstants[18] ~= uiConstants[33] then
										return
									end
								else
									for _, closureFactory in playersService:GetPlayers() do
										if closureFactory.Name:lower() == text5 or closureFactory.DisplayName:lower() == text5 then
											num = closureFactory.UserId
											break
										end
									end

									num = num or playersService:GetUserIdFromNameAsync(value114)
								end

								if num then
									table23.UserIDs[text5] = num
								end

								return num
							end

							table23.GetSource = function(argument)
								local value114 = table23.Sources[argument]
								if value114 and value114.Parent == folder then
									return value114
								end
								local ok, result = pcall(playersService.GetHumanoidDescriptionFromUserIdAsync, playersService, argument)
								if not ok or not result then
									return
								end
								local ok2, result2 = pcall(playersService.CreateHumanoidModelFromDescriptionAsync, playersService, result, Enum.HumanoidRigType.R6)
								result:Destroy()
								if not ok2 or not result2 then
									return
								end

								if not folder.Parent then
									result2:Destroy()
									return
								end

								for _, originalFireServer in result2:GetDescendants() do
									if originalFireServer:IsA("LuaSourceContainer") then
										originalFireServer:Destroy()
									end
								end

								result2.Name = tostring(argument)
								result2.Parent = folder
								table23.Sources[argument] = result2
								return result2
							end

							table23.AddAccessory = function(argument, argument2)
								local parent = argument.Parent
								local handle = argument2:FindFirstChild("Handle")

								if not (not handle or not handle:IsA("BasePart")) then
									local accessoryWeld = handle:FindFirstChild("AccessoryWeld")
									local part1 = accessoryWeld and accessoryWeld:IsA("Weld") and accessoryWeld.Part1
									local c1 = nil
									local head = nil
									local c0 = nil

									if part1 then
										head = parent:FindFirstChild(accessoryWeld.Part1.Name)
										c0 = accessoryWeld.C0
										c1 = accessoryWeld.C1
									end

									local attachment = handle:FindFirstChildOfClass("Attachment")

									if not head and attachment then
										for _, value114 in parent:GetChildren() do
											if value114:IsA("BasePart") then
												local originalFireServer = value114:FindFirstChild(attachment.Name)

												if originalFireServer and originalFireServer:IsA("Attachment") then
													c0 = attachment.CFrame
													c1 = originalFireServer.CFrame
													head = value114
													break
												end
											end
										end
									elseif not head then
										head = parent:FindFirstChild("Head")
										c0 = argument2.AttachmentPoint
										c1 = CFrame.new(0, 0.5, 0)
									end

									if not head then
										argument2:Destroy()
										return
									end

									for _, value114 in argument2:GetDescendants() do
										if value114:IsA("JointInstance") or value114:IsA("WeldConstraint") then
											local condition19 = value114.Name == "AccessoryWeld" or value114.Part0 and not value114.Part0:IsDescendantOf(argument2)
											local condition20

											if condition19 then
												condition20 = condition19
											else
												condition20 = value114.Part1 and not value114.Part1:IsDescendantOf(argument2)
											end

											if condition20 then
												value114:Destroy()
											end
										elseif value114:IsA("BasePart") then
											value114.Anchored = uiConstants[101]
											value114.CanCollide = false
											value114.Massless = true
										end
									end

									local cFrame = handle.CFrame
									local n33 = head.CFrame * c1 * c0:Inverse() * cFrame:Inverse()

									for _, value114 in argument2:GetDescendants() do
										if value114:IsA("BasePart") then
											value114.CFrame = n33 * value114.CFrame
										end
									end

									local weld = Instance.new("Weld")
									weld.Name = "AccessoryWeld"
									weld.Part0 = handle
									weld.Part1 = head
									weld.C0 = c0
									weld.C1 = c1
									weld.Parent = handle
									argument2.Parent = parent
									return
								end

								if n28(3904) < 277 then
									argument2:Destroy()
									return
								end

								while true do
								end
							end

							table23.ClearAdded = function()
								if not remoteAction then
									return
								end

								for _, value114 in remoteAction.Added, nil, nil do
									value114:Destroy()
								end

								table.clear(remoteAction.Added)
							end

							table23.DiscardKH = function()
								if not signal then
									return
								end

								if signal.Korblox then
									signal.Korblox:Destroy()
								end

								for _, value114 in signal.LegMeshes, nil, nil do
									value114:Destroy()
								end

								signal = nil
							end

							table23.DiscardAppearance = function()
								if not remoteAction then
									return
								end
								table23.ClearAdded()
								local visibility = remoteAction.Visibility or {}

								for _, value114 in visibility, nil, nil do
									value114:Disconnect()
								end

								for _, value114 in remoteAction.Original, nil, nil do
									value114.Object:Destroy()
								end

								remoteAction = nil
							end

							table23.CaptureAppearance = function(argument)
								if remoteAction and remoteAction.Character == argument then
									return remoteAction
								end
								table23.DiscardKH()
								table23.DiscardAppearance()
								remoteAction = table23.StoreAppearance(argument)
								return remoteAction
							end

							table23.StoreAppearance = function(argument, argument2)
								local table26 = argument2 or { Character = argument, Original = {}, Added = {} }
								local torso = argument:FindFirstChild("Torso")

								if torso and not table26.Visibility then
									local function valueFunction73()
										table23.UpdateVisibility(table26)
									end

									local visibility = {}
									local connection = torso:GetPropertyChangedSignal("Transparency"):Connect(valueFunction73)
									local signal = torso:GetPropertyChangedSignal("LocalTransparencyModifier")
									local connect = signal.Connect
									visibility[1] = connection

									do
										local values = table.pack(connect(signal, valueFunction73))
										table.move(values, 1, values.n, 2, visibility)
									end

									table26.Visibility = visibility
								end

								local value114 = table.clone(table26.Original)

								local function valueFunction73(argument3, argument4)
									for i = #table26.Original, 1, -1 do
										local originalFireServer = table26.Original[i]

										if table.find(value114, originalFireServer) and originalFireServer.Parent == argument4 and originalFireServer.Object.ClassName == argument3.ClassName and (not argument3:IsA("Accoutrement") or originalFireServer.Object.Name == argument3.Name) and (not argument3:IsA("CharacterMesh") or originalFireServer.Object.BodyPart == argument3.BodyPart) then
											originalFireServer.Object:Destroy()
											table.remove(table26.Original, i)
										end
									end

									table26.Original[#table26.Original + 1] = { Object = argument3, Parent = argument4 }
									argument3.Parent = folder2
								end

								for _, originalFireServer in argument:GetChildren() do
									if table23.IsBodyAppearance(originalFireServer) then
										valueFunction73(originalFireServer, argument)
									end
								end

								local head = argument:FindFirstChild("Head")

								if head then
									for _, originalFireServer in head:GetChildren() do
										if table23.IsHeadAppearance(originalFireServer) then
											valueFunction73(originalFireServer, head)
										end
									end
								end

								return table26
							end

							table23.CopyAppearance = function(argument, parent, argument2, argument3)
								local value114 = argument3 or remoteAction
								value114.Transparency = {}

								for _, originalFireServer in argument:GetChildren() do
									if table23.IsBodyAppearance(originalFireServer) then
										local clone = originalFireServer:Clone()
										value114.Added[#value114.Added + 1] = clone

										if clone:IsA("Accoutrement") then
											for _, closureFactory in clone:GetDescendants() do
												if closureFactory:IsA(uiConstants[53]) or closureFactory:IsA("Decal") then
													value114.Transparency[closureFactory] = closureFactory.Transparency
												end
											end

											table23.AddAccessory(argument2, clone)
										else
											clone.Parent = parent
										end
									end
								end

								local head = argument:FindFirstChild("Head")
								local head2 = parent:FindFirstChild("Head")

								if head and head2 then
									for _, originalFireServer in head:GetChildren() do
										if table23.IsHeadAppearance(originalFireServer) then
											local clone = originalFireServer:Clone()
											value114.Added[#value114.Added + 1] = clone
											clone.Parent = head2
										end
									end
								end

								table23.UpdateVisibility(value114)
							end

							table23.UpdateVisibility = function(argument)
								if not argument or not argument.Transparency then
									return
								end
								local torso = argument.Character:FindFirstChild("Torso")
								if not torso then
									return
								end

								for key, value114 in argument.Transparency, nil, nil do
									if key.Parent then
										key.Transparency = uiConstants[18] - (1 - value114) * (1 - torso.Transparency)

										if key:IsA("BasePart") then
											key.LocalTransparencyModifier = torso.LocalTransparencyModifier
										end
									end
								end
							end

							table23.RestoreKH = function(parent)
								local value114 = signal
								signal = nil
								if not value114 then
									return
								end

								if value114.Korblox then
									value114.Korblox:Destroy()
								end

								if value114.Character == parent then
									for _, originalFireServer in value114.LegMeshes, nil, nil do
										originalFireServer.Parent = parent
									end

									parent = parent and parent:FindFirstChild("Head")

									if parent then
										parent.Transparency = value114.HeadTransparency
									end

									if value114.Face and value114.Face.Parent then
										value114.Face.Transparency = value114.FaceTransparency
									end
								else
									for _, originalFireServer in value114.LegMeshes, nil, nil do
										originalFireServer:Destroy()
									end
								end
							end

							table23.ApplyKH = function(parent)
								local humanoid = parent and parent:FindFirstChildOfClass("Humanoid")
								if not humanoid or humanoid.RigType ~= Enum.HumanoidRigType.R6 then
									return
								end
								table23.RestoreKH(parent)
								local head = parent:FindFirstChild("Head")
								local face = head and (head:FindFirstChild("face") or head:FindFirstChildOfClass("Decal"))

								local table26 = {
									Character = parent,
									HeadTransparency = head and head.Transparency or 0,
									Face = face,
									FaceTransparency = face and face.Transparency or uiConstants[33],
									LegMeshes = {},
								}

								for _, value114 in parent:GetChildren() do
									if value114:IsA("CharacterMesh") and value114.BodyPart == Enum.BodyPart.RightLeg then
										table26.LegMeshes[#table26.LegMeshes + 1] = value114
										value114.Parent = folder2
									end
								end

								local characterMesh = Instance.new("CharacterMesh")
								characterMesh.Name = "FlyteKorblox"
								characterMesh.BodyPart = Enum.BodyPart.RightLeg
								characterMesh.MeshId = 101851696
								characterMesh.OverlayTextureId = 101851254
								characterMesh.Parent = parent
								table26.Korblox = characterMesh
								signal = table26

								if head then
									head.Transparency = 1
								end

								if face then
									face.Transparency = 1
								end
							end

							table23.RestoreAppearance = function(argument)
								table23.RestoreKH(argument)
								local value114 = remoteAction

								if not value114 then
									if argument then
										argument:SetAttribute("flytemarker1", nil)
									end

									return
								end

								if value114.Character ~= argument then
									table23.DiscardAppearance()
									return
								end
								table23.ClearAdded()
								local visibility = value114.Visibility or {}

								for _, originalFireServer in visibility, nil, nil do
									originalFireServer:Disconnect()
								end

								for _, originalFireServer in value114.Original, nil, nil do
									if originalFireServer.Parent and originalFireServer.Parent.Parent then
										originalFireServer.Object.Parent = originalFireServer.Parent
									else
										originalFireServer.Object:Destroy()
									end
								end

								remoteAction = nil
								argument:SetAttribute("flytemarker1", nil)
							end

							table23.ApplySource = function(argument, argument2, argument3)
								if not table20.AvatarEnabled or localPlayer.Character ~= argument2 or value109 ~= argument3 then
									return
								end
								local humanoid = argument2:FindFirstChildOfClass("Humanoid")
								if not humanoid or humanoid.RigType ~= Enum.HumanoidRigType.R6 then
									return
								end
								table23.RestoreKH(argument2)
								table23.CaptureAppearance(argument2)
								table23.ClearAdded()
								argument2:SetAttribute("flytemarker1", nil)

								if not pcall(table23.CopyAppearance, argument, argument2, humanoid) then
									table23.RestoreAppearance(argument2)

									if table20.KHEnabled then
										table23.ApplyKH(argument2)
									end

									return
								end

								if table20.KHEnabled then
									table23.ApplyKH(argument2)
								end

								argument2:SetAttribute("flytemarker1", argument3)
								table23.UpdateImages()

								for key in table23.Clones, nil, nil do
									table23.ApplyClone(key)
								end

								if table23.DelayedSearch == remoteEvent then
									table23.DelayedSearch = nil
									value103:Notify({ Title = "wow it loaded" })
								end

								return uiConstants[200]
							end

							table23.Update = function(argument)
								if not table20.AvatarEnabled then
									return
								end
								local value114 = value109 and table23.Sources[value109]
								local condition19 = not value114 or value114.Parent ~= folder

								if not condition19 then
									condition19 = value110 ~= table23.GetInput():lower()
								end

								if condition19 then
									if not table23.PendingUser then
										task.spawn(table23.Apply)
									end

									return
								end

								local character = localPlayer.Character
								if not table23.IsAppearanceReady(character) then
									return
								end

								if not argument and remoteAction and remoteAction.Character == character and character:GetAttribute("flytemarker1") == value109 then
									return
								end
								table23.ApplySource(value114, character, value109)
							end

							table23.Apply = function()
								if not table20.AvatarEnabled then
									return
								end
								local value114 = table23.GetInput()
								if value114 == "" then
									return
								end
								local pendingUser = value114:lower()
								if table23.PendingUser == pendingUser then
									return
								end
								local originalFireServer = value109 and table23.Sources[value109]
								if not table23.PendingUser and value110 == pendingUser and originalFireServer and originalFireServer.Parent == folder then
									table23.Update()
									return
								end
								remoteEvent += 1
								local closureFactory = remoteEvent
								table23.PendingUser = pendingUser
								table23.DelayedSearch = nil

								task.delay(3, function()
									if table23.PendingUser == pendingUser and table23.SearchCurrent(closureFactory, pendingUser) then
										table23.DelayedSearch = closureFactory
										value103:Notify({ Title = "Roblox is delaying avatar changer np" })
									end
								end)

								local result = nil

								for i = 1, 3 do
									local ok
									ok, result = pcall(table23.GetUserID, value114)

									if not (ok and result) then
										result = nil
										if table23.SearchCurrent(closureFactory, pendingUser) then
											result = nil
											continue
										end
									end

									break
								end

								if not result or not table23.SearchCurrent(closureFactory, pendingUser) then
									if closureFactory == remoteEvent then
										table23.PendingUser = nil
									end

									return
								end

								local fireServerHook = nil

								while table23.SearchCurrent(closureFactory, pendingUser) do
									local ok, result2 = pcall(table23.GetSource, result)
									fireServerHook = ok and result2 or nil
									if not (fireServerHook or not table23.SearchCurrent(closureFactory, pendingUser)) then
										task.wait(2)
										continue
									end
									break
								end

								if closureFactory == remoteEvent then
									table23.PendingUser = nil
								end

								if not fireServerHook or not table23.SearchCurrent(closureFactory, pendingUser) then
									return
								end
								value109 = result
								value110 = pendingUser
								local character = localPlayer.Character

								if table23.IsAppearanceReady(character) and table23.SearchCurrent(closureFactory, pendingUser) then
									table23.ApplySource(fireServerHook, character, result)
								end
							end

							table23.Reconcile = function(argument)
								if localPlayer.Character ~= argument then
									return
								end
								argument:SetAttribute("flytemarker1", nil)

								if table20.AvatarEnabled then
									table23.Update(uiConstants[200])
								elseif table20.KHEnabled then
									table23.ApplyKH(argument)
								end
							end

							table23.ClearClone = function(argument)
								local value114 = table23.Clones[argument]
								if not value114 then
									return
								end
								table23.Clones[argument] = nil

								for _, originalFireServer in value114.Connections, nil, nil do
									originalFireServer:Disconnect()
								end

								if value114.Appearance then
									local visibility = value114.Appearance.Visibility or {}

									for _, originalFireServer in visibility, nil, nil do
										originalFireServer:Disconnect()
									end

									for _, originalFireServer in value114.Appearance.Added, nil, nil do
										originalFireServer:Destroy()
									end

									for _, originalFireServer in value114.Appearance.Original, nil, nil do
										if argument.Parent and (originalFireServer.Parent == argument or originalFireServer.Parent:IsDescendantOf(argument)) then
											originalFireServer.Object.Parent = originalFireServer.Parent
										else
											originalFireServer.Object:Destroy()
										end
									end
								end
							end

							table23.ApplyClone = function(argument, argument2)
								local value114 = table23.Clones[argument]
								local originalFireServer = value109 and table23.Sources[value109]
								local condition19 = not value114 or not table20.AvatarEnabled or not originalFireServer or not argument2 and value114.ID == value109 or argument:GetAttribute("IsEncryptedClone") ~= true

								if not condition19 then
									local name = localPlayer.Name
									condition19 = argument:GetAttribute("EncryptedCloneOwner") ~= name
								end

								if condition19 then
									return
								end
								local humanoid = argument:FindFirstChildOfClass("Humanoid")
								if not humanoid or humanoid.RigType ~= Enum.HumanoidRigType.R6 or not argument:FindFirstChild("Head") then
									return
								end

								if value114.Appearance then
									for _, closureFactory in value114.Appearance.Added, nil, nil do
										closureFactory:Destroy()
									end

									table.clear(value114.Appearance.Added)
								end

								value114.Appearance = table23.StoreAppearance(argument, value114.Appearance)
								value114.ID = value109

								if not pcall(table23.CopyAppearance, originalFireServer, argument, humanoid, value114.Appearance) then
									table23.ClearClone(argument)
								end
							end

							table23.WatchClone = function(argument)
								if not table20.AvatarEnabled or not argument:IsA("Model") or argument == localPlayer.Character or table23.Clones[argument] then
									return
								end
								local table26 = { Connections = {} }
								table23.Clones[argument] = table26

								local function valueFunction73()
									table23.ApplyClone(argument)
								end

								local function unreconstructedFunction74()
									local pending = table26.Pending

									if not pending then
										local name = localPlayer.Name
										pending = argument:GetAttribute("EncryptedCloneOwner") ~= name
									end

									if pending then
										return
									end
									table26.Pending = true

									task.defer(function()
										table26.Pending = false

										if table23.Clones[argument] == table26 then
											table23.ApplyClone(argument, uiConstants[200])
										end
									end)
								end

								table26.Connections.Owner = argument:GetAttributeChangedSignal("EncryptedCloneOwner"):Connect(valueFunction73)
								table26.Connections.Clone = argument:GetAttributeChangedSignal("IsEncryptedClone"):Connect(valueFunction73)

								table26.Connections.Loaded = argument.DescendantAdded:Connect(function(descendant)
									local condition19 = descendant.Parent == argument
									local isHumanoid

									if condition19 then
										isHumanoid = table23.IsBodyAppearance(descendant) or descendant:IsA("Humanoid")
									else
										isHumanoid = condition19
									end

									if isHumanoid or descendant.Parent == argument:FindFirstChild("Head") and table23.IsHeadAppearance(descendant) then
										if not table26.Appearance or not table.find(table26.Appearance.Added, descendant) then
											unreconstructedFunction74()
										end
									end
								end)

								local humanoid = argument:FindFirstChildOfClass("Humanoid")

								if humanoid then
									table26.Connections.Description = humanoid.ApplyDescriptionFinished:Connect(unreconstructedFunction74)
								end

								valueFunction73()
							end

							table23.Bind = function()
								updatePing("Avatar")
								table23.BindRun = table23.BindRun + 1
								local bindRun = table23.BindRun
								if not table20.AvatarEnabled and not table20.KHEnabled then
									return
								end
								local avatar = {}

								local function valueFunction73(character)
									if bindRun ~= table23.BindRun or character ~= localPlayer.Character or not table23.IsAppearanceReady(character) then
										return
									end

									if table20.AvatarEnabled then
										if not remoteAction or remoteAction.Character ~= character or character:GetAttribute("flytemarker1") ~= value109 then
											table23.Reconcile(character)
										end
									elseif table20.KHEnabled and (not signal or signal.Character ~= character) then
										table23.ApplyKH(character)
									end
								end

								local function unreconstructedFunction74(character)
									if avatar.Appearance then
										avatar.Appearance:Disconnect()
									end

									avatar.Appearance = character:GetAttributeChangedSignal("AppearanceLoaded"):Connect(function()
										if character:GetAttribute("AppearanceLoaded") == true then
											valueFunction73(character)
										end
									end)

									valueFunction73(character)
								end

								avatar.Character = localPlayer.CharacterAdded:Connect(unreconstructedFunction74)
								avatar.Loaded = localPlayer.CharacterAppearanceLoaded:Connect(valueFunction73)
								avatar.Alive = alive.ChildAdded:Connect(valueFunction73)

								if table20.AvatarEnabled then
									avatar.CloneAdded = alive.ChildAdded:Connect(table23.WatchClone)
									avatar.CloneRemoved = alive.ChildRemoved:Connect(table23.ClearClone)

									for _, value114 in alive:GetChildren() do
										table23.WatchClone(value114)
									end
								else
									for key in table23.Clones, nil, nil do
										table23.ClearClone(key)
									end
								end

								flyteBBState.Connections.Avatar = avatar

								if localPlayer.Character then
									unreconstructedFunction74(localPlayer.Character)
								end
							end

							table23.Toggle = function(avatarEnabled)
								table20.AvatarEnabled = avatarEnabled
								remoteEvent += uiConstants[18]
								table23.PendingUser = nil

								if avatarEnabled then
									local avatarChangerInput = table24 and table24.textboxes and table24.textboxes.Avatar_Changer_Input

									if avatarChangerInput and avatarChangerInput.textbox then
										table20.AvatarUser = avatarChangerInput.textbox.Text
									end

									table23.Bind()
									task.spawn(table23.Apply)
									return
								end

								table23.Bind()
								table23.RestoreImages()
								local character = localPlayer.Character

								if character then
									table23.RestoreAppearance(character)

									if table20.KHEnabled then
										table23.ApplyKH(character)
									end
								else
									table23.DiscardKH()
									table23.DiscardAppearance()
								end
							end

							table23.ToggleKH = function(khEnabled)
								table20.KHEnabled = khEnabled
								table23.Bind()
								local character = localPlayer.Character
								if not character then
									table23.DiscardKH()
									return
								end

								if khEnabled then
									if table23.IsAppearanceReady(character) and (not signal or signal.Character ~= character) then
										table23.ApplyKH(character)
									end
								else
									table23.RestoreKH(character)
								end

								if not (n24 <= 4729) then
									return
								end

								while true do
								end
							end

							table23.Destroy = function()
								remoteEvent += uiConstants[18]
								table23.PendingUser = nil
								table23.BindRun = table23.BindRun + uiConstants[18]
								updatePing("Avatar")
								table23.RestoreImages()

								for key in table23.Clones, nil, nil do
									table23.ClearClone(key)
								end

								local character = localPlayer.Character

								if character then
									if n25 < 6615 then
										while true do
										end
									else
										table23.RestoreAppearance(character)
									end
								else
									table23.DiscardKH()
									table23.DiscardAppearance()
								end

								table.clear(table23.Sources)

								if folder.Parent then
									folder:Destroy()
								end
							end
						end

						table25.LoadAvatar()

						valueFunction43({
							AbilityESPEnabled = false,
							AbilityESPShowNames = false,
							AbilityESPIconSize = 34,
							AbilityESPTextSize = uiConstants[11],
						})

						table25.Visuals = {
							AbilityIcons = require(replicatedStorage.Shared.AbilityIcons),
							Abilities = require(replicatedStorage.Shared.Abilities),
							AbilityAnimations = {},
							UseBall2 = require(replicatedStorage.Shared.UseBall2),
						}

						table25.Visuals.AbilityData = table25.Visuals.Abilities.All or {}
						table25.Visuals.FuryTimers = {}

						table25.Visuals.ClearFuryTimer = function(argument)
							local value109 = table25.Visuals.FuryTimers[argument]
							if not value109 then
								return
							end
							table25.Visuals.FuryTimers[argument] = nil
							if not condition2 then
								return
							end

							if value109.Tween then
								value109.Tween:Cancel()
							end

							value109.Gui:Destroy()
						end

						table25.Visuals.UpdateFuryTimer = function(argument, argument2, argument3)
							local text5 = tostring(argument)
							if not table20.AbilityESPEnabled or type(argument2) ~= "number" or argument2 <= 0 then
								table25.Visuals.ClearFuryTimer(text5)
								return
							end
							local value109 = nil

							for _, value110 in workspace.Balls:GetChildren() do
								if value110.Name == text5 and not value110:GetAttribute("realBall") then
									value109 = value110
									break
								else
									value109 = nil
								end
							end

							local furyTimer = localPlayer.PlayerGui:FindFirstChild("FuryTimer")
							if not value109 or not furyTimer then
								return
							end
							local table26 = table25.Visuals.FuryTimers[text5]

							if table26 and table26.Gui.Parent ~= value109 then
								table25.Visuals.ClearFuryTimer(text5)
								table26 = nil
							end

							if not table26 then
								local billboardGui = Instance.new("BillboardGui")
								billboardGui.Name = "FuryCharge"
								local n33 = math.max(value109.Size.X, value109.Size.Y, value109.Size.Z) * 2.5
								billboardGui.Size = UDim2.fromScale(n33, n33 * 32 / 280)
								billboardGui.StudsOffset = Vector3.new(0, -value109.Size.Y / 2 - uiConstants[81], uiConstants[33])
								billboardGui.ZIndexBehavior = furyTimer.ZIndexBehavior
								billboardGui.AlwaysOnTop = true
								billboardGui.ClipsDescendants = uiConstants[101]
								billboardGui.Adornee = value109
								local instance = Instance.new(uiConstants[170])
								instance.BackgroundTransparency = 1
								instance.AnchorPoint = Vector2.new(0.5, 0.5)
								instance.Position = UDim2.fromScale(0.5, 0.5)
								instance.Size = UDim2.fromScale(1, 1)
								local uiSizeConstraint = Instance.new("UISizeConstraint")
								uiSizeConstraint.MinSize = Vector2.new(220, 25.142857142857142)
								uiSizeConstraint.MaxSize = Vector2.new(240, 27.428571428571427)
								uiSizeConstraint.Parent = instance
								instance.Parent = billboardGui
								local clone = furyTimer.Selection.ProgressBar:Clone()
								clone.Size = UDim2.fromScale(0.88, 0.1890625)
								clone.Position = UDim2.fromScale(0.55, 0.5)
								clone.AnchorPoint = Vector2.new(0.5, 0.5)
								clone.UIStroke.Thickness = 1
								clone.Parent = instance
								billboardGui.Parent = value109
								table26 = { Gui = billboardGui, Fill = clone.Fill }
								table25.Visuals.FuryTimers[text5] = table26
							end

							local tween = table26.Tween
							table26.Tween = nil

							if tween then
								tween:Cancel()
							end

							table26.Fill.Size = UDim2.fromScale(math.clamp(argument2 / (argument3 or argument2), 0, 1), 1)
							local tween2 = tweenService:Create(table26.Fill, TweenInfo.new(argument2, Enum.EasingStyle.Linear), { Size = UDim2.fromScale(uiConstants[33], uiConstants[18]) })
							table26.Tween = tween2

							tween2.Completed:Once(function()
								if table25.Visuals.FuryTimers[text5] == table26 and table26.Tween == tween2 then
									table25.Visuals.ClearFuryTimer(text5)
								end
							end)

							tween2:Play()
							return uiConstants[200]
						end

						table25.Visuals.ClearFury = function(argument)
							if not argument then
								return
							end

							if argument.TimerId then
								table25.Visuals.ClearFuryTimer(argument.TimerId)
								argument.TimerId = nil
							end

							if argument.ScaleTween then
								argument.ScaleTween:Cancel()
								argument.ScaleTween = nil
							end

							if argument.PositionTween then
								argument.PositionTween:Cancel()
								argument.PositionTween = nil
							end

							if argument.Counter then
								argument.Counter:Destroy()
								argument.Counter = nil
							end
						end

						table25.Visuals.UpdateFuryCount = function(parent, argument)
							if argument.Counter and argument.Counter.Parent ~= parent then
								table25.Visuals.ClearFury(argument)
							end

							if argument.TimerId and argument.TimerId ~= parent.Name then
								table25.Visuals.ClearFuryTimer(argument.TimerId)
							end

							if table25.Visuals.UpdateFuryTimer(parent.Name, 0.5) then
								argument.TimerId = parent.Name
							end

							local comboCounter = parent:FindFirstChild("ComboCounter")
							if comboCounter and comboCounter ~= argument.Counter then
								return
							end
							local counter = argument.Counter

							if not counter then
								counter = replicatedStorage.Assets.ComboCounter:Clone()
								counter.Parent = parent
								argument.Counter = counter
							end

							local textLabel = counter.TextLabel
							local uiScale = textLabel.UIScale
							uiScale.Scale = 1.2
							textLabel.Text = tostring(argument.Uses)
							local value109 = uiConstants[18]
							textLabel.TextColor3 = Color3.new(uiConstants[18], uiConstants[18], 1):Lerp(Color3.fromHSV((uiConstants[18] - math.min(argument.Uses / 35, 1)) * 0.166666, 1, value109), math.min(argument.Uses / 5, 1))
							counter.StudsOffset = Vector3.new(0, 4, 0)

							if argument.ScaleTween then
								argument.ScaleTween:Cancel()
								argument.PositionTween:Cancel()
							end

							argument.ScaleTween = tweenService:Create(uiScale, TweenInfo.new(0.33333333333333331, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { Scale = 0.6 })
							argument.PositionTween = tweenService:Create(counter, TweenInfo.new(0.66666666666666663, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), { StudsOffset = Vector3.new(0, uiConstants[61], 0) })
							argument.ScaleTween:Play()
							argument.PositionTween:Play()
						end

						table25.Visuals.GetInfo = function(argument, argument2, argument3)
							local attribute = argument:GetAttribute("CurrentlyEquippedAbility") or argument:GetAttribute("EquippedAbility") or argument:GetAttribute(uiConstants[2]) or argument:GetAttribute("CurrentAbility") or argument2:GetAttribute("CurrentlyEquippedAbility") or argument2:GetAttribute("EquippedAbility") or argument2:GetAttribute("Ability") or argument2:GetAttribute("CurrentAbility")

							if not attribute then
								local abilities = argument2:FindFirstChild("Abilities")

								if abilities then
									for _, value109 in abilities:GetChildren() do
										if value109:IsA("LocalScript") and value109.Enabled then
											attribute = value109.Name
											break
										end
									end
								end
							end

							if not attribute then
								return nil
							end
							local n33 = uiConstants[33]
							local upgrades = argument:FindFirstChild("Upgrades")
							upgrades = upgrades and upgrades:FindFirstChild(attribute)

							if upgrades and upgrades:IsA("ValueBase") then
								n33 = tonumber(upgrades.Value) or 0
							end

							local num = tonumber(argument2:GetAttribute("AbilityUpgrade"))
							local n34

							if num then
								n34 = math.max(n33, num)
							else
								n34 = n33
							end

							local table26 = table25.Visuals.AbilityData[attribute] or {}
							local iconId = table25.Visuals.AbilityIcons[attribute] or table26.iconId

							if iconId == "rbxassetid://0" then
								iconId = nil
							end

							local value109 = flyteBBState.AbilityUses[argument]
							local n35 = math.max(tonumber(argument:GetAttribute("AbilityDurationStart")) or 0, tonumber(argument2:GetAttribute("AbilityDurationStart")) or uiConstants[33])
							local n36 = math.max(tonumber(argument:GetAttribute("AbilityDuration")) or 0, tonumber(argument2:GetAttribute("AbilityDuration")) or uiConstants[33])
							local n37 = n35 + n36
							local condition19 = n35 > 0 and n36 > uiConstants[33]

							if condition19 then
								condition19 = n37 >= (value109 and value109.Started or 0)
							end

							if condition19 then
								condition19 = (argument3 or workspace:GetServerTimeNow()) >= n37
							end

							local condition20 = value109 and value109.Ability == "Slashes of Fury"

							if condition20 then
								condition20 = value109.Character ~= argument2 or attribute ~= "Slashes of Fury" or not argument2:GetAttribute("FuryCatch") or condition19
							end

							if condition20 then
								table25.Visuals.ClearFury(value109)
								flyteBBState.AbilityUses[argument] = nil
								value109 = nil
							elseif value109 and value109.Recoveries and (value109.Character ~= argument2 or value109.Ability ~= attribute) then
								flyteBBState.AbilityUses[argument] = nil
								value109 = nil
							end

							if table20.AbilityESPEnabled and attribute == "Slashes of Fury" and argument2:GetAttribute("FuryCatch") and not condition19 then
								local serverTimeNow = argument3 or workspace:GetServerTimeNow()

								if not value109 then
									local table27 = { Ability = attribute, Character = argument2, Uses = 0, Started = serverTimeNow }
									flyteBBState.AbilityUses[argument] = table27
									value109 = table27
								end

								if not value109.TimerId and value109.Uses == 0 then
									local n38 = 3.5 - serverTimeNow - value109.Started

									if uiConstants[33] < n38 then
										for _, value110 in workspace.Balls:GetChildren() do
											if value110:GetAttribute("FuryCatch" .. argument.Name) then
												if table25.Visuals.UpdateFuryTimer(value110.Name, n38, 3.5) then
													value109.TimerId = value110.Name
												end

												break
											end
										end
									end
								end
							end

							local maximum, text5

							if attribute == "Guardian Angel" then
								maximum = tonumber(argument2:GetAttribute("GuardianAngelParriesLeft"))

								if maximum == nil then
									maximum = math.min(n34, 1) + 1
								end

								text5 = "lives"
							else
								maximum = table26.uses

								if attribute == uiConstants[160] then
									maximum = workspace:GetAttribute("GoldenAbilities") and 999 or n34 + 2
								elseif attribute == "Dribble" then
									maximum = n34 + 2
								end

								local value110 = nil

								if maximum then
									if value109 and value109.Ability == attribute and value109.Recoveries then
										argument3 = argument3 or workspace:GetServerTimeNow()

										for i = #value109.Recoveries, 1, -1 do
											if value109.Recoveries[i] <= argument3 then
												table.remove(value109.Recoveries, i)
											end
										end

										value109.Maximum = maximum
										value109.Expiration = value109.Recoveries[uiConstants[18]]
										maximum = math.max(maximum - #value109.Recoveries, uiConstants[33])
										value109.Uses = maximum
									end
								else
									maximum = value110
								end

								text5 = "uses"
							end

							return attribute, n34 + 1, iconId, table26.isPassive or attribute == "Guardian Angel", maximum, text5, n35, n36
						end

						table25.Visuals.FindCharacter = function(argument, argument2)
							if not argument or not argument2 then
								return nil
							end
							local name = argument2.Name
							local displayName = argument2.DisplayName
							local value109 = argument:FindFirstChild(name, true) or argument:FindFirstChild(displayName, true)
							if value109 and value109:IsA("Model") then
								return value109
							end

							for _, value110 in argument:GetChildren() do
								if value110:IsA("Model") then
									local attribute = value110:GetAttribute("UserId") or value110:GetAttribute("UserID") or value110:GetAttribute("User")
									local humanoid = value110:FindFirstChildOfClass("Humanoid")
									if attribute == argument2.UserId or tostring(attribute) == tostring(argument2.UserId) or value110.Name == name or value110.Name == displayName or humanoid and (humanoid.DisplayName == displayName or humanoid.DisplayName == name) then
										return value110
									end
								end
							end

							return nil
						end

						table25.Visuals.GetESPCharacter = function(argument)
							if not argument then
								return nil
							end
							local character = argument.Character
							if character and character.Parent then
								return character
							end
							local value109 = table25.Visuals.FindCharacter(workspace:FindFirstChild("Alive"), argument)
							if value109 then
								return value109
							end
							local value110 = table25.Visuals.FindCharacter(workspace:FindFirstChild("Dead"), argument)
							if value110 then
								return value110
							end
							return nil
						end

						table25.Visuals.GetESPAdornee = function(argument)
							if not argument then
								return nil
							end
							local head = argument:FindFirstChild("Head") or argument:FindFirstChild("HumanoidRootPart")
							return head and head:IsA(uiConstants[53]) and head or argument.PrimaryPart or argument:FindFirstChildWhichIsA("BasePart")
						end

						table25.Visuals.DestroyLabel = function(argument)
							if not argument then
								return
							end

							for _, value109 in argument.Connections, nil, nil do
								value109:Disconnect()
							end

							if argument.DurationTween then
								argument.DurationTween:Cancel()
							end

							if argument.DurationProgressTween then
								argument.DurationProgressTween:Cancel()
							end

							if argument.CooldownTextTween then
								argument.CooldownTextTween:Cancel()
							end

							if argument.Billboard then
								argument.Billboard:Destroy()
							end
						end

						table25.Visuals.UpdateSize = function(argument)
							if not argument or not argument.Billboard then
								return
							end
							local n33 = math.clamp(tonumber(table20.AbilityESPIconSize) or 34, 20, 60)
							local textSize = math.clamp(tonumber(table20.AbilityESPTextSize) or 13, uiConstants[35], uiConstants[108])
							local textSize2 = math.max(textSize - 1, 8)
							argument.Billboard.Size = UDim2.new(0, 230, uiConstants[33], n33 + 64)
							argument.IconHolder.Size = UDim2.new(0, n33, 0, n33)
							argument.IconHolder.Position = UDim2.new(0.5, -(n33 / 2 + 3), 0, uiConstants[46])
							argument.DurationHolder.Size = UDim2.new(0, 58, 0, n33)
							argument.DurationHolder.Position = UDim2.new(0.5, n33 / uiConstants[70] - 1, 0, 14)
							argument.DurationText.Size = UDim2.new(uiConstants[33], 48, uiConstants[33], textSize + 2)
							argument.DurationText.Position = UDim2.new(uiConstants[33], 9, uiConstants[81], -(textSize + 2) / uiConstants[70])
							argument.DurationText.TextSize = textSize
							argument.Uses.Size = UDim2.new(uiConstants[33], 64, 0, textSize2 + 2)
							argument.Uses.Position = UDim2.new(uiConstants[81], n33 / 2 - 3, 0, uiConstants[49])
							argument.Uses.TextSize = textSize2
							argument.CooldownText.Size = UDim2.new(0, 64, 0, textSize + 2)
							argument.CooldownText.TextSize = textSize
							argument.Label.Size = UDim2.new(1, -18, 0, textSize + uiConstants[174])
							argument.Label.Position = UDim2.new(uiConstants[33], 9, 0, n33 + 19)
							argument.Label.TextSize = textSize + uiConstants[70]
							argument.PlayerName.Size = UDim2.new(1, -18, 0, textSize2 + 4)
							argument.PlayerName.Position = UDim2.new(0, 9, 0, n33 + uiConstants[80])
							argument.PlayerName.TextSize = textSize2
						end

						table25.Visuals.UpdateSizes = function()
							for _, value109 in flyteBBState.ESPLabels, nil, nil do
								table25.Visuals.UpdateSize(value109)
							end
						end

						table25.Visuals.AddLabel = function(argument, argument2)
							if not (table20.AbilityESPEnabled or table20.AbilityESPShowNames) or not argument or argument == localPlayer then
								return
							end

							local function valueFunction73(argument3)
								if not (table20.AbilityESPEnabled or table20.AbilityESPShowNames) or not argument3 then
									return
								end
								local value109 = table25.Visuals.GetESPAdornee(argument3)
								if not value109 then
									return
								end
								local value110 = flyteBBState.ESPLabels[argument]

								if value110 then
									table25.Visuals.DestroyLabel(value110)
								end

								for _, remoteEvent in argument3:GetDescendants() do
									if remoteEvent.Name == "Ability_ESP" and remoteEvent:IsA("BillboardGui") then
										remoteEvent:Destroy()
									end
								end

								local billboardGui = Instance.new("BillboardGui")
								billboardGui.Name = "Ability_ESP"
								billboardGui.Adornee = value109
								billboardGui.Size = UDim2.new(uiConstants[33], 230, 0, 98)
								billboardGui.StudsOffset = Vector3.new(0, 4.15, 0)
								billboardGui.AlwaysOnTop = true
								billboardGui.MaxDistance = 500
								billboardGui.Parent = value109
								local instance = Instance.new(uiConstants[170])
								instance.Size = UDim2.new(1, 0, 1, 0)
								instance.BackgroundTransparency = 1
								instance.Parent = billboardGui
								local frame = Instance.new("Frame")
								frame.Size = UDim2.new(0, uiConstants[97], uiConstants[33], uiConstants[97])
								frame.Position = UDim2.new(0.5, -20, 0, 14)
								frame.BackgroundTransparency = 1
								frame.ClipsDescendants = uiConstants[200]
								frame.Parent = instance
								local imageLabel = Instance.new("ImageLabel")
								imageLabel.Size = UDim2.new(1, 0, 1, 0)
								imageLabel.BackgroundTransparency = 1
								imageLabel.ScaleType = Enum.ScaleType.Fit
								imageLabel.ZIndex = 1
								imageLabel.Parent = frame
								local frame2 = Instance.new("Frame")
								frame2.AnchorPoint = Vector2.new(0, 1)
								frame2.Position = UDim2.fromScale(0, 1)
								frame2.Size = UDim2.new(1, 0, uiConstants[18], 0)
								frame2.BackgroundColor3 = Color3.fromRGB(75, 75, 82)
								frame2.BackgroundTransparency = uiConstants[136]
								frame2.BorderSizePixel = 0
								frame2.Visible = false
								frame2.ZIndex = 3
								frame2.Parent = frame
								local uiGradient = Instance.new("UIGradient")
								local color = Color3.fromRGB
								local remoteEvent = uiConstants[195]
								uiGradient.Color = ColorSequence.new(Color3.fromRGB(120, 120, 128), color(45, remoteEvent, 52))
								uiGradient.Rotation = 90
								uiGradient.Parent = frame2
								local canvasGroup = Instance.new("CanvasGroup")
								canvasGroup.Size = UDim2.new(uiConstants[33], 58, 0, uiConstants[97])
								canvasGroup.Position = UDim2.new(0.5, 16, 0, 14)
								canvasGroup.BackgroundTransparency = 1
								canvasGroup.Visible = false
								canvasGroup.ZIndex = 4
								canvasGroup.Parent = instance
								local instance2 = Instance.new(uiConstants[170])
								instance2.Size = UDim2.new(0, 5, 1, 0)
								instance2.BackgroundColor3 = Color3.fromRGB(18, 18, 24)
								instance2.BackgroundTransparency = uiConstants[110]
								instance2.BorderSizePixel = 0
								instance2.ClipsDescendants = uiConstants[200]
								instance2.ZIndex = 4
								instance2.Parent = canvasGroup
								local uiCorner = Instance.new("UICorner")
								uiCorner.CornerRadius = UDim.new(1, uiConstants[33])
								uiCorner.Parent = instance2
								local frame3 = Instance.new("Frame")
								frame3.AnchorPoint = Vector2.new(0, 1)
								frame3.Size = UDim2.new(uiConstants[18], 0, 1, uiConstants[33])
								frame3.Position = UDim2.new(uiConstants[33], 0, 1, 0)
								frame3.BackgroundColor3 = Color3.fromRGB(20, 228, 31)
								frame3.BorderSizePixel = uiConstants[33]
								frame3.ZIndex = 5
								frame3.Parent = instance2
								local uiGradient2 = Instance.new("UIGradient")
								local color2 = Color3.fromRGB
								uiGradient2.Color = ColorSequence.new(Color3.fromRGB(120, 255, uiConstants[67]), color2(0, 160, 20))
								uiGradient2.Rotation = 90
								uiGradient2.Parent = frame3
								local textLabel = Instance.new("TextLabel")
								textLabel.Size = UDim2.new(0, 48, uiConstants[33], 14)
								textLabel.Position = UDim2.new(uiConstants[33], 9, 0.5, -7)
								textLabel.BackgroundTransparency = 1
								textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
								textLabel.TextStrokeColor3 = Color3.fromRGB(uiConstants[33], 0, 0)
								textLabel.TextStrokeTransparency = 0.05
								textLabel.TextSize = 13
								textLabel.Font = Enum.Font.GothamBold
								textLabel.TextXAlignment = Enum.TextXAlignment.Left
								textLabel.ZIndex = 6
								textLabel.Parent = canvasGroup
								local textLabel2 = Instance.new("TextLabel")
								textLabel2.AnchorPoint = Vector2.new(uiConstants[18], 0)
								textLabel2.Size = UDim2.new(0, 48, uiConstants[33], 13)
								textLabel2.Position = UDim2.new(0.5, 14, 0, 12)
								textLabel2.BackgroundTransparency = 1
								textLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
								textLabel2.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
								textLabel2.TextStrokeTransparency = 0.05
								textLabel2.TextSize = 12
								textLabel2.Font = Enum.Font.GothamBold
								textLabel2.TextXAlignment = Enum.TextXAlignment.Right
								textLabel2.Visible = uiConstants[101]
								textLabel2.ZIndex = 6
								textLabel2.Parent = instance
								local textLabel3 = Instance.new("TextLabel")
								textLabel3.AnchorPoint = Vector2.new(0.5, 0)
								textLabel3.Size = UDim2.new(uiConstants[33], 48, 0, 14)
								textLabel3.Position = UDim2.new(0.5, -3, 0, 0)
								textLabel3.BackgroundTransparency = 1
								textLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
								textLabel3.TextTransparency = 1
								textLabel3.TextStrokeColor3 = Color3.fromRGB(uiConstants[33], 0, 0)
								textLabel3.TextStrokeTransparency = 1
								textLabel3.TextSize = 13
								textLabel3.Font = Enum.Font.GothamBold
								textLabel3.TextXAlignment = Enum.TextXAlignment.Center
								textLabel3.Visible = false
								textLabel3.ZIndex = 6
								textLabel3.Parent = instance
								local textLabel4 = Instance.new("TextLabel")
								textLabel4.Size = UDim2.new(1, -uiConstants[186], 0, uiConstants[108])
								textLabel4.Position = UDim2.new(0, 9, uiConstants[33], 53)
								textLabel4.BackgroundTransparency = uiConstants[18]
								textLabel4.TextColor3 = Color3.fromRGB(255, 255, 255)
								textLabel4.TextStrokeColor3 = Color3.fromRGB(0, uiConstants[33], uiConstants[33])
								textLabel4.TextStrokeTransparency = 0.05
								textLabel4.TextScaled = false
								textLabel4.TextSize = 15
								textLabel4.Font = Enum.Font.GothamBold
								textLabel4.Text = ""
								textLabel4.TextXAlignment = Enum.TextXAlignment.Center
								textLabel4.TextYAlignment = Enum.TextYAlignment.Center
								textLabel4.Parent = instance
								local textLabel5 = Instance.new("TextLabel")
								textLabel5.Size = UDim2.new(uiConstants[18], -18, 0, 16)
								textLabel5.Position = UDim2.new(0, uiConstants[41], 0, 72)
								textLabel5.BackgroundTransparency = 1
								textLabel5.TextColor3 = Color3.fromRGB(225, 225, 230)
								textLabel5.TextStrokeColor3 = Color3.fromRGB(uiConstants[33], 0, 0)
								textLabel5.TextStrokeTransparency = 0.1
								textLabel5.TextSize = uiConstants[49]
								textLabel5.Font = Enum.Font.GothamMedium
								textLabel5.Text = argument.DisplayName
								textLabel5.TextXAlignment = Enum.TextXAlignment.Center
								textLabel5.TextYAlignment = Enum.TextYAlignment.Center
								textLabel5.Visible = table20.AbilityESPShowNames
								textLabel5.Parent = instance

								local table26 = {
									Character = argument3,
									Connections = {},
									Billboard = billboardGui,
									Label = textLabel4,
									IconHolder = frame,
									Icon = imageLabel,
									Cooldown = frame2,
									CooldownText = textLabel3,
									Duration = frame3,
									DurationHolder = canvasGroup,
									DurationText = textLabel,
									Uses = textLabel2,
									PlayerName = textLabel5,
								}

								table25.Visuals.UpdateSize(table26)
								flyteBBState.ESPLabels[argument] = table26

								table26.Connections[#table26.Connections + 1] = argument3:GetAttributeChangedSignal("FuryCatch"):Connect(function()
									if table20.AbilityESPEnabled and flyteBBState.ESPLabels[argument] == table26 then
										table25.Visuals.GetInfo(argument, argument3)
									end
								end)

								table26.Connections[#table26.Connections + 1] = argument3:GetAttributeChangedSignal("AbilityActive"):Connect(function()
									if table25.Visuals.UseBall2() or argument3:GetAttribute("AbilityActive") ~= true or argument3:GetAttribute("Ability") ~= "Dribble" then
										return
									end
									local remoteAction, signal = table25.Visuals.GetInfo(argument, argument3)

									if remoteAction == uiConstants[156] then
										table25.Visuals.TrackCooldown(argument3, remoteAction, signal)
									end
								end)

								task.spawn(function()
									local humanoid = argument3:FindFirstChildOfClass("Humanoid") or argument3:WaitForChild("Humanoid", 5)
									local animator

									if humanoid then
										animator = humanoid:FindFirstChildOfClass("Animator") or humanoid:WaitForChild("Animator", 5)
									else
										animator = humanoid
									end

									if not animator or flyteBBState.ESPLabels[argument] ~= table26 then
										return
									end

									table26.Connections[#table26.Connections + 1] = animator.AnimationPlayed:Connect(function(argument4)
										if table25.Visuals.UseBall2() then
											return
										end
										local remoteAction, signal = table25.Visuals.GetInfo(argument, argument3)
										local value114 = remoteAction and flyteBBState.AbilityCooldowns[argument]
										if not remoteAction or remoteAction == "Dribble" or value114 and value114.Ability == remoteAction and value114.Ends > workspace:GetServerTimeNow() or not table25.Visuals.IsAbilityAnimation(remoteAction, argument4) then
											return
										end
										table25.Visuals.TrackCooldown(argument3, remoteAction, signal)
									end)
								end)
							end

							local value109 = flyteBBState.ESPConnections[argument]

							if value109 then
								value109:Disconnect()
							end

							local value110 = argument2 or table25.Visuals.GetESPCharacter(argument)

							if value110 then
								valueFunction73(value110)
							end

							flyteBBState.ESPConnections[argument] = argument.CharacterAdded:Connect(function(character)
								if table20.AbilityESPEnabled or table20.AbilityESPShowNames then
									valueFunction73(character)
								end
							end)
						end

						table25.Visuals.ClearESP = function()
							for key in table25.Visuals.FuryTimers, nil, nil do
								table25.Visuals.ClearFuryTimer(key)
							end

							for _, value109 in flyteBBState.ESPLabels, nil, nil do
								table25.Visuals.DestroyLabel(value109)
							end

							table.clear(flyteBBState.ESPLabels)

							for _, value109 in flyteBBState.ESPConnections, nil, nil do
								if value109 then
									value109:Disconnect()
								end
							end

							table.clear(flyteBBState.ESPConnections)

							for key, value109 in flyteBBState.AbilityUses, nil, nil do
								if value109.Ability == "Slashes of Fury" then
									table25.Visuals.ClearFury(value109)
									flyteBBState.AbilityUses[key] = nil
								end
							end

							local value109 = workspace
							local findFirstChild = value109.FindFirstChild

							for _, value110 in { workspace:FindFirstChild("Alive"), findFirstChild(value109, "Dead") }, nil, nil do
								if value110 then
									for _, remoteEvent in value110:GetDescendants() do
										if remoteEvent.Name == "Ability_ESP" and remoteEvent:IsA("BillboardGui") then
											remoteEvent:Destroy()
										end
									end
								end
							end

							for _, value110 in playersService:GetPlayers() do
								local character = value110.Character

								if character then
									for _, remoteEvent in character:GetDescendants() do
										if remoteEvent.Name == "Ability_ESP" and remoteEvent:IsA("BillboardGui") then
											remoteEvent:Destroy()
										end
									end
								end
							end
						end

						table25.Visuals.Toggle = function()
							if not table20.AbilityESPEnabled and not table20.AbilityESPShowNames then
								table25.Visuals.ClearESP()
								return
							end

							if not table20.AbilityESPEnabled then
								for key in table25.Visuals.FuryTimers, nil, nil do
									table25.Visuals.ClearFuryTimer(key)
								end

								for key, value109 in flyteBBState.AbilityUses, nil, nil do
									if value109.Ability == "Slashes of Fury" then
										table25.Visuals.ClearFury(value109)
										flyteBBState.AbilityUses[key] = nil
									end
								end
							end

							table25.Visuals.RefreshESP()
						end

						table25.Visuals.HideDuration = function(argument)
							if not argument.DurationHolder.Visible or argument.DurationTween then
								return
							end
							local tween = tweenService:Create(argument.DurationHolder, TweenInfo.new(uiConstants[110]), { GroupTransparency = 1 })
							argument.DurationTween = tween

							tween.Completed:Once(function(playbackState)
								if playbackState == Enum.PlaybackState.Completed and argument.DurationTween == tween then
									argument.DurationHolder.Visible = uiConstants[101]
									argument.DurationHolder.GroupTransparency = uiConstants[33]
									argument.Duration.Position = UDim2.new(0, uiConstants[33], 1, 0)
									argument.Duration.Size = UDim2.new(1, 0, 1, 0)
									argument.DurationTween = nil
								end
							end)

							tween:Play()
						end

						table25.Visuals.SetCooldownText = function(argument, cooldownTextShown)
							if argument.CooldownTextShown == cooldownTextShown then
								return
							end
							argument.CooldownTextShown = cooldownTextShown

							if argument.CooldownTextTween then
								argument.CooldownTextTween:Cancel()
							end

							if cooldownTextShown then
								argument.CooldownText.Visible = true
							end

							local tween = tweenService:Create(argument.CooldownText, TweenInfo.new(0.15), { TextTransparency = cooldownTextShown and uiConstants[33] or 1, TextStrokeTransparency = cooldownTextShown and 0.05 or 1 })
							argument.CooldownTextTween = tween

							tween.Completed:Once(function(playbackState)
								if playbackState ~= Enum.PlaybackState.Completed or argument.CooldownTextTween ~= tween then
									return
								end

								if not cooldownTextShown then
									argument.CooldownText.Visible = false
								end

								argument.CooldownTextTween = nil
							end)

							tween:Play()
						end

						table25.Visuals.FormatAbilityTime = function(argument)
							local value109 = uiConstants[115]
							local n33 = math.ceil(argument * 10) / value109
							return "(" .. ((n33 == math.floor(n33) and tostring(math.floor(n33)) or string.format("%.1f", n33)) .. "s") .. ")"
						end

						table25.Visuals.GetCooldownDuration = function(argument, argument2, argument3)
							local table26 = table25.Visuals.AbilityData[argument2] or {}
							local n33 = math.max((tonumber(table26.cooldown) or uiConstants[33]) - (tonumber(table26.cooldownReductionPerUpgrade) or 0) * (argument3 - 1), 0)
							local n34

							if workspace:GetAttribute("CurrentlySelectedMode") == "Fates" then
								if argument:GetAttribute("Fates_DecreasedAbilityCooldown") then
									n34 = n33 * 0.7
								elseif argument:GetAttribute("Fates_IncreasedAbilityCooldown") then
									n34 = n33 * 1.4285714285714286
								else
									n34 = n33
								end
							else
								n34 = n33
							end

							return n34
						end

						table25.Visuals.IsAbilityAnimation = function(argument, argument2)
							local animation = argument2.Animation
							animation = animation and animation.AnimationId:match("%d+")
							if not animation then
								return false
							end
							local table26 = table25.Visuals.AbilityAnimations[argument]

							if not table26 then
								local character = localPlayer.Character
								character = character and character:FindFirstChild("Abilities")
								local value109 = character and character:FindFirstChild(argument) or replicatedStorage.Shared.Abilities:FindFirstChild(argument)
								if not value109 then
									return false
								end
								table26 = {}

								for _, value110 in value109:GetDescendants() do
									if value110:IsA("Animation") then
										local match = value110.AnimationId:match("%d+")

										if match then
											table26[match] = true
										end
									end
								end

								if not next(table26) then
									return false
								end
								table25.Visuals.AbilityAnimations[argument] = table26
							end

							return table26[animation] == true
						end

						table25.Visuals.SetCooldown = function(argument, argument2, argument3, argument4)
							local serverTimeNow = workspace:GetServerTimeNow()
							local n33 = math.max(tonumber(argument:GetAttribute("CooldownExpiration")) or 0, tonumber(argument2:GetAttribute("CooldownExpiration")) or 0)
							local n34

							if argument4 > 0 then
								local n35 = math.max(tonumber(argument:GetAttribute("AbilityDurationStart")) or uiConstants[33], tonumber(argument2:GetAttribute("AbilityDurationStart")) or 0)

								if n35 <= 0 or n35 > serverTimeNow or serverTimeNow - n35 > argument4 then
									n35 = serverTimeNow
								end

								n34 = math.max(n33, n35 + argument4)
							else
								if n33 <= serverTimeNow then
									return serverTimeNow
								end
								n34 = n33
							end

							flyteBBState.AbilityCooldowns[argument] = { Ability = argument3, Duration = argument4 > 0 and argument4 or n34 - serverTimeNow, Ends = n34 }
							return serverTimeNow
						end

						table25.Visuals.TrackCooldown = function(argument, argument2, argument3)
							local playerFromCharacter = playersService:GetPlayerFromCharacter(argument)
							if not playerFromCharacter or playerFromCharacter == localPlayer or argument.Parent ~= alive then
								return
							end

							if not argument2 then
								argument2, argument3 = table25.Visuals.GetInfo(playerFromCharacter, argument)
							end

							if not argument2 then
								return
							end
							local value109 = table25.Visuals.GetCooldownDuration(playerFromCharacter, argument2, argument3)

							if argument2 == uiConstants[156] then
								table25.Detection.TrackAbilityUse(playerFromCharacter, argument, argument2, argument3 + uiConstants[18], value109)
							end

							local value110 = table25.Visuals.SetCooldown(playerFromCharacter, argument, argument2, value109)

							if argument2 == "Dash" then
								flyteBBState.AbilityActive[playerFromCharacter] = { Ability = argument2, Start = value110, Duration = uiConstants[139], Ends = value110 + uiConstants[139] }
							end
						end

						table25.Visuals.NativeNameVisible = function(argument, argument2)
							argument = argument and argument:FindFirstChildOfClass("Humanoid")
							if not argument or not argument2 or argument.DisplayDistanceType == Enum.HumanoidDisplayDistanceType.None then
								return false
							end

							if argument.DisplayDistanceType == Enum.HumanoidDisplayDistanceType.Viewer then
								argument = localPlayer.Character and localPlayer.Character:FindFirstChildOfClass("Humanoid") or argument
							end

							local nameDisplayDistance = argument.NameDisplayDistance
							return nameDisplayDistance > 0 and (currentCamera.CFrame.Position - argument2.Position).Magnitude <= nameDisplayDistance
						end

						table25.Visuals.RefreshPlayer = function(argument, argument2)
							local value109 = table25.Visuals.GetESPCharacter(argument)
							local value110 = flyteBBState.ESPLabels[argument]
							local remoteEvent = table25.Visuals.GetESPAdornee(value109)

							if not argument.Parent or not value109 or not remoteEvent then
								table25.Visuals.DestroyLabel(value110)
								flyteBBState.ESPLabels[argument] = nil
								return
							end

							if not value110 or value110.Character ~= value109 or not value110.Billboard.Parent or value110.Billboard.Adornee ~= remoteEvent then
								table25.Visuals.AddLabel(argument, value109)
								value110 = flyteBBState.ESPLabels[argument]
							end

							value110.Character = value109
							local duration2 = nil
							local uses = nil
							local remoteAction = nil
							local signal = nil
							local value114 = nil
							local start = nil
							local originalFireServer = nil
							local closureFactory = nil

							if table20.AbilityESPEnabled then
								remoteAction, originalFireServer, signal, value114, uses, closureFactory, start, duration2 = table25.Visuals.GetInfo(argument, value109, argument2)
							end

							local condition19 = value109.Parent == alive

							if not condition19 then
								flyteBBState.AbilityActive[argument] = nil
								flyteBBState.AbilityCooldowns[argument] = nil
								local fireServerHook = flyteBBState.AbilityUses[argument]

								if fireServerHook then
									if fireServerHook.Ability == "Slashes of Fury" then
										table25.Visuals.ClearFury(fireServerHook)
										flyteBBState.AbilityUses[argument] = nil
										uses = nil
									else
										fireServerHook.Uses = fireServerHook.Maximum
										uses = fireServerHook.Uses
									end
								end
							end

							local abilityESPEnabled = table20.AbilityESPEnabled and remoteAction or nil
							value110.Billboard.Enabled = abilityESPEnabled ~= nil or table20.AbilityESPShowNames
							value110.PlayerName.Text = argument.DisplayName
							value110.PlayerName.Visible = table20.AbilityESPShowNames and not table25.Visuals.NativeNameVisible(value109, value110.Billboard.Adornee)
							value110.Label.Visible = abilityESPEnabled ~= nil

							if abilityESPEnabled then
								value110.Label.Text = remoteAction .. (originalFireServer > 1 and " value" .. tostring(originalFireServer) or "")
								value110.Icon.Visible = signal ~= nil

								if signal then
									value110.Icon.Image = signal
								end

								value110.Uses.Visible = uses ~= nil

								if uses ~= nil then
									value110.Uses.Text = tostring(uses) .. " " .. (uses == 1 and (closureFactory == "lives" and "life" or "use") or closureFactory)
								end

								local fireServerHook = flyteBBState.AbilityActive[argument]

								if fireServerHook and fireServerHook.Ability == remoteAction and fireServerHook.Ends > argument2 then
									start = fireServerHook.Start
									duration2 = fireServerHook.Duration
								elseif fireServerHook then
									flyteBBState.AbilityActive[argument] = nil
								end

								local duration3 = table25.Visuals.GetCooldownDuration(argument, remoteAction, originalFireServer)
								local table26 = flyteBBState.AbilityCooldowns[argument]
								local condition20 = remoteAction == "Dribble" or remoteAction == "Dragon Spirit"
								local value118 = condition20 and flyteBBState.AbilityUses[argument]
								local expiration = condition20 and (value118 and value118.Ability == remoteAction and value118.Expiration or uiConstants[33])

								if not expiration then
									expiration = math.max(tonumber(argument:GetAttribute("CooldownExpiration")) or 0, tonumber(value109:GetAttribute("CooldownExpiration")) or 0)
								end

								if condition19 and expiration > argument2 then
									if not table26 or table26.Ability ~= remoteAction or table26.Ends < expiration then
										table26 = { Ability = remoteAction, Duration = duration3 > 0 and duration3 or expiration - argument2, Ends = expiration }
										flyteBBState.AbilityCooldowns[argument] = table26
									end
								elseif condition20 then
									flyteBBState.AbilityCooldowns[argument] = nil
									table26 = nil
								elseif not condition20 and condition19 and duration3 > uiConstants[33] and start > uiConstants[33] and value110.CooldownStart ~= start then
									value110.CooldownStart = start
									table26 = { Ability = remoteAction, Duration = duration3, Ends = start + duration3 }
									flyteBBState.AbilityCooldowns[argument] = table26
								end

								local n33 = condition19 and table26 and table26.Ability == remoteAction and math.max(table26.Ends - argument2, 0) or 0
								duration3 = table26 and table26.Duration or duration3

								if not value114 and n33 > 0 and duration3 > 0 then
									local n34 = math.max(uiConstants[18], value110.Icon.AbsoluteSize.Y * math.clamp(n33 / duration3, uiConstants[33], 1))
									value110.Cooldown.Visible = uiConstants[200]
									value110.Cooldown.Size = UDim2.new(1, uiConstants[33], 0, n34)
									value110.CooldownText.Text = table25.Visuals.FormatAbilityTime(n33)
									table25.Visuals.SetCooldownText(value110, uiConstants[200])
								else
									value110.Cooldown.Visible = uiConstants[101]
									table25.Visuals.SetCooldownText(value110, false)
								end

								local n34 = duration2 > 0 and math.clamp((argument2 - start) / duration2, 0, 1) or 1

								if condition19 and not value114 and start > 0 and n34 < 1 and remoteAction ~= "Rapture" and remoteAction ~= "Raging Deflection" and remoteAction ~= "Calming Deflection" then
									if value110.DurationTween then
										value110.DurationTween:Cancel()
										value110.DurationTween = nil
									end

									value110.DurationHolder.GroupTransparency = 0
									value110.DurationHolder.Visible = true
									value110.DurationText.Text = table25.Visuals.FormatAbilityTime(duration2 - argument2 - start)

									if value110.DurationStart ~= start or value110.DurationTime ~= duration2 then
										if value110.DurationProgressTween then
											value110.DurationProgressTween:Cancel()
										end

										value110.DurationStart = start
										value110.DurationTime = duration2
										value110.Duration.Size = UDim2.new(1, 0, 1 - n34, uiConstants[33])
										value110.DurationProgressTween = tweenService:Create(value110.Duration, TweenInfo.new(duration2 * (1 - n34), Enum.EasingStyle.Linear), { Size = UDim2.new(uiConstants[18], 0, 0, uiConstants[33]) })
										value110.DurationProgressTween:Play()
									end
								else
									if value110.DurationProgressTween then
										value110.DurationProgressTween:Cancel()
										value110.DurationProgressTween = nil
									end

									value110.DurationStart = nil
									value110.DurationTime = nil

									if value110.DurationHolder.Visible then
										if not value110.DurationTween then
											table25.Visuals.HideDuration(value110)
										end
									else
										value110.Duration.Position = UDim2.new(uiConstants[33], 0, uiConstants[18], uiConstants[33])
										value110.Duration.Size = UDim2.new(1, 0, 1, 0)
									end
								end
							else
								value110.Icon.Visible = uiConstants[101]
								value110.Uses.Visible = false
								value110.Cooldown.Visible = false
								value110.CooldownText.Visible = false
								value110.CooldownTextShown = false

								if value110.CooldownTextTween then
									value110.CooldownTextTween:Cancel()
								end

								value110.CooldownTextTween = nil

								if value110.DurationTween then
									value110.DurationTween:Cancel()
								end

								if value110.DurationProgressTween then
									value110.DurationProgressTween:Cancel()
								end

								value110.DurationTween = nil
								value110.DurationProgressTween = nil
								value110.DurationHolder.Visible = false
								value110.DurationHolder.GroupTransparency = 0
								value110.DurationStart = nil
								value110.DurationTime = nil
							end
						end

						table25.Visuals.RefreshESP = function()
							if not table20.AbilityESPEnabled and not table20.AbilityESPShowNames then
								return
							end
							local serverTimeNow = workspace:GetServerTimeNow()

							for _, value109 in playersService:GetPlayers() do
								if value109 ~= localPlayer then
									pcall(table25.Visuals.RefreshPlayer, value109, serverTimeNow)
								end
							end
						end

						table25.Visuals.RefreshLoop = function()
							updatePing("Ability ESP")
							if not table20.AbilityESPEnabled and not table20.AbilityESPShowNames then
								return
							end

							flyteBBState.Connections["Ability ESP"] = task.spawn(function()
								while table20.AbilityESPEnabled or table20.AbilityESPShowNames do
									table25.Visuals.RefreshESP()
									task.wait(uiConstants[113])
								end
							end)
						end

						table25.Visuals.ObserveCooldowns = function()
							local activateAbility = replicatedStorage.Remotes:FindFirstChild("ActivateAbility")

							if activateAbility then
								flyteBBState.Connections["Ability Cooldown"] = activateAbility.OnClientEvent:Connect(function(argument)
									table25.Visuals.TrackCooldown(argument)
								end)
							end

							local plrDragonSummonedEvent = replicatedStorage.Remotes:FindFirstChild("PlrDragonSummonedEvent")

							if plrDragonSummonedEvent then
								flyteBBState.Connections["Dragon Spirit Uses"] = plrDragonSummonedEvent.OnClientEvent:Connect(function(argument)
									local playerFromCharacter = playersService:GetPlayerFromCharacter(argument)
									if not playerFromCharacter or playerFromCharacter == localPlayer or workspace:GetAttribute("GoldenAbilities") then
										return
									end
									local value109, value110 = table25.Visuals.GetInfo(playerFromCharacter, argument)

									if value109 == "Dragon Spirit" then
										table25.Detection.TrackAbilityUse(playerFromCharacter, argument, value109, value110 + 1, table25.Visuals.GetCooldownDuration(playerFromCharacter, value109, value110))
									end
								end)
							end
						end

						table25.Visuals.ObserveCooldowns()

						do
							local function valueFunction73()
								if not flyteBBState.Loaded or not flyteBBState.AccuracyWarningReady or flyteBBState.AccuracyWarned then
									return
								end
								local parryAccuracy = table20.RandomizedParryAccuracy and (table20.RandomAccuracyMin + table20.RandomAccuracyMax) * 0.5 or table20.ParryAccuracy

								if dataPing and parryAccuracy >= 80 and dataPing >= 300 - parryAccuracy then
									flyteBBState.AccuracyWarned = true
									value103:Notify({ Title = "Your accuracy is likely too high for your current ping.", Duration = 5 })
								end
							end

							value103 = value100.new({ Name = "Flyte", AccentColor = colors.Accent })
							table24 = { toggles = {}, sliders = {}, dropdowns = {}, textboxes = {} }

							local function unreconstructedFunction74()
								local value109 = value103:CreateSection({ Name = "Flyte", Icon = "rbxassetid://76499042599127" })

								local function getParryTiming(argument)
									return value109:AddTab({ Name = argument, Description = "Main", Icon = "rbxassetid://76499042599127" })
								end

								local Main = getParryTiming("Main")
								local Detections = getParryTiming("Detections")
								local Misc = getParryTiming("Misc")
								local Optimizations = getParryTiming("Optimizations")
								local Settings = getParryTiming("Settings")

								local function valueFunction76(argument, argument2, argument3)
									local value110 = argument and table24.toggles[argument]
									local condition19 = not flyteBBState.Loaded

									if not condition19 then
										if argument then
											condition19 = not (value110 and value110.notify)
										else
											condition19 = argument
										end
									end

									if condition19 then
										return
									end
									value103:Notify({ Title = "Switched to " .. argument2 .. " " .. argument3, Duration = 2 })
								end

								local function valueFunction77()
									local value110 = Main:AddGroup({ Name = "Parry", Side = "Left", Icon = "rbxassetid://10723427199" })

									table24.toggles.Auto_Parry = value110:AddToggle({
										Name = "Auto Parry",
										SaveId = "Auto_Parry",
										Default = false,
										Notify = true,
										Callback = function(autoParryEnabled)
											table20.AutoParryEnabled = autoParryEnabled
											if not flyteBBState.Loaded then
												return
											end

											if autoParryEnabled and table20.TriggerbotEnabled then
												flyteBBState.AutoParryTriggerbot = uiConstants[200]
												flyteBBState.TriggerbotAutoParry = nil
												local triggerbot = table24 and table24.toggles.Triggerbot

												if triggerbot and triggerbot.Set then
													triggerbot:Set(false)
												else
													table25.Triggerbot.SetEnabled(uiConstants[101])
												end
											elseif not autoParryEnabled and flyteBBState.AutoParryTriggerbot then
												flyteBBState.AutoParryTriggerbot = nil
												local triggerbot = table24 and table24.toggles.Triggerbot

												if triggerbot and triggerbot.Set then
													triggerbot:Set(true)
												else
													table25.Triggerbot.SetEnabled(true)
												end
											end

											if autoParryEnabled then
												valueFunction68(true)
												task.defer(table25.Loop.MainParryLoop)
											end
										end,
									})

									table24.toggles.Anti_Curve = value110:AddToggle({
										Name = "Anticurve",
										SaveId = "Anticurve",
										Default = uiConstants[200],
										Callback = trackConnection("AntiCurveEnabled", function()
											for _, remoteEvent in obj2, nil, nil do
												valueFunction66(remoteEvent)
											end
										end),
									})

									table24.toggles.Backwards_Anti_Curve = value110:AddToggle({
										Name = "Backwards Anticurve",
										SaveId = "Backwards_Anticurve",
										Default = true,
										Callback = trackConnection("BackwardsAntiCurveEnabled", function(argument)
											for key, remoteEvent in obj2, nil, nil do
												valueFunction64(remoteEvent)

												if argument then
													valueFunction62(key, remoteEvent)
												end
											end
										end),
									})

									table24.dropdowns.Parry_Type = value110:AddDropdown({
										Name = "Parry Type",
										SaveId = "Auto_Parry_Type",
										Options = { uiConstants[90], "VIM", "Mouse Click" },
										Default = "Remote",
										Callback = trackConnection("AutoParryType", function(argument)
											valueFunction76("Auto_Parry", argument, "mode")
										end),
									})

									table24.dropdowns.Curve_Type = value110:AddDropdown({
										Name = "Curve Type",
										SaveId = "Selected_Parry_Type",
										Detachable = true,
										NoSearch = true,
										Options = {
											"Randomized Backwards",
											"Backwards",
											"BB Camera",
											"Camera",
											"Straight",
											"Dot",
											"High",
											"Random",
											"Stop",
										},
										Default = "Camera",
										Callback = function(selectedParryType)
											table20.SelectedParryType = selectedParryType
											valueFunction76("Auto_Parry", selectedParryType, "type")
										end,
									})

									table24.dropdowns.Parry_Loop = value110:AddDropdown({
										Name = "Parry Loop",
										SaveId = "Parry_Loop_Type",
										Options = { "PreSimulation", "PreRender" },
										Default = "PreSimulation",
										Callback = function(parryLoopType)
											table20.ParryLoopType = parryLoopType
											if not flyteBBState.Loaded then
												return
											end
											updatePing("Auto Parry")
											flyteBBState.Connections["Auto Parry"] = (parryLoopType == "PreRender" and runService.PreRender or runService.PreSimulation):Connect(table25.Loop.MainParryLoop)
										end,
									})

									value110:AddDivider()

									table24.sliders.ParryAccuracy = value110:AddSlider({
										Name = "Accuracy",
										SaveId = "Parry_Accuracy",
										Min = 1,
										Max = uiConstants[158],
										Default = 1,
										Increment = 1,
										Callback = trackConnection("ParryAccuracy"),
										OnCommit = valueFunction73,
									})

									table24.sliders.ParryRange = value110:AddSlider({
										Name = "Parry Range",
										SaveId = "Parry_Range",
										Min = 0,
										Max = 10,
										Default = 0,
										Increment = 1,
										Callback = trackConnection("ParryRange"),
									})

									value110:AddDivider()

									table24.toggles.RandomizedParryAccuracy = value110:AddToggle({
										Name = "Randomize Accuracy",
										SaveId = "Randomized_Parry_Accuracy",
										Default = false,
										Callback = trackConnection("RandomizedParryAccuracy", valueFunction73),
									})

									table24.sliders.Random_Accuracy_Range = value110:AddDoubleSlider({
										Name = "Accuracy Range",
										SaveId = "Randomized_Parry_Accuracy_Range",
										Min = 1,
										Max = 100,
										DefaultMin = 1,
										DefaultMax = 100,
										Increment = 1,
										Callback = function(randomAccuracyMin, randomAccuracyMax)
											table20.RandomAccuracyMin = randomAccuracyMin
											table20.RandomAccuracyMax = randomAccuracyMax
										end,
										OnCommit = valueFunction73,
									})

									value110:AddDivider()

									table24.toggles.Auto_Preclick = value110:AddToggle({
										Name = "Auto Preclick",
										SaveId = "Auto_Preclick",
										Default = false,
										Callback = function(autoPreclickEnabled)
											table20.AutoPreclickEnabled = autoPreclickEnabled

											if autoPreclickEnabled then
												valueFunction71()
											else
												valueFunction72()
											end
										end,
									})

									table24.toggles.PreclickForAll = value110:AddToggle({
										Name = "Preclick For All",
										SaveId = "Preclick_For_All",
										Default = false,
										Callback = trackConnection("PreclickForAll"),
									})

									table24.sliders.PreclickDelay = value110:AddSlider({
										Name = "Preclick Delay (MS)",
										SaveId = "Preclick_Delay",
										Min = uiConstants[33],
										Max = 150,
										Default = 135,
										Increment = 1,
										Suffix = "ms",
										Callback = trackConnection("PreclickDelay"),
									})

									table24.sliders.PreclickAfterVelocity = value110:AddSlider({
										Name = "Preclick After Velocity",
										SaveId = "Preclick_After_Velocity",
										Min = 0,
										Max = 1000,
										Default = uiConstants[33],
										Increment = uiConstants[18],
										Callback = trackConnection("PreclickAfterVelocity"),
									})

									value110:AddDivider()

									table24.toggles.Cooldown_Protection = value110:AddToggle({
										Name = "Cooldown Protection",
										SaveId = "Cooldown_Protection",
										Default = false,
										Callback = trackConnection("CooldownProtectionEnabled"),
									})

									table24.toggles.Auto_Ability = value110:AddToggle({
										Name = "Auto Ability",
										SaveId = "Auto_Ability",
										Default = false,
										Callback = trackConnection("AutoAbilityEnabled"),
									})

									local remoteEvent = Main:AddGroup({ Name = "Auto Spam", Side = "Right", Icon = "rbxassetid://10723427199" })

									table24.toggles.Auto_Spam = remoteEvent:AddToggle({
										Name = "Auto Spam",
										SaveId = "Auto_Spam",
										Default = false,
										Notify = true,
										Callback = function(autoSpamEnabled)
											table20.AutoSpamEnabled = autoSpamEnabled

											if flyteBBState.Loaded then
												table25.Loop.RefreshAutoSpam()
											end
										end,
									})

									table24.toggles.AutoSpamAnimFix = remoteEvent:AddToggle({
										Name = "Animation Fix",
										SaveId = "Auto_Spam_Anim_Fix",
										Default = true,
										Callback = trackConnection("AutoSpamAnimFix"),
									})

									table24.dropdowns.Spam_Type = remoteEvent:AddDropdown({
										Name = "Spam Type",
										SaveId = "Auto_Spam_Type",
										Options = { "Remote", "VIM", "Mouse Click" },
										Default = "Remote",
										Callback = trackConnection("AutoSpamType", function(argument)
											valueFunction76(nil, argument, "spam mode")
										end),
									})

									table24.dropdowns.AutoSpamAnimFixType = remoteEvent:AddDropdown({
										Name = "Anim Fix Type",
										SaveId = "Auto_Spam_Anim_Fix_Type",
										Options = { "Animation + Click", "Animation", "Click" },
										Default = "Animation",
										Callback = trackConnection("AutoSpamAnimFixType"),
									})

									remoteEvent:AddDivider()
									local valueFunction78 = nil

									table24.toggles.Dynamic_Threshold = remoteEvent:AddToggle({
										Name = "Dynamic Threshold",
										SaveId = "Dynamic_Spam_Threshold",
										Default = false,
										Callback = function(dynamicSpamThreshold)
											table20.DynamicSpamThreshold = dynamicSpamThreshold

											if valueFunction78 then
												valueFunction78(not dynamicSpamThreshold)
											end
										end,
									})

									table24.sliders.Spam_Threshold = remoteEvent:AddSlider({
										Name = "Threshold",
										SaveId = "Auto_Spam_Threshold",
										Min = uiConstants[18],
										Max = 4,
										Default = uiConstants[70],
										Increment = uiConstants[18],
										Callback = function(argument)
											table20.AutoSpamThreshold = math.round(argument)
										end,
									})

									local spamThreshold = table24.sliders.Spam_Threshold
									local offset = spamThreshold.labelText.Position.Y.Offset
									spamThreshold.backgroundFrame.ClipsDescendants = uiConstants[200]
									local n33 = 0

									local function valueFunction79(argument, argument2, argument3)
										if argument3 > uiConstants[33] then
											value101(argument, argument2, argument3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
										else
											for key, remoteAction in argument2, nil, nil do
												argument[key] = remoteAction
											end
										end
									end

									valueFunction78 = function(argument, argument2)
										n33 += uiConstants[18]
										local remoteAction = n33
										argument2 = argument2 and uiConstants[33] or 0.34
										local n34 = argument and 0 or 1
										local n35 = argument and offset or offset + 8

										if argument then
											spamThreshold.labelText.Visible = true
											spamThreshold.valueBox.Visible = uiConstants[200]
											spamThreshold.backgroundFrame.Visible = true
										end

										remoteEvent.elementYPos = offset + (argument and 40 or uiConstants[33])

										if remoteEvent.UpdateSize then
											remoteEvent.UpdateSize(argument2)
										end

										valueFunction79(spamThreshold.labelText, { Position = UDim2.new(0, 10, 0, n35), TextTransparency = n34 }, argument2)
										valueFunction79(spamThreshold.valueBox, { Position = UDim2.new(uiConstants[18], -95, 0, n35), TextTransparency = n34 }, argument2)

										valueFunction79(spamThreshold.backgroundFrame, {
											Position = UDim2.new(0, uiConstants[115], 0, n35 + uiConstants[185]),
											Size = UDim2.new(0, spamThreshold.backgroundFrame.Size.X.Offset, 0, argument and 5 or 0),
											BackgroundTransparency = n34,
										}, argument2)

										valueFunction79(spamThreshold.fillFrame, { BackgroundTransparency = n34 }, argument2)

										task.delay(argument2, function()
											local signal = argument
											local condition19

											if argument then
												condition19 = signal
											else
												condition19 = remoteAction ~= n33
											end

											if condition19 then
												return
											end
											spamThreshold.labelText.Visible = false
											spamThreshold.valueBox.Visible = false
											spamThreshold.backgroundFrame.Visible = false
										end)
									end

									valueFunction78(not table20.DynamicSpamThreshold, uiConstants[200])
									local remoteAction = Main:AddGroup({ Name = "Manual Spam", Side = "Right", Icon = "rbxassetid://10723427199" })

									table24.toggles.Manual_Spam = remoteAction:AddToggle({
										Name = "Manual Spam",
										SaveId = "Manual_Spam",
										NoSave = uiConstants[200],
										Default = false,
										Notify = uiConstants[200],
										Callback = table25.ManualSpam.SetEnabled,
									})

									table24.toggles.Manual_Spam_UI = remoteAction:AddToggle({
										Name = "Manual UI (Mobile)",
										SaveId = "Manual_Spam_UI",
										Default = uiConstants[101],
										Callback = trackConnection("ManualSpamUIEnabled", table25.ManualSpam.Refresh),
									})

									table24.toggles.ManualSpamAnimFix = remoteAction:AddToggle({
										Name = "Manual Animation Fix",
										SaveId = "Manual_Spam_Anim_Fix",
										Default = true,
										Callback = trackConnection("ManualSpamAnimFix"),
									})

									table24.dropdowns.ManualSpamType = remoteAction:AddDropdown({
										Name = "Manual Type",
										SaveId = "Manual_Spam_Type",
										Options = { uiConstants[90], "VIM", uiConstants[191] },
										Default = "Remote",
										Callback = trackConnection("ManualSpamType"),
									})

									table24.dropdowns.ManualSpamAnimFixType = remoteAction:AddDropdown({
										Name = "Anim Fix Type",
										SaveId = "Manual_Spam_Anim_Fix_Type",
										Options = { "Animation + Click", "Animation", "Click" },
										Default = "Animation",
										Callback = trackConnection("ManualSpamAnimFixType"),
									})

									local signal = Main:AddGroup({ Name = "Triggerbot", Side = "Right", Icon = "rbxassetid://10723427199" })

									table24.toggles.Triggerbot = signal:AddToggle({
										Name = "Triggerbot",
										NotifyName = "Triggerbot",
										SaveId = "Triggerbot",
										Default = uiConstants[101],
										Notify = true,
										Callback = function(argument)
											table25.Triggerbot.SetEnabled(argument)
										end,
									})

									table24.toggles.Triggerbot_UI = signal:AddToggle({
										Name = "Triggerbot UI (Mobile)",
										SaveId = "Triggerbot_UI",
										Default = false,
										Callback = trackConnection("TriggerbotUIEnabled", table25.Triggerbot.RefreshUI),
									})

									table24.dropdowns.TriggerbotType = signal:AddDropdown({
										Name = "Triggerbot Type",
										SaveId = "Triggerbot_Type",
										Options = { "Remote", "VIM", "Mouse Click" },
										Default = uiConstants[90],
										Callback = trackConnection("TriggerbotType", function(argument)
											valueFunction76("Triggerbot", argument, "triggerbot mode")
										end),
									})

									table24.sliders.Triggerbot_MS = signal:AddSlider({
										Name = "Delay (MS)",
										SaveId = "Triggerbot_Delay",
										Min = 0,
										Max = 200,
										Default = uiConstants[33],
										Increment = uiConstants[18],
										Callback = trackConnection("TriggerbotDelay"),
									})

									table24.toggles.Triggerbot_Randomize_MS = signal:AddToggle({
										Name = "Randomize Delay",
										SaveId = "Triggerbot_Randomize",
										Default = false,
										Callback = trackConnection("TriggerbotRandomize"),
									})

									table24.sliders.Triggerbot_MS_Range = signal:AddDoubleSlider({
										Name = "Delay Range",
										SaveId = "Triggerbot_Delay_Range",
										Min = 0,
										Max = 200,
										DefaultMin = uiConstants[33],
										DefaultMax = 200,
										Increment = 1,
										Callback = function(triggerbotDelayMin, triggerbotDelayMax)
											table20.TriggerbotDelayMin = triggerbotDelayMin
											table20.TriggerbotDelayMax = triggerbotDelayMax
										end,
									})

									table24.toggles.Triggerbot_No_Spawn_Parry = signal:AddToggle({
										Name = "Don't Parry On Ball Spawn",
										SaveId = "Triggerbot_Ignore_Spawn",
										Default = false,
										Callback = trackConnection("TriggerbotIgnoreSpawn"),
									})
								end

								local function valueFunction78()
									local value110 = Detections:AddGroup({ Name = "Fury", Side = uiConstants[150], Icon = "rbxassetid://10723427199" })

									table24.toggles.FuryDetection = value110:AddToggle({
										Name = "SOF Detection",
										SaveId = "Fury_Detection",
										Default = false,
										Notify = true,
										Callback = trackConnection("FuryDetection"),
									})

									table24.toggles.Auto_Hit_SOF = value110:AddToggle({ Name = "Auto Hit", SaveId = "Fury_Spam_Hit", Default = false, Callback = trackConnection("FurySpamHit") })

									table24.dropdowns.FuryParryMethod = value110:AddDropdown({
										Name = "Parry Method",
										SaveId = "Fury_Parry_Method",
										Options = { uiConstants[90], "VIM", "Mouse Click" },
										Default = "Remote",
										Callback = trackConnection("FuryParryMethod"),
									})

									table24.sliders.FuryParryAmount = value110:AddSlider({
										Name = "Parry Amount",
										SaveId = "Fury_Parry_Amount",
										Default = 1,
										Min = 1,
										Max = uiConstants[59],
										Increment = 1,
										Callback = trackConnection("FuryParryAmount"),
									})

									table24.sliders.FuryParryDelay = value110:AddSlider({
										Name = "Parry Delay",
										SaveId = "Fury_Parry_Delay",
										Default = 0.12,
										Min = 0.02,
										Max = 0.25,
										Increment = 0.01,
										Callback = trackConnection("FuryParryDelay"),
									})

									table24.toggles.SingularityDetection = Detections:AddGroup({ Name = "Singularity", Side = "Left", Icon = "rbxassetid://10723427199" }):AddToggle({
										Name = "Singularity Detection",
										SaveId = "Singularity_Detection",
										Default = false,
										Notify = true,
										Callback = trackConnection("SingularityDetection"),
									})

									table24.toggles.TimeHoleDetection = Detections:AddGroup({ Name = "Time Hole", Side = "Left", Icon = "rbxassetid://10723427199" }):AddToggle({
										Name = "Time Hole Detection",
										SaveId = "Time_Hole_Detection",
										Default = false,
										Notify = true,
										Callback = trackConnection("TimeholeDetection"),
									})

									table24.toggles.InfinityDetection = Detections:AddGroup({ Name = "Infinity", Side = "Left", Icon = "rbxassetid://10723427199" }):AddToggle({
										Name = "Infinity Detection",
										SaveId = "Infinity_Detection",
										Default = false,
										Notify = uiConstants[200],
										Callback = trackConnection("InfinityDetection"),
									})

									table24.toggles.FreezeDetection = Detections:AddGroup({ Name = "Freeze", Side = "Left", Icon = "rbxassetid://10723427199" }):AddToggle({
										Name = "Freeze Detection",
										SaveId = "Freeze_Detection",
										Default = false,
										Notify = true,
										Callback = trackConnection("FreezeDetection"),
									})

									local remoteEvent = Detections:AddGroup({ Name = "Dribble", Side = "Right", Icon = "rbxassetid://10723427199" })

									table24.toggles.ParryOnDribble = remoteEvent:AddToggle({
										Name = "Parry On Dribble",
										SaveId = "Parry_On_Dribble",
										Default = false,
										Notify = true,
										Callback = trackConnection("ParryOnDribble"),
									})

									table24.toggles.DribbleDetection = remoteEvent:AddToggle({
										Name = "Parry On Self Dribble",
										SaveId = "Dribble_Detection",
										Default = false,
										Notify = true,
										Callback = trackConnection("DribbleDetection", function(argument)
											if not argument then
												flyteBBState.SelfDribbleBall = nil
												flyteBBState.SelfDribbleAway = nil
											end
										end),
									})

									local remoteAction = Detections:AddGroup({ Name = "Phantom", Side = "Right", Icon = "rbxassetid://10723427199" })

									table24.toggles.Anti_Phantom = remoteAction:AddToggle({
										Name = "Anti Phantom",
										SaveId = "Anti_Phantom",
										Default = false,
										Notify = true,
										Callback = function(antiPhantomEnabled)
											table20.AntiPhantomEnabled = antiPhantomEnabled

											if not antiPhantomEnabled and flyteBBState.PhantomData and flyteBBState.PhantomData.Name == "Phantom" then
												table25.Phantom.Reset()
											end

											if flyteBBState.Loaded then
												table25.Loop.RefreshAutoSpam()
											end
										end,
									})

									local antiPhantomMode = table19.Dropdowns.AntiPhantomMode

									if antiPhantomMode ~= "Blatant" and antiPhantomMode ~= "Legit" then
										antiPhantomMode = "Legit"
									end

									table24.dropdowns.AntiPhantomMode = remoteAction:AddDropdown({
										Name = "Mode",
										SaveId = "Anti_Phantom_Mode",
										Options = { "Legit", "Blatant" },
										Default = antiPhantomMode,
										Callback = function(argument)
											table20.AntiPhantomBlatant = argument == "Blatant"
										end,
									})

									table24.dropdowns.AntiPhantomType = remoteAction:AddDropdown({
										Name = "Legit Type",
										SaveId = "Anti_Phantom_Type",
										Options = { "Spam", "Ability" },
										Default = "Spam",
										Callback = trackConnection("AntiPhantomType"),
									})

									local signal = Detections:AddGroup({ Name = "Flash Counter", Side = "Right", Icon = "rbxassetid://10723427199" })

									table24.toggles.Anti_Flash_Counter = signal:AddToggle({
										Name = "Anti Flash Counter",
										SaveId = "Anti_Flash_Counter",
										Default = false,
										Notify = true,
										Callback = function(antiFlashCounterEnabled)
											table20.AntiFlashCounterEnabled = antiFlashCounterEnabled

											if not antiFlashCounterEnabled and flyteBBState.PhantomData and flyteBBState.PhantomData.Name == "Flash Counter" then
												table25.Phantom.Reset()
											end

											if flyteBBState.Loaded then
												table25.Loop.RefreshAutoSpam()

												if n25 > 6622 then
													while uiConstants[200] do
													end
												end
											end
										end,
									})

									local antiFlashCounterMode = table19.Dropdowns.AntiFlashCounterMode

									if antiFlashCounterMode ~= "Blatant" and antiFlashCounterMode ~= "Legit" then
										antiFlashCounterMode = "Legit"
									end

									table24.dropdowns.AntiFlashCounterMode = signal:AddDropdown({
										Name = "Mode",
										SaveId = "Anti_Flash_Counter_Mode",
										Options = { "Legit", "Blatant" },
										Default = antiFlashCounterMode,
										Callback = function(argument)
											table20.AntiFlashCounterBlatant = argument == "Blatant"
										end,
									})

									table24.dropdowns.AntiFlashCounterType = signal:AddDropdown({
										Name = "Legit Type",
										SaveId = "Anti_Flash_Counter_Type",
										Options = { "Spam", "Ability" },
										Default = "Spam",
										Callback = trackConnection("AntiFlashCounterType"),
									})

									local value114 = Detections:AddGroup({ Name = "Quasar", Side = "Right", Icon = "rbxassetid://10723427199" })

									table24.toggles.Anti_Blindness = value114:AddToggle({
										Name = "Anti Blindness",
										SaveId = "Anti_Blindness",
										Default = false,
										Notify = true,
										Callback = trackConnection("AntiBlindness", table25.Quasar.SetBlindness),
									})

									table24.toggles.Anti_Disorientate = value114:AddToggle({
										Name = "Anti Disorientate",
										SaveId = "Anti_Disorientate",
										Default = false,
										Notify = true,
										Callback = trackConnection("AntiDisorientate", table25.Quasar.SetDisorientate),
									})

									local originalFireServer = Detections:AddGroup({ Name = "Death Slash", Side = "Right", Icon = "rbxassetid://10723427199" })

									table24.toggles.DeathSlashDetection = originalFireServer:AddToggle({
										Name = "Death Slash Detection",
										SaveId = "Death_Slash_Detection",
										Default = false,
										Notify = true,
										Callback = trackConnection("DeathSlashDetection"),
									})

									table24.toggles.DeathSlashMinigame = originalFireServer:AddToggle({
										Name = "Do Minigame",
										SaveId = "Death_Slash_Minigame",
										Default = uiConstants[101],
										Callback = trackConnection("DeathSlashMinigame"),
									})

									table24.toggles.ForcefieldDetection = Detections:AddGroup({ Name = "Forcefield", Side = "Right", Icon = "rbxassetid://10723427199" }):AddToggle({
										Name = "Forcefield Detection",
										SaveId = "Forcefield_Detection",
										Default = false,
										Notify = true,
										Callback = trackConnection("ForcefieldDetection"),
									})
								end

								local function valueFunction79()
									local value110 = Optimizations:AddGroup({ Name = "Rendering", Side = uiConstants[150], Icon = "rbxassetid://10723427199" })
									table24.toggles.No_Render = value110:AddToggle({ Name = "No Render", SaveId = "No_Render", Default = false, Callback = table25.Render.DisableFX })
									table24.toggles.Anti_Lag = value110:AddToggle({ Name = "Anti-Lag", SaveId = "Anti_Lag", Default = uiConstants[101], Callback = table25.Render.SetAntiLag })

									local function valueFunction80(argument, argument2, argument3, argument4, argument5, arg6)
										if not setfflag or not getfflag then
											return false, 0
										end
										local flyteFFlagDefaults = rawget(getgenv(), "FlyteFFlagDefaults")
										local remoteEvent = uiConstants[145]

										if type(flyteFFlagDefaults) ~= remoteEvent then
											flyteFFlagDefaults = {}
											getgenv().FlyteFFlagDefaults = flyteFFlagDefaults
										end

										local table26 = {}
										local table27 = {}

										for key in argument, nil, nil do
											if type(key) == "string" and key ~= "" then
												local text5 = key:gsub("^D?F[FISL][a-z]*", "")
												local ok, result = pcall(getfflag, text5)

												if ok and result ~= nil then
													table26[#table26 + uiConstants[18]] = key
													table27[key] = text5

													if arg6 ~= uiConstants[101] and flyteFFlagDefaults[text5] == nil then
														flyteFFlagDefaults[text5] = result
													end
												else
													argument[key] = nil
												end
											else
												argument[key] = nil
											end
										end

										table.sort(table26)
										argument2 = argument2 or uiConstants[115]
										argument3 = argument3 or 0.07
										local n33 = 0

										for i = uiConstants[18], #table26, argument2 do
											for i2 = i, math.min(i + argument2 - 1, #table26) do
												local remoteAction = table26[i2]
												local signal = argument[remoteAction]
												local kind = type(signal)
												local text5

												if kind == uiConstants[109] then
													text5 = tostring(signal)
												elseif kind == "boolean" then
													text5 = signal and "True" or "False"
												elseif kind == uiConstants[145] then
													text5 = httpService:JSONEncode(signal)
												elseif kind == "string" then
													text5 = signal
												else
													text5 = nil
												end

												if text5 and pcall(setfflag, table27[remoteAction], text5) then
													n33 += 1
												end
											end

											task.wait(argument3)
										end

										if n33 <= 0 then
											return uiConstants[101], n33
										end

										if arg6 == false then
											getgenv().FlyteFFlagsApplied = nil
										else
											getgenv().FlyteFFlagsApplied = true
										end

										queueonteleport(arg6 == false and "getgenv().FlyteFFlagsApplied=nil;getgenv().FlyteFFlagDefaults=nil" or ("getgenv().FlyteFFlagsApplied=true;getgenv().FlyteFFlagDefaults=game:GetService('HttpService'):JSONDecode(%s)"):format(httpService:JSONEncode(httpService:JSONEncode(flyteFFlagDefaults))))

										if argument5 then
											argument5(n33)
										end

										task.wait(argument4 or 0.5)
										game.ExperienceService:LaunchExperience({ placeId = game.PlaceId })
										return true, n33
									end

									local function valueFunction81(argument)
										local function valueFunction82(argument2)
											local ok, result = pcall(httpService.JSONDecode, httpService, argument2)
											local result2

											if ok and type(result) == "string" then
												ok, result2 = pcall(httpService.JSONDecode, httpService, result)
											else
												result2 = result
											end

											return ok and type(result2) == "table" and result2 or nil
										end

										local remoteEvent = valueFunction82(argument)
										if remoteEvent then
											return remoteEvent
										end
										local table26 = {}
										local n33 = 1
										local n34 = 1

										while n33 <= #argument do
											local pos = argument:find("\"", n33, uiConstants[200])

											if pos then
												local pos2 = argument:find("%S", pos + 1)
												local remoteAction = pos2 and argument:byte(pos2)

												if remoteAction ~= 91 and remoteAction ~= 123 then
													n33 = pos + uiConstants[18]
												else
													local signal = uiConstants[33]
													local condition19 = false
													local condition20 = false
													local value114 = nil

													for i = pos2, #argument do
														local originalFireServer = argument:byte(i)

														if condition19 then
															if condition20 then
																condition20 = uiConstants[101]
																value114 = nil
															elseif originalFireServer == 92 then
																condition20 = true
																value114 = nil
															elseif originalFireServer ~= 34 then
																value114 = nil
															else
																condition19 = false
																value114 = nil
															end
														elseif originalFireServer == uiConstants[97] then
															condition19 = true
															value114 = nil
														elseif originalFireServer == 91 or originalFireServer == 123 then
															signal += 1
															value114 = nil
														elseif originalFireServer == 93 or originalFireServer == 125 then
															signal -= 1

															if signal ~= uiConstants[33] then
																value114 = nil
															else
																value114 = i
																break
															end
														else
															value114 = nil
														end
													end

													local pos3 = value114 and argument:find("%S", value114 + uiConstants[18])
													local pos4 = pos3 and argument:find("%S", pos3 + uiConstants[18])
													local originalFireServer = pos4 and argument:byte(pos4)
													local text5 = value114 and argument:sub(pos2, value114)
													local condition21 = pos3 and argument:byte(pos3) == 34

													if condition21 then
														condition21 = not originalFireServer or originalFireServer == 44 or originalFireServer == 93 or originalFireServer == 125
													end

													if condition21 and valueFunction82(text5) then
														table26[#table26 + 1] = argument:sub(n34, pos - uiConstants[18])
														table26[#table26 + 1] = text5
														n33 = pos3 + uiConstants[18]
														n34 = n33
													else
														n33 = pos + 1
													end
												end

												continue
											end

											break
										end

										if #table26 == 0 then
											return nil
										end
										table26[#table26 + 1] = argument:sub(n34)
										return (valueFunction82(table.concat(table26)))
									end

									local function valueFunction82(argument)
										local match = tostring(argument or ""):gsub("^\u{FEFF}", ""):match("^%s*(.-)%s*$")
										if match == "" then
											value103:Notify({ Title = "empty custom fflags" })
											return false
										end
										local remoteEvent = valueFunction81(match)
										if not remoteEvent then
											value103:Notify({ Title = "invalid custom fflags json" })
											return false
										end

										local function valueFunction83()
											local json = httpService:JSONEncode(remoteEvent)
											local fFlagsCustomText = table24.textboxes.FFlags_Custom_Text

											if fFlagsCustomText then
												fFlagsCustomText:Set(json)
											else
												table20.CustomFFlagsText = json
											end
										end

										value103:Notify({ Title = "Enabled", Duration = uiConstants[18] })

										if not valueFunction80(remoteEvent, 60, 0.01, 0.04, function()
											valueFunction83()
											value103:Notify({ Title = "Rejoining...", Duration = uiConstants[18] })
										end) then
											valueFunction83()
											value103:Notify({ Title = "no custom fflags applied" })
											return false
										end

										return true
									end

									local table26 = {
										["US East (Virginia / New Jersey)"] = "us-east",
										["US Central (Illinois / Texas)"] = "us-central",
										["US West (California / Washington)"] = "us-west",
										["US South (Florida / Georgia)"] = "us-south",
										["Europe West (France / Netherlands / UK)"] = "eu-west",
										["Europe Central (Germany)"] = "eu-central",
										["Asia East (Hong Kong / Japan)"] = "as-east",
										["Southeast Asia (Singapore)"] = "as-southeast",
										["South Asia (India)"] = "as-south",
										["Oceania (Australia)"] = "oceania",
										["South America (Brazil)"] = "sa-east",
									}

									local table27 = {
										["US East"] = "US East (Virginia / New Jersey)",
										["US Central"] = "US Central (Illinois / Texas)",
										["US West"] = "US West (California / Washington)",
										["US South"] = "US South (Florida / Georgia)",
										["Europe West"] = "Europe West (France / Netherlands / UK)",
										["Europe East"] = "Europe Central (Germany)",
										["Asia East"] = "Asia East (Hong Kong / Japan)",
										["Southeast Asia"] = "Southeast Asia (Singapore)",
										["South Asia"] = "South Asia (India)",
										Oceania = "Oceania (Australia)",
										["South America"] = "South America (Brazil)",
										["us-east"] = "US East (Virginia / New Jersey)",
										["us-central"] = "US Central (Illinois / Texas)",
										["us-west"] = "US West (California / Washington)",
										["us-south"] = "US South (Florida / Georgia)",
										uk = "Europe West (France / Netherlands / UK)",
										["eu-west"] = "Europe West (France / Netherlands / UK)",
										["eu-central"] = "Europe Central (Germany)",
										["eu-east"] = "Europe Central (Germany)",
										["as-hongkong"] = "Asia East (Hong Kong / Japan)",
										["as-tokyo"] = "Asia East (Hong Kong / Japan)",
										["as-singapore"] = "Southeast Asia (Singapore)",
										["as-mumbai"] = "South Asia (India)",
										oceania = "Oceania (Australia)",
										["sa-east"] = "South America (Brazil)",
									}

									local function valueFunction83(argument)
										if not setfflag or not getfflag then
											if not condition2 then
												return
											end
											return
										end

										argument = table26[table27[argument] or argument] or argument

										valueFunction80({
											FFlagGraphicsDisableShadows = "True",
											FFlagDebugGraphicsDisableShadows = "True",
											FFlagGraphicsDisablePostEffects = "True",
											FFlagDisablePostFx = "True",
											FFlagDisablePostEffect = "True",
											FFlagGraphicsDisableParticles = "True",
											FFlagDisableScreenSpaceEffects = "True",
											FFlagDebugDisableLightingEffects = "True",
											FFlagDisableLightInfluence = "True",
											FIntRenderQualityLevel = "1",
											FIntQualityLevel = "1",
											FFlagGraphicsQualityAutoAdjust = "False",
											FIntMockClientLightingTechnologyIxpExperimentMode = "0",
											FIntMockClientLightingTechnologyIxpExperimentQualityLevel = "7",
											DFIntDebugFRMQualityLevelOverride = "3",
											DFFlagTextureQualityOverrideEnabled = "True",
											DFIntTextureQualityOverride = "0",
											FIntTextureLODOverride = "3",
											FIntAvatarTextureLOD = "3",
											FIntFRMMinGrassDistance = "0",
											FIntFRMMaxGrassDistance = "0",
											FIntRenderGrassDetailStrands = "0",
											FFlagDebugDisableTerrainDecoration = "True",
											FIntAvatarHeadMeshQuality = "0",
											FIntAvatarBodyMeshQuality = "0",
											FFlagDebugSkipAvatarMaterials = "True",
											FFlagEnableAvatarStreaming = "True",
											FFlagEnableAvatarLoadingSuppression = "True",
											FFlagHumanoidAutoLOD = "True",
											FFlagEnableHumanoidLOD = "True",
											FFlagDebugForceLowMeshAvatars = "True",
											FFlagLowQualityCharacterRendering = "True",
											FIntAvatarAccessoryRenderDistance = "0",
											FIntAvatarLoadTimeoutMS = "0",
											FFlagAvatarRenderingOptimization = "True",
											FFlagRenderLocalCharacter = "False",
											FFlagForceStreamOutCharacters = "True",
											FIntMeshPartDetailLevel = "0",
											FFlagDisableSunRays = "True",
											FFlagDisableWeather = "True",
											FFlagDisableAtmosphere = "True",
											FFlagDebugDisableWaterEffects = "True",
											FFlagDisableMaterialEffects = "True",
											FFlagForceSimpleMaterials = "True",
											FFlagSkipDecals = "True",
											FFlagDisableCameraShake = "True",
											FFlagNewLightAttenuation = "True",
											DFFlagDisableFrameRateSmoothing = "True",
											FFlagDisableRenderingThrottling = "True",
											DFIntPerformanceControlFrameTimeMax = "1",
											FFlagForceLowMemoryMode = "True",
											FFlagDebugLowMemoryMode = "True",
											FIntVideoMemoryLimitMB = "256",
											FFlagLowDetailMode = "True",
											FFlagUIQualityReductionEnabled = "True",
											FFlagSkipQualityReductionInLowMemory = "True",
											FIntUIQualityReductionLevel = "3",
											FIntRobloxGuiBlurIntensity = "0",
											FFlagEnableRegionSelectionOverride = "True",
											FFlagDebugUseOnlySpecifiedRegion = "True",
											DFIntLargePacketQueueSizeCutoffMB = "1000",
											DFIntClientPacketHealthyAllocationPercent = "50",
											FIntRakNetResendBufferArrayLength = "128",
											DFIntWaitOnUpdateNetworkLoopEndedMS = "100",
											DFIntWaitOnRecvFromLoopEndedMS = "100",
											DFIntCodecMaxOutgoingFrames = "10000",
											DFIntCodecMaxIncomingPackets = "100",
											DFIntMaxFrameBufferSize = "4",
											DFIntMaxProcessPacketsStepsPerCyclic = "5000",
											DFIntMaxProcessPacketsJobScaling = "2139999999",
											DFIntConnectionMTUSize = "1396",
											DFIntClientPacketMaxDelayMs = "1",
											DFIntRakNetLoopMs = "1",
											DFIntMaxFramesToSend = "1",
											DFIntMaxProcessPacketsStepsAccumulated = "0",
											DFIntRakNetResendRttMultiple = "1",
											DFIntRakNetClockDriftAdjustmentPerPingMillisecond = "2139999999",
											DFIntRaknetBandwidthPingSendEveryXSeconds = "1",
											DFIntRaknetBandwidthInfluxHundredthsPercentageV2 = "10000",
											FIntInterpolationMaxDelayMSec = "1",
											FIntInterpolationAwareTargetTimeLerpHundredth = "100",
											DFIntParallelAdaptiveInterpolationBatchCount = "1",
											DFIntInterpolationDtLimitForLod = "1",
											FFlagDebugDisableTelemetryV2Event = "True",
											FFlagDebugDisableTelemetryEphemeralStat = "True",
											FFlagDebugDisableTelemetryEventIngest = "True",
											FFlagDebugDisableTelemetryV2Stat = "True",
											FFlagDebugDisableTelemetryV2Counter = "True",
											FFlagDebugDisableTelemetryEphemeralCounter = "True",
											FFlagDebugDisableTelemetryPoint = "True",
											DFIntClientLightingTechnologyChangedTelemetryHundredthsPercent = "0",
											DFIntTrackCountryRegionAPIHundredthsPercent = "10000",
											DFIntClientLightingEnvmapPlacementTelemetryHundredthsPercent = "100",
											FFlagEnableFastPathRendering = "True",
											FFlagEnableMeshLODStreaming = "True",
											FFlagMovePrerenderV2 = "True",
											FFlagMovePrerender = "true",
											FFlagFastGPULightCulling3 = "True",
											FFlagRenderForceLowQualityDOF = "True",
											FFlagPreferLowQualityParts = "True",
											FFlagDebugGraphicsPreferLowQuality = "True",
											FIntSimSolverResponsiveness = "2147483647",
											DFFlagSimRefactorCollisionGeometry2 = "true",
											DFFlagSimOptimizeSetSize = "true",
											DFFlagSimSolverOptimizeGeometricStiffness4 = "true",
											DFFlagSimHumanoidPhysics = "true",
											FIntDebugTextureManagerSkipMips = "0",
											FIntNumFramesToCaptureCallStack = "1",
											FFlagDebugDisplayFPS = "true",
											FFlagDebugSkyGray = "true",
											FIntFullscreenTitleBarTriggerDelayMillis = "18000000",
											FFlagHandleAltEnterFullscreenManually = "False",
											FIntActivatedCountTimerMSMouse = "0",
											FIntActivatedCountTimerMSKeyboard = "0",
											FIntCLI20390 = "-1",
											FLogNetwork = "7",
											DFFlagDebugPerfMode = "True",
											DFIntParryHitboxSize = "23",
											FIntHitboxPredictionBuffer = "40",
											DFFlagEnableCustomHitbox = "true",
											DFFlagCorrectServerReplicatorStatsIP = "True",
											DFIntMaxAverageFrameDelayExceedFactor = "0",
											DFIntNumFramesAllowedToBeAboveError = "0",
											DFFlagRakNetUnblockSelectOnShutdownByWritingToSocket = "True",
											DFFlagGameNetFixReplicationSkipBug = "True",
											DFFlagCorrectCachePolicySkipRedirectCache = "True",
											DFFlagAnimatorFixReplicationASANError = "True",
											DFFlagRakNetFixBwCollapse = "False",
											FFlagEnableInGameMenuDurationLogger = "False",
											DFFlagRakNetDecoupleRecvAndUpdateLoopShutdown = "True",
											FFlagPushFrameTimeToHarmony = "True",
											DFFlagRakNetUseSlidingWindow4 = "True",
											FFlagAnimatorRetargetSkipAnkleModification = "True",
											DFFlagSkipSomePropertiesSkip = "True",
											DFFlagSkipReadDiskCacheRedirects = "True",
											DFFlagSkipSomeProperties = "True",
											DFFlagReplicatorCheckReadTableCollisions = "True",
											DFFlagDisableDPIScale = "False",
											DFFlagJointIrregularityOptimization = "True",
											DFFlagReplicateCreateToPlayer = "True",
											DFFlagDebugLargeReplicatorForceFullSend = "True",
											FFlagEnableZstdDictionaryForClientSettings = "False",
											FFlagOnlyDecrementCompletenessIfReplicating = "True",
											FFlagDebugDisableOptimizedBytecode = "False",
											DFFlagReplicatorSeparateVarThresholds = "True",
											FFlagEnableZstdForClientSettings = "False",
											FFlagFasterPreciseTime4 = "True",
											FFlagDebugCodegenOptSize = "True",
											FFlagQuaternionPoseCorrection = "True",
											DFFlagAnimatorAnywhere = "True",
											InterpolationAwareTargetTimeLerpHundredth = "100",
											MaxAverageFrameDelayExceedFactor = "0",
											TargetTimeDelayFacctorTenths = "0",
											FIntFontSizePadding = "2",
											DFIntCSGLevelOfDetailSwitchingDistance = "0",
											DFIntCSGLevelOfDetailSwitchingDistanceL12 = "0",
											DFIntCSGLevelOfDetailSwitchingDistanceL34 = "0",
											DFIntCSGLevelOfDetailSwitchingDistanceL23 = "0",
											DebugDisplayFPS = "True",
											FStringNetworkDefaultDNSResolveRegion = argument,
											FStringForceHttpProxyRegion = argument,
											FStringForceFastConnectRegion = argument,
											FStringPreferredClientRegion = argument,
											FStringMatchmakingRegion = argument,
											FStringDataStoreRegion = argument,
											FStringClientTelemetryRegionOverride = argument,
											FStringForceRegion = argument,
											FStringOverrideRegion = argument,
											FStringForceGameServerRegion = argument,
										}, 10, 0.07, uiConstants[81])
									end

									local condition19 = false
									local remoteEvent = Optimizations:AddGroup({ Name = "FFlags", Side = "Right", Icon = "rbxassetid://10723427199" })
									local valueFunction84 = nil

									table24.toggles.FFlags_Enable = remoteEvent:AddToggle({
										Name = "Apply & Rejoin",
										SaveId = "FFlags",
										NoSave = uiConstants[200],
										Default = rawget(getgenv(), "FlyteFFlagsApplied") == true,
										Callback = function(argument)
											if not flyteBBState.Loaded or condition19 then
												return
											end
											condition19 = true

											task.spawn(function()
												if argument then
													if table20.CustomFFlags then
														local fFlagsCustomText = table24.textboxes.FFlags_Custom_Text
														valueFunction82(fFlagsCustomText and fFlagsCustomText.textbox and fFlagsCustomText.textbox.Text or table20.CustomFFlagsText)
													else
														valueFunction83(table20.FFlagsRegion or "us-east")
													end
												else
													local value = rawget(getgenv(), "FlyteFFlagDefaults")

													if type(value) == "table" and next(value) then
														value103:Notify({ Title = "Disabled", Duration = 1 })
														valueFunction80(value, uiConstants[115], 0.07, uiConstants[81], nil, uiConstants[101])
													end
												end

												condition19 = uiConstants[101]
											end)
										end,
									})

									table24.toggles.FFlags_Custom = remoteEvent:AddToggle({
										Name = "Custom FFlags",
										SaveId = "Custom_FFlags",
										Default = uiConstants[101],
										Callback = function(customFFlags)
											table20.CustomFFlags = customFFlags

											if valueFunction84 then
												valueFunction84(customFFlags)
											end
										end,
									})

									table24.dropdowns.FFlagsRegion = remoteEvent:AddDropdown({
										Name = "Region",
										SaveId = "FFlags_Region",
										Options = {
											"US East (Virginia / New Jersey)",
											"US Central (Illinois / Texas)",
											"US West (California / Washington)",
											"US South (Florida / Georgia)",
											"Europe West (France / Netherlands / UK)",
											"Europe Central (Germany)",
											"Asia East (Hong Kong / Japan)",
											"Southeast Asia (Singapore)",
											"South Asia (India)",
											"Oceania (Australia)",
											"South America (Brazil)",
										},
										Default = table27[table20.FFlagsRegion] or table20.FFlagsRegion or "US East (Virginia / New Jersey)",
										Callback = trackConnection("FFlagsRegion"),
									})

									table24.textboxes.FFlags_Custom_Text = remoteEvent:AddTextbox({
										Name = "Custom FFlags",
										SaveId = "Custom_FFlags_Text",
										Placeholder = "fflags here",
										Default = "",
										Callback = trackConnection("CustomFFlagsText"),
									})

									local offset = table24.dropdowns.FFlagsRegion.labelText.Position.Y.Offset
									table24.textboxes.FFlags_Custom_Text.inputFrame.ClipsDescendants = uiConstants[200]
									table24.dropdowns.FFlagsRegion.buttonFrame.ClipsDescendants = true

									local function valueFunction85(argument, argument2, argument3)
										if argument3 and argument3 > 0 then
											value101(argument, argument2, argument3, Enum.EasingStyle.Quint, Enum.EasingDirection.Out)
										else
											for key, remoteAction in argument2, nil, nil do
												argument[key] = remoteAction
											end
										end
									end

									local n33 = 0

									local function valueFunction86(argument, argument2, argument3, argument4, argument5)
										local n34 = argument2 and 0 or uiConstants[18]
										local n35 = argument2 and offset or offset + 8
										local n36

										if argument2 then
											n36 = argument4 and 26 or 21
										else
											n36 = argument2
										end

										n36 = n36 or 0
										local inputFrame = argument4 and argument.inputFrame or argument.buttonFrame

										if argument.Close then
											argument:Close()
										end

										if argument2 then
											if n28(2612) <= 505 then
												argument.labelText.Visible = true
												inputFrame.Visible = uiConstants[200]
											else
												while uiConstants[200] do
												end
											end
										end

										valueFunction85(argument.labelText, { Position = UDim2.new(0, 10, uiConstants[33], n35), TextTransparency = n34 }, argument3)

										valueFunction85(inputFrame, {
											Position = argument4 and UDim2.new(uiConstants[33], 10, 0, n35 + 22) or UDim2.new(1, inputFrame.Position.X.Offset, 0, n35),
											Size = UDim2.new(uiConstants[33], inputFrame.Size.X.Offset, 0, n36),
											BackgroundTransparency = n34,
										}, argument3)

										if argument4 then
											valueFunction85(argument.textbox, {
												TextTransparency = n34,
												PlaceholderColor3 = argument2 and remoteEvent.Library.config.Colors.SubText or remoteEvent.Library.config.Colors.Secondary,
											}, argument3)
										else
											valueFunction85(argument.selectedLabelText, { TextTransparency = n34 }, argument3)
											valueFunction85(argument.arrowImg, { ImageTransparency = n34 }, argument3)
										end

										local remoteAction = inputFrame:FindFirstChildOfClass(uiConstants[131])

										if remoteAction then
											valueFunction85(remoteAction, { Transparency = n34 }, argument3)
										end

										task.delay(argument3 or 0, function()
											if argument2 or argument5 ~= n33 then
												return
											end
											argument.labelText.Visible = false
											inputFrame.Visible = uiConstants[101]
										end)
									end

									valueFunction84 = function(customFFlags, argument)
										n33 += 1
										argument = argument and 0 or 0.34
										table20.CustomFFlags = customFFlags
										remoteEvent.elementYPos = offset + (customFFlags and 56 or 28)

										if remoteEvent.UpdateSize then
											remoteEvent.UpdateSize(argument)
										end

										valueFunction86(table24.dropdowns.FFlagsRegion, not customFFlags, argument, false, n33)
										valueFunction86(table24.textboxes.FFlags_Custom_Text, customFFlags, argument, uiConstants[200], n33)
									end

									valueFunction84(table20.CustomFFlags == true, uiConstants[200])
								end

								local function valueFunction80()
									table24.toggles.Ball_Stats = Misc:AddGroup({ Name = "Ball Misc", Side = uiConstants[150], Icon = "rbxassetid://10723427199" }):AddToggle({ Name = "Ball Stats", SaveId = "Ball_Stats", Default = false, Callback = table25.BallStats.Toggle })
									local value110 = Misc:AddGroup({ Name = "Avatar", Side = "Right", Icon = "rbxassetid://10723427199" })

									table24.toggles.Avatar_Changer = value110:AddToggle({
										Name = "Avatar Changer",
										SaveId = "Avatar",
										Default = false,
										Callback = function(avatarEnabled)
											table20.AvatarEnabled = avatarEnabled

											if flyteBBState.Loaded then
												table23.Toggle(avatarEnabled)
											end
										end,
									})

									table24.toggles.Avatar_Korblox_Headless = value110:AddToggle({
										Name = "Korblox/Headless",
										SaveId = "KH",
										Default = false,
										Callback = function(khEnabled)
											table20.KHEnabled = khEnabled

											if flyteBBState.Loaded then
												table23.ToggleKH(khEnabled)
											end
										end,
									})

									table24.textboxes.Avatar_Changer_Input = value110:AddTextbox({
										Name = "Avatar User/ID",
										SaveId = "Avatar_User",
										Placeholder = "user/userid",
										Callback = function(avatarUser)
											table20.AvatarUser = avatarUser

											if flyteBBState.Loaded and table20.AvatarEnabled then
												task.spawn(table23.Apply)
											end
										end,
									})

									table24.toggles.Unlock_All = Misc:AddGroup({ Name = "Inventory", Side = "Right", Icon = "rbxassetid://10723427199" }):AddToggle({
										Name = "Unlock All (Client)",
										SaveId = "Unlock_All",
										Default = false,
										Callback = function(unlockAllEnabled)
											table20.UnlockAllEnabled = unlockAllEnabled
											if not flyteBBState.Loaded then
												return
											end
											table25.UnlockAll.Toggle(unlockAllEnabled)
										end,
									})

									local remoteEvent = Misc:AddGroup({ Name = uiConstants[105], Side = "Right", Icon = "rbxassetid://10723427199" })

									table24.toggles.CustomStreak = remoteEvent:AddToggle({
										Name = "Custom Streak",
										SaveId = "Custom_Streak",
										Default = false,
										Callback = function(customStreakEnabled)
											table20.CustomStreakEnabled = customStreakEnabled

											if flyteBBState.Loaded then
												table25.Streak.Toggle(customStreakEnabled)
											end
										end,
									})

									table24.textboxes.CustomStreak = remoteEvent:AddTextbox({
										Name = "Streak",
										SaveId = "Streak",
										Placeholder = "Streak Here",
										Callback = function(customStreak)
											table20.CustomStreak = customStreak

											if flyteBBState.Loaded and table20.CustomStreakEnabled then
												table25.Streak.Toggle(true)
											end
										end,
									})

									local remoteAction = Misc:AddGroup({ Name = "Stats", Side = "Right", Icon = "rbxassetid://10723427199" })

									for _, signal in { "Wins", "Elims", "RAP" }, nil, nil do
										local text5 = "Show_" .. signal
										local str6 = "Show" .. signal

										table24.toggles[text5] = remoteAction:AddToggle({
											Name = "Show " .. signal,
											SaveId = text5,
											Default = false,
											Callback = function(argument)
												table20[str6] = argument

												if flyteBBState.Loaded then
													table25.Stats.Queue()
												end
											end,
										})
									end

									table24.toggles.AutoRejoinExecute = Misc:AddGroup({ Name = "Script", Side = "Right", Icon = "rbxassetid://10723427199" }):AddToggle({
										Name = "Auto Rejoin & Execute",
										SaveId = "Auto_Rejoin_Execute",
										Default = false,
										Callback = function(autoRejoinExecute)
											table20.AutoRejoinExecute = autoRejoinExecute

											if flyteBBState.Loaded then
												table25.Script.Toggle(autoRejoinExecute)
											end
										end,
									})

									local signal = Misc:AddGroup({ Name = "Staff", Side = uiConstants[150], Icon = "rbxassetid://10723427199" })

									table24.toggles.StaffDetection = signal:AddToggle({
										Name = "Staff Detection",
										SaveId = "Staff_Detection",
										Default = false,
										Callback = function(staffDetection)
											table20.StaffDetection = staffDetection
											table25.Staff.Set(staffDetection)
										end,
									})

									table24.dropdowns.StaffDetectionMode = signal:AddDropdown({
										Name = "Mode",
										SaveId = "Staff_Detection_Mode",
										Options = { "warn", "kick" },
										Default = "warn",
										Callback = trackConnection("StaffDetectionMode"),
									})

									local value = rawget(getgenv(), "FlyteDeviceSpoofApplied")
									local device = type(value) == "table" and value.JobId == game.JobId and value.Device
									local text5 = (device == "Phone" or device == "Tablet") and "Mobile" or device or "PC"
									local value114 = Misc:AddGroup({ Name = "Device Spoof", Side = "Left", Icon = "rbxassetid://10723427199" })

									table24.dropdowns.DeviceSpoofType = value114:AddDropdown({
										Name = "Device",
										SaveId = "Device_Spoof_Type",
										NoSave = true,
										Options = { "PC", "Mobile", "Console" },
										Default = text5,
										Callback = function(deviceSpoofType)
											table20.DeviceSpoofType = deviceSpoofType
										end,
									})

									value114:AddButton({ Name = "Apply", Callback = table25.DeviceSpoof.Apply })
									local originalFireServer = Misc:AddGroup({ Name = uiConstants[2], Side = "Left", Icon = "rbxassetid://10723427199" })

									table24.toggles.Ability_ESP = originalFireServer:AddToggle({
										Name = "Ability ESP",
										SaveId = "Ability_ESP",
										Default = false,
										Callback = function(abilityESPEnabled)
											table20.AbilityESPEnabled = abilityESPEnabled
											if not flyteBBState.Loaded then
												return
											end
											table25.Visuals.Toggle(abilityESPEnabled)
											table25.Visuals.RefreshLoop()
										end,
									})

									table24.toggles.AbilityESPShowNames = originalFireServer:AddToggle({
										Name = "Show Names",
										SaveId = "Ability_ESP_Show_Names",
										Default = false,
										Callback = function(abilityESPShowNames)
											table20.AbilityESPShowNames = abilityESPShowNames

											if flyteBBState.Loaded then
												table25.Visuals.Toggle()
												table25.Visuals.RefreshLoop()
											end
										end,
									})

									table24.sliders.AbilityESPIconSize = originalFireServer:AddSlider({
										Name = "Icon Size",
										SaveId = "Ability_ESP_Icon_Size",
										Min = 20,
										Max = 60,
										Default = 34,
										Increment = 1,
										Callback = function(abilityESPIconSize)
											table20.AbilityESPIconSize = abilityESPIconSize

											if flyteBBState.Loaded then
												table25.Visuals.UpdateSizes()
											end
										end,
									})

									table24.sliders.AbilityESPTextSize = originalFireServer:AddSlider({
										Name = "Text Size",
										SaveId = "Ability_ESP_Text_Size",
										Min = uiConstants[35],
										Max = uiConstants[108],
										Default = 13,
										Increment = uiConstants[18],
										Callback = function(abilityESPTextSize)
											table20.AbilityESPTextSize = abilityESPTextSize

											if flyteBBState.Loaded then
												table25.Visuals.UpdateSizes()
											end
										end,
									})

									local closureFactory = Misc:AddGroup({ Name = "Rewards", Side = "Left", Icon = "rbxassetid://10723427199" })

									for _, fireServerHook in table25.Rewards.Items, nil, nil do
										table24.toggles[fireServerHook.ID] = closureFactory:AddToggle({
											Name = fireServerHook.Name,
											SaveId = fireServerHook.ID,
											Default = false,
											Notify = fireServerHook.Notify,
											Callback = function(argument)
												table20[fireServerHook.ID] = argument

												if flyteBBState.Loaded then
													table25.Rewards.Toggle()
												end
											end,
										})
									end

									local fireServerHook = Misc:AddGroup({ Name = "Automation", Side = "Left", Icon = "rbxassetid://10723427199" })

									table24.toggles.Auto_Play = fireServerHook:AddToggle({
										Name = "Auto Play",
										SaveId = "Auto_Play",
										Default = false,
										Callback = function(autoPlayEnabled)
											table20.AutoPlayEnabled = autoPlayEnabled

											if flyteBBState.Loaded then
												table25.AutoPlay.Toggle(autoPlayEnabled)
											end
										end,
									})

									table24.toggles.AutoVoteMap = fireServerHook:AddToggle({
										Name = "Auto Vote Map",
										SaveId = "Auto_Vote_Map",
										Default = false,
										Callback = function(autoVoteMap)
											table20.AutoVoteMap = autoVoteMap

											if not autoVoteMap then
												table.clear(table25.AutoPlay.Voting)
											end
										end,
									})

									table24.toggles.HitFreeze = fireServerHook:AddToggle({ Name = "Hit Freeze", SaveId = "Hit_Freeze", Default = false, Callback = trackConnection("HitFreeze") })

									table24.toggles.SpamJump = fireServerHook:AddToggle({
										Name = "Spam Jump",
										SaveId = "Spam_Jump",
										Default = false,
										Callback = function(spamJump)
											table20.SpamJump = spamJump

											if not spamJump then
												table25.AutoPlay.Jump(false)
											end
										end,
									})

									table24.sliders.AutoPlaySmoothness = fireServerHook:AddSlider({
										Name = "Smoothness",
										SaveId = "Auto_Play_Smoothness",
										Min = 1,
										Max = 100,
										Default = uiConstants[169],
										Increment = uiConstants[18],
										Callback = trackConnection("AutoPlaySmoothness"),
									})

									table24.sliders.AutoPlayAggressiveness = fireServerHook:AddSlider({
										Name = "Aggressiveness",
										SaveId = "Auto_Play_Aggressiveness",
										Min = 1,
										Max = 100,
										Default = uiConstants[195],
										Increment = 1,
										Callback = trackConnection("AutoPlayAggressiveness"),
									})

									table24.toggles.AntiAFK = fireServerHook:AddToggle({
										Name = "Anti-AFK",
										SaveId = "Anti_AFK",
										Default = uiConstants[101],
										Callback = function(antiAFK)
											table20.AntiAFK = antiAFK

											if flyteBBState.Loaded then
												table25.AFK.Toggle(antiAFK)
											end
										end,
									})

									table24.dropdowns.AutoPlayMode = fireServerHook:AddDropdown({
										Name = "Mode",
										SaveId = "Auto_Play_Mode",
										Options = { "Play Edge", "Play Middle", "Mix" },
										Default = "Play Edge",
										Callback = trackConnection("AutoPlayMode"),
									})
								end

								local function valueFunction81()
									local value110 = Settings:AddGroup({ Name = "Menu", Side = "Left", Icon = "rbxassetid://10723427199" })

									table24.sliders.MenuScale = value110:AddSlider({
										Name = "Menu Scale",
										SaveId = "Menu_Scale",
										Min = uiConstants[169],
										Max = 150,
										Default = uiConstants[158],
										Increment = 1,
										Callback = function(menuScale)
											table20.MenuScale = menuScale

											if value103 then
												value103:UpdateLayoutScale()
											end
										end,
									})

									if touchEnabled then
										table24.sliders.MobileButtonScale = value110:AddSlider({
											Name = "Mobile Button Scale",
											SaveId = "Mobile_Button_Scale",
											Min = 50,
											Max = 150,
											Default = uiConstants[158],
											Increment = uiConstants[18],
											Callback = function(mobileButtonScale)
												table20.MobileButtonScale = mobileButtonScale

												if value103 and value103.mobileToggleScale then
													playTween(value103.mobileToggleScale, { Scale = mobileButtonScale / 100 }, 0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
												end
											end,
										})
									end

									table24.toggles.Minimize_Keybind = value110:AddKeybind({
										Name = "UI Toggle Keybind",
										SaveId = "Menu_Toggle_Keybind",
										Default = Enum.KeyCode.RightAlt,
										ChangedCallback = function(toggleVisibilityKey)
											if value103 then
												value103.toggleVisibilityKey = toggleVisibilityKey
												value103.toggleVisibilityKeyName = toggleVisibilityKey == Enum.KeyCode.Unknown and "None" or toggleVisibilityKey.Name
												value103.lastKeybindChanged = tick()
											end
										end,
									})

									local remoteEvent = Settings:AddGroup({ Name = "Configs", Side = "Left", Icon = "rbxassetid://10723427199" })

									table24.textboxes.ConfigName = remoteEvent:AddTextbox({
										Name = "Config Name",
										SaveId = "ConfigName",
										Default = "",
										NoSave = true,
										Callback = function()
										end,
									})

									local valueFunction82 = nil

									table24.dropdowns.Config_List = remoteEvent:AddDropdown({
										Name = "Config List",
										SaveId = "Config_List",
										Options = Configs:Refresh(),
										Default = "none",
										NoSave = true,
										OnOpen = function()
											if valueFunction82 then
												valueFunction82()
											end
										end,
										Callback = function(argument)
											Configs.Selected = argument ~= "none" and argument or nil
										end,
									})

									valueFunction82 = function()
										local table26 = Configs:Refresh()

										if #table26 == 0 then
											table26 = { "none" }
										end

										table24.dropdowns.Config_List:Refresh(table26)

										if Configs.Selected and table.find(table26, Configs.Selected) then
											table24.dropdowns.Config_List:Set(Configs.Selected)
										else
											table24.dropdowns.Config_List:Set(table26[uiConstants[18]])
										end
									end

									valueFunction82()
									local n33 = remoteEvent.elementYPos + 2

									local function valueFunction83(argument, argument2, argument3)
										value103:Notify({ Title = argument and argument2 or "config failed: " .. tostring(argument3), Duration = 3 })
									end

									local function valueFunction84(argument, argument2, argument3, argument4)
										local n34 = 113
										local n35 = 25
										local n36 = argument2 == 1 and 10 or 135
										local n37 = n33 + (argument3 - 1) * 31

										local TextButton = createInstance("TextButton", {
											Name = argument:gsub("%s+", "_"),
											AutoButtonColor = uiConstants[101],
											BackgroundColor3 = remoteEvent.Library.config.Colors.Element,
											BorderSizePixel = 0,
											FontFace = table22.new("rbxasset://fonts/families/GothamSSm.json", Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
											Text = argument,
											TextColor3 = remoteEvent.Library.config.Colors.SubText,
											TextSize = 13,
											Position = UDim2.new(0, n36, uiConstants[33], n37),
											Size = UDim2.new(uiConstants[33], 113, 0, 25),
											Parent = remoteEvent.mainFrame,
										})

										createInstance("UICorner", { CornerRadius = UDim.new(uiConstants[33], uiConstants[72]), Parent = TextButton })
										local remoteAction = createInstance(uiConstants[131], { Color = remoteEvent.Library.config.Colors.BorderSoft, Parent = TextButton })

										TextButton.MouseEnter:Connect(function()
											value101(TextButton, {
												BackgroundColor3 = remoteEvent.Library.config.Colors.ElementHover,
												TextColor3 = remoteEvent.Library.config.Colors.Text,
											}, uiConstants[136])

											value101(remoteAction, { Color = remoteEvent.Library.config.Colors.Border }, 0.18)
										end)

										TextButton.MouseLeave:Connect(function()
											value101(TextButton, {
												BackgroundColor3 = remoteEvent.Library.config.Colors.Element,
												TextColor3 = remoteEvent.Library.config.Colors.SubText,
											}, 0.22)

											value101(remoteAction, { Color = remoteEvent.Library.config.Colors.BorderSoft }, 0.22)
										end)

										TextButton.MouseButton1Down:Connect(function()
											value101(TextButton, {
												Size = UDim2.new(uiConstants[33], n34 - 5, 0, n35 - 2),
												Position = UDim2.new(0, n36 + 2, uiConstants[33], n37 + 1),
											}, 0.08, Enum.EasingStyle.Quad)
										end)

										TextButton.MouseButton1Up:Connect(function()
											value101(TextButton, { Size = UDim2.new(uiConstants[33], 113, 0, 25), Position = UDim2.new(0, n36, 0, n37) }, 0.22, Enum.EasingStyle.Back)
											argument4()
										end)
									end

									local function valueFunction85(argument, argument2, argument3)
										return function()
											local selected = Configs.Selected
											local remoteAction, signal = Configs[argument](Configs, selected)
											valueFunction83(remoteAction, argument2 .. tostring(selected), signal)

											if argument3 then
												valueFunction82()
											end
										end
									end

									valueFunction84("Create", uiConstants[18], uiConstants[18], function()
										local text5 = table24.textboxes.ConfigName and table24.textboxes.ConfigName.value or ""
										local remoteAction, signal = Configs:Save(text5)
										valueFunction83(remoteAction, "created config " .. tostring(Configs.Name(text5) or text5), signal)
										valueFunction82()
									end)

									local Load = valueFunction85("Load", "loaded config ")
									valueFunction84("Load", 2, 1, Load)
									local Save = valueFunction85("Save", "overwrote config ", true)
									valueFunction84("Overwrite", 1, 2, Save)
									local Reset = valueFunction85("Reset", "reset config ", true)
									valueFunction84("Reset Config", 2, 2, Reset)
									local Delete = valueFunction85("Delete", "deleted config ", true)
									valueFunction84("Delete", 1, 3, Delete)
									local SetAutoload = valueFunction85("SetAutoload", "autoload set to ")
									valueFunction84("Autoload", 2, 3, SetAutoload)

									valueFunction84("Reset Autoload", 1, uiConstants[153], function()
										Configs:ClearAutoload()
										value103:Notify({ Title = "autoload reset", Duration = 3 })
									end)

									valueFunction84("Reset Settings", 2, uiConstants[153], function()
										Configs.Apply(Configs.Defaults())
										value103:Notify({ Title = "settings reset to default", Duration = uiConstants[61] })
									end)

									remoteEvent.elementYPos = n33 + 124

									if remoteEvent.UpdateSize then
										remoteEvent.UpdateSize()
									end

									table24.toggles.Keybind_List = Settings:AddGroup({ Name = "UI Extras", Side = "Right", Icon = "rbxassetid://10723427199" }):AddToggle({
										Name = "Keybind List",
										SaveId = uiConstants[103],
										Default = false,
										Callback = table25.UIExtra.ToggleKeybindList,
									})
								end

								valueFunction77()
								valueFunction78()
								valueFunction79()
								valueFunction80()
								valueFunction81()
							end

							unreconstructedFunction74()
							Configs:LoadAutoload()
							flyteBBState.Loaded = true
							table25.Rewards.Toggle()
							table25.Visuals.Toggle(table20.AbilityESPEnabled)
							table25.Visuals.RefreshLoop()
							table25.AFK.Toggle(table20.AntiAFK)
							table25.Script.Toggle(table20.AutoRejoinExecute)

							if table20.AvatarEnabled then
								task.defer(table23.Toggle, true)
							end

							if table20.KHEnabled then
								task.defer(table23.ToggleKH, true)
							end

							if table20.UnlockAllEnabled then
								task.defer(table25.UnlockAll.Toggle, uiConstants[200])
							end

							if table20.CustomStreakEnabled then
								task.defer(table25.Streak.Toggle, true)
							end

							if table20.ShowWins or table20.ShowElims or table20.ShowRAP then
								task.defer(table25.Stats.Toggle)
							end

							if table20.AutoPlayEnabled then
								table25.AutoPlay.Toggle(true)
							end

							if table20.AutoParryEnabled and table20.TriggerbotEnabled then
								table24.toggles.Triggerbot:Set(uiConstants[101])
							end

							saveConfig()
							flyteBBState.Connections["Auto Parry"] = (table20.ParryLoopType == "PreRender" and runService.PreRender or runService.PreSimulation):Connect(table25.Loop.MainParryLoop)
							table25.Loop.RefreshAutoSpam()

							valueFunction38 = function()
								updatePing("Triggerbot")
								valueFunction68(true)
								table25.Triggerbot.Update()
								flyteBBState.Connections.Triggerbot = runService.PreSimulation:Connect(table25.Triggerbot.Update)
							end

							valueFunction39 = function()
								updatePing("Triggerbot")
								local balls2 = balls or workspace:FindFirstChild("Balls")

								if balls2 then
									for _, value109 in balls2:GetChildren() do
										valueFunction58(value109).TriggerbotParried = false
									end
								end
							end

							if table20.TriggerbotEnabled then
								valueFunction38()
							end

							table25.Triggerbot.RefreshUI()

							if table20.ManualSpamEnabled then
								table25.ManualSpam.Start()
							end

							if replicatedStorage.Remotes:FindFirstChild("ParrySuccess") then
								flyteBBState.Connections["Parry Success"] = replicatedStorage.Remotes.ParrySuccess.OnClientEvent:Connect(function()
									table25.Animation.BypassCooldown()
									flyteBBState.InfinityParried = true
									if flyteBBState.ParryMethod == "VIM" then
										return
									end
									flyteBBState.ParryMethod = "VIM"
									local parent = alive and alive.Parent and alive or workspace:FindFirstChild("Alive")

									if parent then
										alive = parent
									end

									if not localPlayer.Character or localPlayer.Character.Parent ~= alive then
										return
									end
									local humanoid = localPlayer.Character:FindFirstChild("Humanoid")

									if humanoid then
										if n27(4025) >= 5564 then
											for _, value109 in humanoid.Animator:GetPlayingAnimationTracks() do
												if value109:GetAttribute("GrabParry") or value109:GetAttribute("Parry") or value109.Name == "GrabParry" or value109.Name == "Grab" then
													value109:Stop(value109:GetAttribute("StopFadeTime") or 0.1)
												end
											end
										else
											while true do
											end
										end
									end
								end)
							end

							if table20.AutoPreclickEnabled then
								valueFunction71()
							end

							flyteBBState.Connections["ESP Player"] = playersService.PlayerAdded:Connect(function(player)
								if table20.AbilityESPEnabled or table20.AbilityESPShowNames then
									table25.Visuals.AddLabel(player)
								end
							end)

							flyteBBState.Connections["ESP Player Removing"] = playersService.PlayerRemoving:Connect(function(player)
								table25.Visuals.DestroyLabel(flyteBBState.ESPLabels[player])
								flyteBBState.ESPLabels[player] = nil
								local value109 = flyteBBState.ESPConnections[player]

								if value109 then
									value109:Disconnect()
									flyteBBState.ESPConnections[player] = nil
								end

								flyteBBState.AbilityActive[player] = nil
								flyteBBState.AbilityCooldowns[player] = nil
								table25.Visuals.ClearFury(flyteBBState.AbilityUses[player])
								flyteBBState.AbilityUses[player] = nil
							end)

							flyteBBState.Connections["Accuracy Warning"] = task.delay(5, function()
								flyteBBState.AccuracyWarningReady = true
								valueFunction73()
							end)
						end

						getgenv().FlyteBB = value103
					
