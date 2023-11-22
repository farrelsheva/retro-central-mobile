# Farrel Sheva A. 2206033044 
--- 
## Tugas 7

### Q7.1 
#### Apa perbedaan antara Stateless dan stateful widget dalam konteks pengembangan aplikasi flutter?
| Stateless | Stateful |
| --- | --- |
| Stateless widget adalah widget yang tidak memiliki state. | Stateful widget adalah widget yang memiliki state. |
| Tidak mempunyai setState() | Memiliki setState() |
| Tidak dapat berubah seiring waktu | Dapat berubah seiring waktu |
| Icon, IconButton, dan Text adalah cntoh dari stateless widget | Checkbox, Radio, Slider, Form, dan TextField adalah contoh dari stateful widget |
| Tidak Berubah, Layout bersifat static, Mendisplay data dari Constructor| Berubah saat berinteraksi dengan User, bisa berubah sesuai input |

### Q7.2
#### Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

| Widget | Fungsi |
| --- | --- |
| MyApp | merupakan root widget dari aplikasi flutter. |
| MyHome | merupakan widget yang berisi tampilan utama dari aplikasi. |
| ShopCard | merupakan widget yang berisi tampilan dari card yang berisi Judul dan Icon untuk diclick |
| Icon | merupakan widget yang berisi icon yang akan ditampilkan. |
| Scaffold |  mengimplementasikan desain visual dasar untuk material design apps. |
| AppBar |  menampilkan judul dan tombol aksi di bagian atas aplikasi. |
| SingleChildScrollView | memungkinkan konten di dalamnya dapat di scroll. |
| Padding | menambahkan jarak antara widget. |
| Column | menampilkan widget secara vertical. |
| Text | Menampilkan text|
| Gridview.count | Membuat Grid untuk menggarrange shopcards|
| Container | Membuat kotak untuk widget |
| Center | Menengahkan widget |

### Q7.3
#### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)

**File main.dart**
- Membuat sebuah flutter project baru di direktori yang dinginkan dengan `flutter create retro_central`
- membuat file bernama `menu.dart` di dalam folder `lib`, ini akan menjadi file  yang akan digunakan untuk menampilkan menu utama
- import `material.dart` dalam file `menu.dart`, karena kita akan menggunakan widget dari material design
- Pindahkan kode homepage ke dalam file `menu.dart` dari file `main.dart`, ini akan menjadi tampilan utama dari aplikasi
- import `menu.dart` ke dalam file `main.dart` melalui `package:retro_central/menu.dart`, agar dapat digunakan


** Membuat Widget untuk page menu**
- Ubah homepage dari sebuah stateful widget menjadi stateless widget, karena kita tidak akan menggunakan state dalam tampilan utama
    - Untuk melakkukan ini kita bisa mengubah `class MyHomePage extends StatefulWidget` menjadi `class MyHomePage extends StatelessWidget`, Menghapus declaration dan requirement titlenya, dan menjadikan key sebagai paramater optional di constructor `MyHomePage({Key? key}) : super(key: key);`
- Karena kita tidak akan menggunakan state, maka kita bisa menghapus `_MyHomePageState` dan `createState()` di dalam `MyHomePage`
- Sebagai pengganti dari `createState()` kita bisa mengubah `build()` menjadi `build(BuildContext context)`, build kita akan mereturn sebuah widget `scaffold` yang merupakan widget yang akan mengimplementasikan desain visual dasar untuk material design apps

**Membuat Widget untuk ShopCard**
- Pertama kita perlu membuat class ShopCard yang mendefinisikan attribut-attribut yang akan dimiliki widget kita
- dengan ini kita bisa menambah shopcard ke dalam list shopcard yang akan ditampilkan
- Di dalam myHomePage kita akan membuat sebuah list yang berisi shopcard yang akan ditampilkan
- Dalam build scaffold myHomePage kita akan membuat Appbar dan body yang merupakan singleChildScrollView yang akan menampilkan list shopcard yang telah kita buat, container shopcard merupakan widget Gridview.count yang akan menampilkan shopcard-shopcard di dalam list kita.
- MODIFIKASI: dalam shopcard, saya menambahkan attribut colors yang akan menampung spesifikasi warna ShopCardnya
- Di Gridview, kita akan mengset children sebagai iterasi dari semua shopcard di list menggunakan method map.
- Setelah cara pendisplayan dalam HomePage selesai kita perlu membuat tampilan Cardnya sendiri juga
- Kita perlu membuat sebuah class ShopCard yang merupakan stateless widget.
- Attribut setiap Card ini adalah class Shopcard yang kita buat tadi, ini akan memudahkan kita untuk mengakses attribut-attribut yang ada di dalamnya
- Widget ini akan meng-build sebuah Material yang berisi Inkwell (sebuah material yang merespon ketika di click) yang berisi attribut-attribut tadi yang ketika diclick akan memunculkan sebuah Snackbar yang merupakan notifikasi yang akan muncul di bagian bawah layar
- Snackbar ini akan menampilkan nama dari shopcard yang diclick
- Di dalam inkwell, akan ada container yang memuat Attribut Icon dan text yang kita set di dalam class ShopCard tadi
- MODIFIKASI: dengan menggunakan item.color, kita bisa memodifikasi warna dari card yang akan ditampilkan di dalam attribut `color:` di material


