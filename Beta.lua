-- ==========================================
-- SENAHUB VIỆT HÓA - FULL v6
-- Tiktok: hetcuu83
-- ==========================================

local CoreGui  = game:GetService("CoreGui")
local TweenSvc = game:GetService("TweenService")
local Players  = game:GetService("Players")
local LP       = Players.LocalPlayer

-- Generation ID — kill stale hooks từ lần chạy trước
local GEN = tostring(math.floor(tick() * 1000))
_G.__VNGEN = GEN

-- ══════════════════════════════════════════
--  WATERMARK SIÊU CẤP
-- ══════════════════════════════════════════
pcall(function()
    local old = CoreGui:FindFirstChild("WM_hetcuu83")
    if old then old:Destroy() end

    local sg = Instance.new("ScreenGui")
    sg.Name           = "WM_hetcuu83"
    sg.ResetOnSpawn   = false
    sg.DisplayOrder   = 999999999
    sg.IgnoreGuiInset = true
    sg.Parent         = CoreGui

    local bar = Instance.new("Frame", sg)
    bar.Size                   = UDim2.new(1, 0, 0, 36)
    bar.Position               = UDim2.new(0, 0, 0, 0)
    bar.BackgroundColor3       = Color3.fromRGB(10, 5, 20)
    bar.BackgroundTransparency = 0
    bar.BorderSizePixel        = 0
    bar.ZIndex                 = 10

    local grad = Instance.new("UIGradient", bar)
    grad.Color = ColorSequence.new({
        ColorSequenceKeypoint.new(0,   Color3.fromRGB(20,  5,  45)),
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(50, 10,  80)),
        ColorSequenceKeypoint.new(1,   Color3.fromRGB(20,  5,  45)),
    })

    local border = Instance.new("Frame", bar)
    border.Size             = UDim2.new(1, 0, 0, 2)
    border.Position         = UDim2.new(0, 0, 1, -2)
    border.BackgroundColor3 = Color3.fromRGB(180, 50, 255)
    border.BorderSizePixel  = 0
    border.ZIndex           = 11

    local function mkIco(xPos)
        local i = Instance.new("TextLabel", bar)
        i.Size = UDim2.new(0, 30, 1, 0)
        i.Position = UDim2.new(xPos, 0, 0, 0)
        i.BackgroundTransparency = 1
        i.Text = "✦"
        i.TextColor3 = Color3.fromRGB(200, 80, 255)
        i.TextSize = 20
        i.Font = Enum.Font.GothamBold
        i.ZIndex = 12
        return i
    end
    local ico  = mkIco(0)
    local ico2 = Instance.new("TextLabel", bar)
    ico2.Size = UDim2.new(0, 30, 1, 0)
    ico2.AnchorPoint = Vector2.new(1, 0)
    ico2.Position = UDim2.new(1, -88, 0, 0)
    ico2.BackgroundTransparency = 1
    ico2.Text = "✦"
    ico2.TextColor3 = Color3.fromRGB(200, 80, 255)
    ico2.TextSize = 20
    ico2.Font = Enum.Font.GothamBold
    ico2.ZIndex = 12

    local lbl = Instance.new("TextLabel", bar)
    lbl.Size = UDim2.new(1, -130, 1, 0)
    lbl.Position = UDim2.new(0, 34, 0, 0)
    lbl.BackgroundTransparency = 1
    lbl.Text = "✧  Tiktok : hetcuu83  ✧"
    lbl.TextColor3 = Color3.fromRGB(230, 140, 255)
    lbl.TextSize = 15
    lbl.Font = Enum.Font.GothamBold
    lbl.ZIndex = 12
    local stroke = Instance.new("UIStroke", lbl)
    stroke.Color = Color3.fromRGB(110, 0, 170)
    stroke.Thickness = 1.5

    local badge = Instance.new("Frame", bar)
    badge.Size = UDim2.new(0, 82, 0, 22)
    badge.Position = UDim2.new(1, -88, 0.5, -11)
    badge.BackgroundColor3 = Color3.fromRGB(130, 25, 210)
    badge.BorderSizePixel = 0
    badge.ZIndex = 12
    Instance.new("UICorner", badge).CornerRadius = UDim.new(0, 6)
    local btxt = Instance.new("TextLabel", badge)
    btxt.Size = UDim2.new(1, 0, 1, 0)
    btxt.BackgroundTransparency = 1
    btxt.Text = "SenaV6 VN"
    btxt.TextColor3 = Color3.fromRGB(255, 255, 255)
    btxt.TextSize = 11
    btxt.Font = Enum.Font.GothamBold
    btxt.ZIndex = 13

    local palette = {
        Color3.fromRGB(200, 80, 255), Color3.fromRGB(80, 180, 255),
        Color3.fromRGB(255, 80, 180), Color3.fromRGB(100, 255, 150),
        Color3.fromRGB(255, 210, 60),
    }
    local ci = 1
    task.spawn(function()
        while badge and badge.Parent do
            task.wait(1.1)
            ci = ci % #palette + 1
            local c = palette[ci]
            local ti = TweenInfo.new(0.7, Enum.EasingStyle.Sine)
            TweenSvc:Create(ico,    ti, {TextColor3 = c}):Play()
            TweenSvc:Create(ico2,   ti, {TextColor3 = c}):Play()
            TweenSvc:Create(border, ti, {BackgroundColor3 = c}):Play()
        end
    end)
    task.spawn(function()
        local r = 0
        while bar and bar.Parent do
            task.wait(0.04)
            r = (r + 1) % 360
            grad.Rotation = r
        end
    end)
