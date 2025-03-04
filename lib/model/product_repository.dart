import 'package:cloud_firestore/cloud_firestore.dart';
import 'product.dart';

class ProductRepository {
  final FirebaseFirestore _firebase;

  ProductRepository({FirebaseFirestore? firebase}) :
    _firebase = firebase ?? FirebaseFirestore.instance;

  Future<List<Product>> getAllProducts() async {
    final queryResult = await _firebase.collection('products').get();
    final products = queryResult.docs.map(_docToProduct).toList();
    return products;
  }

  Stream<List<Product>> getAllProductsForever() {
    final queryResult = _firebase.collection('products').snapshots();
    final products = queryResult.map(
            (snapshot) =>
                snapshot.docs.map(_docToProduct).toList()
    );
    return products;
  }

  Product _docToProduct(QueryDocumentSnapshot<Map<String, dynamic>> doc) {
    final data = doc.data();
    return Product(
        data['name'],
        '',
        DateTime.now(),
        0,
        [],
    []
    );
  }
}