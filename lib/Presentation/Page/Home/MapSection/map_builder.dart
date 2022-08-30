import 'dart:math';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:toiletfinder/Constants/Colors/app_colors.dart';

import '../../../../Config/text_style.dart';
import '../../../../Constants/Strings/app_strings.dart';
import '../../../../Utils/MapUtils/Utils.dart';
import '../../../Widgets/Button/custom_button.dart';

class HomeMapBuilDer extends StatefulWidget {
  const HomeMapBuilDer({Key? key}) : super(key: key);

  @override
  _HomeMapBuilDerState createState() => _HomeMapBuilDerState();
}

class _HomeMapBuilDerState extends State<HomeMapBuilDer> {
  late GoogleMapController googleMapController;

  late double lanx;
  late double lonx;
  LatLng? _latLng;

  MapType _currentMapType = MapType.normal;
  final List<Marker> _markers = [];
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

  void _onMapTypeButtonPressed() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
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
    return Stack(
      children: [
        _latLng!=null?GoogleMap(
          initialCameraPosition: CameraPosition(
            target: _latLng!,
            zoom: 16,
          ),
          myLocationEnabled: true,
          markers: Set<Marker>.of(_markers),
          zoomControlsEnabled: true,
          onMapCreated: onMapCreated,
          mapType: _currentMapType,
        ):Center(child: CircularProgressIndicator(),),

        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: FloatingActionButton(
              backgroundColor: kPrimaryColorx,
              foregroundColor: Colors.white,
              onPressed: ()=>{
                getCureentLocation(),
                googleMapController.animateCamera(
                  CameraUpdate.newCameraPosition(
                    CameraPosition(
                      target: _latLng!,
                      zoom: 17.0,
                    ),
                  ),
                ),
              },
              child: Icon(FontAwesomeIcons.mapMarked),
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height:180.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height:120.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          margin: EdgeInsets.all(12),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("assets/images/toilet.png",height: 48.h,width: 56.w),
                              SizedBox(width: 8.w,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Text("Prescription Tower",style: boldText(14.sp,color: Colors.black),textScaleFactor: 1.0),),

                                  Expanded(child: Text("House - Ga 136 (level 3) Pragati",style: regularText(14.sp,color: Colors.grey),textScaleFactor: 1.0),),
                                  Expanded(
                                    child: RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 2,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                      itemSize: 30,
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)
                          ),
                          margin: EdgeInsets.all(12),
                          padding: EdgeInsets.all(12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset("assets/images/toilet.png",height: 48.h,width: 56.w),
                              SizedBox(width: 8.w,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(child: Text("Prescription Tower",style: boldText(14.sp,color: Colors.black),textScaleFactor: 1.0),),
                                  Expanded(child: Text("House - Ga 136 (level 3) Pragati \nsarani, Dhaka",style: regularText(14.sp,color: Colors.grey),textScaleFactor: 1.0),),
                                  Expanded(
                                    child: RatingBar.builder(
                                      initialRating: 3,
                                      minRating: 2,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                      itemSize: 30,
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      width:89.w,
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        child: CustomButton(color: kPrimaryColorx,title: "ListView",onTap: (){
                          Navigator.pushNamed(context, TOILET_PAGE);
                        },),
                      )
                  )
                ],
              ),
            )
        ),

      ],
    );
  }


  void onMapCreated(GoogleMapController controller) {
    googleMapController=controller;
    googleMapController.setMapStyle(Utils.mapStyles).whenComplete(() {
      setMarker();
    });
  }
  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();
  }
  void setMarker()  async{
    var rng = new Random();
    final Uint8List markerIcon = await getBytesFromAsset('assets/icons/pin.png', 300);
    googleMapController.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target:  LatLng(lanx,lonx),
          zoom: 15.0,
        ),
      ),
    );

    _markers.add(
        Marker(
            markerId: MarkerId(rng.nextInt(100).toString()),
            position: LatLng(lanx,lonx),
            infoWindow: InfoWindow(
                title: "TTT",
                onTap: (){

                }
            ),
            icon: BitmapDescriptor.fromBytes(markerIcon)
        )
    );
    setState(() {

    });
  }
}
