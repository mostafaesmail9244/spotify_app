import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/core/constants/constants.dart';
import 'package:spotify_app/core/helper/cache_helper.dart';
import 'package:spotify_app/core/helper/spacing.dart';
import 'package:spotify_app/core/themes/app_colors.dart';
import 'package:spotify_app/presentation/splash/controllers/cubit/theme_mode_cubit.dart';
import 'package:spotify_app/presentation/splash/widgets/mode_icon_button.dart';

class ModeButtons extends StatelessWidget {
  const ModeButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeModeCubit, ThemeModeState>(
      builder: (context, state) {
        bool isDarkMode = context.read<ThemeModeCubit>().isDark;
        bool fromShared = CacheHelper.getData(key: Constants.themeMode);

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                ModeIconButton(
                  icon: Icons.dark_mode,
                  color: fromShared
                      ? AppColors.primary
                      : const Color.fromARGB(255, 149, 61, 61),
                  onPressed: () {
                    context
                        .read<ThemeModeCubit>()
                        .changeThemeMode();
                  },
                ),
                verticalSpace(8),
                Text(
                  'Dark Mode',
                  style: TextStyle(
                      color: isDarkMode ? Colors.green : AppColors.grey),
                ),
              ],
            ),
            Column(
              children: [
                ModeIconButton(
                  icon: Icons.light_mode,
                  color: !fromShared ? Colors.green : Colors.grey,
                  onPressed: () {
                    context
                        .read<ThemeModeCubit>()
                        .changeThemeMode();
                  },
                ),
                verticalSpace(8),
                Text(
                  'Light Mode',
                  style: TextStyle(
                      color: !isDarkMode ? Colors.green : AppColors.grey),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
