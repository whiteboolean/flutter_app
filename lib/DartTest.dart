import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(List<String> list) {
  // test1("12",age: 12,height: 12);

  var movies = ['盗梦空间', '星际穿越', '少年派的奇幻漂流', '大话西游'];
  printElement(item) {
    if (kDebugMode) {
      print(item);
    }

    movies.forEach(printElement);
    movies.forEach((element) {
      print(item);
    });

    movies.forEach((element) => print(element));
  }
}

test1(String name, {int age = 0, double height = 12.0}) {
  if (kDebugMode) {
    print('name:$name age:$age height:$height');
  }
}

test2(String name, [int age = 1, double height = 12]) {
  if (kDebugMode) {
    print('name:$name age:$age height:$height');
  }
}
