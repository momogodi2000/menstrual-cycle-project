class User{
  String name;
  int age;
  User({required this.name, required this.age});
  void changeName(String name){
    this.name = name;
  }
  void addAge(){
    age+=5;
  }

}