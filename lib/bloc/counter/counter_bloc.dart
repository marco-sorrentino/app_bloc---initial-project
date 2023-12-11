import 'package:counter_app_bloc/bloc/bloc_imports.dart';
import 'package:counter_app_bloc/bloc/counter/counter_event.dart';
import 'package:counter_app_bloc/bloc/counter/counter_state.dart';

//Versione Senza blocListener

/* class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitilias()) {
    on<CounterIncrement>((event, emit) {
      emit(CounterState(couterValue: state.couterValue + 1));
    });

    on<CounterDecrement>((event, emit) {
      emit(CounterState(couterValue: state.couterValue - 1));
    });
  }
} */

// Versione con blocListener

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitilias()) {
    on<CounterIncrement>((event, emit) {
      emit(IncrementState(state.couterValue + 1));
    });

    on<CounterDecrement>((event, emit) {
      emit(DecrementState(state.couterValue - 1));
    });
  }
}
