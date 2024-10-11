import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('===USER==='),
          Text('1'),
          Text('Leanne Graham'),
          Text('Bret'),
          Text('Sincere@april.biz'),
          Text('===ADDRESS==='),
          Text('Kulas Light'),
          Text('Apt. 556'),
          Text('Gwenborough'),
          Text('92998-3874'),
          Text('===geo==='),
          Text('-37.3159'),
          Text('81.1496'),
          Text('1-770-736-8031 x56442'),
          Text('hildegard.org'),
          Text('===company==='),
          Text('Romaguera-Crona'),
          Text('Multi-layered client-server neural-net'),
          Text('harness real-time e-markets'),
          ElevatedButton(onPressed: () {}, child: Text('BUSCAR')),
          Icon(
            Icons.favorite,
            color: Colors.blue,
            size: 24,
            semanticLabel: '',
          ),
          CircularProgressIndicator()
        ],
      ),
    );
  }
}
