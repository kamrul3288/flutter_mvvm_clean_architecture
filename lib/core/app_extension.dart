
extension NonNullString on String?{
  String orEmpty(){
    return this ?? "";
  }
}

extension NonNullInt on int?{
  int orNull(){
    return this ?? -1;
  }
}