-- ==========================================
-- SENAHUB VIỆT HÓA
-- Tiktok: hetcuu83
-- ==========================================

-- 1. CHẠY SCRIPT GỐC ĐỘC LẬP (ĐẢM BẢO KHÔNG MẤT MENU)
task.spawn(function()
    local ok, src = pcall(function()
        return game:HttpGet("https://senahub.xyz/senav6")
    end)
    if ok and src and #src > 0 then
        local chunk, err = loadstring(src)
        if chunk then
            pcall(chunk)
        else
            warn("[SenaHub VN] Lỗi loadstring gốc:", err)
        end
    end
end)

local CoreGui  = game:GetService("CoreGui")
local TweenSvc = game:GetService("TweenService")
local Players  = game:GetService("Players")
local LP       = Players.LocalPlayer

-- Generation ID
local GEN = tostring(math.floor(tick() * 1000))
_G.__VNGEN = GEN

-- ══════════════════════════════════════════
-- 2. WATERMARK MINI GÓC MÀN HÌNH (GỌN ĐẸP, KHÔNG CHE NÚT ROBLOX)
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
    bar.Size                   = UDim2.new(0, 180, 0, 22)
    bar.Position               = UDim2.new(0, 10, 0, 5)
    bar.BackgroundColor3       = Color3.fromRGB(15, 8, 30)
    bar.BackgroundTransparency = 0.2
    bar.BorderSizePixel        = 0
    bar.ZIndex                 = 10
    Instance.new("UICorner", bar).CornerRadius = UDim.new(0, 6)

    local stroke = Instance.new("UIStroke", bar)
    stroke.Color = Color3.fromRGB(180, 50, 255)
    stroke.Thickness = 1

    local lbl = Instance.new("TextLabel", bar)
    lbl.Size = UDim2.new(1, 0, 1, 0)
    lbl.BackgroundTransparency = 1
    lbl.Text = "★ Tiktok: hetcuu83 | SenaV6 ★"
    lbl.TextColor3 = Color3.fromRGB(230, 160, 255)
    lbl.TextSize = 10
    lbl.Font = Enum.Font.GothamBold
    lbl.ZIndex = 12

    local palette = {
        Color3.fromRGB(200, 80, 255), Color3.fromRGB(80, 180, 255),
        Color3.fromRGB(255, 80, 180), Color3.fromRGB(100, 255, 150),
        Color3.fromRGB(255, 210, 60),
    }
    local ci = 1
    task.spawn(function()
        while bar and bar.Parent do
            task.wait(1.2)
            ci = ci % #palette + 1
            local c = palette[ci]
            TweenSvc:Create(stroke, TweenInfo.new(0.8), {Color = c}):Play()
            TweenSvc:Create(lbl, TweenInfo.new(0.8), {TextColor3 = c}):Play()
        end
    end)
end)

