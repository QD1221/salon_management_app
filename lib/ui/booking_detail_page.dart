import 'package:flutter/material.dart';
import 'package:salon_management_app/components/booking_customer_widget.dart';
import 'package:salon_management_app/components/booking_detail_service_widget.dart';
import 'package:salon_management_app/components/booking_item.dart';
import 'package:salon_management_app/components/booking_staff_widget.dart';
import 'package:salon_management_app/model/booking.dart';

class BookingDetailPage extends StatelessWidget {
  String title;
  Booking booking;
  BookingDetailPage({
    Key? key,
    required this.title,
    required this.booking,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 1,
        iconTheme: IconTheme.of(context).copyWith(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Booking $title',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BookingDetailServiceWidget(),
            SizedBox(
              height: 8,
            ),
            BookingStaffWidget(),
            SizedBox(
              height: 8,
            ),
            BookingCustomerWidget(),
            SizedBox(
              height: 8,
            ),
            BookingItem(booking: booking),
          ],
        ),
      ),
    );
  }
}
