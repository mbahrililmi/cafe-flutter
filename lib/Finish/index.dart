import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

import 'package:cafe/Order/index.dart';
import 'package:cafe/Modal/data.dart';
import 'package:cafe/Modal/order.dart';

final Logger _logger = Logger();

class MainScreen extends StatelessWidget {
  final Cafe place;
  final OrderInput idOrder;

  const MainScreen({Key? key, required this.place, required this.idOrder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Cetak informasi tentang idOrder ke konsol
    // Log informasi tentang idOrder menggunakan logger
    _logger.i('ID Order: ${idOrder.idOrder}');
    _logger.i('Name: ${idOrder.name}');
    _logger.i('Order: ${idOrder.order}');

    return Scaffold(
      appBar: AppBar(
        title: Text('Cafe. Size: ${MediaQuery.of(context).size.width}'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Finish(place: place, idOrder: idOrder);
        },
      ),
    );
  }
}

class Finish extends StatefulWidget {
  final Cafe place;
  final OrderInput idOrder;

  const Finish({Key? key, required this.place, required this.idOrder})
      : super(key: key);

  @override
  _FinishState createState() => _FinishState(idOrder: idOrder);
}

class _FinishState extends State<Finish> {
  final OrderInput idOrder;

  _FinishState({required this.idOrder});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.asset(widget.place
            .imageAsset), // Gunakan widget.place untuk mengakses properti place
        Container(
          margin: const EdgeInsets.only(top: 16.0, left: 16.0),
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
              // show text form order.dart
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Code Order',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            '#' +
                                widget.place.name + '-' +
                                idOrder.idOrder.toString(),
                            style: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Name',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            idOrder.name,
                            style: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Order',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          Text(
                            idOrder.order,
                            style: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