-- ══════════════════════════════════════════
-- 3. BẢNG DỊCH FULL 100% TẤT CẢ TÍNH NĂNG
-- ══════════════════════════════════════════
local D = {
    -- STATS BAR & FOOTER
    ["stolen"]                     = "đã trộm",
    ["search"]                     = "Tìm kiếm...",
    ["trial"]                      = "Bản Thử Nghiệm",
    ["premium"]                    = "Bản Cao Cấp",

    -- TAB CHÍNH & CỬA SỔ
    ["windows"]                    = "Cửa Sổ",
    ["egg logs"]                   = "Nhật Ký Trứng",
    ["live feed of every egg that spawns on the server."] = "Cập nhật trực tiếp mọi trứng xuất hiện trên server.",
    ["egg board"]                  = "Bảng Trứng",
    ["sortable list of the eggs currently up for grabs."] = "Danh sách trứng có thể nhặt, sắp xếp được.",
    ["inventory & base"]           = "Kho Đồ & Căn Cứ",
    ["your pets, eggs and plot status in one window."] = "Thú cưng, trứng và trạng thái ô đất trong một cửa sổ.",
    ["egg data & history"]         = "Dữ Liệu & Lịch Sử Trứng",
    ["open all windows"]           = "Mở Tất Cả Cửa Sổ",

    -- AUTO STEAL
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
    ["faster steal for low speed mode in every area except forest (limit 6 s per egg). keep it on when you use low speed user."] = "Trộm nhanh hơn ở mọi khu vực trừ Rừng (giới hạn 6s/trứng).",
    ["speed advice"]               = "Lời Khuyên Tốc Độ",
    ["if you have good speed better use high speed user, but if you are newbie, use low speed user"] = "Tốc độ tốt → Dùng chế độ Nhanh. Người mới → Dùng chế độ Chậm.",
    ["low speed mode"]             = "Chế Độ Chậm",
    ["high speed mode (normal)"]   = "Chế Độ Nhanh (Thường)",
    ["high speed mode (fly)"]      = "Chế Độ Nhanh (Bay)",
    ["zig-zag high speed mode"]    = "Chế Độ Nhanh Zig-Zag",

    -- EGG FILTER
    ["egg filter"]                 = "Lọc Trứng",
    ["filter by egg name"]         = "Lọc Theo Tên Trứng",
    ["only steal these eggs. leave empty for any egg."] = "Chỉ trộm những trứng này. Để trống = Tất cả.",
    ["filter by rarity"]           = "Lọc Theo Độ Hiếm",
    ["only steal these rarities. leave empty for any rarity."] = "Chỉ trộm độ hiếm này. Để trống = Tất cả.",
    ["filter by area"]             = "Lọc Theo Khu Vực",
    ["select area"]                = "Chọn Khu Vực",
    ["only steal from these areas. leave empty for every area."] = "Chỉ trộm từ khu vực này. Để trống = Tất cả.",
    ["filter by mutation"]         = "Lọc Theo Đột Biến",
    ["only steal eggs carrying one of these mutations. leave empty for any egg."] = "Chỉ trộm trứng đột biến này.",
    ["area & value"]               = "Khu Vực & Giá Trị",
    ["steal by value"]             = "Trộm Theo Giá Trị",
    ["minimum cash per sec. supports k, m and b."] = "Số tiền tối thiểu/giây. Hỗ trợ k, m và b.",
    ["minimum value"]              = "Giá Trị Tối Thiểu",
    ["steal by weight"]            = "Trộm Theo Cân Nặng",
    ["minimum egg weight in kilograms. 0 accepts any weight."] = "Trọng lượng tối thiểu (kg). 0 = Mọi cân nặng.",
    ["steal priority"]             = "Ưu Tiên Trộm",
    ["which egg to go for first when more than one passes the filters."] = "Ưu tiên trứng thỏa bộ lọc trước.",
    ["filter by species"]          = "Lọc Theo Loài",
    ["match by"]                   = "Khớp Theo",

    -- ESP
    ["egg esp"]                    = "Hiện Vị Trí Trứng",
    ["esp details"]                = "Chi Tiết Hiển Thị",
    ["what each label shows. placed eggs also labels the egg on your plot, icon adds the animal picture to those labels."] = "Nội dung hiển thị nhãn ESP.",
    ["esp min rarity"]             = "Độ Hiếm Tối Thiểu ESP",
    ["only label eggs of this rarity or higher. any labels every egg."] = "Chỉ hiện nhãn từ độ hiếm này trở lên.",
    ["esp min value"]              = "Giá Trị Tối Thiểu ESP",
    ["only label eggs making at least this much per second. supports k, m and b."] = "Chỉ hiện nhãn trứng tạo đủ tiền/s.",
    ["backpack value/s"]           = "Giá Trị Ba Lô/Giây",
    ["butterfly esp"]              = "Hiện Vị Trí Bướm",

    -- WEBHOOK & PLAYERS
    ["steal webhook"]              = "Webhook Trộm",
    ["test webhook"]               = "Kiểm Tra Webhook",
    ["webhook url"]                = "Đường Dẫn Webhook",
    ["steal from players"]         = "Trộm Từ Người Chơi",
    ["steal from specific player"] = "Trộm Người Cụ Thể",
    ["auto steal from players"]    = "Tự Động Trộm Từ Người Chơi",
    ["chases anyone carrying an egg in the field, bats them until the egg drops, grabs it and banks it. a carrier is only chased when the egg passes the filters below."] = "Đuổi đánh người cầm trứng để cướp.",
    ["skip carriers holding less than this per sec. supports k, m and b."] = "Bỏ qua người có giá trị thấp hơn mức này.",
    ["steal history"]              = "Lịch Sử Trộm",
    ["clear history"]              = "Xóa Lịch Sử",
    ["auto index"]                 = "Tự Động Index",
    ["players in this server"]     = "Người Chơi Trong Server",
    ["no egg carried"]             = "Không Cầm Trứng",
    ["idle in safe zone"]          = "Đứng Yên Trong Vùng An Toàn",
    ["steal"]                      = "Trộm",

    -- EGG AUTOMATION
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
    ["auto apply mutation"]        = "Tự Áp Dụng Đột Biến",
    ["apply mutation now"]         = "Áp Dụng Đột Biến Ngay",

    -- PETS
    ["pet selling"]                = "Bán Thú Cưng",
    ["pet favorite"]               = "Thú Cưng Yêu Thích",
    ["pet fusion"]                 = "Hợp Nhất Thú Cưng",
    ["auto sell"]                  = "Tự Động Bán",
    ["auto sell pet"]              = "Tự Động Bán Thú Cưng",
    ["auto sell egg"]              = "Tự Động Bán Trứng",
    ["auto favorite"]              = "Tự Động Yêu Thích",
    ["unfavorite everything"]      = "Bỏ Yêu Thích Tất Cả",
    ["auto fuse"]                  = "Tự Động Hợp Nhất",
    ["auto equip best"]            = "Mặc Thú Cưng Tốt Nhất",
    ["collect offline income"]     = "Thu Tiền Ngoại Tuyến",
    ["auto upgrade base"]          = "Tự Động Nâng Cấp Căn Cứ",
    ["auto claim almanac"]         = "Tự Động Nhận Almanac",
    ["marks every pet that matches the rule below as a favorite, so auto sell and auto fuse leave it alone."] = "Đánh dấu thú cưng Yêu thích để không bị bán/hợp nhất.",
    ["favorite rule"]              = "Quy Tắc Yêu Thích",
    ["match pet by rarity or by species."] = "Khớp theo độ hiếm hoặc loài.",
    ["only when rule = rarity"]    = "Chỉ Khi Quy Tắc = Độ Hiếm",
    ["rarities to keep"]           = "Độ Hiếm Giữ Lại",
    ["pets of these rarities get favorited."] = "Thú cưng độ hiếm này sẽ được khóa.",
    ["sell by value (max cash/s)"] = "Bán Theo Giá Trị Tối Đa (Tiền/s)",
    ["only sell pets whose cash per second is this or lower. blank = no value limit. supports k, m, b."] = "Chỉ bán pet có tiền/s ≤ mức này.",
    ["fuse rule"]                  = "Quy Tắc Hợp Nhất",
    ["rarities to fuse"]           = "Độ Hiếm Để Hợp Nhất",
    ["fuse anything that passes the rarity filter, or only the species you pick below."] = "Hợp nhất bất kỳ thứ gì qua bộ lọc độ hiếm.",
    ["only fuse pets of these rarities. leave empty for any rarity."] = "Chỉ hợp nhất thú cưng có độ hiếm này.",
    ["feeds three matching pets into the fuse machine over and over. favorited and equipped pets are never used."] = "Đưa 3 thú cưng giống nhau vào máy hợp nhất liên tục.",

    -- SỰ KIỆN (EVENTS ALL)
    ["farm star"]                  = "Cày Sao",
    ["auto farm star"]             = "Tự Động Cày Sao",
    ["star farm"]                  = "Cày Sao",
    ["auto star"]                  = "Tự Động Sao",
    ["collect star"]               = "Thu Nhặt Sao",
    ["auto collect star"]          = "Tự Động Nhặt Sao",
    ["star speed"]                 = "Tốc Độ Nhặt Sao",
    ["star distance"]              = "Khoảng Cách Nhặt Sao",
    ["teleport to star"]           = "Dịch Chuyển Đến Sao",

    ["race rally"]                 = "Đua Tốc Độ",
    ["auto race rally"]            = "Tự Động Đua Tốc Độ",
    ["auto race"]                  = "Tự Động Đua",
    ["race speed"]                 = "Tốc Độ Đua",
    ["auto finish race"]           = "Tự Động Hoàn Thành Đua",
    ["teleport to finish"]         = "Dịch Chuyển Về Đích",
    ["auto join race"]             = "Tự Động Tham Gia Đua",
    ["race delay"]                 = "Độ Trễ Đua",
    ["bypass race"]                = "Bỏ Qua Đua",

    ["capture the egg"]            = "Bắt Trứng",
    ["auto steal capture"]         = "Tự Động Bắt Trứng",
    ["auto capture"]               = "Tự Động Bắt",
    ["capture mode"]               = "Chế Độ Bắt",
    ["capture speed"]              = "Tốc Độ Bắt",

    ["ring event"]                 = "Vòng Sự Kiện",
    ["auto ring event"]            = "Tự Động Vòng Sự Kiện",
    ["auto collect rings"]         = "Tự Động Nhặt Vòng",
    ["ring distance"]              = "Khoảng Cách Vòng",
    ["ring speed"]                 = "Tốc Độ Nhặt Vòng",

    ["wisp event"]                 = "Sự Kiện Wisp",
    ["auto wisp"]                  = "Tự Động Wisp",
    ["auto collect wisp"]          = "Tự Động Nhặt Wisp",
    ["wisp speed"]                 = "Tốc Độ Wisp",

    ["butterfly bloom"]            = "Hoa Bướm Nở",
    ["auto butterfly bloom"]       = "Tự Động Hoa Bướm Nở",
    ["auto claim net"]             = "Tự Động Nhận Lưới",
    ["auto catch butterfly"]       = "Tự Động Bắt Bướm",
    ["auto catch"]                 = "Tự Động Bắt",

    ["shooting star"]              = "Sao Băng",
    ["auto shooting star"]         = "Tự Động Bắt Sao Băng",
    ["collect shooting star"]      = "Thu Nhặt Sao Băng",

    ["dr scramble event"]          = "Sự Kiện Dr Scramble",
    ["scramble event"]             = "Sự Kiện Scramble",
    ["auto scramble"]              = "Tự Động Scramble",
    ["auto answer"]                = "Tự Động Trả Lời",

    ["auto trade up"]              = "Tự Động Đổi Lên",
    ["auto craft essence"]         = "Tự Động Chế Tinh Chất",
    ["auto buy shop"]              = "Tự Động Mua Shop",
    ["auto trade-in"]              = "Tự Động Đổi Trả",
    ["auto free reroll"]           = "Quay Miễn Phí",
    ["open trade-in ui"]           = "Mở Giao Diện Đổi Trả",
    ["auto boss"]                  = "Tự Động Đánh Boss",
    ["auto treadmill"]             = "Tự Động Máy Chạy",
    ["auto upgrade treadmill"]     = "Tự Nâng Cấp Máy Chạy",

    -- MOVEMENT
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
    ["waypoint teleport"]          = "Dịch Chuyển Điểm",
    ["waypoint"]                   = "Điểm Đến",

    -- MISC
    ["performance"]                = "Hiệu Suất",
    ["startup boost"]              = "Tăng Tốc Khởi Động",
    ["boost fps"]                  = "Tăng FPS",
    ["uncap fps"]                  = "Mở Khóa FPS",
    ["strip heavy visuals"]        = "Ẩn Đồ Họa Nặng",
    ["guard"]                      = "Bảo Vệ",
    ["anti guard knockback"]       = "Chống Bị Đẩy",
    ["anti hit guard"]             = "Chống Đánh Nhầm Guard",
    ["anti treadmill"]             = "Chống Máy Chạy",
    ["session"]                    = "Phiên",
    ["task order"]                 = "Thứ Tự Nhiệm Vụ",
    ["run once"]                   = "Chạy 1 Lần",
    ["botting mode"]               = "Chế Độ Bot",
    ["anti cutscene"]              = "Bỏ Cutscene",
    ["anti afk"]                   = "Chống AFK",
    ["auto reconnect"]             = "Tự Kết Nối Lại",
    ["auto execute"]               = "Tự Chạy Script",
    ["auto execute (rejoin)"]      = "Tự Chạy Khi Vào Lại",
    ["rejoin this server"]         = "Vào Lại Server Này",
    ["rejoin server"]              = "Vào Lại Server",
    ["stop & unload"]              = "Dừng & Gỡ Script",
    ["hop when nothing matches"]   = "Chuyển Server Khi Hết Trứng",
    ["auto hop"]                   = "Tự Động Chuyển Server",
    ["hop server now"]             = "Chuyển Server Ngay",

    -- VISUAL & SERVER
    ["fish it"]                    = "Câu Cá",
    ["hold in hand"]               = "Cầm Trên Tay",
    ["add to backpack"]            = "Thêm Vào Balo",
    ["remove visuals"]             = "Xóa Hiển Thị",
    ["remove all visual items"]    = "Xóa Tất Cả Đồ Ảo",
    ["visual items"]               = "Vật Phẩm Ảo",
    ["server hop"]                 = "Chuyển Server",
    ["find private server"]        = "Tìm Server Riêng",
    ["current server"]             = "Server Hiện Tại",
    ["max players"]                = "Số Người Tối Đa",
    ["pick a max player count, then hop server now."] = "Chọn số người tối đa rồi chuyển server.",

    -- CONFIG
    ["config configuration"]       = "Cấu Hình",
    ["config manager"]             = "Quản Lý Cấu Hình",
    ["save: none"]                 = "Lưu: Không Có",
    ["config name"]                = "Tên Cấu Hình",
    ["write config name here"]     = "Nhập tên cấu hình...",
    ["select config"]              = "Chọn Cấu Hình",
    ["save config"]                = "Lưu Config",
    ["load config"]                = "Tải Config",
    ["delete config"]              = "Xóa Config",
    ["override config"]            = "Ghi Đè Config",
    ["export config"]              = "Xuất Config",
    ["import config"]              = "Nhập Config",
    ["external config"]            = "Config Bên Ngoài",
    ["folder management"]          = "Quản Lý Thư Mục",
    ["paste raw json config here"] = "Dán JSON config vào đây",
    ["auto-load configuration"]    = "Cấu Hình Tự Tải",
    ["auto load state"]            = "Trạng Thái Tự Tải",
    ["set auto load"]              = "Đặt Tự Tải",
    ["clear auto load"]            = "Xóa Tự Tải",
    ["reset configuration"]        = "Đặt Lại Cấu Hình"
}

-- ══════════════════════════════════════════
-- 4. CƠ CHẾ DỊCH AN TOÀN TỐI ƯU
-- ══════════════════════════════════════════
local function translateObj(obj)
    if obj:IsA("TextLabel") or obj:IsA("TextButton") or obj:IsA("TextBox") then
        local text = obj.Text
        if text and #text > 0 then
            local cleanKey = string.lower(text):gsub("^%s*(.-)%s*$", "%1")
            if D[cleanKey] then
                obj.Text = D[cleanKey]
            elseif cleanKey:find("welcome") then
                obj.Text = cleanKey:gsub("welcome", "Xin chào")
            end
        end
    end
end

task.spawn(function()
    task.wait(2) -- Chờ UI gốc khởi tạo xong hẳn
    pcall(function()
        for _, gui in ipairs({CoreGui, LP:WaitForChild("PlayerGui")}) do
            for _, desc in ipairs(gui:GetDescendants()) do
                translateObj(desc)
            end
            gui.DescendantAdded:Connect(function(desc)
                task.wait(0.05)
                translateObj(desc)
            end)
        end
    end)
end)
