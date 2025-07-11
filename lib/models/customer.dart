class Customer {
  final String id; // Added unique ID
  final String name;
  final String contactPerson; // Renamed from 'contact' for clarity
  final String phoneNumber; // Added phone number
  final String? email; // Added email (optional)
  final String address; // Added address
  final List<String> invoiceIds; // List of IDs of related invoices

  Customer({
    required this.id,
    required this.name,
    required this.contactPerson,
    required this.phoneNumber,
    this.email,
    required this.address,
    required this.invoiceIds,
    required String contact, // Initialize with empty list if creating new
  });

  factory Customer.fromJson(Map<String, dynamic> json) {
    return Customer(
      id: json['id'],
      name: json['name'],
      contactPerson: json['contactPerson'],
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      address: json['address'],
      invoiceIds: List<String>.from(json['invoiceIds'] ?? []),
      contact: '', // Handle potential null list
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'contactPerson': contactPerson,
      'phoneNumber': phoneNumber,
      'email': email,
      'address': address,
      'invoiceIds': invoiceIds,
    };
  }
}
