// order.dart
class OrderData {
  static List<OrderInput> orderList = [
    OrderInput(
      idOrder: 1,
      name: 'Bahril',
      order: 'Nasi Goreng',
    )
  ];
}

class OrderInput {
  int idOrder;
  String name;
  String order;

  OrderInput({
    required this.idOrder,
    required this.name,
    required this.order,
  });
}
