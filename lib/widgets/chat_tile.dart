import 'package:flutter/material.dart';
import 'package:bwa_chatty/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.text,
    required this.time,
    required this.unread,
  });

  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(imageUrl, height: 55, width: 55),
          SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: titleTextStyle),
              SizedBox(height: 4),
              Text(
                text,
                style: unread
                    ? subtitleTextStyle.copyWith(color: blackColor)
                    : subtitleTextStyle,
              ),
            ],
          ),
          Spacer(),
          Text(time, style: subtitleTextStyle),
        ],
      ),
    );
  }
}
