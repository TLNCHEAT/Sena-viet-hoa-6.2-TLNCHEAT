-- ==========================================
-- SENAHUB VIỆT HÓA - FULL v2
-- Tiktok: hetcuu83
-- ==========================================

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local LP = Players.LocalPlayer

-- ── WATERMARK ──────────────────────────────
pcall(function()
    local old = CoreGui:FindFirstChild("hetcuu83_Watermark")
    if old then old:Destroy() end

    local sg = Instance.new("ScreenGui")
    sg.Name = "hetcuu83_Watermark"
    sg.ResetOnSpawn = false
    sg.DisplayOrder = 1000
    sg.Parent = CoreGui

    local f = Instance.new("Frame")
    f.Size = UDim2.new(0, 190, 0, 30)
    f.Position = UDim2.new(0.5, -95, 0, 0)
    f.BackgroundColor3 = Color3.fromRGB(18, 12, 28)
    f.BackgroundTransparency = 0.1
    f.BorderSizePixel = 0
    f.Parent = sg

    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 8)
    c.Parent = f

    local s = Instance.new("UIStroke")
    s.Color = Color3.fromRGB(190, 60, 255)
    s.Thickness = 2
    s.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    s.Parent = f

    local t = Instance.new("TextLabel")
    t.Size = UDim2.new(1, 0, 1, 0)
    t.BackgroundTransparency = 1
    t.TextColor3 = Color3.fromRGB(225, 130, 255)
    t.TextSize = 15
    t.Font = Enum.Font.GothamBold
    t.Text = "Tiktok:hetcuu83"
    t.Parent = f

    local ts = Instance.new("UIStroke")
    ts.Color = Color3.fromRGB(100, 0, 150)
    ts.Thickness = 1
    ts.Parent = t
end)

-- ── LOAD SENA GỐC ──────────────────────────
task.spawn(function()
    local ok, src = pcall(function()
        return game:HttpGet("https://senahub.xyz/senav6")
    end)
    if ok and src and #src > 0 then
        local chunk = loadstring(src)
        if chunk then pcall(chunk) end
    end
end)