## Tugas 8

### Q8.1

#### Jelaskan perbedaan antara `Navigator.push()` dan `Navigator.pushReplacement()`, disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
 `Navigator.push()`
 Digunakan untuk menambahkan route baru ke dalam stack route yang ada, sehingga route yang baru ditambahkan akan ditampilkan di atas route yang sebelumnya. <br>

 Contoh dari penggunaanya adalah jika ingin bisa kembali ke route sebelumnya, seperti misalnya jika pada aplikasi belanja ingin melihat shopping cart lalu langsung balik ke browsing. <br>


`Navigator.pushreplacement()` Digunakan untuk menukar route baru dengan route yang sebelumnya, sehingga route yang sebelumnya akan dihapus dari stack route dan route yang baru akan ditambahkan ke dalam stack route. <br>

Contoh dari penggunaanya adalah jika ingin tidak bisa kembali ke route sebelumnya, seperti misalnya jika pada aplikasi login ingin langsung menuju ke home page setelah login. <br>

### Q8.2

#### Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

Single Child Layout Widget

| Widget | Fungsi |
| --- | --- |
| Align| Widget yang mengalign childnya, dan bisa mengatur sizenya tergantung size childnya |
| AspectRatio | Widget yang mengatur aspect ratio dari childnya |
| Baseline | Widget yang mengatur childnya bergantung dari Baseline childnya |
| Center | Widget yang mengatur childnya agar berada di tengah |
| ConstrainedBox | Widget yang mengatur childnya dengan batasan yang diberikan |
| Container | Widget yang versatile, digunakan untuk mengatur styling dan posisi satu child  |
| CustomSingleChildLayout | Widget yang mengatur posisi childnya dengan custom |
| Expanded | Widget yang mengatur childnya agar memenuhi space yang tersedia (di Row, Column, atau Flex) |
| FittedBox | Widget yang mengatur childnya agar sesuai dengan sizenya |
| FractionallySizedBox | Widget yang mengatur childnya dengan persentase dari parentnya |
| IntrinsicHeight | Widget yang mengatur size childnya sesuai dengan ketinggian intrinsik childnya |
| IntrinsicWidth | Widget yang mengatur size childnya sesuai dengan lebar intrinsik childnya |
| LimitedBox | Widget yang mengatur sizenya hanya saat unconstrained |
| Offstage | Widget yang menempatkan childnya di tree, tapi tidak ditampilkan. |
| OverflowBox | Widget yang mengatur childnya berbeda dari parentnya, memungkinkan child untuk meng- "overflow" parentnya |
| Padding | Widget yang mengatur childnya dengan padding yang diberikan |
| SizedBox | Widget yang memakasa size childnya dengan size yang diberikan |
| SizedOverflowBox | Widget yang mengatur childnya berbeda dari parentnya, memungkinkan child untuk meng- "overflow" parentnya, tapi dengan size yang diberikan |
| Transform | Widget yang mengaplikasikan childnya dengan transformasi yang diberikan sebelum menampilkanya |


Multi-Child Layout Widget

