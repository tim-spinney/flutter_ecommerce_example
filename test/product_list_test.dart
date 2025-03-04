
import 'package:ecommerce/model/product_repository.dart';
import 'package:ecommerce/product_list.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:provider/provider.dart';

import 'product_list_test.mocks.dart';

@GenerateMocks([ProductRepository])
main() {
  testWidgets('TODO', (tester) async {
    final mockRepository = MockProductRepository();

    when(mockRepository.getAllProducts()).thenReturn(Future.value(
      []
    ));

    await tester.pumpWidget(Provider<ProductRepository>.value(
      value: mockRepository,
      child: const ProductList()
    ));
  });
}