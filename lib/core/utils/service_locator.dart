import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:selaty/Feature/presentation/home/data/repo/home_repo_impl.dart';
import 'package:selaty/core/api/api_services.dart';
import 'package:selaty/core/utils/shared_pref.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  // تسجيل SharedPreferences بشكل LazySingletonAsync لتجنب المشاكل
  getIt.registerLazySingletonAsync<SharedPreferences>(() async {
    return await SharedPreferences.getInstance();
  });

  // تسجيل Preferences بعد الانتهاء من تحميل SharedPreferences
  getIt.registerLazySingleton(() => Preferences());

  // تسجيل Dio بشكل مستقل
  getIt.registerLazySingleton<Dio>(() => Dio());

  // تسجيل ApiServices بعد تسجيل Dio
  getIt.registerLazySingleton<ApiServices>(() => ApiServices(getIt<Dio>()));

  // ✅ تسجيل HomeRepoImpl مرة واحدة فقط
  if (!getIt.isRegistered<HomeRepoImpl>()) {
    getIt.registerLazySingleton<HomeRepoImpl>(
        () => HomeRepoImpl(getIt<ApiServices>()));
  }

  // التأكد من تحميل SharedPreferences قبل استخدامه في أي مكان
  await getIt.isReady<SharedPreferences>();
}
