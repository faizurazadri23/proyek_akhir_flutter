import 'package:flutter/material.dart';
import 'package:proyek_akhir_flutter/model/product.dart';

class DetailProductScreen extends StatelessWidget {
  final Product product;

  const DetailProductScreen({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail ${product.productName}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(product.imageProduct),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                product.productName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              product.priceProduct,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.red,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Description',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                product.description,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 12.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
