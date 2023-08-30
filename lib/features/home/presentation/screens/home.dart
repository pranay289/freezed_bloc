import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sample_bloc/core/service_locator.dart';
import 'package:sample_bloc/features/home/presentation/bloc/user_bloc.dart';
import 'package:sample_bloc/features/home/presentation/bloc/user_event.dart';
import 'package:sample_bloc/features/home/presentation/bloc/user_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  @override
  void initState() {
    super.initState();
    // UserBloc().add(const UserEvent.onGetUser());
    // BlocProvider.of<UserBloc>(context).add(const UserEvent.onGetUser());
    serviceLocater.get<UserBloc>().add(const UserEvent.onGetUser());
    // context.read<UserBloc>().add(const UserEvent.onGetUser());
  } 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        BlocConsumer<UserBloc, UserState>(
      listener: (context, state) {
      
        // if (state == const UserState.initial()) {
        //   print("Initial");
        // } else if (state == const UserState.loading()) {
        //   print("loading");
        // } else {
        //   print("Loaded");
        // }
      },
      builder: (context, state) {
        return state.when(
            initial: () => Container(),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error) => Center(child: Text(error)),
            loadedState: (user) {
              return ListView.builder(
                  itemCount: user.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(user[index].title),
                        TextButton(onPressed: (){
                            context.goNamed("second");
                        }, child: Text("dasd"))
                      ],
                    );
                    
                  });
            },);
      },
    )
        // BlocListener<UserBloc,UserState>(

        //   listener: (context,state){
        //    if(state == const UserState.initial()){
        //         print("Initial");
        //      }else if(state == const UserState.loading()) {
        //       print("loading");
        //      }else{
        //       print("Loaded");
        //      }
        //      return ;
        // },
        // child:  ListView.builder(
        //     itemCount: user.length,
        //     itemBuilder: (context,index){
        //     return  Text(user[index].title);
        //   }),
        // ),
        // BlocBuilder<UserBloc,UserState>(
        //   builder: (ctx, state) {
        //  return state.when(initial: ()=> Container(),
        //  loading: ()=>const Center(child: CircularProgressIndicator()),
        //  error:(error)=> Center(child: Text(error)),
        //  loadedState: (user){
        //   return ListView.builder(
        //     itemCount: user.length,
        //     itemBuilder: (context,index){
        //     return  Text(user[index].title);
        //   });
        //  });
        // }),
        );
  }
}
