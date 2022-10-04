import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_recreation/features/core/presentation/bloc_status.dart';
import 'package:hotel_recreation/features/properties/presentation/list_properties/bloc/list_properties_cubit.dart';
import 'package:hotel_recreation/features/properties/presentation/widget/error/properties_error_widget.dart';
import 'package:hotel_recreation/features/properties/presentation/widget/properties/item_properties.dart';

class ListPropertiesPage extends StatefulWidget {
  const ListPropertiesPage({Key? key}) : super(key: key);

  @override
  State<ListPropertiesPage> createState() => _ListPropertiesPageState();
}

class _ListPropertiesPageState extends State<ListPropertiesPage> {
  late final ListPropertiesCubit listPropertiesCubit;

  @override
  void initState() {
    super.initState();
    listPropertiesCubit = BlocProvider.of<ListPropertiesCubit>(context)
      ..getListProperties();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Properties"),
      ),
      body: BlocBuilder<ListPropertiesCubit, ListPropertiesState>(
        bloc: listPropertiesCubit,
        builder: (context, state) {
          switch (state.status) {
            case BaseStatus.success:
              return ListView.builder(
                  itemCount: (state.searchProperties?.results.length ?? 0),
                  itemBuilder: (context, index) {
                    final item = state.searchProperties!.results[index];
                    return ItemProperties(
                      stars: (item.starRating ?? 0).toInt(),
                      url: item.thumbnailUrl,
                      title: item.name,
                      ratingReviews: item.guestReviews.rating,
                      totalReviews: item.guestReviews.totalReviews.toString(),
                    );
                  });

            case BaseStatus.error:
              return PropertiesErrorWidget(
                  title: state.failure?.message ?? "Unkown error");
            case BaseStatus.empty:
              return PropertiesErrorWidget(
                  title: state.failure?.message ?? "Empty list");
            default:
              return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
