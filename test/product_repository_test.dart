
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/model/product_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([FirebaseFirestore])
main() {
  test('TODO', () {
    final mockFirestore = MockFirebaseFirestore();
    final repository = ProductRepository(firebase: mockFirestore);
  });
}