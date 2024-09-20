abstract class BaseUseCase<Type, Params> {
  Future<Type> call({Params params});
}

/*
Base Usecase merupakan suatu class yang akan di implementasikan pada setiap usecase yang digunakan 
[Type] => apa yang akan dikembalikan dari data ke domain agar di tampilkan pada presentation/UI
[Parms] => sebuah data yang didapatkan dari Presentation/UI ke domain lalu ke Data 
 */

/*
Usecase merupakan daftar list apa yang bisa dilakukan user alias EVENT dan jembatan antara domain & presentation/UI

setiap usecase harus memiliki fungsi call untuk memproses event yang dilakukan user
dari fungsi call ini akan memanggil repository yang berada di folder domain
 */
