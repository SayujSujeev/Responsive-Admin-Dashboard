import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/constants/constants.dart';
import 'package:responsive_admin_dashboard/models/discussions_info_model.dart';

class DiscussionInfoDetail extends StatelessWidget {
  const DiscussionInfoDetail({Key? key, required this.info}) : super(key: key);

  final DiscussionInfoModel info;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: appPadding),
      padding: EdgeInsets.all(appPadding / 2),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              info.imageSrc!,
              height: 38,
              width: 38,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: appPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    info.name!,
                    style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w600
                    ),
                  ),

                  Text(
                    info.date!,
                    style: TextStyle(
                        color: textColor.withOpacity(0.5),
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Icon(Icons.more_vert_rounded,color: textColor.withOpacity(0.5),size: 18,)
        ],
      ),
    );
  }
}
