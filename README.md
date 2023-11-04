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
| Icon, IconButton, dan Text adalah contoh dari stateless widget | Checkbox, Radio, Slider, Form, dan TextField adalah contoh dari stateful widget |
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

