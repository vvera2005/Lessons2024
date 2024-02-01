import 'dart:convert';
import 'dart:io';

List<Map<String, dynamic>> decodeJson(String data) {
  List<dynamic> jsonList = jsonDecode(data);
  List<Map<String, dynamic>> resultList =
      jsonList.map((dynamic item) => item as Map<String, dynamic>).toList();
  return resultList;
}

String encodeJson(List<Map<String, dynamic>> ml) {
  String mstr = jsonEncode(ml);
  return mstr;
}

List<String> FindBookByYear(List<Map<String, dynamic>> data, int year) {
  List<String> BookNames = [];
  for (Map el in data) {
    if (el["publicYear"] == year) {
      BookNames.add(el["name"]);
    }
  }
  return BookNames;
}

void writeToFile(String text, String filename) {
  File mfile = File(filename);
  mfile.writeAsString(text);
}

void main() {
  String jsonString =
      '[{"name": "Harry Potter","publicYear": 2005,"Author" : "JK Rouling"},{"name": "KUKU","publicYear": 2023,"Author" : "Jkdm"},{"name": "book","publicYear": 2015,"Author" : "ppasxl"}]';
  List<Map<String, dynamic>> mydata = decodeJson(jsonString);
  List<String> a = FindBookByYear(mydata, 2023);
  print(a);
}
