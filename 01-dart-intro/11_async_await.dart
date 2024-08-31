
void main () async {
  print ('Main started');
  try{
  final data = await getData('test');
  print(data);
  } on Exception catch(error){
    print ('we got an exception : $error');
  }catch(error){
    print (error);
  }finally{
    print ('Finally');
  }
 
  print ('Main ended');
}

Future<String> getData (String url) async {
  await  Future.delayed(const Duration(seconds: 3));
  throw Exception('Error in request');
  //throw 'Error in request';
  //return 'Data from $url';
}