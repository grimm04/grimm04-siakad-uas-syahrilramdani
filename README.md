<h1 align="center">SIAKAD - SISTEM INFORMASI AKADEMIK SEKOLAH</h1>
 

**default user**

- email: admin@gmail.com
- Password: password

---

## Install

1. **Clone Repository**

```bash
git clone https://github.com/grimm04/grimm04-siakad-uas-syahrilramdani.git
cd grimm04-siakad-uas-syahrilramdani
composer install
cp .env.example .env
```

2. **Buka `.env` lalu ubah baris berikut sesuai dengan databasemu yang ingin dipakai**

```bash
DB_PORT=3306
DB_DATABASE=laravel
DB_USERNAME=root
DB_PASSWORD=
```

3. **Instalasi website**

```bash
php artisan key:generate
php artisan migrate --seed
```

4. **Jalankan website**

```bash
php artisan serve
``` 

5. **Or Datadummy**
database/dump/ex_akademik.sql
