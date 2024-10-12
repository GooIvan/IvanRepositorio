import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            'USER',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text('1'),
          Text('Leanne Graham'),
          Text('Bret'),
          Text('Sincere@april.biz'),
          const Text(
            'ADDRESS',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text('Kulas Light'),
          Text('Apt. 556'),
          Text('Gwenborough'),
          Text('92998-3874'),
          const Text(
            'GEO',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text('-37.3159'),
          Text('81.1496'),
          Text('1-770-736-8031 x56442'),
          Text('hildegard.org'),
          const Text(
            'COMPANY',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text('Romaguera-Crona'),
          Text('Multi-layered client-server neural-net'),
          Text('harness real-time e-markets'),
          Row(
            children: [
              const Expanded(
                  child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Id a buscar',
                ),
              )),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Buscar'),
              )
            ],
          )
        ],
      ),
    );
  }
}
