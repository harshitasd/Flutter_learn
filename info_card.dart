import 'package:flutter/material.dart';
import 'package:world_time_app/widgets/avatar.dart';
//import 'dart:math';

enum InfoType { left_11, right_11, left_22, right_22, center_22 }

class InfoCard extends StatelessWidget {
  final InfoType type;
  final String imgSource;
  final String? line1;
  final String? line2;
  final String? line3;
  final String? line4;

  //alpha: Avatar left | Heading (bold) + line1 + line2 on right
  const InfoCard.left_11({
    super.key,
    required this.imgSource,
    required this.line1,
    required this.line2,
  }) : type = InfoType.left_11,
       line3 = null,
       line4 = null;
  //beta: 3 lines left | Avatar right
  const InfoCard.right_11({
    super.key,
    required this.imgSource,
    required this.line1,
    required this.line2,
  }) : type = InfoType.right_11,
       line4 = null,
       line3 = null;
  //gamma: Avatar top | title + subtitle below (centered, profile card style)
  const InfoCard.left_22({
    super.key,

    required this.imgSource,
    required this.line1,
    required this.line2,
    required this.line3,
    required this.line4,
  }) : type = InfoType.left_22;

  const InfoCard.right_22({
    super.key,
    required this.imgSource,
    required this.line1,
    required this.line2,
    required this.line3,
    required this.line4,
  }) : type = InfoType.right_22;

  const InfoCard.center_22({
    super.key,
    required this.imgSource,
    required this.line1,
    required this.line2,
    required this.line3,
    required this.line4,
  }) : type = InfoType.center_22;

  Widget _buildLeft_11() {
    return Container(
      padding: const EdgeInsets.all(20),

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          // Avatar on the left
          Avatar(shape: AvatarShape.circle, source: imgSource),

          // Gap between avatar and text
          const SizedBox(width: 12),

          // Prevents overflow when text is long
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 4),

                // First line
                Text(line1!, overflow: TextOverflow.ellipsis, maxLines: 2),

                const SizedBox(height: 20),

                // Second line
                Text(line2!, overflow: TextOverflow.ellipsis, maxLines: 2),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRight_11() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  line1 ?? 'no line passed', //null coalishing operator
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
                SizedBox(height: 20),
                Text(
                  line2 ?? 'no line passed',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ),
          ),
          SizedBox(height: 30, width: 20),
          Avatar(shape: AvatarShape.circle, source: imgSource),
        ],
      ),
    );
  }

  Widget _buildLeft_22() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Avatar(shape: AvatarShape.circle, source: imgSource),
          Expanded(
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        line1 ?? 'no line passed',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        line2 ?? 'no line passed',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        line3 ?? 'no line passed',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        line4 ?? 'no line passed',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRight_22() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        line1 ?? 'no line passed',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        line2 ?? 'no line passed',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        line3 ?? 'no line passed',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        line4 ?? 'no line passed',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          Avatar(shape: AvatarShape.circle, source: imgSource),
        ],
      ),
    );
  }

  Widget _buildCenter_22() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  line1 ?? 'no line passed',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
                SizedBox(height: 10),
                Text(
                  line3 ?? 'no line passed',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
              ],
            ),
          ),

          Avatar(shape: AvatarShape.circle, source: imgSource),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  line2 ?? 'no line passed',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                ),
                SizedBox(height: 10),
                Text(
                  line4 ?? 'no line passed',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case InfoType.left_11:
        return _buildLeft_11();

      case InfoType.right_11:
        return _buildRight_11();

      case InfoType.left_22:
        return _buildLeft_22();

      case InfoType.right_22:
        return _buildRight_22();

      case InfoType.center_22:
        return _buildCenter_22();
    }
  }
}
