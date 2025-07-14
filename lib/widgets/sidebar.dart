import 'package:flutter/material.dart';
import 'package:semester_project/theme/colors.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({super.key});

  @override
  State<Sidebar> createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  bool iscollapsed = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 100),
      width: iscollapsed ? 64 : 200,
      color: AppColors.sideNav,
      child: Column(
        crossAxisAlignment:
            iscollapsed ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Icon(
            Icons.auto_awesome_mosaic,
            color: AppColors.whiteColor,
            size: iscollapsed ? 30 : 60,
          ),
          const SizedBox(height: 24),

          // Build each menu item
          _buildMenuItem(icon: Icons.add, label: "Home"),
          _buildMenuItem(icon: Icons.search, label: "Search"),
          _buildMenuItem(icon: Icons.language, label: "Spaces"),
          _buildMenuItem(icon: Icons.auto_awesome, label: "Discover"),
          _buildMenuItem(icon: Icons.cloud_done_outlined, label: "Library"),

          const Spacer(),

          // Collapse toggle button
          GestureDetector(
            onTap: () {
              setState(() {
                iscollapsed = !iscollapsed;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 100),
              margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 10),
              child: Icon(
                iscollapsed
                    ? Icons.keyboard_arrow_right
                    : Icons.keyboard_arrow_left,
                color: AppColors.iconGrey,
                size: 22,
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildMenuItem({required IconData icon, required String label}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: Row(
        mainAxisAlignment:
            iscollapsed ? MainAxisAlignment.center : MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: AppColors.iconGrey,
            size: 22,
          ),
          if (!iscollapsed) ...[
            const SizedBox(width: 12),
            Flexible(
              child: Text(
                label,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ],
      ),
    );
  }
}
