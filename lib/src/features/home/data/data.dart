// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:real_estate_app/gen/assets.gen.dart';
import 'package:real_estate_app/src/features/home/models/listing_model.dart';

List<ListingModel> listings = [
  ListingModel(
      address: 'Gladkova St., 25',
      image: Assets.images.bedroomOne.path,
      mainAxis: 2,
      crossAxis: 1),
  ListingModel(
      address: 'Gubina St., 11',
      image: Assets.images.bedroomTwo.path,
      mainAxis: 1,
      crossAxis: 2),
  ListingModel(
      address: 'Trefoleva St., 43',
      image: Assets.images.bedroomThree.path,
      mainAxis: 1,
      crossAxis: 1),
  ListingModel(
      address: 'Sedova St., 22',
      image: Assets.images.bedroomFour.path,
      mainAxis: 1,
      crossAxis: 1)
];
