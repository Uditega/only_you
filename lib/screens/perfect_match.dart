import 'package:OnlyYou/components/perfect_match/match_maker_button.dart';
import 'package:OnlyYou/components/perfect_match/perfect_match_appbar.dart';
import 'package:OnlyYou/components/perfect_match/perfect_match_card.dart';
import 'package:flutter/material.dart';

class PerfectMatch extends StatelessWidget {
  const PerfectMatch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: perfectMatchAppBar(),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              matchMakerButton(context),
              perfectMatchCard(context, 'images/secondGuy.jpg', 'Leslie Alexander', '92'),
              perfectMatchCard(context, 'images/fifthGuy.jpg', 'Marvin Collins', '80'),
              perfectMatchCard(context, 'images/fourthGuy.jpg', 'Cody Fisher', '85'),
            ],
          ),
        ),
      ),
    );
  }
}
