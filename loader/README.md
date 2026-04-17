# Masterp Manager Client 

README นี้สรุปเฉพาะวิธีใช้งาน `client.lua` สำหรับ user

## ฟังก์ชันที่ใช้ได้

ส่งคำอธิบายสถานะ `Set Description`:

```lua
_G.Masterp_Description("messages") -- function

-- example
local messages = "masterp"
_G.Masterp_Description(string.format("data: %s", messages))
```

แจ้งว่างานเสร็จแล้ว `Set Done`:

```lua
_G.Masterp_Done() -- function

-- example
local money = 100
if money >= 100 then
    _G.Masterp_Done() -- Account status has been set to done
end
```
