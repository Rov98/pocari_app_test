import 'package:flutter/material.dart';
import 'package:pocari_app_test/Controller/api_controller.dart';
import 'package:pocari_app_test/Model/Web_domain.dart';
import 'package:pocari_app_test/View/fragments/fragments_list.dart';

class list_data_exmp extends StatefulWidget {
  const list_data_exmp({super.key});

  @override
  State<list_data_exmp> createState() => _list_data_exmpState();
}

class _list_data_exmpState extends State<list_data_exmp> {
  List<Web_domain>? wbDomain;
  @override
  void initState() {
    super.initState();
    api_controller().getWeb_Domain();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
        body: Container(
      child: FutureBuilder<List<dynamic>?>(
        future: api_controller().getWeb_Domain(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(snapshot.data![index]['name'].toString()),
                      subtitle: Text(snapshot.data![index]['country']),
                      trailing: const Icon(Icons.arrow_forward),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => fragments_list(
                                  domains: snapshot.data![index]['domains'].toString(),
                                  web_pages: snapshot.data![index]['web_pages'].toString(),
                                )));
                      },
                    ),
                  );
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    ));
  }
}
