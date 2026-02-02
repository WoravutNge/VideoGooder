import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  const AppHeader({
    super.key,
    this.title = 'Video Game Store',
    this.backgroundColor,
    this.foregroundColor,
  });

  final String title;
  final Color? backgroundColor;
  final Color? foregroundColor;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: foregroundColor != null
            ? TextStyle(color: foregroundColor)
            : null,
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: backgroundColor,
      iconTheme: foregroundColor != null
          ? IconThemeData(color: foregroundColor)
          : null,
    );
  }
}
