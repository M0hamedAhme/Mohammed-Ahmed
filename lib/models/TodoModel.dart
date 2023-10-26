class Todo{
  String? username;
  int? password;

  Todo({
    this.username,
     this.password,});

  factory Todo.fromJson(Map<String,dynamic>data)
  {
    return Todo(
         username:data['username'] ,
         password: data['password']);
  }

  Map<String,dynamic>  toJson()
  {
    return {
      "username":username,
      "password":password
    };
  }
}