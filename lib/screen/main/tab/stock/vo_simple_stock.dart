class SimpleStock{
  final String Name;

  SimpleStock(this.Name);

  factory SimpleStock.fromJson(dynamic json){
    return SimpleStock(json["name"]);
  }

  @override
  String toString() {
    return Name;
  }
}