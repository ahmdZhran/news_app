import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_state.dart';

class BottomNavigationCubit extends Cubit<BottomNavigationState> {
  BottomNavigationCubit() : super(const BottomNavigationState(0));

  void updateIndex(int newIndex) {
    emit(const BottomNavigationState(0));
  }
}
