import 'package:flutter/material.dart';
import 'package:go_moon_ui/widget/custom_dropdown_button.dart';

class HomePage extends StatelessWidget{
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);
  
  @override
  //call the page title
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          // color: Colors.red,
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.10),
          child: Stack (children: [Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              _pageTitle(),
              _bookRideWidget(),
              // _destinationDropDownWidget(),
              // _travelersInformationWidget(),
            ],
          ),
          Align(
            alignment: Alignment.centerRight,
            child: _astroImageWidget(),
          )
          ],
          ),
        ),
        ),
      );
  }
  //Title 
  Widget _pageTitle(){
    return const Text("#GoMoon", style:TextStyle(color: Colors.white, fontSize: 70, fontWeight: FontWeight.w800,
    ),
    );


  }
  //Import images
  Widget _astroImageWidget(){
    return Container(
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("asset/images/astro_moon.png"),
        ),
        ),
    );
  }

  Widget _bookRideWidget(){
    return Container(
      height: _deviceHeight*0.25 ,child: 
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          _destinationDropDownWidget(),
          _travelersInformationWidget(),
          _rideButton(),

        ],
      ),
    );
  }

  Widget _destinationDropDownWidget(){
    //List of dropdown menu item
    return CustomDropDownButtonClass(
      values: const[
        'Malaysia Station',
        'Korea Station',
        'Singapore Station',
        ], 
        width: _deviceWidth,
        );
        }
    //wrap the column in horizontal
   Widget _travelersInformationWidget(){
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomDropDownButtonClass(
              values: const[
            '1',
            '2',
            '3',
            ], 
            width: _deviceWidth *0.45,
            ),
            CustomDropDownButtonClass(
              values: const[
            'Economy',
            'Business',
            'First',
            'OKU',
            ], 
            width: _deviceWidth *0.33,
            ),
          ],
        );

        }
//button ride 
  Widget _rideButton(){
    return Container(
    margin: EdgeInsets.only(bottom:_deviceHeight*0.01),
    width: _deviceWidth,
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),),
    // color: Colors.white,
    child: MaterialButton(
      onPressed: () {},
       child:const Text(
        "Book Ride",
         style: TextStyle(
          color: Colors.black
          ),
          ),
    ),
    );
  }
}