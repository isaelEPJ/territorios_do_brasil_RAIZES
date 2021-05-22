import 'package:fl_territorios_do_brasil/utils/app_colors.dart';
import 'package:flutter/material.dart';

class LitleButton extends StatelessWidget {
  final String? title;
  final Icon icon;
  final Function onPress;
  final Color borderColor;
  final Color color;
  final bool withArrowDrop;
  LitleButton({
    this.title,
    required this.icon,
    required this.onPress,
    required this.borderColor,
    required this.color,
    required this.withArrowDrop,
  });

  @override
  Widget build(BuildContext context) {
    return title == null
        ? Container(
            width: MediaQuery.of(context).size.width * 0.18,
            height: MediaQuery.of(context).size.height * 0.044,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 1, color: borderColor),
              color: AppColors.primaryColor,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: color,
                  onPrimary: AppColors.primaryColor,
                ),
                child: withArrowDrop
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          icon,
                          Icon(
                            Icons.arrow_drop_down_sharp,
                            size: 15,
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          icon,
                        ],
                      ),
                onPressed: () => onPress,
              ),
            ),
          )
        : Container(
            width: MediaQuery.of(context).size.width * 0.292,
            height: MediaQuery.of(context).size.height * 0.044,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(width: 1, color: borderColor),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: withArrowDrop
                  ? Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            primary: color,
                            onPrimary: AppColors.primaryColor,
                          ),
                          icon: icon,
                          label: Row(
                            children: [
                              Text(
                                title!,
                                // style: AppTextStyles.body,
                              ),
                              Icon(
                                Icons.arrow_drop_down_sharp,
                                size: 15,
                              ),
                            ],
                          ),
                          onPressed: () => onPress,
                        ),
                      ],
                    )
                  : ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        primary: color,
                        onPrimary: AppColors.primaryColor,
                      ),
                      icon: icon,
                      label: Text(
                        title!,
                        // style: AppTextStyles.body,
                      ),
                      onPressed: () => onPress,
                    ),
            ),
          );
  }
}
