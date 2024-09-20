import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:news_clean_architectur/features/news/data/data_sources/remote/news_api_services.dart';
import 'package:news_clean_architectur/features/news/data/repository/news_repository_impl.dart';
import 'package:news_clean_architectur/features/news/domain/repository/news_repository.dart';
import 'package:news_clean_architectur/features/news/domain/usecases/get_list_news.dart';
import 'package:news_clean_architectur/features/news/presentation/cubit/cubit/news_cubit.dart';

final sl = GetIt.instance;

Future<void> initializeDepenencied() async {
  //Dio
  sl.registerSingleton<Dio>(Dio());

  //Dependcy
  sl.registerSingleton<NewsApiServices>(NewsApiServices());

  sl.registerSingleton<NewsRepository>(NewsRepositoryImpl(sl()));

  //Usecases
  sl.registerSingleton<GetListNewsUseCase>(GetListNewsUseCase(sl()));

  //Bloc
  sl.registerFactory<NewsCubit>(() => NewsCubit(sl()));
}
