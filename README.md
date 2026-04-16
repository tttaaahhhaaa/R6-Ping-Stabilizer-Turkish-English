English:

R6 Server Optimizer – Standalone EXE
The .exe file is fully standalone – it includes Python and PySide6. You can simply download it, drag it to your desktop, and double-click. No additional installation is required.

Speedtest CLI is NOT included in the EXE due to licensing and file size. The app will attempt to install it automatically via winget when you first press the Speedtest button. If winget is missing or fails, you will be prompted to install it manually from https://speedtest.net/apps/cli.

Note: The core features (ping monitoring, server locking, reset to default) work without Speedtest CLI. Only the speed test button requires it.

Testing status: The EXE has been built and tested on a single Windows 10/11 machine. The following components have NOT been tested in an environment without Python or PySide6 pre-installed. The batch script (install_dependencies.bat) is provided as a fallback – it installs Python, PySide6, and Speedtest CLI if needed. Use it if the EXE fails on your system.

TL;DR: Try the EXE first. If it complains about missing dependencies or Speedtest CLI, run the .bat file once.

Türkçe:

R6 Server Optimizer – Bağımsız EXE
.exe dosyası tamamen bağımsızdır – Python ve PySide6’yı içinde barındırır. İndirin, masaüstüne sürükleyin ve çift tıklayın. Ekstra bir kurulum gerekmez.

Speedtest CLI, EXE’nin içinde DEĞİLDİR (lisans ve dosya boyutu nedeniyle). Uygulama, Speedtest butonuna ilk bastığınızda winget üzerinden otomatik kurmayı dener. Eğer winget yoksa veya kurulum başarısız olursa, manuel kurulum talimatlarını gösteren bir hata mesajı alırsınız.

Not: Ping izleme, sunucu kilitleme ve default’a çekme özellikleri Speedtest CLI olmadan çalışır. Sadece hız testi butonu bu araca ihtiyaç duyar.

Test durumu: EXE, tek bir Windows 10/11 bilgisayarda derlenip test edilmiştir. Python veya PySide6’nın önceden kurulu olmadığı bir ortamda şu özellikler TEST EDİLMEMİŞTİR: otomatik winget kurulumu, tamamen temiz bir sistemde EXE’nin açılması. .bat dosyası (install_dependencies.bat) bir yedek olarak sunulmuştur – gerekirse Python, PySide6 ve Speedtest CLI’yi kurar. EXE sizin sisteminizde hata verirse .bat dosyasını bir kez çalıştırın.

Özet: Önce EXE’yi dene. Eksik bağımlılık veya Speedtest CLI hatası alırsan, .bat dosyasını çalıştır.

