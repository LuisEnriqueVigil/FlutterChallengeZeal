class EnviromentApp {
  static final EnviromentApp _enviromentApp = EnviromentApp._internal();
  
  factory EnviromentApp() {
    return _enviromentApp;
  }
  
  EnviromentApp._internal();

  static const String baseurl = "jsonplaceholder.typicode.com";

}