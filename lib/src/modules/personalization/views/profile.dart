import 'package:flutter/material.dart';
import 'package:trend_style_store/src/components/appbar/appbar.dart';
import 'package:trend_style_store/src/components/images/circular_image.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/components/texts/section_heading.dart';
import 'package:trend_style_store/src/modules/personalization/components/profile/profile_menu.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // -- Profile Picture --
              Column(
                children: [
                  const TCircularImage(
                      image: TImages.userAvatar1, width: 80, height: 80),
                  TextButton(
                      onPressed: () {},
                      child: const Text('Change Profile Picture'))
                ],
              ),

              // -- Details --
              TSpacer.vSpacing(TSizes.spaceBtwItems / 2),
              const Divider(),
              TSpacer.vSpacing(TSizes.spaceBtwItems),

              // -- Profile Info --
              const TSectionHeading(
                  title: 'Profile Information', showActionButton: false),
              TSpacer.vSpacing(TSizes.spaceBtwItems),

              const TProfileMenu(title: 'Name', value: 'Abdulbasit Akingbade'),
              const TProfileMenu(title: 'Username', value: 'bhobo_01'),

              TSpacer.vSpacing(TSizes.spaceBtwItems),
              const Divider(),
              TSpacer.vSpacing(TSizes.spaceBtwItems),

              // -- Personal Info --
              const TSectionHeading(
                  title: 'Personal Information', showActionButton: false),
              TSpacer.vSpacing(TSizes.spaceBtwItems),

              const TProfileMenu(title: 'User ID', value: '13571'),
              const TProfileMenu(title: 'E-mail', value: 'bhobo@gmail.com'),
              const TProfileMenu(title: 'Phone Number', value: '0904 876 9001'),
              const TProfileMenu(title: 'Gender', value: 'Male'),
              const TProfileMenu(title: 'Date of Birth', value: '01 Oct, 1960'),

              const Divider(),
              TSpacer.vSpacing(TSizes.spaceBtwItems),

              TextButton(
                onPressed: () {},
                child: const Text(
                  'Close Account',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
