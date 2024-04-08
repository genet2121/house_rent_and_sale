import 'package:appartment_rent_and_sale/Data/Data%20Providers/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SharedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SharedAppBar({
    super.key,
    this.titleText,
    required this.screenHeight,
    this.showBackButton = true,
    this.showMenuButton = true,
  });
  final double screenHeight;
  final String? titleText;
  final bool showBackButton;
  final bool showMenuButton;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    TextTheme _textTheme = Theme.of(context).textTheme;
    return Column(
      children: [
        AppBar(
            //shadowColor: Colors.transparent,
            //backgroundColor: ColorResources.scaffoldColor,
            backgroundColor: Colors.white,
            //toolbarHeight: screenHeight * 0.075,
            title: Text(
              titleText!,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: ColorResources.textColor,
                  fontWeight: FontWeight.normal),
            ),
            leading: showBackButton
                ? Expanded(
                    child: IconButton(
                      onPressed: () => context.pop(),
                      icon: Icon(
                        Icons.arrow_back,
                        color: ColorResources.textColor,
                      ),
                    ),
                  )
                : showMenuButton
                    ? PopupMenuButton(
                        itemBuilder: (BuildContext context) => [
                          PopupMenuItem(
                            child: Text('Item 1'),
                            value: 'item1',
                          ),
                          PopupMenuItem(
                            child: Text('Item 2'),
                            value: 'item2',
                          ),
                          PopupMenuItem(
                            child: Text('Item 3'),
                            value: 'item3',
                          ),
                        ],
                        onSelected: (value) {
                          // Handle menu item selection here
                          print('Selected item: $value');
                        },
                        child: Expanded(
                            child: IconButton(
                          onPressed: () => context.pop(),
                          icon: Icon(
                            Icons.menu,
                            color: ColorResources.textColor,
                          ),
                        )),
                      )
                    : SizedBox()),
        Expanded(
          child: Divider(
            height: 1, // Adjust the height of the divider
            color: Colors.grey, // Change the color of the divider
          ),
        ),
      ],
    );
  }
}
