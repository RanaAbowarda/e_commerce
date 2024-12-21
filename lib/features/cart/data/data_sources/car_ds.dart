
import 'package:e_commerce/di.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/api/api_manager.dart';
import '../../../../core/api/end_points.dart';
import '../../../../core/cache/shared_pref.dart';
import '../models/CartModel.dart';

abstract class CartDS {
  Future<CartModel> getCartItems();
}

@Injectable(as: CartDS)
class CartDSImpl implements CartDS {
  @override
  Future<CartModel> getCartItems() async {
    var response =
        await getIt<ApiManager>().getData(endPoint: EndPoints.cart, headers: {
      'token': CacheHelper.getData<String>('token'),
    });

    CartModel cartModel = CartModel.fromJson(response);
    return cartModel;
  }

  var data={
    "status": "success",
    "numOfCartItems": 3,
    "cartId": "66e43d6312252165769371df",
    "data": {
      "_id": "66e43d6312252165769371df",
      "cartOwner": "66bd5056ed0dc0016c64dcfb",
      "products": [
        {
          "count": 3,
          "_id": "66e43d6312252165769371e0",
          "product": {
            "subcategory": [
              {
                "_id": "6407f243b575d3b90bf957ac",
                "name": "Men's Clothing",
                "slug": "men's-clothing",
                "category": "6439d5b90049ad0b52b90048"
              }
            ],
            "_id": "6428dfa0dc1175abc65ca067",
            "title": "Logo T-Shirt Green",
            "quantity": 111,
            "imageCover": "https://ecommerce.routemisr.com/Route-Academy-products/1680400287654-cover.jpeg",
            "category": {
              "_id": "6439d5b90049ad0b52b90048",
              "name": "Men's Fashion",
              "slug": "men's-fashion",
              "image": "https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"
            },
            "brand": {
              "_id": "64089dc924b25627a25315a8",
              "name": "Jack & Jones",
              "slug": "jack-and-jones",
              "image": "https://ecommerce.routemisr.com/Route-Academy-brands/1678286281363.png"
            },
            "ratingsAverage": 2,
            "id": "6428dfa0dc1175abc65ca067"
          },
          "price": 744
        },
        {
          "count": 1,
          "_id": "66e43da21225216576937468",
          "product": {
            "subcategory": [
              {
                "_id": "6407f243b575d3b90bf957ac",
                "name": "Men's Clothing",
                "slug": "men's-clothing",
                "category": "6439d5b90049ad0b52b90048"
              }
            ],
            "_id": "6428de2adc1175abc65ca05b",
            "title": "Softride Enzo NXT CASTLEROCK-High Risk R",
            "quantity": 173,
            "imageCover": "https://ecommerce.routemisr.com/Route-Academy-products/1680399913757-cover.jpeg",
            "category": {
              "_id": "6439d5b90049ad0b52b90048",
              "name": "Men's Fashion",
              "slug": "men's-fashion",
              "image": "https://ecommerce.routemisr.com/Route-Academy-categories/1681511865180.jpeg"
            },
            "brand": {
              "_id": "64089d5c24b25627a253159f",
              "name": "Puma",
              "slug": "puma",
              "image": "https://ecommerce.routemisr.com/Route-Academy-brands/1678286172219.png"
            },
            "ratingsAverage": 2.8,
            "id": "6428de2adc1175abc65ca05b"
          },
          "price": 2999
        },
        {
          "count": 1,
          "_id": "66e4787fe31c7468699696ef",
          "product": {
            "subcategory": [
              {
                "_id": "6407f1bcb575d3b90bf95797",
                "name": "Women's Clothing",
                "slug": "women's-clothing",
                "category": "6439d58a0049ad0b52b9003f"
              }
            ],
            "_id": "6428e997dc1175abc65ca0a1",
            "title": "Woman Shawl",
            "quantity": 220,
            "imageCover": "https://ecommerce.routemisr.com/Route-Academy-products/1680402838276-cover.jpeg",
            "category": {
              "_id": "6439d58a0049ad0b52b9003f",
              "name": "Women's Fashion",
              "slug": "women's-fashion",
              "image": "https://ecommerce.routemisr.com/Route-Academy-categories/1681511818071.jpeg"
            },
            "brand": {
              "_id": "64089bbe24b25627a253158b",
              "name": "DeFacto",
              "slug": "defacto",
              "image": "https://ecommerce.routemisr.com/Route-Academy-brands/1678285758109.png"
            },
            "ratingsAverage": 4.8,
            "id": "6428e997dc1175abc65ca0a1"
          },
          "price": 149
        }
      ],
      "createdAt": "2024-09-13T13:25:55.600Z",
      "updatedAt": "2024-09-14T11:24:56.774Z",
      "__v": 2,
      "totalCartPrice": 5380
    }
  };
}
