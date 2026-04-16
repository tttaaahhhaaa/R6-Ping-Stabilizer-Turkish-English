🇹🇷 Türkçe
Genel Bakış
R6 Server Optimizer, Rainbow Six Siege oyuncularının en iyi oyun sunucusunu seçip kilitlemesine yardımcı olan bir masaüstü uygulamasıdır. Birden fazla PlayFab veri merkezine sürekli ping atar, anlık ping sıralamasını gösterir ve seçtiğiniz sunucuyu GameSettings.ini dosyasına yazarak kalıcı hale getirir. Ayrıca Ookla Speedtest CLI ile bağlantı kalitenizi ölçebilirsiniz.

Özellikler
Canlı Ping İzleme – 10 farklı veri merkezine saniyede bir ping atar ve gecikme süresine göre sıralar.

Speedtest Entegrasyonu – Resmi Ookla Speedtest CLI ile indirme, yükleme hızı ve ping ölçümü.

Sunucu Kilitleme – Seçilen sunucu ID'sini Documents/My Games/Rainbow Six - Siege/GameSettings.ini dosyasındaki [ONLINE] DataCenterHint satırına yazar.

Default'a Döndürme – DataCenterHint satırını tamamen kaldırarak oyunun otomatik seçim yapmasını sağlar.

Tek Tıkla YouTube Kanalı – Önceden tanımlanmış YouTube kanalınızı açar (kod içinde sabit).

İki Dilli Arayüz – Türkçe ve İngilizce arasında anında geçiş yapabilir, konsol çıktıları da dili takip eder.

Modern Koyu Tema – Siyah-beyaz şık bir arayüz, butonlarda yumuşak hover animasyonları.

Harici Config Dosyası Gerekmez – Tüm ayarlar derlenmiş EXE'nin içindedir.

Gereksinimler
Windows 10 / 11 (64-bit)

İnternet bağlantısı

Opsiyonel: Ookla Speedtest CLI – uygulama, winget üzerinden otomatik kurmayı dener.

Kurulum ve Kullanım
En son R6_Optimizer.exe dosyasını Sürümler sayfasından indirin.

Gerekirse bağımlılık betiğini çalıştırın – install_dependencies.bat dosyasına çift tıklayarak Python ve PySide6 kurulumu yapabilirsiniz (sadece kaynak kodu çalıştıracaksanız gerekli; EXE için gerekmez).

Uygulamayı başlatın – EXE tamamen bağımsızdır; Python kurulu olmasa bile çalışır.

Sunucu seçin – Canlı ping listesinden bir sunucu tıklayın, ardından Sunucuyu Kilitle butonuna basın.

Speedtest butonuyla mevcut bağlantınızı test edin.

Dil değiştirmek için sağ üstteki açılır menüyü kullanın.

Kaynak Koddan EXE Oluşturma
Kendi EXE'nizi oluşturmak isterseniz:

bash
pip install pyinstaller
pyinstaller --onefile --windowed --name "R6_Optimizer" R6_Optimizer.py
Sorun Giderme
EXE çalışırken "PySide6 not found" hatası alıyorsanız – Bu mümkün değildir, çünkü EXE tüm bağımlılıkları içerir. Eğer görürseniz PyInstaller ile yeniden derleyin.

Speedtest çalışmıyorsa – winget komutunun sistemde olduğundan emin olun (Windows 10/11'de varsayılan olarak gelir) veya Ookla Speedtest CLI'yi buradan manuel kurun.

GameSettings.ini bulunamıyorsa – En az bir kere Rainbow Six Siege oynayın, dosya otomatik oluşacaktır.

Teşekkürler
Ookla (Speedtest CLI için)

PySide6 ekibi (Qt bağlamaları için)

PlayFab sunucu listesi (dynamodb uç noktaları)# R6-Ping-Stabilizer-Turkish-English
For siege Best server locker that has an ib-built speedtest!

ENGLİSH 
# R6 Server Optimizer

**Optimize your Rainbow Six Siege server selection by locking the best data center based on real-time ping and speedtest results.**

---

## 🇬🇧 English

### Overview
R6 Server Optimizer is a desktop application for Windows that helps Rainbow Six Siege players choose and lock the optimal game server. It continuously pings multiple PlayFab data centers, displays live ping rankings, and allows you to lock your preferred server by modifying the `GameSettings.ini` file. The built‑in Ookla Speedtest CLI measures your connection quality (ping, download, upload) to assist in decision‑making.

### Features
- **Live Ping Monitoring** – Pings 10 global data centers every second, sorted by latency.
- **Speedtest Integration** – Runs official Ookla Speedtest to measure your real connection performance.
- **Server Lock** – Writes the chosen server ID into `Documents/My Games/Rainbow Six - Siege/GameSettings.ini` (under `[ONLINE] DataCenterHint`).
- **Reset to Default** – Removes the `DataCenterHint` line, letting the game choose automatically.
- **One‑Click YouTube Channel** – Opens your predefined YouTube channel (customizable in the script).
- **Bilingual UI** – Switch between Turkish and English on the fly; console logs also change language.
- **Modern Dark Theme** – Clean black‑and‑white interface with smooth button hover animations.
- **No External Config Files** – All settings are compiled into the executable.

### Requirements
- Windows 10 / 11 (64‑bit)
- Internet connection
- **Optional but recommended:** [Ookla Speedtest CLI](https://speedtest.net/apps/cli) – the app will attempt to install it automatically via `winget`.

### Installation & Usage
1. **Download the latest `R6_Optimizer.exe`** from the [Releases](../../releases) page.
2. **Run the installer batch (if needed)** – double‑click `install_dependencies.bat` to install Python and PySide6 (only required if you run the script version, not the standalone EXE).
3. **Launch the application** – the EXE is fully standalone; no Python installation is required.
4. **Select a server** from the live ping list, then click **Lock Server**.
5. **Use the Speedtest button** to check your current connection.
6. **Change language** via the top‑right dropdown.

### Building from Source
If you want to create your own EXE:
```bash
pip install pyinstaller
pyinstaller --onefile --windowed --name "R6_Optimizer" R6_Optimizer.py
