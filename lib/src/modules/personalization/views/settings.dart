import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_style_store/src/components/appbar/appbar.dart';
import 'package:trend_style_store/src/components/custom_shapes/containers/primary_header_container.dart';
import 'package:trend_style_store/src/components/list_tiles/settings_menu_tile.dart';
import 'package:trend_style_store/src/components/list_tiles/user_profile_tile.dart';
import 'package:trend_style_store/src/components/spacer.dart';
import 'package:trend_style_store/src/components/texts/section_heading.dart';
import 'package:trend_style_store/src/modules/personalization/views/profile.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  // -- AppBar --
                  TAppBar(
                    title: Text(
                      'Account',
                      style: context.textTheme.headlineMedium
                          ?.copyWith(color: TColors.white),
                    ),
                  ),

                  // -- User Profile Card --
                  TUserProfileTile(
                      onPressed: () => context.push(const ProfileScreen())),
                  TSpacer.vSpacing(TSizes.spaceBtwSections),
                ],
              ),
            ),

            // -- Body --
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const TSectionHeading(
                      title: 'Account Settings', showActionButton: false),
                  TSpacer.vSpacing(TSizes.spaceBtwSections),

                  TSettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'My Addresses',
                    subtitle: 'Set shopping delivery address',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'My Carts',
                    subtitle: 'View and manage your shopping carts',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'My Orders',
                    subtitle: 'View and manage your shopping orders',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Bank Account',
                    subtitle: 'Withdraw balance to registered bank account',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'My Coupons',
                    subtitle: 'View and redeem your coupons',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications',
                    subtitle: 'Manage your notification preferences',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Account Privacy',
                    subtitle: 'Manage data usage and connected accounts',
                    onTap: () {},
                  ),

                  // -- Account Settings --
                  TSpacer.vSpacing(TSizes.spaceBtwSections),
                  const TSectionHeading(
                      title: 'App Settings', showActionButton: false),
                  TSpacer.vSpacing(TSizes.spaceBtwItems),
                  TSettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Load Data',
                    subtitle: 'Load data from the cloud to your device',
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subtitle: 'Set recommendations based on location',
                    trailing:
                        CupertinoSwitch(value: true, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subtitle: 'Toggle safe mode for enhanced security',
                    trailing:
                        CupertinoSwitch(value: false, onChanged: (value) {}),
                    onTap: () {},
                  ),
                  TSettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subtitle: 'Set image quality to be seen',
                    trailing:
                        CupertinoSwitch(value: false, onChanged: (value) {}),
                    onTap: () {},
                  ),

                  TSpacer.vSpacing(TSizes.spaceBtwSections),
                  OutlinedButton(onPressed: () {}, child: const Text('Logout')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
