import 'dart:io';

import 'package:parse_server_sdk/parse_server_sdk.dart';
import 'package:repeatandlearn_dart/repeatandlearn_dart.dart';

void main() async {
  final isInitialized = await initBack4app();
  if (!isInitialized) {
    print('B4A not conected...');
    exit(0);
  }
  // teste1();
  // teste2();
  teste2a();
  // teste3();
  // teste4();
  // teste5();
}

void teste5() async {
  print('+++ teste5');
  ParseResponse? parseResponse;
  final parseObject = ParseObject('UserResponse');

  parseResponse = await parseObject.getAll();

  if (parseResponse.success && parseResponse.results != null) {
    for (ParseObject element in parseResponse.results!) {
      print('UserResponse: ${element.objectId} ${element.get('userProfile')}');
    }
  } else {
    throw Exception();
  }
}

void teste4() async {
  print('+++ teste4');
  QueryBuilder<ParseObject> queryUserProfile =
      QueryBuilder<ParseObject>(ParseObject('UserProfile'));
  queryUserProfile.whereRelatedTo('students', 'Team', 'Q8vu4aGGfw');
  var parseResponse1 = await queryUserProfile.query();
  if (parseResponse1.success && parseResponse1.results != null) {
    for (var element in parseResponse1.results!) {
      print('queryUserResponse: ${element.objectId}');
    }
  } else {
    print('queryUserResponse: []');
  }
}

void teste3() async {
  print('+++ teste3');
  QueryBuilder<ParseObject> queryUserProfile =
      QueryBuilder<ParseObject>(ParseObject('UserProfile'));
  queryUserProfile.whereRelatedTo('students', 'Team', 'Q8vu4aGGfw');
  var parseResponse1 = await queryUserProfile.query();
  if (parseResponse1.success && parseResponse1.results != null) {
    for (var element in parseResponse1.results!) {
      print('queryUserProfile: ${element.objectId}');
    }
  } else {
    print('queryUserProfile: []');
  }
  QueryBuilder<ParseObject> queryUserResponse =
      QueryBuilder<ParseObject>(ParseObject('UserResponse'));
  queryUserResponse.whereMatchesQuery('userProfile.objectId', queryUserProfile);

  var parseResponse = await queryUserResponse.query();
  if (parseResponse.success && parseResponse.results != null) {
    for (var element in parseResponse.results!) {
      print('queryUserResponse: ${element.objectId}');
    }
  } else {
    print('queryUserResponse: []');
  }
}

void teste2() async {
  print('+++ teste2');
  QueryBuilder<ParseObject> queryUserProfile =
      QueryBuilder<ParseObject>(ParseObject('UserProfile'));
  queryUserProfile.whereRelatedTo('students', 'Team', 'Q8vu4aGGfw');
  var parseResponse1 = await queryUserProfile.query();
  if (parseResponse1.success && parseResponse1.results != null) {
    for (var element in parseResponse1.results!) {
      print('queryUserProfile: ${element.objectId}');
    }
  } else {
    print('queryUserProfile: []');
  }
  QueryBuilder<ParseObject> queryUserResponse =
      QueryBuilder<ParseObject>(ParseObject('UserResponse'));
  queryUserResponse.whereMatchesKeyInQuery(
      'userProfile', 'userProfile', queryUserProfile);

  var parseResponse = await queryUserResponse.query();
  if (parseResponse.success && parseResponse.results != null) {
    for (var element in parseResponse.results!) {
      print('queryUserResponse: ${element.objectId}');
    }
  } else {
    print('queryUserResponse: []');
  }
}

void teste2a() async {
  print('+++ teste2a');
  QueryBuilder<ParseObject> queryUserProfile =
      QueryBuilder<ParseObject>(ParseObject('UserProfile'));
  queryUserProfile.whereRelatedTo('students', 'Team', 'Gs4jws0hvd');
  var parseResponse1 = await queryUserProfile.query();
  if (parseResponse1.success && parseResponse1.results != null) {
    for (var element in parseResponse1.results!) {
      print('queryUserProfile: ${element.objectId}');
    }
  } else {
    print('queryUserProfile: []');
  }
  QueryBuilder<ParseObject> queryUserResponse =
      QueryBuilder<ParseObject>(ParseObject('UserResponse'));
  queryUserResponse.whereMatchesKeyInQuery(
      'userProfile', 'objectId', queryUserProfile);
  queryUserResponse.whereEqualTo(
      'level', (ParseObject('Level')..objectId = 'ZQW23DawyR').toPointer());
  var parseResponse = await queryUserResponse.query();
  if (parseResponse.success && parseResponse.results != null) {
    for (var element in parseResponse.results!) {
      print('queryUserResponse: ${element.objectId}');
    }
  } else {
    print('queryUserResponse: []');
  }
}

void teste1() async {
  print('+++ teste1');
  ParseResponse? parseResponse;
  final parseObject = ParseObject('Team');

  parseResponse =
      await parseObject.getObject('Q8vu4aGGfw', include: ['userProfile']);

  if (parseResponse.success && parseResponse.results != null) {
    ParseObject parseObjectItem = parseResponse.results!.first as ParseObject;
    print(parseObjectItem);
  } else {
    throw Exception();
  }
}
