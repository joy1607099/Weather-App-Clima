import 'dart:io';

void main(){
  perfromTask();
}

void perfromTask() async{
  Task1();
  String task2data = await Task2();
  Task3(task2data);

}

void Task1(){
  print('Task 1 completed');
}
Future<String> Task2() async{

  Duration threeseconds = Duration(seconds: 3);
  String result;
  await Future.delayed(threeseconds,(){
    result ='Task 2 data';
    print('Task 2 completed');
  });

  return result;

}
void Task3(String task2){
  print('Task 3 completed with $task2');
}
