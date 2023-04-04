class Slot {
  final String time;
  final String price;

  Slot({
    required this.time,
    required this.price,
  });

  List<Slot> slots = [
    Slot(time: "12:00am - 1:00am", price: "1300"),
  ];
}
