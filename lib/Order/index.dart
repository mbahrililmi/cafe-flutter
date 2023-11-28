import 'package:flutter/material.dart';
import 'package:cafe/Modal/data.dart';
import 'package:cafe/Modal/order.dart';
import 'package:cafe/Finish/index.dart' as finish;

class MainScreen extends StatelessWidget {
  final Cafe place;
  const MainScreen({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cafe. Size: ${MediaQuery.of(context).size.width}'),
      ),
      // body: const TourismPlaceList(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Order(place: place);
        },
      ),
    );
  }
}

class Order extends StatefulWidget {
  final Cafe place;

  const Order({Key? key, required this.place}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final nameInput = TextEditingController();
  final orderInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset(widget.place
            .imageAsset), // Gunakan widget.place untuk mengakses properti place
        Container(
          margin: const EdgeInsets.only(top: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  widget.place
                      .name, // Gunakan widget.place untuk mengakses properti name
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                    vertical: 16.0, horizontal: 16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: const EdgeInsets.only(bottom: 10.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Enter your Name',
                            prefixIcon: Icon(Icons.person),
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10.0),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          controller: nameInput,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10.0),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Enter your Order',
                            prefixIcon: Icon(Icons.food_bank_outlined),
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(10.0),
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          controller: orderInput,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 10.0),
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              int initialOrderListLength =
                                  OrderData.orderList.length;

                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Processing Data'),
                                ),
                              );

                              OrderInput newOrder = OrderInput(
                                idOrder: OrderData.orderList.length + 1,
                                name: nameInput.text,
                                order: orderInput.text,
                              );

                              OrderData.orderList.add(newOrder);

                              // Bersihkan input fields setelah menambahkan data
                              nameInput.clear();
                              orderInput.clear();

                              // Perbarui UI untuk mencerminkan perubahan
                              setState(() {});

                              int finalOrderListLength =
                                  OrderData.orderList.length;

                              if (finalOrderListLength >
                                  initialOrderListLength) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Data Added'),
                                  ),
                                );

                                // Pastikan list tidak kosong sebelum mengakses last
                                if (OrderData.orderList.isNotEmpty) {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return finish.MainScreen(
                                      place: widget.place,
                                      idOrder: OrderData.orderList.last,
                                    );
                                  }));
                                }
                              }
                            }
                          },
                          child: const Text('Order'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
