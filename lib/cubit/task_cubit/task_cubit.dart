import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial()) {
    getData();
  }

  void getData() async {
    emit(TaskLoading());
    
  }
}
