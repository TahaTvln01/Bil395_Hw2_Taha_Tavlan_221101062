# Bil395_Hw2_Taha_Tavlan_221101062

Ada Calculator

Genel Bakış
  Bu proje, Ada programlama dili kullanılarak geliştirilmiş basit bir komut satırı hesap makinesidir. Kullanıcıdan alınan matematiksel ifadeleri değerlendirir ve sonucu ekrana yazdırır. Toplama (+), çıkarma (-), çarpma (*) ve bölme (/) işlemlerini destekler.

Nasıl İmplement Edildi?
  Ada.Text_IO ve Ada.Integer_Text_IO kütüphaneleri kullanılarak giriş ve çıkış işlemleri gerçekleştirildi.
  Kullanıcının girdiği matematiksel ifade, operatör ve operandlar ayrıştırılarak değerlendirildi.
  Hatalı girişler için temel hata kontrol mekanizmaları eklendi.
  Döngü yapısı kullanılarak kullanıcı çıkış yapmak isteyene kadar sürekli giriş alındı.

Kurulum:
  Öncelikle GNAT (GNU Ada Compiler) yüklenmelidir
    sudo apt update  
    sudo apt install gnat  

Çalıştırma
  Kodun derlenmesi ve çalıştırılması için aşağıdaki adımları takip edin:
    taha@taha-virtual-machine:~/Bil395/calculator_ada$ gnatmake calculator.adb  
    taha@taha-virtual-machine:~/Bil395/calculator_ada$ ./calculator  

Örnek Terminal Çıktısı:
  taha@taha-virtual-machine:~/Bil395/calculator_ada$ gnatmake calculator.adb  
  taha@taha-virtual-machine:~/Bil395/calculator_ada$ ./calculator  
  > 5 * 3  
  Result:  15  
  > 15 + 4  
  Result:  19  
  > 32 - 2  
  Result:  30  
  > (32 / 4) + 4  
  Error: Invalid expression  
  Result:  0  
  > 3 * 4  
  Result:  12  
  > exit  
  taha@taha-virtual-machine:~/Bil395/calculator_ada$  

Notlar
  İşlemler yalnızca iki operand ve bir operatör içermelidir (örneğin: 5+3). Parantez içeren veya birden fazla operatör içeren ifadeler desteklenmez.
  Bölme işlemi sırasında sıfıra bölme hatası almamak için dikkatli olunmalıdır.
  Çıkış yapmak için "exit" komutu kullanılmalıdır.



Perl Calculator

Genel Bakış
  Bu proje, Perl programlama dili kullanılarak geliştirilmiş bir komut satırı hesap makinesidir. Kullanıcıdan alınan matematiksel ifadeleri değerlendirir ve sonucu ekrana yazdırır. Değişken tanımlama desteği sunar ve temel aritmetik işlemleri destekler.

Nasıl İmplement Edildi?
  Perl'in eval fonksiyonu kullanılarak matematiksel ifadeler dinamik olarak hesaplandı.
  Kullanıcının değişken tanımlayabilmesi için bir değişken tablosu (%variables) oluşturuldu.
  Kullanıcının girdiği ifadeler ayrıştırılarak değerlendirildi ve değişkenler gerektiğinde ilgili değere çevrildi.
  Hatalı girişler için temel hata kontrol mekanizmaları eklendi.
  Döngü yapısı kullanılarak kullanıcı çıkış yapmak isteyene kadar sürekli giriş alındı.

Kurulum
  Perl genellikle Ubuntu sistemlerinde ön yüklü gelir. Eğer sisteminizde kurulu değilse, aşağıdaki komut ile yükleyebilirsiniz:
    sudo apt update  
    sudo apt install perl  

Çalıştırma
  Kodun çalıştırılması için aşağıdaki adımları takip edin:
    cd ile dosyanın bulunduğu konuma gidin
    perl calculator.pl  

Örnek Terminal Çıktısı
  taha@taha-virtual-machine:~/Bil395$ perl "/home/taha/Bil395/calculator_perl/calculator.pl"  
  Perl Calculator. Type 'exit' to quit.  
  > 5 * 7  
  Result: 35  
  > (32 * 2) / 16  
  Result: 4  
  > 72 + 38 * 2  
  Result: 148  
  > exit  
  taha@taha-virtual-machine:~/Bil395$  

Notlar
  Kullanıcı değişken tanımlayabilir (x = 10, y = x + 5). Değişkenler, önceki hesaplamalarda kullanılabilir.
  Parantez kullanımı desteklenir ((5 + 3) * 2 gibi).
  Geçersiz ifadeler için hata mesajları görüntülenir.
  Çıkış yapmak için "exit" komutu kullanılmalıdır.



Prolog Calculator

