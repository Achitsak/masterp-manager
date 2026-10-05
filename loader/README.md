# 📘 Masterp Manager — Client API

ฟังก์ชันที่สคริปต์ฟาร์มเรียกใช้ได้ หลังจากโหลด client แล้ว (ดู [Quick Start](../README.md#-quick-start))

| Function | ใช้ทำอะไร |
|---|---|
| [`_G.Masterp_Description(message)`](#-set-description) | ส่งข้อความสถานะไปแสดงในโปรแกรม |
| [`_G.Masterp_Description(message, payload)`](#-set-description--google-sheet) | ส่งข้อความสถานะ + ข้อมูลลง Google Sheet |
| [`_G.Masterp_Done()`](#-set-done) | แจ้งว่าบัญชีนี้ฟาร์มเสร็จแล้ว |

> [!NOTE]
> - ถ้าส่งข้อความเดิมซ้ำ (เหมือนครั้งก่อนทุกตัวอักษร) ระบบจะไม่อัปเดต
> - ข้อความยาวเกิน 8 KB จะถูกตัด

---

## 📝 Set Description

ส่งข้อความสถานะไปแสดงในช่อง Description ของบัญชีในโปรแกรม

```lua
_G.Masterp_Description(message)
```

```lua
local level = 200
_G.Masterp_Description(string.format("Level: %d", level))
```

---

## 📊 Set Description & Google Sheet

ส่งข้อความสถานะ พร้อมข้อมูลสำหรับบันทึกลง Google Sheet

```lua
_G.Masterp_Description(message, payload)
```

| Field | Type | คำอธิบาย |
|---|---|---|
| `__order` | `{string}` | **ควรใส่** — ลำดับคอลัมน์ (Header) ใน Sheet ถ้าไม่ใส่ ลำดับจะไม่แน่นอน |
| `[column]` | `string` / `number` | ค่าของแต่ละคอลัมน์ ชื่อต้องตรงกับใน `__order` |

```lua
local payload = {
    __order = { "Melee", "Level" },  -- เรียงคอลัมน์ตามนี้

    ["Melee"] = "[6/7]",
    ["Level"] = "200",
}

_G.Masterp_Description("Farming Melee", payload)
```

---

## ✅ Set Done

แจ้งว่าบัญชีนี้ฟาร์มครบแล้ว — สถานะบัญชีจะเปลี่ยนเป็น **Done**

```lua
_G.Masterp_Done()
```

```lua
local money = 100
if money >= 100 then
    _G.Masterp_Done()
end
```

---

<p align="center"><sub>Made by <b>Masterp</b> · <a href="https://masterpx.xyz/">masterpx.xyz</a></sub></p>
