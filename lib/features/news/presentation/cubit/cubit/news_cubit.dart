import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:news_clean_architectur/core/utils/base_data_state.dart';
import 'package:news_clean_architectur/features/news/domain/entities/news.dart';
import 'package:news_clean_architectur/features/news/domain/usecases/get_list_news.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  final GetListNewsUseCase _getListNewsUseCase;
  NewsCubit(this._getListNewsUseCase) : super(NewsState.initial());

  void getALlNews() async {
    emit(state.copyWith(status: NewsStatus.loading));
    final respon = await _getListNewsUseCase();
    if (respon is DataSuccess && respon.data!.isNotEmpty) {
      print(respon.data);
      emit(state.copyWith(status: NewsStatus.success, data: respon.data));
    } else if (respon is DataFailed) {
      emit(state.copyWith(status: NewsStatus.eror, eror: respon.eror!.message));
    } else if (respon is DataSuccess && respon.data!.isEmpty) {
      emit(state.copyWith(status: NewsStatus.empty, data: []));
    }
  }
}
