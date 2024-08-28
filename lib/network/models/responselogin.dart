class ResponseLogin {
  LoginFeed feed;

  ResponseLogin({required this.feed});

  factory ResponseLogin.fromJson(Map<String, dynamic> parsedJson) {
    return ResponseLogin(feed: LoginFeed.fromJson(parsedJson['feed']));
  }
}

class LoginFeed {
  String id;
  String updated;
  String xmlns;
  String xmlnsM;
  String xmlnsD;
  String xmlBase;

  LoginFeed(
      {required this.id,
      required this.updated,
      required this.xmlns,
      required this.xmlnsM,
      required this.xmlnsD,
      required this.xmlBase});

  factory LoginFeed.fromJson(Map<String, dynamic> parsedJson) {
    return LoginFeed(
      id: parsedJson['id'].toString(),
      updated: parsedJson['updated'].toString(),
      xmlns: parsedJson['_xmlns'].toString(),
      xmlnsM: parsedJson['_xmlns:m'].toString(),
      xmlnsD: parsedJson['_xmlns:d'].toString(),
      xmlBase: parsedJson['_xml:base'].toString(),
    );
  }
}
