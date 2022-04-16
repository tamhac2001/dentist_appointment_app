import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../application/utils/providers.dart';
import '../widgets/convex_app_bar.dart';
import '../widgets/service_list_view.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int _carouselIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      bottomNavigationBar: const MyConvexAppBar(currentScreen: 0),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                  height: 200.0,
                  enlargeCenterPage: true,
                  onPageChanged: (index, _) {
                    setState(() {
                      _carouselIndex = index;
                    });
                  }),
              items: List.of([1, 2, 3, 4, 5]).map((i) {
                {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: const BoxDecoration(color: Colors.amber),
                      child: const Center(
                        child: Text(
                          "For Ads",
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ));
                }
              }).toList(),
            ),
            const SizedBox(
              height: 16,
            ),
            AnimatedSmoothIndicator(
              count: 5,
              activeIndex: _carouselIndex,
              effect: const WormEffect(type: WormType.thin),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const AutoSizeText("Dich vu noi bat"),
                  Consumer(
                    builder: (BuildContext context, WidgetRef ref, child) {
                      final serviceListState =
                          ref.watch(serviceListStateProvider);
                      return serviceListState.maybeWhen(
                          initial: () => const Center(
                                child: Text('Initial'),
                              ),
                          loadInProgress: () => const LinearProgressIndicator(),
                          loadSuccess: (list) {
                            return ServiceListView(serviceList: list);
                          },
                          orElse: () => const Center(
                                child: Text('There is some error'),
                              ));
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