Prolog Hesap Makinesi
Özellikler
   Temel aritmetik işlemleri destekler: `+`, `-`, `*`, `/`
   Değişken atama özelliği
   Etkileşimli komut satırı arayüzü
   SWI-Prolog ile çalışır
  
Kurulum
  SWI-Prolog'u [SWI-Prolog Resmi Web Sitesi](https://www.swi-prolog.org/) üzerinden indirin ve kurun.
  Bu depoyu klonlayın veya `calculator.pl` dosyasını indirin.
  `calculator.pl` dosyasını çalışma dizininize yerleştirin.

Kullanım
  Hesap Makinesini Çalıştırma
    Terminali açın ve `calculator.pl` dosyasının bulunduğu dizine gidin.
    SWI-Prolog'u başlatın:
     swipl
    Prolog dosyasını yükleyin:
     ?- ['calculator.pl'].
    Hesap makinesini başlatın:
     ?- start.
    Çıkış yapmak için `exit.` yazıp Enter'a basın.

Örnek Terminal Çıktısı
  ?- ['calculator.pl'].
  true.

  ?- start.
  Prolog Hesap Makinesi. Çıkmak için "exit." yazın.
  > 5 + 4
  Sonuç: 9
  > (5 + 4) * 2
  Sonuç: 18
  > X is 5 + 4
  X = 9
  > Y is X * 2
  Y = 18
  > exit.

Kod Açıklaması
- `calculate/2`: Aritmetik ifadeleri özyinelemeli olarak değerlendirir.
- `assign/2`: Değişkenlere dinamik olarak değer atar.
- `get_value/2`: Bir değişkenin değerini döndürür veya tanımlı değilse 0 olarak ayarlar.
- `start/0`: Etkileşimli bir komut satırı arayüzü sağlar.
- `process/1`: Kullanıcı girdisini işler, ifadeleri veya atamaları değerlendirir.




Rust Hesap Makinesi

Özellikler
  Temel aritmetik işlemleri destekler: `+`, `-`, `*`, `/`
  Değişken atama özelliği (örneğin: `x = 5`)
  Etkileşimli komut satırı arayüzü
  Rust programlama dili ile geliştirilmiştir

Kurulum
  Rust'ı [Rust Resmi Web Sitesi](https://www.rust-lang.org/) üzerinden yükleyin.
  Bu depoyu klonlayın veya `calculator.rs` dosyasını indirin.
  Rust yüklü olduğundan emin olun:
    rustc --version
  Programı derleyin:
    rustc calculator.rs

Kullanım
  Hesap Makinesini Çalıştırma
  Terminali açın ve derlenmiş dosyayı çalıştırın:
    ./calculator
  Komut satırına aritmetik ifadeler veya değişken atamaları girin.
  Çıkış yapmak için `exit` yazıp Enter'a basın.

Örnek Terminal Çıktısı
  $ ./calculator
  Simple Calculator in Rust (Type 'exit' to quit)
  > 5 4 +
  Result: 9
  > 5 4 + 2 *
  Result: 18
  > x = 5
  Result: 5
  > y = x 2 * // ÇALIŞMIYOR!!!
  Result: 10 // ÇALIŞMIYOR!!!
  > exit

Kod Açıklaması
- `eval_expression`: Aritmetik ifadeleri değerlendirir ve değişken desteği sağlar.
- `main`: Etkileşimli komut satırı arayüzünü yönetir.
- Değişkenler bir `HashMap` kullanılarak saklanır.




Scheme Hesap Makinesi

Özellikler
  Temel aritmetik işlemleri destekler: `+`, `-`, `*`, `/`
  Etkileşimli komut satırı arayüzü
  Scheme dilinde yazılmıştır

Kurulum
  Bir Scheme yorumlayıcısı yükleyin:
    MIT/GNU Scheme: [MIT/GNU Scheme Resmi Sitesi](https://www.gnu.org/software/mit-scheme/)
    Racket: [Racket Resmi Sitesi](https://racket-lang.org/)
    Guile: [Guile Resmi Sitesi](https://www.gnu.org/software/guile/)
  `calculator.scm` dosyasını indirin veya oluşturun.

Kullanım
  Hesap Makinesini Çalıştırma
   scheme
   (load "calculator.scm")
   (calculator)

Örnek Terminal Çıktısı
  Scheme Calculator. Type (exit) to quit.
  > (+ 5 4)
  Result: 9
  > (* (+ 5 4) 2)
  Result: 18
  > (exit)

Kod Açıklaması
  `calculator`: Kullanıcıdan giriş alır, ifadeyi değerlendirir ve sonucu ekrana yazdırır.
  `loop`: Kullanıcı çıkış yapana kadar tekrar çalışır.
  `(eval input (interaction-environment))`: Kullanıcının girdisini değerlendirir ve sonucu döndürür.

## Yazar
Taha Tavlan (221101062)

























  
