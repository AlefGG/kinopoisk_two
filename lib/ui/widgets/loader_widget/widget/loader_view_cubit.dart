import 'package:flutter_bloc/flutter_bloc.dart';

part 'loader_view_state.dart';

class LoaderViewCubit extends Cubit<LoaderViewState> {
  LoaderViewCubit() : super(LoaderViewState.unauthorized) {
    Future.microtask(() => {emit(LoaderViewState.authorized)});
  }
}
