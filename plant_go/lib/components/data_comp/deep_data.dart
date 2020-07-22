import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'dart:io';

class DeepData extends StatefulWidget {
  @override
  _DeepDataState createState() => _DeepDataState();
}

class DeepNaturalFAQ {
  final int id;
  final String category;
  final String question;
  final String answer;

  DeepNaturalFAQ({
    this.id,
    this.category,
    this.question,
    this.answer,
  });

  factory DeepNaturalFAQ.fromJson(Map<String, dynamic> json) {
    return DeepNaturalFAQ(
      category: json['category'],
      id: json['id'],
      answer: json['answer'],
      question: json['question'],
    );
  }
}

class _DeepDataState extends State<DeepData> {
  Future getData() async {
    var endpoint = "https://api.deepnatural.ai/faq/";
    Response response = await get(endpoint, headers: {
      HttpHeaders.acceptLanguageHeader: 'kr',
      HttpHeaders.acceptCharsetHeader: 'accept-charset'
    });
    var data = utf8.decode(response.bodyBytes);
    var data0 = jsonDecode(data);

    return DeepNaturalFAQ.fromJson(data0[0]);
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[],
      ),
    );
  }
}
