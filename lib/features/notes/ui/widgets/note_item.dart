import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoteItems extends StatelessWidget {
  const NoteItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.teal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              "Flutter Tips",
              style: TextStyle(color: Colors.black , fontSize: 18.sp),
            ),
            subtitle: Text("Basd asd",
                style: TextStyle(color: Colors.black.withOpacity(0.4))),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(32),
            child: Text(
              
              "May 21 2020",
              style: TextStyle(color: Colors.white ),
            ),
          )
        ],
      ),
    );
  }
}
