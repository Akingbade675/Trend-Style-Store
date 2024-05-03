import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:trend_style_store/src/components/images/circular_image.dart';
import 'package:trend_style_store/src/utils/constants/colors.dart';
import 'package:trend_style_store/src/utils/constants/extentions.dart';
import 'package:trend_style_store/src/utils/constants/image_strings.dart';

class TUserProfileTile extends StatelessWidget {
  const TUserProfileTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const TCircularImage(
        image: TImages.userAvatar1,
        width: 50,
        height: 50,
        padding: 0,
      ),
      title: Text(
        'Abdulbasit Akingbade',
        style: context.textTheme.headlineSmall?.copyWith(color: TColors.white),
      ),
      subtitle: Text(
        'support@abdulbasit.com',
        style: context.textTheme.bodyMedium?.copyWith(color: TColors.white),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(
          Iconsax.edit,
          color: TColors.white,
        ),
      ),
    );
  }
}
