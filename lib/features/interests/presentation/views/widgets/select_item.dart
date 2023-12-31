import 'package:flutter/material.dart';
import 'package:news_app/core/models/titels_model.dart';

import '../../../../../core/utlis/const_colors.dart';
import '../../../../../core/utlis/text_style.dart';

class SelectItem extends StatelessWidget {
  const SelectItem({
    super.key,
    required this.interestsTitles,
  });
  final InterestsTitles interestsTitles;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 65,
            width: 65,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: kMyWhiteColor,
            ),
            child: Center(
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: kMyGreyColor,
                    width: 2,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(80),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    interestsTitles.titleOfInterests,
                    style: StylesOfText.textStyle18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:news_app/core/models/titels_model.dart';

// import '../../../../../core/utlis/const_colors.dart';
// import '../../../../../core/utlis/text_style.dart';

// class SelectItem extends StatefulWidget {
//   const SelectItem({
//     Key? key,
//     required this.interestsTitles,
//   }) : super(key: key);

//   final InterestsTitles interestsTitles;

//   @override
//   _SelectItemState createState() => _SelectItemState();
// }

// class _SelectItemState extends State<SelectItem> {
//   bool isChecked = false; // Add a variable to track the checked state.

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Row(
//         children: [
//           InkWell(
//             onTap: () {
//               setState(() {
//                 isChecked = !isChecked; // Toggle the checked state.
//               });
//             },
//             child: Container(
//               height: 65,
//               width: 65,
//               decoration: const BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: kMyWhiteColor,
//               ),
//               child: Center(
//                 child: Container(
//                   height: 50,
//                   width: 50,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     border: Border.all(
//                       color: kMyGreyColor,
//                       width: 2,
//                     ),
//                     // Conditionally display the checkmark.
//                     child: isChecked
//                         ? const Icon(
//                             Icons.check,
//                             color: Colors.green, // Change the color as needed.
//                           )
//                         : null,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Expanded(
//             child: Container(
//               height: 60,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(80),
//               ),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 20),
//                   child: Text(
//                     widget.interestsTitles.titleOfInterests,
//                     style: StylesOfText.textStyle18,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
