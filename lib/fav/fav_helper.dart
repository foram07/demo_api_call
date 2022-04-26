import 'package:demo_api_call/fav/FavModel.dart';

class FavoriteHelper{

  static var favlist=[
   FavModel("Neha", "Bhagwan Bhuvan, Andheri Kurla Road, Opp Police Station, Andheri (west)"),
    FavModel("Anjali", "2507, Hudson Lane, Kingsway Camp)"),
    FavModel("Soham", " Shop No 8, Surang Shopping Centre, Near Silver Plaza, Station Road, Santacruz(w)"),
    FavModel("Radha", "15th Floor, 28 Gopal Das Bhawan, Barakhamba Lane"),
    FavModel("Shina", " 572/573, Os;petblr-53, Chickpet"),
    FavModel("Rina", "Ghatkopar Ind Estate,d204/a, Lbs Road, Ghatkopar (w)"),
    FavModel("Vijay", "Frontera Río Dulce Livington Río Dulce"),
    FavModel("Jay", "Barrio Central"),
    FavModel("Amir", "8 Av Norte No.20 Col Centro, Tapachula"),
    FavModel("Salman", "6A. Calle 9-117, Zona 1 Centro Comercial Plaza Del Sol Local 1"),
    FavModel("Shweta", "7 Av 2-30 Z-1"),
    FavModel("Kajal", " 4 Av 7-49 Z-1"),
    FavModel("Karishma", " Müürivahe 14"),
    FavModel("Krish", "Metsa 44"),
    FavModel("Kruti", "Ghatkopar Ind Estate,d204/a, Lbs Road, Ghatkopar (w)"),
    FavModel("Kashi", "Frontera Río Dulce Livington Río Dulce"),
    FavModel("Kamolika", "Bhagwan Bhuvan, Andheri Kurla Road, Opp Police Station, Andheri (west)"),
    FavModel("Jayesh", "Bhagwan Bhuvan, Andheri Kurla Road, Opp Police Station, Andheri (west)"),
    FavModel("Jordan", "Frontera Río Dulce Livington Río Dulce"),
    FavModel("Paul", "Bhagwan Bhuvan, Andheri Kurla Road, Opp Police Station, Andheri (west)"),
    FavModel("Tom", "Frontera Río Dulce Livington Río Dulce"),
    FavModel("Harry", "Ghatkopar Ind Estate,d204/a, Lbs Road, Ghatkopar (w)"),
    FavModel("Shejal", "Bhagwan Bhuvan, Andheri Kurla Road, Opp Police Station, Andheri (west)"),
    FavModel("Shruti", "Frontera Río Dulce Livington Río Dulce"),
  ];


  static FavModel getFavItem(int position) {
    return favlist[position];
  }

  static var itemCount = favlist.length;


}