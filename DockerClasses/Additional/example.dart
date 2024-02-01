void printMessage(Function() messageCallback) {
  String message = messageCallback();
  print('Message: $message');
}

String exampleMessage1() {
  return 'Hello, this is example message 1!';
}

String exampleMessage2() {
  return 'Hi there, this is example message 2!';
}

void main() {
  printMessage(exampleMessage1);
  printMessage(exampleMessage2);
}
