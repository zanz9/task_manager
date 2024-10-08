// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../features/task/data/data_sources/local/i_task_local.dart' as _i188;
import '../../features/task/data/data_sources/local/task_local_impl.dart'
    as _i100;
import '../../features/task/data/data_sources/remote/i_task_remote.dart'
    as _i853;
import '../../features/task/data/data_sources/remote/task_remote_impl.dart'
    as _i520;
import '../../features/task/data/repository/task_repository_impl.dart' as _i334;
import '../../features/task/domain/repository/i_task_repository.dart' as _i795;
import '../../features/task/domain/usecases/task_usecase.dart' as _i28;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i188.ITaskLocalDataSource>(() => _i100.TaskLocalImpl());
    gh.lazySingleton<_i853.ITaskRemoteDataSource>(() => _i520.TaskRemoteImpl());
    gh.lazySingleton<_i795.ITaskRepository>(() => _i334.TaskRepositoryImpl(
          gh<_i853.ITaskRemoteDataSource>(),
          gh<_i188.ITaskLocalDataSource>(),
        ));
    gh.lazySingleton<_i28.TaskUseCase>(
        () => _i28.TaskUseCase(gh<_i795.ITaskRepository>()));
    return this;
  }
}
