import 'package:bloc/bloc.dart';
import 'package:e_commerce/features/main_layout/home/data/models/category_model.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/utils/enums.dart';
import '../../domain/usecases/get_category_usecase.dart';

part 'category_event.dart';

part 'category_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  GetCategoryUseCase getCategoryUseCase;

  HomeBloc(this.getCategoryUseCase) : super(HomeInitial()) {
    on<GetCategoryEvent>((event, emit) async {
      var result = await getCategoryUseCase();
      result.fold(
        (l) {
          emit(state.copyWith(
              requestState: RequestState.error, errorMessage: l.message));
        },
        (r) {
          emit(state.copyWith(
            requestState: RequestState.success,
            categoryModel: r,
          ));
        },
      );
    });
  }
}
