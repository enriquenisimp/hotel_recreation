import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotel_recreation/features/properties/presentation/list_properties/bloc/list_properties_cubit.dart';
import 'package:hotel_recreation/features/properties/presentation/widget/error/properties_error_widget.dart';
import 'package:hotel_recreation/features/properties/presentation/widget/properties/item_properties.dart';

///Landing page to show the list of properties
class ListPropertiesPage extends StatelessWidget {
  const ListPropertiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Properties'),
      ),
      body: BlocBuilder<ListPropertiesCubit, ListPropertiesState>(
        bloc: BlocProvider.of<ListPropertiesCubit>(context)
          ..getListProperties(),
        builder: (context, state) {
          if (state is ListPropertiesSuccessState) {
            return ListView.builder(
              itemCount: state.searchProperties.listOfProperties.length,
              itemBuilder: (context, index) {
                final item = state.searchProperties.listOfProperties[index];
                return ItemProperties(
                  stars: (item.starRating ?? 0).toInt(),
                  url: item.thumbnailUrl,
                  title: item.name,
                  ratingReviews: '${item.guestReviews?.rating}',
                  totalReviews: '${item.guestReviews?.totalReviews}',
                );
              },
            );
          } else if (state is ListPropertiesErrorState) {
            return PropertiesErrorWidget(
              title: state.failure.message ?? 'Unknown error',
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
