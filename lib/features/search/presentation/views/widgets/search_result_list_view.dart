import 'package:bookly_app/features/home/presentation/views/widgets/book_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class SearchResultlistView extends StatelessWidget {
  const SearchResultlistView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (c, i) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: BookSellerListViewItem(),
        );
      },
    );
  }
}