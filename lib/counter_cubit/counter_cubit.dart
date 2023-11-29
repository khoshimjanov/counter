import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit(int initialState) : super(initialState);

  void increment() {
    emit(state + 1);
  }

  void decrement() => emit(state - 1);


  @override
  void onChange(Change<int> change){
    print(change);
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    print("$error, $stackTrace");
    super.onError(error, stackTrace);
  }
}