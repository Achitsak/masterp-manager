<p align="center">
  <img src="assets/banner.svg" alt="Masterp Manager" width="100%">
</p>

<p align="center">
  <img src="https://img.shields.io/badge/platform-Windows-0f0f11?style=flat-square" alt="Windows">
  <img src="https://img.shields.io/badge/Roblox-client-8b93ff?style=flat-square&logo=roblox&logoColor=white" alt="Roblox">
  <img src="https://img.shields.io/badge/Lua-loader-60a5fa?style=flat-square&logo=lua&logoColor=white" alt="Lua">
  <a href="https://masterpx.xyz/"><img src="https://img.shields.io/badge/website-masterpx.xyz-4ade80?style=flat-square" alt="Website"></a>
</p>

<p align="center">
  <b>Roblox account manager สำหรับฟาร์ม 24/7</b><br>
  เปิดหลายบัญชีพร้อมกัน · Re-Launch อัตโนมัติเมื่อหลุด · ติดตามสถานะฟาร์มแบบเรียลไทม์
</p>

---

## ✨ Features

| Feature | รายละเอียด |
|---|---|
| 🔁 **Auto Re-Launch** | ตรวจจับบัญชีที่หลุด/ค้าง แล้วเปิดใหม่ให้อัตโนมัติ |
| 📊 **Farm Tracking** | สคริปต์ในเกมส่งสถานะกลับมาที่โปรแกรม และส่งออก Google Sheet ได้ |
| ✅ **Done Detection** | สคริปต์แจ้ง `Done` เมื่อฟาร์มครบ บัญชีถูกปิดและสลับตัวถัดไป |
| 🌐 **Server Join** | Join Low Server, VIP / Private Server |
| 🎨 **Themes** | หลายธีม ปรับฟอนต์และขนาดตัวอักษรได้ |

## 🚀 Quick Start

ใส่ loader ใน executor (auto-execute):

```lua
repeat task.wait() until game:IsLoaded()
repeat task.wait() until game.Players.LocalPlayer

_G.MasterpSettings = {
    ['Performance'] = false,
    ['UnlockFPS']  = { ['Enable'] = false, ['TargetFps']  = 10 }
}
loadstring(game:HttpGet("https://cdn.masterpx.xyz/s/masterp-manager/client", true))()
```

| Setting | ความหมาย |
|---|---|
| `Performance` | เปิด/ปิดโหมด Performance |
| `UnlockFPS.Enable` | เปิด/ปิดการตั้ง FPS |
| `UnlockFPS.TargetFps` | FPS ที่ต้องการ |

ส่งสถานะจากสคริปต์ฟาร์มของคุณ:

```lua
_G.Masterp_Description("Level 200")   -- แสดงสถานะในโปรแกรม
_G.Masterp_Done()                     -- แจ้งว่าฟาร์มเสร็จแล้ว
```

📖 API ทั้งหมด (รวมการส่งข้อมูลขึ้น Google Sheet) → [`loader/README.md`](loader/README.md)

## 📁 Structure

```
loader/
├── client.lua        # legacy entry (redirects to the CDN loader)
├── performance.lua
├── README.md         # client API
└── profiles/         # per-game scripts
```

---

<p align="center"><sub>Made by <b>Masterp</b> · <a href="https://masterpx.xyz/">masterpx.xyz</a></sub></p>
