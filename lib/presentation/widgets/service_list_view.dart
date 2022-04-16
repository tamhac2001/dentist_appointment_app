import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../domain/service/service.dart';

class ServiceListView extends StatelessWidget {
  const ServiceListView({
    Key? key,
    required this.serviceList,
  }) : super(key: key);

  final List<Service> serviceList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: serviceList.length,
        itemBuilder: (context, index) {
          // print(servicesList[index].toString());

          return ListItem(service: serviceList[index]);
        });
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.service,
  }) : super(key: key);
  final Service service;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(service.name.getOrCrash()),
        subtitle: AutoSizeText(service.description.getOrCrash()),
        leading: const CircleAvatar(
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
