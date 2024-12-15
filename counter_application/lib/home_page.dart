import 'package:counter_application/cubit/counter_cubit.dart';
import 'package:counter_application/nav_drawer_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    //Use a factory method to create a counter cubit if needed
    //Else return the current counter cubit
    final counterCubit = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      drawer: NavDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Counter Value',
                style: TextStyle(
                  fontSize: 20,
                )),
            BlocBuilder<CounterCubit, int>(
                bloc: counterCubit,
                builder: (context, count) {
                  return Text(
                    count.toString(),
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
