Stream<int> boatStream() async*{
  for (int i = 1; i <= 10 ; i++){
    print("SENT boat no. $i");
    await Future.delayed(const Duration(seconds: 2));
    yield i;
  }

}


void main(){
  Stream<int> stream = boatStream();

  Stream.listen((recievedData){
    print("RECIEVED boat no. $recievedData");

  });
}