-- ── BẢNG DỊCH ──────────────────────────────
local D = {
    ["windows"]                          = "Cửa Sổ",
    ["egg logs"]                         = "Nhật Ký Trứng",
    ["live feed of every egg that spawns on the server."] = "Cập nhật trực tiếp mọi trứng xuất hiện trên server.",
    ["egg board"]                        = "Bảng Trứng",
    ["sortable list of the eggs currently up for grabs."] = "Danh sách trứng có thể nhặt, có thể sắp xếp.",
    ["inventory & base"]                 = "Kho Đồ & Căn Cứ",
    ["your pets, eggs and plot status in one window."] = "Thú cưng, trứng và trạng thái ô đất trong một cửa sổ.",
    ["capture the egg"]                  = "Bắt Trứng",
    ["movement"]                         = "Di Chuyển",
    ["ring event"]                       = "Vòng Sự Kiện",
    ["ring sự kiện"]                     = "Vòng Sự Kiện",
    ["wisp event"]                       = "Sự Kiện Wisp",
    ["butterfly bloom"]                  = "Hoa Bướm Nở",
    ["race rally"]                       = "Đua Tốc Độ",
    ["shooting star"]                    = "Sao Băng",
    ["dr scramble event"]                = "Sự Kiện Dr Scramble",
    ["pet selling"]                      = "Bán Thú Cưng",
    ["pet favorite"]                     = "Thú Cưng Yêu Thích",
    ["pet fusion"]                       = "Hợp Nhất Thú Cưng",
    ["auto favorite"]                    = "Tự Động Yêu Thích",
    ["marks every pet that matches the rule below as a favorite, so auto sell and auto fuse leave it alone."] = "Đánh dấu thú cưng thỏa quy tắc là Yêu thích, để Tự động bán và Tự động hợp nhất không đụng tới.",
    ["favorite rule"]                    = "Quy Tắc Yêu Thích",
    ["match pet by rarity or by species."] = "Khớp thú cưng theo độ hiếm hoặc theo loài.",
    ["only when rule = rarity"]          = "Chỉ Khi Quy Tắc = Độ Hiếm",
    ["rarities to keep"]                 = "Độ Hiếm Muốn Giữ",
    ["pets of these rarities get favorited."] = "Thú cưng thuộc độ hiếm này sẽ được yêu thích.",
    ["sell by value (max cash/s)"]       = "Bán Theo Giá Trị (Tối Đa Tiền/Giây)",
    ["only sell pets whose cash per second is this or lower. blank = no value limit. supports k, m, b."] = "Chỉ bán thú cưng có tiền/giây ≤ mức này. Để trống = không giới hạn. Hỗ trợ k, m, b.",
    ["auto fuse"]                        = "Tự Động Hợp Nhất",
    ["feeds three matching pets into the fuse machine over and over. favorited and equipped pets are never used."] = "Đưa 3 thú cưng giống nhau vào máy hợp nhất liên tục. Thú cưng yêu thích và đang trang bị sẽ không bao giờ bị dùng.",
    ["fuse rule"]                        = "Quy Tắc Hợp Nhất",
    ["fuse anything that passes the rarity filter, or only the species you pick below."] = "Hợp nhất bất kỳ thứ gì qua bộ lọc độ hiếm, hoặc chỉ loài bạn chọn.",
    ["rarities to fuse"]                 = "Độ Hiếm Để Hợp Nhất",
    ["only fuse pets of these rarities. leave empty for any rarity."] = "Chỉ hợp nhất thú cưng có độ hiếm này. Để trống = nhận mọi độ hiếm.",
    ["auto steal"]                       = "Tự Động Trộm",
    ["tự động trộm"]                     = "Tự Động Trộm",
    ["steal an egg"]                     = "Trộm Trứng",
    ["egg filter"]                       = "Lọc Trứng",
    ["egg esp"]                          = "Hiện Vị Trí Trứng",
    ["steal webhook"]                    = "Webhook Trộm",
    ["steal from players"]               = "Trộm Từ Người Chơi",
    ["steal from specific player"]       = "Trộm Từ Người Cụ Thể",
    ["auto steal from players"]          = "Tự Động Trộm Từ Người Chơi",
    ["chases anyone carrying an egg in the field, bats them until the egg drops, grabs it and banks it. a carrier is only chased when the egg passes the filters below."] = "Đuổi người cầm trứng trên sân, đánh cho rơi trứng, nhặt và mang về. Chỉ đuổi khi trứng thỏa bộ lọc.",
    ["minimum value"]                    = "Giá Trị Tối Thiểu",
    ["skip carriers holding less than this per sec. supports k, m and b."] = "Bỏ qua người cầm trứng có giá trị thấp hơn mức này. Hỗ trợ k, m, b.",
    ["boost for low speed mode"]         = "Tăng Tốc Chế Độ Chậm",
    ["faster steal for low speed mode in every area except forest (limit 6 s per egg). keep it on when you use low speed user."] = "Trộm nhanh hơn ở mọi khu vực trừ Rừng (giới hạn 6 giây/trứng). Bật khi dùng chế độ tốc độ thấp.",
    ["aura bat"]                         = "Aura Đánh Vợt",
    ["steal mode"]                       = "Chế Độ Trộm",
    ["if you have good speed better use high speed user, but if you are newbie, use low speed user"] = "Nếu tốc độ tốt hãy dùng Tốc độ cao, nếu là người mới hãy dùng Tốc độ thấp.",
    ["speed advice"]                     = "Lời Khuyên Tốc Độ",
    ["low speed mode"]                   = "Chế Độ Tốc Độ Thấp",
    ["high speed mode (normal)"]         = "Chế Độ Tốc Độ Cao (Thường)",
    ["high speed mode (fly)"]            = "Chế Độ Tốc Độ Cao (Bay)",
    ["zig-zag high speed mode"]          = "Chế Độ Tốc Độ Cao Zig-Zag",
    ["filter by egg name"]               = "Lọc Theo Tên Trứng",
    ["only steal these eggs. leave empty for any egg."] = "Chỉ trộm những trứng này. Để trống = trộm mọi trứng.",
    ["filter by rarity"]                 = "Lọc Theo Độ Hiếm",
    ["only steal these rarities. leave empty for any rarity."] = "Chỉ trộm các độ hiếm này. Để trống = trộm mọi độ hiếm.",
    ["area & value"]                     = "Khu Vực & Giá Trị",
    ["select area"]                      = "Chọn Khu Vực",
    ["only steal from these areas. leave empty for every area."] = "Chỉ trộm từ các khu vực này. Để trống = trộm tất cả.",
    ["steal by value"]                   = "Trộm Theo Giá Trị",
    ["minimum cash per sec. supports k, m and b."] = "Số tiền tối thiểu/giây. Hỗ trợ k, m và b.",
    ["filter by mutation"]               = "Lọc Theo Đột Biến",
    ["only steal eggs carrying one of these mutations. leave empty for any egg."] = "Chỉ trộm trứng có đột biến này. Để trống = trộm mọi trứng.",
    ["steal by weight"]                  = "Trộm Theo Cân Nặng",
    ["minimum egg weight in kilograms. 0 accepts any weight."] = "Trọng lượng trứng tối thiểu (kg). 0 = nhận mọi cân nặng.",
    ["steal priority"]                   = "Ưu Tiên Trộm",
    ["which egg to go for first when more than one passes the filters."] = "Chọn trứng ưu tiên khi có nhiều trứng thỏa bộ lọc.",
    ["esp details"]                      = "Chi Tiết Hiển Thị",
    ["what each label shows. placed eggs also labels the egg on your plot, icon adds the animal picture to those labels."] = "Nội dung hiển thị. Trứng đã đặt cũng hiện nhãn trên lô đất, Icon thêm hình ảnh thú cưng.",
    ["esp min rarity"]                   = "Độ Hiếm Tối Thiểu Hiển Thị",
    ["only label eggs of this rarity or higher. any labels every egg."] = "Chỉ hiện nhãn trứng từ độ hiếm này trở lên. Any = hiện tất cả.",
    ["esp min value"]                    = "Giá Trị Tối Thiểu Hiển Thị",
    ["only label eggs making at least this much per second. supports k, m and b."] = "Chỉ hiện nhãn trứng tạo ít nhất chừng này tiền/giây. Hỗ trợ k, m và b.",
    ["egg automation"]                   = "Tự Động Hóa Trứng",
    ["placed eggs"]                      = "Trứng Đã Đặt",
    ["your placed eggs"]                 = "Trứng Bạn Đã Đặt",
    ["ready to hatch"]                   = "Sẵn Sàng Nở",
    ["not mutated"]                      = "Chưa Đột Biến",
    ["find"]                             = "Tìm",
    ["auto index"]                       = "Tự Động Index",
    ["players in this server"]           = "Người Chơi Trong Server",
    ["no egg carried"]                   = "Không Cầm Trứng",
    ["idle in safe zone"]                = "Đứng Yên Trong Vùng An Toàn",
    ["steal"]                            = "Trộm",
    ["treadmill"]                        = "Máy Chạy Bộ",
    ["blocker"]                          = "Chặn",
    ["roaming"]                          = "Lang Thang",
    ["fish it"]                          = "Câu Cá",
    ["performance"]                      = "Hiệu Suất",
    ["guard"]                            = "Bảo Vệ",
    ["session"]                          = "Phiên",
    ["player"]                           = "Người Chơi",
    ["task order"]                       = "Thứ Tự Nhiệm Vụ",
    ["run once"]                         = "Chạy Một Lần",
    ["config configuration"]             = "Cấu Hình",
    ["config manager"]                   = "Quản Lý Cấu Hình",
    ["save: none"]                       = "Lưu: Không Có",
    ["config name"]                      = "Tên Cấu Hình",
    ["write config name here"]           = "Nhập tên cấu hình ở đây",
    ["select config"]                    = "Chọn Cấu Hình",
    ["select option"]                    = "Chọn Tùy Chọn",
    ["select options"]                   = "Chọn Tùy Chọn",
    ["server hop"]                       = "Chuyển Server",
    ["find private server"]              = "Tìm Server Riêng",
    ["current server"]                   = "Server Hiện Tại",
    ["max players"]                      = "Số Người Tối Đa",
    ["pick a max player count, then hop server now."] = "Chọn số người tối đa, sau đó chuyển server.",
    ["the most players you want in your server, you included. 2 (you + 1) is the easiest to find."] = "Số người tối đa trong server của bạn, tính cả bạn. 2 (bạn + 1) là dễ tìm nhất.",
    ["community setups"]                 = "Cài Đặt Cộng Đồng",
    ["this game"]                        = "Trò Chơi Này",
    ["maintenance"]                      = "Bảo Trì",
    ["top liked"]                        = "Được Thích Nhất",
    ["newest"]                           = "Mới Nhất",
    ["search setups"]                    = "Tìm Cài Đặt",
    ["any device"]                       = "Mọi Thiết Bị",
    ["share my setup"]                   = "Chia Sẻ Cài Đặt",
    ["the forum is under maintenance. please join our..."] = "Diễn đàn đang bảo trì. Vui lòng tham gia...",
    ["the forum is under maintenance. check back soon."] = "Diễn đàn đang bảo trì. Quay lại sau.",
    ["live chat"]                        = "Chat Trực Tiếp",
    ["live chat is off to keep your fps up. turn it on to read and send messages."] = "Chat trực tiếp đang tắt để giữ FPS. Bật lên để đọc và gửi tin nhắn.",
    ["turn on chat"]                     = "Bật Chat",
    ["common"]                           = "Thường",
    ["uncommon"]                         = "Ít Gặp",
    ["rare"]                             = "Hiếm",
    ["epic"]                             = "Cực Hiếm",
    ["legendary"]                        = "Huyền Thoại",
    ["mythic"]                           = "Thần Thoại",
    ["mythical"]                         = "Thần Thoại",
    ["divine"]                           = "Thần Thánh",
    ["eternal"]                          = "Vĩnh Cửu",
    ["golden"]                           = "Vàng",
    ["rainbow"]                          = "Cầu Vồng",
    ["shiny"]                            = "Bóng",
    ["lake"]                             = "Hồ Nước",
    ["jungle"]                           = "Rừng Rậm",
    ["desert"]                           = "Sa Mạc",
    ["snow"]                             = "Tuyết",
    ["volcano"]                          = "Núi Lửa",
    ["abyss ocean"]                      = "Đáy Đại Dương",
    ["forest"]                           = "Rừng",
    ["grassland"]                        = "Đồng Cỏ",
    ["farm"]                             = "Nông Trại",
    ["name"]                             = "Tên",
    ["rarity"]                           = "Độ Hiếm",
    ["value"]                            = "Giá Trị",
    ["weight"]                           = "Cân Nặng",
    ["mutation"]                         = "Đột Biến",
    ["any species"]                      = "Bất Kỳ Loài Nào",
    ["any"]                              = "Bất Kỳ",
    ["enabled"]                          = "Bật",
    ["disabled"]                         = "Tắt",
    ["on"]                               = "Bật",
    ["off"]                              = "Tắt",
    ["save"]                             = "Lưu",
    ["load"]                             = "Tải",
    ["delete"]                           = "Xóa",
    ["reset"]                            = "Đặt Lại",
    ["close"]                            = "Đóng",
    ["search"]                           = "Tìm Kiếm",
    ["start"]                            = "Bắt Đầu",
    ["stop"]                             = "Dừng",
    ["status"]                           = "Trạng Thái",
    ["settings"]                         = "Cài Đặt",
    ["info"]                             = "Thông Tin",
    ["warning"]                          = "Cảnh Báo",
    ["error"]                            = "Lỗi",
    ["success"]                          = "Thành Công",
    ["loading"]                          = "Đang Tải",
    ["connected"]                        = "Đã Kết Nối",
    ["disconnected"]                     = "Mất Kết Nối",
    ["try"]                              = "Dùng Thử",
    ["welcome"]                          = "Chào Mừng",
    ["fps"]                              = "FPS",
    ["ping"]                             = "Ping",
    ["stolen"]                           = "Đã Trộm",
    ["players"]                          = "Người Chơi",
    ["server"]                           = "Server",
    ["eggs"]                             = "Trứng",
    ["pets"]                             = "Thú Cưng",
    ["base"]                             = "Căn Cứ",
    ["inventory"]                        = "Kho Đồ",
    ["shop"]                             = "Cửa Hàng",
    ["upgrade"]                          = "Nâng Cấp",
    ["level"]                            = "Cấp Độ",
    ["rank"]                             = "Xếp Hạng",
    ["speed"]                            = "Tốc Độ",
    ["cash"]                             = "Tiền Mặt",
    ["coins"]                            = "Xu",
    ["gems"]                             = "Đá Quý",
    ["boost"]                            = "Tăng Tốc",
    ["hatch"]                            = "Nở",
    ["place"]                            = "Đặt",
    ["pickup"]                           = "Nhặt",
    ["drop"]                             = "Thả",
    ["teleport"]                         = "Dịch Chuyển",
    ["auto"]                             = "Tự Động",
    ["manual"]                           = "Thủ Công",
    ["filter"]                           = "Lọc",
    ["sort"]                             = "Sắp Xếp",
    ["refresh"]                          = "Làm Mới",
    ["update"]                           = "Cập Nhật",
    ["version"]                          = "Phiên Bản",
    ["now: 7 player(s) · max: 2"]        = "Hiện tại: 7 người · Tối đa: 2",
}

