import 'package:flutter/material.dart';
import 'package:proyek_akhir_flutter/detail_product.dart';
import 'package:proyek_akhir_flutter/model/product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Home'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            final Product product = productList[index];

            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailProductScreen(product: product);
                }));
              },
              child: Card(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                        flex: 1,
                        child: Image.asset(
                          product.imageProduct,
                        )),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(product.productName,
                                style: const TextStyle(fontSize: 16.0)),
                            const SizedBox(height: 10),
                            Text(
                              product.description,
                              maxLines: 5,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: productList.length,
        ));
  }
}
