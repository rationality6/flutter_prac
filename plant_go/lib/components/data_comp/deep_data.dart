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
}

class _DeepDataState extends State<DeepData> {
  Future<List<dynamic>> _getData() async {
    var result = [];
    const endpoint = "https://api.deepnatural.ai/faq/";
    Response response = await get(endpoint, headers: {
      HttpHeaders.acceptLanguageHeader: 'kr',
      HttpHeaders.acceptCharsetHeader: 'accept-charset'
    });
    final responseDecode = utf8.decode(response.bodyBytes);
    var datas = jsonDecode(responseDecode);
    for (var data in datas) {
      DeepNaturalFAQ faq = DeepNaturalFAQ(
        category: data['category'],
        id: data['id'],
        question: data['question'],
        answer: data['answer'],
      );
      result.add(faq);
    }
    return result;
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FutureBuilder(
            future: _getData(),
            builder: (context, snapshot) {
              return SizedBox(
                height: 400,
                child: ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("${snapshot.data[index].category}"),
                    );
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
