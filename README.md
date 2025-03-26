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
  x86_64-linux-gnu-gcc-10 -c calculator.adb  
  x86_64-linux-gnu-gnatbind-10 -x calculator.ali  
  x86_64-linux-gnu-gnatlink-10 calculator.ali  
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


































  
