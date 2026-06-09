class Period {
  int? id;
  String name;
  String? startDate;
  String? endDate;
  int isClosed;
  Period({this.id, required this.name, this.startDate, this.endDate, this.isClosed = 0});
  Map<String, dynamic> toMap() => {'id': id, 'name': name, 'start_date': startDate, 'end_date': endDate, 'is_closed': isClosed};
  factory Period.fromMap(Map<String, dynamic> m) => Period(id: m['id'], name: m['name'], startDate: m['start_date'], endDate: m['end_date'], isClosed: m['is_closed'] ?? 0);
}

class Collector {
  int? id;
  String name;
  String? phone;
  String? notes;
  Collector({this.id, required this.name, this.phone, this.notes});
  Map<String, dynamic> toMap() => {'id': id, 'name': name, 'phone': phone, 'notes': notes};
  factory Collector.fromMap(Map<String, dynamic> m) => Collector(id: m['id'], name: m['name'], phone: m['phone'], notes: m['notes']);
}

class Ledger {
  int? id;
  int? collectorId;
  String name;
  String? notes;
  Ledger({this.id, this.collectorId, required this.name, this.notes});
  Map<String, dynamic> toMap() => {'id': id, 'collector_id': collectorId, 'name': name, 'notes': notes};
  factory Ledger.fromMap(Map<String, dynamic> m) => Ledger(id: m['id'], collectorId: m['collector_id'], name: m['name'], notes: m['notes']);
}

class Feeder {
  int? id;
  String name;
  String? notes;
  Feeder({this.id, required this.name, this.notes});
  Map<String, dynamic> toMap() => {'id': id, 'name': name, 'notes': notes};
  factory Feeder.fromMap(Map<String, dynamic> m) => Feeder(id: m['id'], name: m['name'], notes: m['notes']);
}

class Square {
  int? id;
  String name;
  int? collectorId;
  String? notes;
  Square({this.id, required this.name, this.collectorId, this.notes});
  Map<String, dynamic> toMap() => {'id': id, 'name': name, 'collector_id': collectorId, 'notes': notes};
  factory Square.fromMap(Map<String, dynamic> m) => Square(id: m['id'], name: m['name'], collectorId: m['collector_id'], notes: m['notes']);
}

class Tariff {
  int? id;
  String name;
  double pricePerKwh;
  String? notes;
  Tariff({this.id, required this.name, required this.pricePerKwh, this.notes});
  Map<String, dynamic> toMap() => {'id': id, 'name': name, 'price_per_kwh': pricePerKwh, 'notes': notes};
  factory Tariff.fromMap(Map<String, dynamic> m) => Tariff(id: m['id'], name: m['name'], pricePerKwh: (m['price_per_kwh'] ?? 0).toDouble(), notes: m['notes']);
}

class Subscriber {
  int? id;
  String name;
  String? meterNumber;
  double installReading;
  String? phone;
  int? squareId;
  int? feederId;
  int? tariffId;
  double subscriptionFee;
  String? route;
  String? neighbor;
  double debt;
  String? notes;
  String? createdAt;
  String? updatedAt;
  Subscriber({this.id, required this.name, this.meterNumber, this.installReading = 0.0, this.phone, this.squareId, this.feederId, this.tariffId, this.subscriptionFee = 0.0, this.route, this.neighbor, this.debt = 0.0, this.notes, this.createdAt, this.updatedAt});
  Map<String, dynamic> toMap() => {
    'id': id, 'name': name, 'meter_number': meterNumber, 'install_reading': installReading,
    'phone': phone, 'square_id': squareId, 'feeder_id': feederId, 'tariff_id': tariffId,
    'subscription_fee': subscriptionFee, 'route': route, 'neighbor': neighbor,
    'debt': debt, 'notes': notes, 'created_at': createdAt, 'updated_at': updatedAt
  };
  factory Subscriber.fromMap(Map<String, dynamic> m) => Subscriber(
    id: m['id'], name: m['name'], meterNumber: m['meter_number'],
    installReading: (m['install_reading'] ?? 0).toDouble(), phone: m['phone'],
    squareId: m['square_id'], feederId: m['feeder_id'], tariffId: m['tariff_id'],
    subscriptionFee: (m['subscription_fee'] ?? 0).toDouble(), route: m['route'],
    neighbor: m['neighbor'], debt: (m['debt'] ?? 0).toDouble(), notes: m['notes'],
    createdAt: m['created_at'], updatedAt: m['updated_at']
  );
}

class Reading {
  int? id;
  int? subscriberId;
  int? periodId;
  double prevReading;
  double currReading;
  double consumption;
  double unitPrice;
  double totalAmount;
  int isPaid;
  String? meterChangeNote;
  String? createdAt;
  Reading({this.id, this.subscriberId, this.periodId, this.prevReading = 0.0, this.currReading = 0.0, this.consumption = 0.0, this.unitPrice = 0.0, this.totalAmount = 0.0, this.isPaid = 0, this.meterChangeNote, this.createdAt});
  Map<String, dynamic> toMap() => {
    'id': id, 'subscriber_id': subscriberId, 'period_id': periodId,
    'prev_reading': prevReading, 'curr_reading': currReading, 'consumption': consumption,
    'unit_price': unitPrice, 'total_amount': totalAmount, 'is_paid': isPaid,
    'meter_change_note': meterChangeNote, 'created_at': createdAt
  };
  factory Reading.fromMap(Map<String, dynamic> m) => Reading(
    id: m['id'], subscriberId: m['subscriber_id'], periodId: m['period_id'],
    prevReading: (m['prev_reading'] ?? 0).toDouble(), currReading: (m['curr_reading'] ?? 0).toDouble(),
    consumption: (m['consumption'] ?? 0).toDouble(), unitPrice: (m['unit_price'] ?? 0).toDouble(),
    totalAmount: (m['total_amount'] ?? 0).toDouble(), isPaid: m['is_paid'] ?? 0,
    meterChangeNote: m['meter_change_note'], createdAt: m['created_at']
  );
}
