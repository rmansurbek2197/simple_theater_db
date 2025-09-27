# simple_theater_db
# 🎬 Kinozal Ma’lumotlar Bazasi

Bu loyiha kinozal uchun oddiy **SQL ma’lumotlar bazasi** yaratadi. Unda zallar, filmlar va seanslar haqidagi ma’lumotlar saqlanadi.

## 📂 Jadval tuzilmalari
- **zallar** – kino zallari (nomi, o‘rinlar soni, turi)
- **filmlar** – filmlar (nomi, davomiyligi, janri, yosh chegarasi)
- **seanslar** – seanslar (film, zal, vaqt, narx)

## 🗄️ Asosiy SQL kod
```sql
CREATE TABLE IF NOT EXISTS zallar (...);
CREATE TABLE IF NOT EXISTS filmlar (...);
CREATE TABLE IF NOT EXISTS seanslar (...);