end)

-- ══════════════════════════════════════════
--  LOAD SENA GỐC
-- ══════════════════════════════════════════
task.spawn(function()
    local ok, src = pcall(function()
        return game:HttpGet("https://senahub.xyz/senav6")
    end)
    if ok and src and #src > 0 then
        local chunk = loadstring(src)
        if chunk then pcall(chunk) end
    end
end)

-- ══════════════════════════════════════════
--  BẢNG DỊCH ĐẦY ĐỦ - STEAL AN EGG
-- ══════════════════════════════════════════
local D = {
    -- ── TAB CHÍNH ─────────────────────────
    ["windows"]                    = "Cửa Sổ",
    ["egg logs"]                   = "Nhật Ký Trứng",
    ["live feed of every egg that spawns on the server."] = "Cập nhật trực tiếp mọi trứng xuất hiện trên server.",
    ["egg board"]                  = "Bảng Trứng",
    ["sortable list of the eggs currently up for grabs."] = "Danh sách trứng có thể nhặt, sắp xếp được.",
    ["inventory & base"]           = "Kho Đồ & Căn Cứ",
    ["your pets, eggs and plot status in one window."] = "Thú cưng, trứng và trạng thái ô đất trong một cửa sổ.",
    ["egg data & history"]         = "Dữ Liệu & Lịch Sử Trứng",
    ["open all windows"]           = "Mở Tất Cả Cửa Sổ",

    -- ── AUTO STEAL (tab chính) ────────────
    ["auto steal"]                 = "Tự Động Trộm",
    ["tự động trộm"]               = "Tự Động Trộm",
    ["steal an egg"]               = "Trộm Trứng",
    ["hatch & steal"]              = "Nở & Trộm",
    ["help friend"]                = "Giúp Bạn",
    ["aura bat"]                   = "Aura Đánh Vợt",
    ["egg checker"]                = "Kiểm Tra Trứng",
    ["egg spawn analyst"]          = "Phân Tích Trứng Mới",
    ["instant grab"]               = "Nhặt Ngay",
    ["admin abuse boost"]          = "Tăng Tốc Admin",
    ["fly for capture"]            = "Bay Để Bắt",
    ["infinite jump"]              = "Nhảy Vô Hạn",
    ["noclip"]                     = "Xuyên Tường",
    ["low speed user"]             = "Chế Độ Chậm",
    ["high speed user"]            = "Chế Độ Nhanh",
    ["high speed user (fly)"]      = "Chế Độ Nhanh (Bay)",
    ["steal mode"]                 = "Chế Độ Trộm",
    ["boost for low speed mode"]   = "Tăng Tốc Chế Độ Chậm",
    ["faster steal for low speed mode in every area except forest (limit 6 s per egg). keep it on when you use low speed user."] = "Trộm nhanh hơn ở mọi khu vực trừ Rừng (giới hạn 6 giây/trứng).",
    ["speed advice"]               = "Lời Khuyên Tốc Độ",
    ["if you have good speed better use high speed user, but if you are newbie, use low speed user"] = "Tốc độ tốt → dùng Chế độ Nhanh. Người mới → dùng Chế độ Chậm.",
    ["low speed mode"]             = "Chế Độ Tốc Độ Thấp",
    ["high speed mode (normal)"]   = "Chế Độ Tốc Độ Cao (Thường)",
    ["high speed mode (fly)"]      = "Chế Độ Tốc Độ Cao (Bay)",
    ["zig-zag high speed mode"]    = "Chế Độ Tốc Độ Cao Zig-Zag",

    -- ── BỘ LỌC TRỨNG ─────────────────────
    ["egg filter"]                 = "Lọc Trứng",
    ["filter by egg name"]         = "Lọc Theo Tên Trứng",
    ["only steal these eggs. leave empty for any egg."] = "Chỉ trộm những trứng này. Để trống = mọi trứng.",
    ["filter by rarity"]           = "Lọc Theo Độ Hiếm",
    ["only steal these rarities. leave empty for any rarity."] = "Chỉ trộm độ hiếm này. Để trống = mọi độ hiếm.",
    ["filter by area"]             = "Lọc Theo Khu Vực",
    ["select area"]                = "Chọn Khu Vực",
    ["only steal from these areas. leave empty for every area."] = "Chỉ trộm từ khu vực này. Để trống = tất cả.",
    ["filter by mutation"]         = "Lọc Theo Đột Biến",
    ["only steal eggs carrying one of these mutations. leave empty for any egg."] = "Chỉ trộm trứng có đột biến này. Để trống = mọi trứng.",
    ["area & value"]               = "Khu Vực & Giá Trị",
    ["steal by value"]             = "Trộm Theo Giá Trị",
    ["minimum cash per sec. supports k, m and b."] = "Số tiền tối thiểu/giây. Hỗ trợ k, m và b.",
    ["minimum value"]              = "Giá Trị Tối Thiểu",
    ["steal by weight"]            = "Trộm Theo Cân Nặng",
    ["minimum egg weight in kilograms. 0 accepts any weight."] = "Trọng lượng tối thiểu (kg). 0 = mọi cân nặng.",
    ["steal priority"]             = "Ưu Tiên Trộm",
    ["which egg to go for first when more than one passes the filters."] = "Ưu tiên trứng nào khi nhiều trứng thỏa bộ lọc.",
    ["filter by species"]          = "Lọc Theo Loài",
    ["match by"]                   = "Khớp Theo",

    -- ── ESP ───────────────────────────────
    ["egg esp"]                    = "Hiện Vị Trí Trứng",
    ["esp details"]                = "Chi Tiết Hiển Thị",
    ["what each label shows. placed eggs also labels the egg on your plot, icon adds the animal picture to those labels."] = "Nội dung hiển thị. Trứng đã đặt cũng hiện nhãn trên lô đất, Icon thêm hình ảnh thú cưng.",
    ["esp min rarity"]             = "Độ Hiếm Tối Thiểu Hiển Thị",
    ["only label eggs of this rarity or higher. any labels every egg."] = "Chỉ hiện nhãn từ độ hiếm này trở lên.",
    ["esp min value"]              = "Giá Trị Tối Thiểu Hiển Thị",
    ["only label eggs making at least this much per second. supports k, m and b."] = "Chỉ hiện nhãn trứng tạo ít nhất chừng này tiền/giây.",
    ["backpack value/s"]           = "Giá Trị Ba Lô/Giây",
    ["butterfly esp"]              = "Hiện Vị Trí Bướm",

    -- ── WEBHOOK ───────────────────────────
    ["steal webhook"]              = "Webhook Trộm",
    ["test webhook"]               = "Kiểm Tra Webhook",
    ["webhook url"]                = "Đường Dẫn Webhook",
    ["steal from players"]         = "Trộm Từ Người Chơi",
    ["steal from specific player"] = "Trộm Từ Người Cụ Thể",
    ["auto steal from players"]    = "Tự Động Trộm Từ Người Chơi",
    ["chases anyone carrying an egg in the field, bats them until the egg drops, grabs it and banks it. a carrier is only chased when the egg passes the filters below."] = "Đuổi người cầm trứng, đánh cho rơi trứng rồi mang về. Chỉ đuổi khi trứng thỏa bộ lọc.",
    ["skip carriers holding less than this per sec. supports k, m and b."] = "Bỏ qua người có giá trị thấp hơn mức này. Hỗ trợ k, m và b.",
    ["steal history"]              = "Lịch Sử Trộm",
    ["clear history"]              = "Xóa Lịch Sử",
    ["auto index"]                 = "Tự Động Index",
    ["players in this server"]     = "Người Chơi Trong Server",
    ["no egg carried"]             = "Không Cầm Trứng",
    ["idle in safe zone"]          = "Đứng Yên Trong Vùng An Toàn",
    ["steal"]                      = "Trộm",

    -- ── TAB AUTO (TRỨNG) ─────────────────
    ["egg automation"]             = "Tự Động Hóa Trứng",
    ["placed eggs"]                = "Trứng Đã Đặt",
    ["your placed eggs"]           = "Trứng Bạn Đã Đặt",
    ["ready to hatch"]             = "Sẵn Sàng Nở",
    ["not mutated"]                = "Chưa Đột Biến",
    ["find"]                       = "Tìm",
    ["auto place egg"]             = "Tự Động Đặt Trứng",
    ["auto hatch egg"]             = "Tự Động Nở Trứng",
    ["place everything now"]       = "Đặt Tất Cả Ngay",
    ["hatch everything ready"]     = "Nở Tất Cả Sẵn Sàng",
    ["sell pets now"]              = "Bán Thú Cưng Ngay",
    ["sell eggs now"]              = "Bán Trứng Ngay",
    ["select mutation"]            = "Chọn Đột Biến",
    ["retry until mutated"]        = "Thử Lại Cho Đến Khi Đột Biến",
    ["auto apply mutation"]        = "Tự Động Áp Dụng Đột Biến",
    ["apply mutation now"]         = "Áp Dụng Đột Biến Ngay",

    -- ── TAB THÚ CƯNG ─────────────────────
    ["pet selling"]                = "Bán Thú Cưng",
    ["pet favorite"]               = "Thú Cưng Yêu Thích",
    ["pet fusion"]                 = "Hợp Nhất Thú Cưng",
    ["auto sell"]                  = "Tự Động Bán",
    ["auto sell pet"]              = "Tự Động Bán Thú Cưng",
    ["auto sell egg"]              = "Tự Động Bán Trứng",
    ["auto favorite"]              = "Tự Động Yêu Thích",
    ["unfavorite everything"]      = "Bỏ Yêu Thích Tất Cả",
    ["auto fuse"]                  = "Tự Động Hợp Nhất",
    ["auto equip best"]            = "Tự Động Trang Bị Tốt Nhất",
    ["collect offline income"]     = "Thu Tiền Ngoại Tuyến",
    ["auto upgrade base"]          = "Tự Động Nâng Cấp Căn Cứ",
    ["auto claim almanac"]         = "Tự Động Nhận Almanac",
    ["marks every pet that matches the rule below as a favorite, so auto sell and auto fuse leave it alone."] = "Đánh dấu thú cưng thỏa quy tắc là Yêu thích, Tự động bán và Hợp nhất sẽ không đụng tới.",
    ["favorite rule"]              = "Quy Tắc Yêu Thích",
    ["match pet by rarity or by species."] = "Khớp thú cưng theo độ hiếm hoặc theo loài.",
    ["only when rule = rarity"]    = "Chỉ Khi Quy Tắc = Độ Hiếm",
    ["rarities to keep"]           = "Độ Hiếm Muốn Giữ",
    ["pets of these rarities get favorited."] = "Thú cưng có độ hiếm này sẽ được yêu thích.",
    ["sell by value (max cash/s)"] = "Bán Theo Giá Trị (Tối Đa Tiền/Giây)",
    ["only sell pets whose cash per second is this or lower. blank = no value limit. supports k, m, b."] = "Chỉ bán thú cưng có tiền/giây ≤ mức này. Để trống = không giới hạn. Hỗ trợ k, m, b.",
    ["fuse rule"]                  = "Quy Tắc Hợp Nhất",
    ["fuse anything that passes the rarity filter, or only the species you pick below."] = "Hợp nhất bất kỳ thứ gì qua bộ lọc độ hiếm, hoặc chỉ loài bạn chọn.",
    ["rarities to fuse"]           = "Độ Hiếm Để Hợp Nhất",
    ["only fuse pets of these rarities. leave empty for any rarity."] = "Chỉ hợp nhất thú cưng có độ hiếm này. Để trống = mọi độ hiếm.",
    ["feeds three matching pets into the fuse machine over and over. favorited and equipped pets are never used."] = "Đưa 3 thú cưng giống nhau vào máy hợp nhất liên tục. Thú cưng yêu thích và đang trang bị sẽ không bị dùng.",

    -- ── TAB SỰ KIỆN ──────────────────────
    ["capture the egg"]            = "Bắt Trứng",
    ["auto steal capture"]         = "Tự Động Bắt Trứng",
    ["auto ring event"]            = "Tự Động Vòng Sự Kiện",
    ["ring event"]                 = "Vòng Sự Kiện",
    ["ring sự kiện"]               = "Vòng Sự Kiện",
    ["wisp event"]                 = "Sự Kiện Wisp",
    ["butterfly bloom"]            = "Hoa Bướm Nở",
    ["auto claim net"]             = "Tự Động Nhận Lưới",
    ["auto catch"]                 = "Tự Động Bắt",
    ["race rally"]                 = "Đua Tốc Độ",
    ["shooting star"]              = "Sao Băng",
    ["dr scramble event"]          = "Sự Kiện Dr Scramble",
    ["auto trade up"]              = "Tự Động Đổi Lên",
    ["auto craft essence"]         = "Tự Động Chế Tạo Tinh Chất",
    ["auto buy shop"]              = "Tự Động Mua Cửa Hàng",
    ["auto trade-in"]              = "Tự Động Đổi Trả",
    ["auto free reroll"]           = "Tự Động Quay Miễn Phí",
    ["open trade-in ui"]           = "Mở Giao Diện Đổi Trả",
    ["auto boss"]                  = "Tự Động Đánh Boss",
    ["auto treadmill"]             = "Tự Động Máy Chạy Bộ",
    ["auto upgrade treadmill"]     = "Tự Động Nâng Cấp Máy Chạy",

    -- ── TAB DI CHUYỂN ────────────────────
    ["movement"]                   = "Di Chuyển",
    ["treadmill"]                  = "Máy Chạy Bộ",
    ["blocker"]                    = "Chặn",
    ["roaming"]                    = "Lang Thang",
    ["movement mode"]              = "Chế Độ Di Chuyển",
    ["fly speed"]                  = "Tốc Độ Bay",
    ["fly height"]                 = "Độ Cao Bay",
    ["glide speed"]                = "Tốc Độ Lướt",
    ["glide"]                      = "Lướt",
    ["blink"]                      = "Nhấp Nháy",
    ["waypoint teleport"]          = "Dịch Chuyển Điểm Đến",
    ["waypoint"]                   = "Điểm Đến",

    -- ── TAB MISC ─────────────────────────
    ["performance"]                = "Hiệu Suất",
    ["startup boost"]              = "Tăng Tốc Khởi Động",
    ["boost fps"]                  = "Tăng FPS",
    ["uncap fps"]                  = "Bỏ Giới Hạn FPS",
    ["strip heavy visuals"]        = "Ẩn Đồ Họa Nặng",
    ["guard"]                      = "Bảo Vệ",
    ["anti guard knockback"]       = "Chống Bị Đẩy Bởi Guard",
    ["anti hit guard"]             = "Chống Đánh Nhầm Guard",
    ["anti treadmill"]             = "Chống Máy Chạy Bộ",
    ["session"]                    = "Phiên",
    ["task order"]                 = "Thứ Tự Nhiệm Vụ",
    ["run once"]                   = "Chạy Một Lần",
    ["botting mode"]               = "Chế Độ Bot",
    ["anti cutscene"]              = "Bỏ Qua Cắt Cảnh",
    ["anti afk"]                   = "Chống AFK",
    ["auto reconnect"]             = "Tự Động Kết Nối Lại",
    ["auto execute"]               = "Tự Động Thực Thi",
    ["auto execute (rejoin)"]      = "Tự Động Thực Thi (Vào Lại)",
    ["rejoin this server"]         = "Vào Lại Server Này",
    ["rejoin server"]              = "Vào Lại Server",
    ["stop & unload"]              = "Dừng & Gỡ Script",
    ["hop when nothing matches"]   = "Chuyển Server Khi Không Có Trứng",
    ["auto hop"]                   = "Tự Động Chuyển Server",
    ["hop server now"]             = "Chuyển Server Ngay",

    -- ── TAB VISUAL ───────────────────────
    ["fish it"]                    = "Câu Cá",
    ["hold in hand"]               = "Cầm Trên Tay",
    ["add to backpack"]            = "Thêm Vào Ba Lô",
    ["remove visuals"]             = "Xóa Hiển Thị",
    ["remove all visual items"]    = "Xóa Tất Cả Vật Phẩm Hiển Thị",
    ["visual items"]               = "Vật Phẩm Hiển Thị",

    -- ── TAB SERVER ───────────────────────
    ["server hop"]                 = "Chuyển Server",
    ["find private server"]        = "Tìm Server Riêng",
    ["current server"]             = "Server Hiện Tại",
    ["max players"]                = "Số Người Tối Đa",
    ["pick a max player count, then hop server now."] = "Chọn số người tối đa rồi chuyển server.",
    ["the most players you want in your server, you included. 2 (you + 1) is the easiest to find."] = "Số người tối đa trong server, tính cả bạn. 2 (bạn + 1) là dễ tìm nhất.",

    -- ── TAB CONFIG ───────────────────────
    ["config configuration"]       = "Cấu Hình",
    ["config manager"]             = "Quản Lý Cấu Hình",
    ["save: none"]                 = "Lưu: Không Có",
    ["config name"]                = "Tên Cấu Hình",
    ["write config name here"]     = "Nhập tên cấu hình ở đây",
    ["select config"]              = "Chọn Cấu Hình",
    ["select option"]              = "Chọn Tùy Chọn",
    ["select options"]             = "Chọn Tùy Chọn",
    ["save config"]                = "Lưu Config",
    ["load config"]                = "Tải Config",
    ["delete config"]              = "Xóa Config",
    ["override config"]            = "Ghi Đè Config",
    ["export config"]              = "Xuất Config",
    ["import config"]              = "Nhập Config",
    ["external config"]            = "Config Bên Ngoài",
    ["folder management"]          = "Quản Lý Thư Mục",
    ["paste raw json config here"] = "Dán JSON config vào đây",
    ["auto-load configuration"]    = "Cấu Hình Tự Động Tải",
    ["auto load state"]            = "Trạng Thái Tự Động Tải",
    ["set auto load"]              = "Đặt Tự Động Tải",
    ["clear auto load"]            = "Xóa Tự Động Tải",
    ["reset configuration"]        = "Đặt Lại Cấu Hình"
}

-- ══════════════════════════════════════════
--  AUTO-TRANSLATOR (BỘ TỰ ĐỘNG DỊCH GIAO DIỆN)
-- ══════════════════════════════════════════
local function translateObj(obj)
    if obj:IsA("TextLabel") or obj:IsA("TextButton") o
