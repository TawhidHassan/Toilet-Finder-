import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../Config/text_style.dart';
import '../../../Constants/Colors/app_colors.dart';
import '../../../Utils/MapUtils/Utils.dart';
import '../../Widgets/Button/border_button_without_icon_material.dart';
import '../../Widgets/Button/custom_button.dart';
import '../../Widgets/TextField/normal_background_textdield.dart';
import '../../Widgets/TextField/password_textdield.dart';
import '../../Widgets/TextField/textarea_textdield.dart';

class AddToiletPage extends StatefulWidget {
  const AddToiletPage({Key? key}) : super(key: key);

  @override
  _AddToiletPageState createState() => _AddToiletPageState();
}

class _AddToiletPageState extends State<AddToiletPage> {
  TextEditingController emailController= TextEditingController();
  late GoogleMapController googleMapController;
  MapType _currentMapType = MapType.normal;
  late double lanx;
  late double lonx;
  LatLng? _latLng;
  void getCureentLocation()async{
    var possition = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(possition.latitude);
    setState(()  {
      lanx=possition.latitude;
      lonx=possition.longitude;
      print(lanx);
      _latLng=LatLng(lanx,lonx);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    getCureentLocation();
    super.initState();
  }
  @override
  void dispose() {

    googleMapController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text("Add Toilet",style: regularText(16.sp,color: Colors.black),textScaleFactor: 1.0),
        leading: BackButton(color: Colors.black,),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        height: 1.0.sh,
        width: 1.0.sw,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialBackgroundTextField(controller: emailController, lable: '', title: 'Title or name', hintText: 'Type Title',),
              SizedBox(height: 24.h,),
              Text("Address",style: regularText(14.sp,color: Colors.black),textScaleFactor: 1.0),
              SizedBox(height: 8.h,),
              _latLng!=null?Container(
                height: 176.h,
                child: GoogleMap(
                  initialCameraPosition: CameraPosition(
                    target: _latLng!,
                    zoom: 16,
                  ),
                  myLocationEnabled: true,
                  zoomControlsEnabled: false,
                  onMapCreated: onMapCreated,
                  mapType: _currentMapType,
                ),
              ):Center(child: CircularProgressIndicator(),),
              SizedBox(height: 24.h,),
              Text("Add Photos",style: regularText(14.sp,color: Colors.black),textScaleFactor: 1.0),
              SizedBox(height: 8.h,),
              BorderButtonWithoutIcon(tap: (){},text: "Add Photo",color: Color(0xffE2E8F0),textColor: Colors.grey,),
              SizedBox(height: 24.h,),
              MaterialBackgroundTextField(controller: emailController, lable: '', title: 'Cost', hintText: 'Select Cost',),
              SizedBox(height: 24.h,),
              MaterialBackgroundTextField(controller: emailController, lable: '', title: 'No. of toilet', hintText: 'Type no. of toilet',),
              SizedBox(height: 24.h,),
              TextAreaTextField(controller: emailController, lable: '', title: 'About', hintText: 'Type about', readOnly: false,),
              SizedBox(height: 24.h,),
              CustomButton(color: kPrimaryColorx,title: "post",onTap: (){
              },)
            ],
          ),
        ),
      ),
    );
  }
  void onMapCreated(GoogleMapController controller) {
    googleMapController=controller;
    googleMapController.setMapStyle(Utils.mapStyles).whenComplete(() {

    });
  }
}
