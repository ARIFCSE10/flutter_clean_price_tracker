import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_price_tracker/src/core/di/injector.dart';
import 'package:flutter_clean_price_tracker/src/features/price_tracker/presentation/cubit/price_tracker_cubit.dart';
import 'package:flutter_clean_price_tracker/src/features/price_tracker/presentation/widgets/dropdown_widget.dart';
import 'package:flutter_clean_price_tracker/src/features/price_tracker/presentation/widgets/price_change_widget.dart';

class PriceTrackerScreen extends StatelessWidget {
  const PriceTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Price Tracker'),
        centerTitle: true,
      ),
      body: BlocBuilder<PriceTrackerCubit, PriceTrackerState>(
        bloc: locator<PriceTrackerCubit>(),
        builder: (context, state) {
          if (state is PriceTrackerLoading || state is PriceTrackerInitial) {
            return const Center(child: CircularProgressIndicator());
          }
          return Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox.expand(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 32),
                  if (state is PriceTrackerActiveSymbolLoaded) ...[
                    PriceTrackerDropDownWidget(
                      title: 'Select a market',
                      items: state.marketMap ?? [],
                      onChange: ((market) =>
                          locator<PriceTrackerCubit>().setSymbolFromMarket(
                            market: market ?? '',
                          )),
                    ),
                    const SizedBox(height: 16),
                    PriceTrackerDropDownWidget(
                      title: 'Select an Asset',
                      items: state.symbolMap ?? [],
                      onChange: ((symbol) =>
                          locator<PriceTrackerCubit>().listenForPriceChange(
                            symbol: symbol ?? '',
                          )),
                    ),
                    const SizedBox(height: 64),
                    PriceChangeWidget(
                      price: state.price,
                      lastPrice: state.lastPrice,
                      isPriceLoading: state.isPriceLoading == true,
                    ),
                  ],
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
