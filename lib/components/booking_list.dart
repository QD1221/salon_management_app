import 'package:flutter/material.dart';
import 'package:salon_management_app/components/booking_item.dart';
import 'package:salon_management_app/model/booking.dart';
import 'package:salon_management_app/ui/booking_detail_page.dart';

class BookingList extends StatelessWidget {
  const BookingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: bookingItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => BookingDetailPage(
                      title: bookingItems[index].code ?? '',
                      booking: bookingItems[index],
                    ),
                  ),
                );
              },
              child: BookingItem(
                booking: bookingItems[index],
              ),
            ),
          );
        });
  }
}