-- ── HÀM DỊCH ───────────────────────────────
local function translate(text)
    if not text or text == "" then return text end
    
    if text:find("<") and text:find(">") then
        return text
    end

    local trimmed = text:match("^%s*(.-)%s*$")
    if not trimmed or trimmed == "" then return text end
    local lower = trimmed:lower()
    
    if D[lower] then return D[lower] end
    
    local best, bestLen = nil, 0
    for k, v in pairs(D) do
        local s, e = lower:find(k, 1, true)
        if s and #k > bestLen then
            best = {s=s, e=e, v=v, k=k}
            bestLen = #k
        end
    end
    
    if best then
        return trimmed:sub(1, best.s - 1) .. best.v .. trimmed:sub(best.e + 1)
    end
    return text
end

-- ── HOOK OBJECT ─────────────────────────────
local function processObj(obj)
    if not (obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox")) then return end
    if obj:GetAttribute("VNHooked") then return end
    obj:SetAttribute("VNHooked", true)

    local function apply()
        local cur = obj.Text
        if not cur or cur == "" then return end
        local translated = translate(cur)
        if translated ~= cur then
            obj:SetAttribute("VNHooked", false)
            obj.Text = translated
            obj:SetAttribute("VNHooked", true)
        end
    end

    apply()
    obj:GetPropertyChangedSignal("Text"):Connect(function()
        if obj:GetAttribute("VNHooked") then
            apply()
        end
    end)
end

-- ── SCAN TOÀN BỘ ────────────────────────────
local function scanAll(root)
    for _, v in ipairs(root:GetDescendants()) do
        pcall(processObj, v)
    end
end

-- ── THEO DÕI MỚI ────────────────────────────
CoreGui.DescendantAdded:Connect(function(d)
    task.wait(0.05)
    pcall(processObj, d)
end)

local pg = LP:WaitForChild("PlayerGui", 5)
if pg then
    pg.DescendantAdded:Connect(function(d)
        task.wait(0.05)
        pcall(processObj, d)
    end)
end

-- ── SCAN SAU KHI SENA LOAD XONG ─────────────
task.spawn(function()
    task.wait(3)
    pcall(scanAll, CoreGui)
    if pg then pcall(scanAll, pg) end
    task.wait(2)
    pcall(scanAll, CoreGui)
    if pg then pcall(scanAll, pg) end
end)

print("[VN] Việt hóa SenaV6 đã sẵn sàng - Tiktok:hetcuu83")
