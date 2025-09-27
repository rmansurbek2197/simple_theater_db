CREATE TABLE IF NOT EXISTS zallar (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nomi TEXT NOT NULL UNIQUE,
    orinlar_soni INTEGER NOT NULL CHECK(orinlar_soni >= 0),
    turi TEXT
);


CREATE TABLE IF NOT EXISTS filmlar (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nomi TEXT NOT NULL UNIQUE,
    davomiyligi INTEGER NOT NULL CHECK(davomiyligi >= 0),
    janr TEXT NOT NULL,
    yoshi INTEGER CHECK(yoshi >= 0)
);


CREATE TABLE IF NOT EXISTS seanslar (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    film_id INTEGER NOT NULL,
    zal_id INTEGER NOT NULL,
    vaqt INTEGER NOT NULL,
    narx INTEGER NOT NULL CHECK(narx >= 0),
    FOREIGN KEY(film_id) REFERENCES filmlar(id),
    FOREIGN KEY(zal_id) REFERENCES zallar(id),
    UNIQUE(zal_id, vaqt)
);


INSERT INTO zallar (nomi, orinlar_soni, turi) VALUES
('Katta zal', 300, 'IMAX'),
('Kichik zal', 150, '2D'),
('VIP zal', 50, '3D'),
('Oilaviy zal', 200, '4D'),
('Klassik zal', 180, '2D');


INSERT INTO filmlar (nomi, davomiyligi, janr, yoshi) VALUES
('Avatar', 180, 'Fantastik', '12+'),
('Titanik', 195, 'Drama', '16+'),
('Shrek', 90, 'Multfilm', '6+'),
('Avengers', 150, 'Jangovar', '12+'),
('Joker', 122, 'Thriller', '18+');


INSERT INTO seanslar (film_id, zal_id, vaqt, narx) VALUES
(3, 2, '10:00', 25000),
(1, 4, '14:00', 45000),
(1, 1, '18:00', 35000),
(2, 5, '21:00', 30000),
(4, 3, '16:00', 40000);