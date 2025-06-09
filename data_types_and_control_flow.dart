void main() {
  
  int myInt = 42;
  double myDouble = 3.14;
  String myString = "Hello Dart";
  bool myBool = true;
  List<int> myList = [1, 2, 3, 4, 5];

  print('int: $myInt');
  print('double: $myDouble');
  print('String: $myString');
  print('bool: $myBool');
  print('List: $myList');

  print('String to int: ${stringToInt("123")}');
  print('String to double: ${stringToDouble("45.67")}');
  print('int to String: ${intToString(456)}');
  print('int to double: ${intToDouble(789)}');

  convertAndDisplay("256");

  checkNumber(10);
  checkNumber(-5);
  checkNumber(0);

  checkVotingEligibility(17);
  checkVotingEligibility(18);
  checkVotingEligibility(25);

  printDayOfWeek(1);
  printDayOfWeek(4);
  printDayOfWeek(7);
  printDayOfWeek(9); 

  print('For loop 1 to 10:');
  forLoopPrint();

  print('While loop 10 to 1:');
  whileLoopPrint();

  print('Do-while loop 1 to 5:');
  doWhileLoopPrint();


  List<int> numbers = [3, 12, 150, 7, 99, 101];

  for (int num in numbers) {
    print('\nNumber: $num');
    
    if (num % 2 == 0) {
      print('It is even.');
    } else {
      print('It is odd.');
    }


    switch (numberCategory(num)) {
      case 'small':
        print('Category: small (1-10)');
        break;
      case 'medium':
        print('Category: medium (11-100)');
        break;
      case 'large':
        print('Category: large (101+)');
        break;
      default:
        print('Category: unknown');
    }
  }
}

int stringToInt(String s) => int.parse(s);
double stringToDouble(String s) => double.parse(s);
String intToString(int i) => i.toString();
double intToDouble(int i) => i.toDouble();

void convertAndDisplay(String numStr) {
  int asInt = int.parse(numStr);
  double asDouble = double.parse(numStr);
  print('convertAndDisplay:');
  print('String input: $numStr');
  print('Converted to int: $asInt');
  print('Converted to double: $asDouble');
}

void checkNumber(int n) {
  if (n > 0) {
    print('$n is positive');
  } else if (n < 0) {
    print('$n is negative');
  } else {
    print('$n is zero');
  }
}

void checkVotingEligibility(int age) {
  if (age >= 18) {
    print('Age $age: Eligible to vote');
  } else {
    print('Age $age: Not eligible to vote');
  }
}

void printDayOfWeek(int day) {
  print('Day $day: ');
  switch (day) {
    case 1:
      print('Monday');
      break;
    case 2:
      print('Tuesday');
      break;
    case 3:
      print('Wednesday');
      break;
    case 4:
      print('Thursday');
      break;
    case 5:
      print('Friday');
      break;
    case 6:
      print('Saturday');
      break;
    case 7:
      print('Sunday');
      break;
    default:
      print('Invalid day number');
  }
}

void forLoopPrint() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void whileLoopPrint() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

void doWhileLoopPrint() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}

String numberCategory(int num) {
  if (num >= 1 && num <= 10) {
    return 'small';
  } else if (num >= 11 && num <= 100) {
    return 'medium';
  } else if (num >= 101) {
    return 'large';
  } else {
    return 'unknown';
  }
}
