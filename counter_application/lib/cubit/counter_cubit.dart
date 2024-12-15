import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    //state cannot be set using '='. Emit does this job
    emit(state + 1); // equilivant to state += 1
  }
}
