# Paradise for Geeks 🕹️💻

Välkommen till *Paradise for Geeks* – en e-handel för teknikälskare!  
Här hittar du allt från gamingtillbehör till konsoler och datorprylar. 
Projektet innehåller ett komplett REST API med databas, testdata och endpoints för både produkter och kategorier.

## 📦 Funktioner
- Hämta, skapa, uppdatera och radera produkter & kategorier
- Hämta alla produkter som tillhör en viss kategori
- Testdata för enklare testning
- Interagera med API:t via endpoints som `/categories`, `/products`, `/categories/:id/products`

## 🛠 Tekniker
- Node.js
- Express.js
- PostgreSQL
- PHPMyAdmin (för SQL-import/export)

## 🗄️ Databasstruktur
### Tabeller:
- **categories**: innehåller kategorinamn
- **products**: innehåller produktinfo + koppling till kategori

## 🔗 API Endpoints

### 📂 Kategorier
- `GET /categories` – Hämta alla kategorier
- `GET /categories/:id/products` – Hämta produkter i en viss kategori
- `POST /categories` – Skapa en ny kategori
- `PATCH /categories/:id` – Uppdatera kategori
- `DELETE /categories/:id` – Ta bort kategori

### 🎮 Produkter
- `GET /products` – Hämta alla produkter
- `GET /products/:id` – Hämta en specifik produkt
- `POST /products` – Skapa en ny produkt
- `PATCH /products/:id` – Uppdatera en produkt
- `DELETE /products/:id` – Ta bort produkt
