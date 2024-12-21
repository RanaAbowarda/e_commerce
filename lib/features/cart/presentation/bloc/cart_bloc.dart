import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/utils/enums.dart';
import '../../data/models/CartModel.dart';
import '../../domain/use_cases/get_cart_items_usecase.dart';

part 'cart_event.dart';

part 'cart_state.dart';

part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  GetCartItemsUseCase getCartItemsUseCase;

  CartBloc(this.getCartItemsUseCase) : super(const CartState.initial()) {
    on<GetCartEvent>((event, emit) async {
      emit(state.copyWith(getCartItemsState: RequestState.loading));

      var result = await getCartItemsUseCase();

      result.fold(
        (l) {
          emit(state.copyWith(getCartItemsState: RequestState.error));
        },
        (r) {
          emit(state.copyWith(
              getCartItemsState: RequestState.success, cartModel: r));
        },
      );
    });
  }
}