| Widget | Fungsi |
| --- | --- |
| Column | Widget yang melayout childrenya secara vertikal |
| CustomMultiChildLayout | Widget yang melayout childrenya secara custom |
| Flow | Widget layout flow algorithm, menggunakan delegate (FlowDelegate) untuk mengatur posisi dan dan size childrenya |
| GridView | Widget yang melayout childrenya dalam style grid dengan cells|
| IndexedStack | Widget yang menunjukkan satu childnya dari list Children, berdasarkan index dari stacknya |
| LayoutBuilder | Widget yang membangun sebuah widget tree, yang bergantung pada size parent widgetnya |
| ListBody | Widget yang mengatur childrenya secara sekuensial berdasarkan suatu axis |
| ListView | List Widget yang scorllable dan linear |
| Row | Widget yang melayout childrenya secara horizontal |
| Stack | Widget yang melayout childrenya dalam stack, membolehkan overlap antara children dengan mudah |
| Table | Layout widget dengan kolom dan baris |
| Wrap | Widget yang melayout childrenya dengan run horizontal atau vertical, bergantung pada axisnya |

Sliver Widget

| Widget | Fungsi |
| --- | --- |
| CupertinoSliverNavigationBar | Widget yang mengimplementasikan iOS style navigation bar |
| CustomScrollView | Widget yang mengimplementasikan scroll view dengan custom scroll behavior |
| SliverAppBar | AppBar yang terintegrasi dengan scroll view |
| SliverChildBuilderDelegate | Delegate yang mengatur pembuatan child widget |
| SliverChildListDelegate | Delegate yang mengatur list dari child widget |
| SliverFixedExtentList | Widget yang menempatkan children di axis yang sama dalam array yang linear |
| SliverGrid | Sliver Widget yang mengatur childrenya dalam arrangment 2 dimensi |
| SliverList | Sliver Widget yang mengatur childrenya dalam arrangment array linear di satu axis |
| SliverPadding | Sliver Widget yang mengatur padding di sisi sliver lainya |
| SliverPersistentHeader | Sliver Widget yang size berubah saat discroll ke ujung viewport  |
| SliverToBoxAdapter | Sliver Widget yang memiliki satu child yang mengisi box |

### Q8.3

#### Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
- Textfield: Saya memakai textfield untuk 3 input "nama", "harga", dan "Deskripsi", Validator yang digunakan berbeda untuk harga, namun saya menggunakan TextField karena adanya keperluan user untuk menulis semua field itu secara sendiri
- DropdownButton: Saya memakai dropdownbutton untuk input "year", karena input ini hanya membutuhkan tahun, dan tidak perlu user untuk mengetiknya sendiri, selection yang di year merupakan list dari tahun-tahun yang saya beri.

### Q8.4

#### Bagaimana penerapan clean architecture pada aplikasi Flutter?
Clean Architecture dalam Flutter merujuk kepada pendekatan arsitektur yang mementingkan _separation of concern_, yang berarti bahwa aplikasi kita akan terbagi menjadi beberapa layer yang masing-masing layer memiliki tanggung jawabnya sendiri-sendiri. <br>
Dimana layer-layer tersebut adalah:
- Presentation layer: Layer yang mengatur komponen UI kita (Dalam flutter merupakan widget), UI logic dan state management. Berkomunikasi dengan layer domain dan data layer.
- Domain layer: Layer yang mengatur business logic (Cara UI dan data layer berkomunikasi). Mengdefiniskan _Use Cases_ dan _Interactors_ (komponen yang berinteraksi dengan entitas eksternal, seperti user).
- Data Layer: Layer yang mengatur _Data Handling_ seperti pemanggilan API dan Database. Berkomunikasi dengan layer domain.

Keuntungan dari clean architecture merupakan adalah membangun aplikasi yang teratur, mudah dimantain, dan dapat dilakukan testing. Dengan membagi berbagai jenis tugas ke kelasnya sendiri sesuai dengan tanggung jawabnya, masalah bisa terisolasi dan dibenarkan. <br>
Memperlukan banyak investasi waktu dalam fase perencenaan dan pembuatan, namun memudahkan developer dalam jangka panjang.


### Q8.5

#### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step!

- Sebagai implementasi clean architecture, saya membuat direktori untuk widget dan screen yang berbeda `screens` dan `widgets` di dalam direktori `lib`.
  - Di dalam `screens`, dart file `order_form` dan `order_list` merupakan screen yang akan ditampilkan di dalam aplikasi.
  - Di dalam `widgets`, `Shop_Card`, yang merupakan item yang ditunjukkan di menu utama, dan `left drawer` yang merupakan salah satu objektif dari tugas

Order Form Page:
- Di dalam `order_form.dart` terdapat class `OrderForm` yang merupakan stateful widget yang akan menampilkan form untuk membuat order baru.
- Di dalam State OrderForm, akan ada key yang merupakan handler dari form untuk penyimpanan dan validasi.
```
final _formKey = GlobalKey<FormState>();
```
- Dalam statenya, saya menyatakan variable yang akan digunakan sebagai input, dalam konteks tugas ini, saya menambahkan  variable 'year' yang merupakan integer

