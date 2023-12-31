
abstract class IronMan {
  var name;
  var suitColor;

  IronMan(this.name,this.suitColor);
  // This is an abstract method. It must be implemented by subclasses.
  void fly();

  // This is an abstract method. It must be implemented by subclasses.
  void shootLasers();

  // This is an abstract method. It must be implemented by subclasses.
  void withstandDamage();
}

//@override 구문을 사용하여 abstract method 구현
class Mark50 extends IronMan {

  Mark50(String name,String suitColor) : super(name,suitColor);

  @override
  void fly(){
    print('$name is fly');
  }

  @override
  void shootLasers(){
    print('$suitColor is shoot Laser!');
  }

  @override
  void withstandDamage(){
    print('$name is make huge Damage!');
  }

}


void main(){
  var mark50 = Mark50('Mark50','red');

  mark50.fly();
  mark50.shootLasers();
  mark50.withstandDamage();
}