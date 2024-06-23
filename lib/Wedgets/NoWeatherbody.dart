import 'package:flutter/cupertino.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Text('There is no weather Start',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
          Text('Searching now' ,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
        ],
      ),
    );
  }
}