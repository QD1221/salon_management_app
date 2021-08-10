import 'package:flutter/material.dart';

class BookingCustomerWidget extends StatelessWidget {
  const BookingCustomerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Customers'.toUpperCase(),
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Quang Tran',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        '123579',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Booking at 12 Dec 2020. 07:10 AM',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: Icon(Icons.call_rounded),
                ),
                SizedBox(width: 12,),
                CircleAvatar(
                  backgroundColor: Colors.grey[200],
                  child: Icon(Icons.chat_bubble),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