```
  String _name = ' ';
  int _price = 0;
  String _description = '';
  int _year = DateTime.now().year;
```
- Untuk `name`, `price`, dan `description`, saya menggunakan `TextFormField` yang merupakan widget yang memungkinkan user untuk menginput text, dengan validator yang berbeda untuk `price` dan `year`
```
child: TextFormField(
                onChanged: (String? value) {
                  setState(() {
                    [attribute field] = value!;
                  });
                },
                validator: (String? value) {
                  if (kondisi tidak benar) {
                    return "error message";
                  }
                  return null;
                },             
```
- Bisa dilihat bahwa logika onChanged dan Validator akan mirip kecuali pada harga dan year, dimana akan menggunakan parse int untuk mengubah string menjadi integer.
- Untuk input `year`, saya menggunakan `DropdownButton` yang merupakan widget yang memungkinkan user untuk memilih dari list yang telah ditentukan.
```
 child: DropdownButton<int>(
                      isExpanded: true,
                      value: _year,
                      onChanged: (int? newValue) {
                        setState(() {
                          _year = newValue!;
                        });
                      },
```
- Di dalam `DropdownButton`, saya menggunakan `List.generate` untuk membuat list dari tahun-tahun yang akan ditampilkan di dalam dropdown

- Tombol `Save` merupakan sebuah elevatedButton yang di wrap dalam Column dan sebuah Align, rencanya adalah untuk memvalidasi form menggunakan forkmkey yang dibuat tadi lalu, setelah tervalidasi menggunakan routing untuk pergi orderlist untuk melihat item yang baru dibuat.
```
 if (_formKey.currentState!.validate()) {
                        showDialog(
                            context: context,
                            builder: (context){
                              return AlertDialog(
                                title: const Text("Console Order"),
                                content: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Name: $_name"),
                                      Text("Price: $_price"),
                                      Text("Description: $_description"),
                                      Text("Year: $_year"),
                                    ],
                                  )
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      final newOrder = Console(_name, _price, _description, _year);
                                      Navigator.pop(context, newOrder); //return newOrder object
                                    },
                                    child: const Text("Confirm"),

```
- Dilihat juga saat tombol 'save' ditekan, akan menunjukkan popup (AlertDialog) yang menunjukkan data yang telah diinput, dan akan mengembalikan object newOrder yang akan ditampilkan di orderList.

Page Order form juga bisa dinavigasi dari home page, dengan memakai if statement untuk memvalidasi page apa yang ditekan, kita bisa memanggil navigator untuk mem-push route screen yang benar
```
if (item.name == "Lihat Order"){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const OrderList()),
            );
          }
          if (item.name == "Order Console"){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  OrderForm()),
            );
          }
```

 Left Drawer: <br>
Sebagai imeplementasi Clean Architecture, saya membuat direktori bernama `widgets` yang menempatkan class-class widgets yang saya buat sebagai cara gampang mengaksesnya dan sebagai cara untuk memisahkan logic dari screen dan widget.

- Di dalam `widgets`, `left_drawer` merupakan widget yang akan menampilkan drawer di dalam aplikasi.
- Untuk membuat drawer sebagai alat navigasi, children yang saya beri adalah sebuah ListTile, yang akan memanggil Navigator untuk berpindah ke screen yang diinginkan.
```
ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Main Menu'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage())
              );
            },
```
- Dilihat dari atas ini, ListTile memiliki function onTap yang akan memanggil Navigator.pushReplacement, yang akan mengganti screen yang sedang ditampilkan dengan screen yang baru, dan tidak bisa kembali ke screen sebelumnya, dalam contoh ini, akan kembali ke MyHomePage.
- Implementasi untuk orderForm dan orderList mirip.


## Tugas 9

### Q9.1
#### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Dalam Flutter, kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu, namun hal tersebut tidak disarankan, ini dikarenakan dengan membuat model terlebih dahulu, kita bisa mengatur data yang akan kita ambil, dan memudahkan kita dalam mengakses data tersebut. <br>
dengan mneggunakan dart convert, kita bisa mengubah request dari API menjadi sebuah object yang bisa kita akses. <br>

