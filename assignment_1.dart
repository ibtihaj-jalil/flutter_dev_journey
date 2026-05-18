

class parent {

  List<int> _numbers=[1,2,3,4,5,6,7,8,9];

  Map<String ,dynamic> _info={
    "name":"Ibtihaj",
    "age":22,
    "dept":"cse",
    "cgpa":"2.90"
  };

  List<int> numbers() {
    return _numbers.where((n) => n % 2 != 0).toList();
  }
  dynamic info(String key) {
    return _info[key];
  }
}

class child extends parent{

  void x(Function fun){

    print(fun());
  }

}

void main() {
  child c= child();

  print(c.numbers());
  print(c.info("name"));

  c.x(()=> "Hello");


}