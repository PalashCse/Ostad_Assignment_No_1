class Student{

  Map<String, Map<String, dynamic>> student = {
    'student1':{
      'name': 'Alice',
      'scores': [85,90,78]
    },
    'student3':{
      'name': 'Charlie',
      'scores': [90,92,85]
    },
    'student2':{
      'name': 'Bob',
      'scores': [88,76,95]
    }
  };

  var scores = new Map();

  void avgScoreofStudent(){
    student.forEach((key, value){
      //print(student[key]?['scores']);
      //print(student[key]?['name']);
      String stName = student[key]?['name'];
      dynamic stList = student[key]?['scores'];
      dynamic sum = 0;
      for (int i = 0; i < stList.length; i++) {
        //print(stList[i]);
        sum = sum + stList[i];
      }
      dynamic avgScore = sum / 3;
      avgScore = avgScore.toStringAsFixed(2);
      print('Average score of $stName is $avgScore');
      // create score map for each student
      scores[stName] = avgScore;
    });
    print('\n');
    print('Answer the question no 2');
    print('------------------------');
    print(scores);
  }

  void sortScoreMap(){
    var sortedByKey = Map.fromEntries(scores.entries.toList()..sort((a,b) =>                   a.key.compareTo(b.key)));

    print(sortedByKey);
  }
}

void main() {
  Student st = Student();
  print('Answer the question no 1');
  print('------------------------');
  st.avgScoreofStudent();
  print('\n');
  print('Answer the question no 3');
  print('------------------------');
  st.sortScoreMap();
}