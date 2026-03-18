-- 1. Veritabanını oluştur ve içine gir
CREATE DATABASE IF NOT EXISTS BasitRehber;
USE BasitRehber;

-- 2. Tabloyu en temel bilgilerle kur
CREATE TABLE IF NOT EXISTS Kisilerim (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ad VARCHAR(50),
    soyad VARCHAR(50),
    telefon VARCHAR(20),
    sehir VARCHAR(50)
);

-- 3. Verileri ekle (Görseldeki gibi hizalı ve toplu)
INSERT INTO Kisilerim (ad, soyad, telefon, sehir) VALUES 
('Ali',    'Yilmaz', '0532 111 2233', 'Istanbul'),
('Ayse',   'Demir',  '0533 222 3344', 'Ankara'),
('Mehmet', 'Kaya',   '0544 333 4455', 'Izmir'),
('Fatma',  'Celik',  '0535 444 5566', 'Bursa'),
('Emre',   'Arslan', '0536 555 6677', 'Antalya');

-- 4. Final: Temiz ve Türkçe başlıklı listeleme
SELECT 
    id AS 'No',
    ad AS 'Ad',
    soyad AS 'Soyad',
    telefon AS 'Cep No',
    sehir AS 'Sehir'
FROM Kisilerim;