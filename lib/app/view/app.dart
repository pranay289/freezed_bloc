import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_bloc/core/injectable.dart';
import 'package:sample_bloc/features/home/presentation/bloc/user_bloc.dart';
import 'package:sample_bloc/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>getIt.get<UserBloc>())
      ],
      // create: (context)=>,
      // providers:[
      //   // // BlocProvider(create: (context)=>UserBloc()),
      //   // serviceLocater.registerFactory<UserBloc>(()=>UserBloc())
      // ],
      child: MaterialApp.router(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routerConfig: AppRoutes.routes,
        )
    );
  }
}
