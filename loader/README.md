# Masterp Manager Client 

README นี้สรุปเฉพาะวิธีใช้งาน `client.lua` สำหรับ user

## ฟังก์ชันที่ใช้ได้
## "messages ที่ซ้ำกันจะไม่ถูก update"

ส่งคำอธิบายสถานะ `Set Description`:

```lua
_G.Masterp_Description("messages") -- function

-- example
local messages = "masterp"
_G.Masterp_Description(string.format("data: %s", messages))
```
ส่งคำอธิบายสถานะ และ ข้อมูลชีท `Set Description & Google Sheet Data` :

```lua
_G.Masterp_Description("messages", json_payload) -- function

-- example
local messages = "masterp"
local json_payload = {

    __order = { -- order list จำเป็นต้องใส่เพื่อเรียงลำดับของ Header Sheet
        "Melee",
        "Level"
    },

    ['Melee'] = "[6/7]",
    ['Levle'] = "200" 
}

_G.Masterp_Description(string.format("data: %s", messages), json_payload)
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
