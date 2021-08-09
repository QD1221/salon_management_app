import 'package:flutter/material.dart';
import 'package:salon_management_app/components/booking_list.dart';
import 'package:salon_management_app/model/category.dart';

class BookingWidget extends StatefulWidget {
  const BookingWidget({Key? key}) : super(key: key);

  @override
  _BookingWidgetState createState() => _BookingWidgetState();
}

class _BookingWidgetState extends State<BookingWidget> {
  var _index = 0;
  late PageController _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Text(
                      'My Bookings',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Divider(),
                Expanded(
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categoryItems.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 12),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                _index = index;
                                _pageController.jumpToPage(_index);
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              decoration: BoxDecoration(
                                color: _index == index
                                    ? Colors.black
                                    : Colors.grey[200],
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Center(
                                child: Text(categoryItems[index].title ?? '', style: TextStyle(
                                  color: _index == index
                                      ? Colors.white
                                      : Colors.grey[500],
                                ),),
                              ),
                            ),
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Expanded(
          flex: 15,
          child: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            children: [
              BookingList(),
              Container(
                child: Text('Accepted'),
              ),
              Container(
                child: Text('Completed'),
              ),
              Container(
                child: Text('Decline'),
              ),
              Container(
                child: Text('Other'),
              )
            ],
          ),
        ),
      ],
    );
  }
}
