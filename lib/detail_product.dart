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
              margin: const EdgeInsets.all(10.0),
              child: Text(
                product.productName,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: Text(
                product.priceProduct,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.red,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(15.0),
              child: const Text(
                'Description',
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 15.0, right: 15.0),
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
