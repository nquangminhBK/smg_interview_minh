import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:minh_interview_project/core/extensions.dart';
import 'package:minh_interview_project/core/utils/loading_utils.dart';
import 'package:minh_interview_project/core/utils/toast_utils.dart';
import 'package:minh_interview_project/presentation/home_screen/home_bloc.dart';
import 'package:minh_interview_project/presentation/home_screen/home_state.dart';
import 'package:minh_interview_project/presentation/home_screen/widgets/item_vehicle.dart';
import 'package:minh_interview_project/presentation/home_screen/widgets/loading_widget.dart';
import 'package:provider/provider.dart';

import '../../core/theme_provider/theme_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()..addListener(_onScroll);
    context.read<HomeBloc>().addData();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    debugPrint("onScrool");
    if (!_scrollController.hasClients) return;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (currentScroll == maxScroll) {
      context.read<HomeBloc>().addData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.currentAppColor.screenBackgroundColor,
        appBar: AppBar(
          title: const Text("SMG Interview"),
          actions: [
            IconButton(
                onPressed: () {
                  Provider.of<ThemeServiceProvider>(context, listen: false).switchTheme();
                },
                icon: const Icon(Icons.light_mode))
          ],
        ),
        body: BlocConsumer<HomeBloc, HomeState>(builder: (context, state) {
          return Stack(
            children: [
              if (state.vehicles.isNotEmpty)
                SizedBox(
                    width: double.infinity,
                    height: double.infinity,
                    child: ListView.builder(
                      controller: _scrollController,
                      itemBuilder: (context, index) {
                        return ItemVehicle(
                          vehicleEntity: state.vehicles[index],
                        );
                      },
                      itemCount: state.vehicles.length,
                    )),
              if (state is HomeLoadingState && state.isLoading) const LoadingWidget(),
            ],
          );
        }, listener: (_, currentState) {
          if (currentState is HomeGetDataErrorState) {
            ToastUtils.showErrorToast("Request error");
          }
        }));
  }
}