### Q9.2
#### Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Dalam konteks projek flutter ini, CookieRequest merupakan sebuah object yang dibagikan oleh package 'Provider' kepada seluruh komponen di aplikasi,
Dengan menggunakan Provider, CookieRequest dikelola secara terpusat. Ini memudahkan pengelolaan state yang berkaitan dengan cookies, seperti menyimpan, mengupdate, dan mengakses cookies yang dibutuhkan untuk berbagai permintaan HTTP.

### Q9.3
#### jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
Data akan diambil dari JSON menggunakan package http dari flutter, menggunakana paket ini kita bisa menambil data dari Internet. Data diambil dari API Django Projeckt kita dalam bentuk json dan diubah menjadi object menggunakan dart convert. <br>
Dari object ini kita bisa mengambil data yang kita butuhkan, dan menampilkannya di dalam aplikasi flutter. <br>

### Q9.4
#### Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Dalam projek ini, Login logic semuanya dihandle oleh projek django, Aplikasi Flutter hanya bertugas untuk mengirimkan data username dan password ke API Django, menerima response dari API Django, dan beroutput sesuai dengan output request yang dikirimkan. <br>
Jika request berhasil, maka akan muncul menu yang berisi sesuai cookies user yang logged in, jika tidak, maka akan muncul pesan error yang sesuai dengan error yang diberikan oleh API Django. <br>

### Q9.5
#### Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
| Widget | Fungsi |
| --- | --- |
| MyApp | merupakan root widget dari aplikasi flutter. |
| SizedBox | Widget yang memakasa size childnya dengan size yang diberikan |
| FutureBuilder | Widget yang membangun widget berdasarkan future yang diberikan |

#### Step-by-step

- Membuat halaman login pada proyek tugas Flutter.
  - Membuat screen baru bernama `login.dart` di dalam direktori `lib/screens`.
  - Login page class merupakan stateless widget yang akan menampilkan form untuk login.
    - Menggunakan cookieRequest sebagai vehicle untuk mengirimkan data ke API Django.
    - input form merupakan TextFormField yang akan mengambil input username dan password.
    - saat berhasil loggedin, Navigator akan mengganti screen menjadi `home.dart`.

- Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
  - Dalam Django membuat app baru bernama `authentication` dengan tujuan mengambil data user secara online
  - Dengan mneggunakan Json sebagai format penerimaan data user, kita bisa mengeverifikasi user dengan authenticate dan login.
  - Kita juga bisa mengambil request untuk logout dan menggunakan jsonResponse sebagai response dari request tersebut.
  - Intinya, flutter app berkomunikasi dengan Django web app menggunakan JSON dan HTTP request.

- Membuat model kustom sesuai dengan proyek aplikasi Django.
  - Dengan Quicktype, ambil contoh data dari Django web app model, an ubah menjadi dart object yang sesuai
  - Dengan ini kita bisa membuat model yang sama dalam dart, dan membuat objek yang bisa dimasukkan ke dalam database web app.
  - Kita juga bisa mengambil data dari database untuk ditunjukkan ke dalam aplikasi flutter.

-  Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
   -  Screen baru di saya bernama "orderlist"
   -  Orderlistpage merupakan stateful widget yang akan menampilkan list dari order yang telah dibuat.
   -  Mempunyai sebuah async function yang akan mengambil data dari API Django dan mengubahnya menjadi object yang bisa ditampilkan.
   -  Dengan menggunakan FutureBuilder, kita bisa menampilkan data yang telah diambil dari API Django ke dalam widget.
   -  FutureBuilder akan menampilkan barang jika snapshotnya memiliki data, dan akan menampilkan circular progress indicator jika tidak.
   -  Item diletakkan dalam sebuah List yang diubah dari format Json menjadi model kustom yang kita buat.
   -  Dengan mneggunakan ListView.builder, kita bisa menampilkan list dari item yang telah kita buat.
   -  dan dengan key "fields" kita bisa memperlihatkan data yang kita butuhkan dari item yang telah kita buat.

- Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
  - Di Setiap item, kita bisa menambahkan sebuah button yang akan mengarahkan kita ke halaman detail dari item tersebut.
  - di OnPress, kita bisa menggunakan Navigator untuk berpindah ke halaman detail dari item tersebut dan mengambil data snapshot dari list item dan dibawa ke dalam detail page.
  - Screen `order_detail`, akan menampilkan detail dari item yang telah dipilih dengan mengakses attribut fields dari item yang di pass dalam navigator
  - memakai navigator push agar bisa kembali ke halaman sebelumnya.
