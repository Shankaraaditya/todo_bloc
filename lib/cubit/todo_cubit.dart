import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_bloc/models/todo_model.dart';

// cubit of list of Todo created and empty list of todo passed to it through super.
class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    final todo = Todo(
      name: title,
      createdAt: DateTime.now(),
    );

    /// state.add(todo); --> we can use this state to get current state of this cubit.
    /// emit doesnot emits anything if the emited state is same as older state.
    /// like if new state and old state is same emit does not get executed.
    ///  does nothing if the [state] being emitted is equal to the current [state].
    emit([...state, todo]);
  }
}
