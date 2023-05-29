import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:fourhundred_app/models/size_table_model.dart';

import '../materials.dart';
import 'my_text.dart';

class SizeTableWidget extends StatelessWidget {
  SizeTableModel tableSize;
  SizeTableWidget({super.key, required this.tableSize});

  @override
  Widget build(BuildContext context) {
    return ListBody(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyText(
              text: tableSize!.Chest!,
              color: iconColor,
            ),
            SizedBox(
              width: 15,
            ),
            MyText(
              text: "الصدر : ",
              color: iconColor,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyText(
              text: tableSize!.Chest!,
              color: iconColor,
            ),
            SizedBox(
              width: 15,
            ),
            MyText(
              text: "الكتف : ",
              color: iconColor,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyText(
              text: tableSize!.Chest!,
              color: iconColor,
            ),
            SizedBox(
              width: 15,
            ),
            MyText(
              text: "الوسط : ",
              color: iconColor,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyText(
              text: tableSize!.Chest!,
              color: iconColor,
            ),
            SizedBox(
              width: 15,
            ),
            MyText(
              text: "الطول : ",
              color: iconColor,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyText(
              text: tableSize!.Chest!,
              color: iconColor,
            ),
            SizedBox(
              width: 15,
            ),
            MyText(
              text: "الكم : ",
              color: iconColor,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyText(
              text: tableSize!.Chest!,
              color: iconColor,
            ),
            SizedBox(
              width: 15,
            ),
            MyText(
              text: "الياقة : ",
              color: iconColor,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyText(
              text: tableSize!.Chest!,
              color: iconColor,
            ),
            SizedBox(
              width: 15,
            ),
            MyText(
              text: "وسط الرجل : ",
              color: iconColor,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyText(
              text: tableSize!.Chest!,
              color: iconColor,
            ),
            SizedBox(
              width: 15,
            ),
            MyText(
              text: "الخاصرة : ",
              color: iconColor,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyText(
              text: tableSize!.Chest!,
              color: iconColor,
            ),
            SizedBox(
              width: 15,
            ),
            MyText(
              text: "عرض الفخذ : ",
              color: iconColor,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyText(
              text: tableSize!.Chest!,
              color: iconColor,
            ),
            SizedBox(
              width: 15,
            ),
            MyText(
              text: "عرض الرجل : ",
              color: iconColor,
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MyText(
              text: tableSize!.Chest!,
              color: iconColor,
            ),
            SizedBox(
              width: 15,
            ),
            MyText(
              text: "طول الرجل : ",
              color: iconColor,
            )
          ],
        )
      ],
    );
  }
}
