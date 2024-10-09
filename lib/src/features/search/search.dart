import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:real_estate_app/gen/assets.gen.dart';
import 'package:real_estate_app/src/core/app_colors.dart';
import 'package:real_estate_app/src/core/widgets/app_text.dart';
import 'package:real_estate_app/src/features/home/widgets/zoom_in_box.dart';
import 'package:real_estate_app/src/features/search/data/data.dart';
import 'package:real_estate_app/src/features/search/widgets/custom_marker.dart';

import 'package:widget_to_marker/widget_to_marker.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final Set<Marker> _markers = {};
  String _mapStyle = '';
  Future<void> _loadMapStyle() async {
    final String style =
        await rootBundle.loadString('assets/json/map_style.json');
    setState(() {
      _mapStyle = style;
    });
  }

  final CameraPosition _initialCameraPosition = const CameraPosition(
    target: LatLng(6.495131116289844, 3.349292992522868),
    zoom: 16,
  );

  Future<void> _addMarkers() async {
    await Future.delayed(const Duration(milliseconds: 600));
    _markers.addAll({
      Marker(
        markerId: const MarkerId('marker_1'),
        position: const LatLng(6.493318598226593, 3.3474268249107566),
        icon: await const CustomMarker(title: '3,2 mn P').toBitmapDescriptor(),
      ),
      Marker(
        markerId: const MarkerId('marker_2'),
        position: const LatLng(6.490461411231873, 3.3465462182232204),
        icon: await const CustomMarker(title: '12 mn P').toBitmapDescriptor(),
      ),
      Marker(
        markerId: const MarkerId('marker_3'),
        position: const LatLng(6.494818140335928, 3.350137870510183),
        icon: await const CustomMarker(title: '4,5 mn P').toBitmapDescriptor(),
      ),
      Marker(
        markerId: const MarkerId('marker_4'),
        position: const LatLng(6.497552979246254, 3.35136730450701),
        icon: await const CustomMarker(title: '9.6 mn P').toBitmapDescriptor(),
      ),
      Marker(
        markerId: const MarkerId('marker_5'),
        position: const LatLng(6.4869146158885895, 3.34809470172761),
        icon: await const CustomMarker(title: '12,2 mn P').toBitmapDescriptor(),
      ),
      Marker(
        markerId: const MarkerId('marker_6'),
        position: const LatLng(6.502124463963902, 3.3466128831291804),
        icon: await const CustomMarker(title: '5,87 mn P').toBitmapDescriptor(),
      )
    });
  }

  @override
  void initState() {
    super.initState();
    _loadMapStyle();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: _initialCameraPosition,
            style: _mapStyle,
            markers: _markers,
            onMapCreated: (GoogleMapController controller) async {
              WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
                await _addMarkers();
                if (mounted) {
                  setState(() {});
                }
              });
            },
            myLocationButtonEnabled: false,
            zoomControlsEnabled: false,
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 32, right: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ZoomInBox(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              vertical: 14,
                              horizontal: 10,
                            ),
                            hintText: 'Saint Petersburg',
                            hintStyle: TextStyle(
                              color: AppColors.titleTextColor,
                            ),
                            border: InputBorder.none,
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 5,
                              ),
                              child: Assets.svgs.searchOutline.svg(),
                            ),
                            prefixIconConstraints: const BoxConstraints(
                              minWidth: 24,
                              minHeight: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ZoomInBox(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Assets.svgs.filter.svg(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            left: 32,
            right: 32,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ZoomInBox(
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(
                            0.4,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Assets.svgs.database.svg(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PopupMenuButton<int>(
                      itemBuilder: (context) => menuItems
                          .map((item) => PopupMenuItem(
                                value: 1,
                                child: Row(
                                  children: [
                                    SvgPicture.asset(
                                      item.path,
                                      colorFilter: ColorFilter.mode(
                                        AppColors.bodyTextColor
                                            .withOpacity(0.9),
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    AppText.h1(
                                      content: item.title,
                                      fontSize: 14,
                                      color: AppColors.bodyTextColor
                                          .withOpacity(0.9),
                                    )
                                  ],
                                ),
                              ))
                          .toList(),
                      offset: const Offset(0, 100),
                      color: Colors.white,
                      elevation: 2,
                      // on selected we show the dialog box
                      onSelected: (value) {},
                      child: ZoomInBox(
                        child: Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(
                              0.4,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Assets.svgs.arrowUp.svg(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    ZoomInBox(
                      child: Container(
                        height: 48,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 18,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(
                            0.4,
                          ),
                          borderRadius: BorderRadius.circular(
                            24,
                          ),
                        ),
                        child: Row(
                          children: [
                            Assets.svgs.list.svg(
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            const AppText.h1(
                              content: 'List of variants',
                              fontSize: 14,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
