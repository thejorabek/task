part of 'task_cubit.dart';

@immutable
abstract class TaskState {}

class TaskInitial extends TaskState {}

class TaskLoading extends TaskState {
  TaskLoading();
}

class TaskSuccess extends TaskState {
  TaskSuccess({required this.data});
  List<Object> data = [];
}

class TaskError extends TaskState {
  TaskError({required this.errMessage});
  String errMessage;
}
