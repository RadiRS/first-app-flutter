import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/screens/nav_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:miniplayer/miniplayer.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../data.dart';

class VideoCard extends StatelessWidget {
  final Video video;

  const VideoCard({required this.video});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read(selectedVideoProvider).state = video;
        context
            .read(miniPlayerControllerProvider)
            .state
            .animateToHeight(state: PanelState.MAX);
      },
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(video.thumbnailUrl,
                  height: 220.0, width: double.infinity, fit: BoxFit.cover),
              Positioned(
                  bottom: 8.0,
                  right: 8.0,
                  child: Container(
                    padding: EdgeInsets.all(4.0),
                    color: Colors.black,
                    child: Text(video.duration,
                        style: Theme.of(context)
                            .textTheme
                            .caption!
                            .copyWith(color: Colors.white)),
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () => print('Navigate to proflie'),
                  child: CircleAvatar(
                    foregroundImage: NetworkImage(video.author.profileImageUrl),
                  ),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        child: Text(
                          video.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 15.0),
                        ),
                      ),
                      Flexible(
                        child: Text(
                          '${video.author.username} • ${video.viewCount} views • ${timeago.format(video.timestamp)}',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(fontSize: 14.0),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => print('Tap more'),
                  child: const Icon(Icons.more_vert, size: 20.0),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
