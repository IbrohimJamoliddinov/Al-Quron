import 'package:al_quran/src/ui/quran/player_widget/player_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:just_audio/just_audio.dart';

class ControlButtons extends StatelessWidget {
  final AudioPlayer player;

  ControlButtons(this.player);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          icon: Icon(
            Icons.volume_up,
            color: Color(0xFF535353),
          ),
          onPressed: () {
            showSliderDialog(
              context: context,
              title: "Adjust volume",
              divisions: 10,
              min: 0.0,
              max: 1.0,
              value: player.volume,
              stream: player.volumeStream,
              onChanged: player.setVolume,
            );
          },
        ),
        SizedBox(width: 24),
        SvgPicture.asset(
          "assets/icons/player_prev.svg",
          color: Color(0xFF535353),
        ),
        SizedBox(width: 24),
        StreamBuilder<PlayerState>(
          stream: player.playerStateStream,
          builder: (context, snapshot) {
            final playerState = snapshot.data;
            final processingState = playerState?.processingState;
            final playing = playerState?.playing;
            if (processingState == ProcessingState.loading ||
                processingState == ProcessingState.buffering) {
              return Container(
                width: 32.0,
                height: 32.0,
                child: CircularProgressIndicator(),
              );
            } else if (playing != true) {
              return IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/player_play.svg",
                ),
                iconSize: 32.0,
                onPressed: player.play,
              );
            } else if (processingState != ProcessingState.completed) {
              return IconButton(
                icon: Icon(
                  Icons.pause,
                  color: Color(0xFF535353),
                ),
                iconSize: 32.0,
                onPressed: player.pause,
              );
            } else {
              return IconButton(
                icon: Icon(
                  Icons.replay,
                  color: Color(0xFF535353),
                ),
                iconSize: 32.0,
                onPressed: () => player.seek(
                  Duration.zero,
                ),
              );
            }
          },
        ),
        SizedBox(width: 24),
        SvgPicture.asset(
          "assets/icons/player_next.svg",
          color: Color(0xFF535353),
        ),
        SizedBox(width: 24),
        StreamBuilder<double>(
          stream: player.speedStream,
          builder: (context, snapshot) => IconButton(
            icon: Text("${snapshot.data?.toStringAsFixed(1)}x",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF535353),
                )),
            onPressed: () {
              showSliderDialog(
                context: context,
                title: "Adjust speed",
                divisions: 10,
                min: 0.5,
                max: 1.5,
                value: player.speed,
                stream: player.speedStream,
                onChanged: player.setSpeed,
              );
            },
          ),
        ),
      ],
    );
  }
}
