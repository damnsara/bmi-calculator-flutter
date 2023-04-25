import 'package:bmi_calculator/icon_content.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeColor = Color(0xFF1D1E33);
const inactiveColor = Color(0xFF111328);
enum Genders {male, female, noGenderSelected}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage>{

Genders selectedGender = Genders.noGenderSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0E21),
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                  onPress: (){
                      setState(() {
                        selectedGender = Genders.male;
                      });
                    },
                  colour: selectedGender == Genders.male ? activeColor : inactiveColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',),

                 ),
                ),
                Expanded(
                  child: ReusableCard(
                  onPress: () {
                    setState(() {
                    selectedGender = Genders.female;
                      });
                    },
                  colour: selectedGender == Genders.female ? activeColor : inactiveColor,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',),
                  )
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 60.0,
          )
        ],
      ),
    );
  }
}