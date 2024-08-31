void main () {
  print ('Main started');
  getData('test').then((value){
    print(value);
  }).catchError((error){
    print(error);
  });
  print ('Main ended');
}

Future<String> getData (String url) async {
  return Future.delayed(Duration(seconds: 3), () {
   // throw 'Error in request';
    return 'Data from $url';
  });
}