import 'package:estacao_inteligente/shared/model/user_model.dart';
import 'package:estacao_inteligente/shared/themes/app_colors.dart';
import 'package:estacao_inteligente/shared/themes/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatefulWidget {
  final UserModel user;
  const MapPage({Key? key, required this.user}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final latitude = ValueNotifier<double>(0.0);
  final longitude = ValueNotifier<double>(0.0);
  final locationActive = ValueNotifier<bool>(false);
  final error = ValueNotifier<String>('');

  void openBottomSheet(BuildContext context) {
    showModalBottomSheet(
        elevation: 10,
        context: context,
        isScrollControlled: true,
        builder: (context) {
          return Container(
            height: 500,
            color: Colors.red,
          );
        });
  }

  // Future<void> _atualPosition() async {
  //   LocationPermission permission;

  //   locationActive.value = await Geolocator.isLocationServiceEnabled();
  //   if (locationActive.value == false) {
  //     return Future.error('Por favor ative sua localizaçao');
  //   }
  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       return Future.error('Por favor autorize o acesso a autorizaçao.');
  //     }
  //   }
  //   if (permission == LocationPermission.deniedForever) {
  //     return Future.error('Por favor autorize o acesso a autorizaçao.');
  //   }
  //   Position p = await Geolocator.getCurrentPosition();
  //   setState(() {
  //     longitude.value = p.longitude;
  //     latitude.value = p.latitude;
  //   });
  //   // googleMapController.animateCamera(
  //   //   CameraUpdate.CameraPosition(
  //   //     CameraPosition(
  //   //       zoom: 15,
  //   //       bearing: 80,
  //   //       tilt: 10,
  //   //       target: LatLng(p.latitude, p.longitude),
  //   //     ),
  //   //   ),
  //   // );
  //   // return await Geolocator.getCurrentPosition();
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(_size.height),
        child: Container(
          width: _size.width,
          height: _size.height,
          // color: Colors.red,
          child: Stack(
            children: [
              Container(
                color: AppColors.primary,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: _size.width * .7,
                      height: _size.height * .2,
                      padding: const EdgeInsets.all(15),
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Olá de novo, ${widget.user.name.split(' ')[0]}!',
                        overflow: TextOverflow.fade,
                        style: AppTextStyles.titleBackGround
                            .copyWith(fontSize: 21),
                      ),
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(widget.user.photoURL ?? ''))),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * .7,
                  width: MediaQuery.of(context).size.width,
                  child: Stack(
                    children: [
                      FlutterMap(
                        options: MapOptions(
                          center:
                              LatLng(-23.550059413086768, -46.6333186988835),
                          zoom: 10,
                        ),
                        layers: [
                          TileLayerOptions(
                              urlTemplate:
                                  "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                              subdomains: ['a', 'b', 'c']),
                          MarkerLayerOptions(
                            markers: [
                              Marker(
                                width: 80.0,
                                height: 80.0,
                                point: LatLng(
                                  -23.543157728470327,
                                  -46.642374283480564,
                                ),
                                builder: (ctx) => Icon(
                                  CupertinoIcons.location_solid,
                                  color: AppColors.red,
                                ),
                              ),
                              Marker(
                                  width: 80.0,
                                  height: 80.0,
                                  point: LatLng(
                                      -23.556522032662134, -46.660290858642846),
                                  builder: (ctx) => IconButton(
                                        onPressed: () {
                                          print('object');
                                        },
                                        icon: Icon(
                                          CupertinoIcons.location_solid,
                                          color: AppColors.red,
                                        ),
                                      )),
                              Marker(
                                width: 80.0,
                                height: 80.0,
                                point: LatLng(
                                    -23.54709222081225, -46.616010349686626),
                                builder: (ctx) => Icon(
                                  CupertinoIcons.location_solid,
                                  color: AppColors.red,
                                ),
                              ),
                              Marker(
                                width: 80.0,
                                height: 80.0,
                                point: LatLng(
                                    -23.54534357199883, -46.60694987579494),
                                builder: (ctx) => Icon(
                                  CupertinoIcons.location_solid,
                                  color: AppColors.red,
                                ),
                              ),
                              Marker(
                                width: 80.0,
                                height: 80.0,
                                point: LatLng(
                                    -23.545218667628333, -46.60756299053433),
                                builder: (ctx) => Icon(
                                  CupertinoIcons.location_solid,
                                  color: AppColors.red,
                                ),
                              ),
                              Marker(
                                width: 80.0,
                                height: 80.0,
                                point: LatLng(
                                    -23.568199073872442, -46.647824192235824),
                                builder: (ctx) => Icon(
                                  CupertinoIcons.location_solid,
                                  color: AppColors.red,
                                ),
                              ),
                              Marker(
                                width: 80.0,
                                height: 80.0,
                                point: LatLng(
                                    -23.57500499880886, -46.631065722383916),
                                builder: (ctx) => Icon(
                                  CupertinoIcons.location_solid,
                                  color: AppColors.red,
                                ),
                              ),
                              Marker(
                                width: 80.0,
                                height: 80.0,
                                point: LatLng(
                                    -23.55995814616694, -46.67180413458777),
                                builder: (ctx) => Icon(
                                  CupertinoIcons.location_solid,
                                  color: AppColors.red,
                                ),
                              ),
                              Marker(
                                width: 80.0,
                                height: 80.0,
                                point: LatLng(
                                    -23.59133919540048, -46.58952028633991),
                                builder: (ctx) => Icon(
                                  CupertinoIcons.location_solid,
                                  color: AppColors.red,
                                ),
                              ),
                              Marker(
                                width: 80.0,
                                height: 80.0,
                                point: LatLng(
                                    -23.583543496729092, -46.582472122372714),
                                builder: (ctx) => Icon(
                                  CupertinoIcons.location_solid,
                                  color: AppColors.red,
                                ),
                              ),
                              Marker(
                                width: 80.0,
                                height: 80.0,
                                point: LatLng(
                                    -23.534652725736983, -46.56429752674335),
                                builder: (ctx) => Icon(
                                  CupertinoIcons.location_solid,
                                  color: AppColors.red,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      // Positioned(bottom: 0, child: BottomSheetContent()),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 110,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        print('Iniciante');
                      },
                      child: Container(
                        width: _size.width * .4,
                        height: _size.height * .17,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: AppColors.whiteSecoundary.withOpacity(.8),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              // Icons.train_outlined,
                              CupertinoIcons.train_style_one,
                              color: Color(0xFFEE3338),
                              size: 30,
                            ),
                            Text(
                              'Ver atualizaçoes do metro',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.normalTextBlack,
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/profile');
                      },
                      child: Container(
                        width: _size.width * .4,
                        height: _size.height * .17,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: AppColors.whiteSecoundary.withOpacity(.8),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(
                              CupertinoIcons.tram_fill,
                              size: 30,
                              color: Color(0xFFEE3338),
                            ),
                            Text(
                              'Ver atualizaçoes dos trens',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.normalTextBlack,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // body: Scaffold(
      //   body:
      // ),
    );
  }
}
