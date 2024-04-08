import 'dart:io';
import 'package:http/http.dart' as http;

enum HttpMethod { post, get, put, delete }

class ApiService {
  final Map<String, String> headers = {
    HttpHeaders.contentTypeHeader: 'application/json'
  };

  final Uri _uri =
      Uri(scheme: 'https', host: 'jsonplaceholder.typicode.com');
  Future<http.Response> makeRequest(HttpMethod method, String path,
      {Map<String, String>? headers, Object? body}) async {
    if (headers != null) {
      this.headers.addAll(headers);
    }
    switch (method) {
      case HttpMethod.post:
        return await http.post(
            Uri(scheme: _uri.scheme, host: _uri.host, path: path),
            headers: headers,
            body: body);
      case HttpMethod.get:
        return await http.get(
            Uri(scheme: _uri.scheme, host: _uri.host, path: path),
            headers: headers);
      case HttpMethod.put:
        return await http.put(
            Uri(scheme: _uri.scheme, host: _uri.host, path: path),
            headers: headers,
            body: body);
      case HttpMethod.delete:
        return await http.delete(
            Uri(scheme: _uri.scheme, host: _uri.host, path: path),
            headers: headers,
            body: body);
    }
  }
}