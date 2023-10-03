import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/core/utlis/app_router.dart';
import 'package:news_app/core/utlis/const_colors.dart';
import 'package:news_app/models/intrests_models.dart';
import '../../../../../core/utlis/text_styles.dart';

class IntrestsViewBody extends StatefulWidget {
  const IntrestsViewBody({super.key});

  @override
  State<IntrestsViewBody> createState() => _IntrestsViewBodyState();
}

class _IntrestsViewBodyState extends State<IntrestsViewBody> {
  List<InterestsModels> interestsList = [
    InterestsModels('Health', false),
    InterestsModels('Technology', false),
    InterestsModels('Finance', false),
    InterestsModels('Sports', false),
    InterestsModels('Politics', false),
    InterestsModels('Business', false),
    InterestsModels('Fashoin', false),
    InterestsModels('Education', false),
    InterestsModels('E-commerce', false),
  ];
  List<InterestsModels> selectedInterests = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMyPinkColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                left: 25.0,
              ),
              child: Text(
                'Select Interests',
                style: StylesOfText.textStyle25,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: interestsList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        interestsList[index].isSelected =
                            !interestsList[index].isSelected;
                      });
                    },
                    child: ListTile(
                      title: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Container(
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
                                      color: interestsList[index].isSelected
                                          ? kMyBlackColor
                                          : kMyGreyColor,
                                      width: 2,
                                    ),
                                    color: interestsList[index].isSelected
                                        ? kMyBlackColor
                                        : null,
                                  ),
                                  child: interestsList[index].isSelected
                                      ? const Icon(Icons.check,
                                          color: kMyWhiteColor)
                                      : null,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                color: kMyWhiteColor,
                                borderRadius: BorderRadius.circular(80),
                              ),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    interestsList[index].title,
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text(
                    'Submit',
                    style: StylesOfText.textStyle16,
                  ),
                  onPressed: () {
                    GoRouter.of(context)
                        .go(AppRouter.kHomeView, extra: selectedInterests);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
