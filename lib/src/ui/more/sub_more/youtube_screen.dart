import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeScreen extends StatefulWidget {
  final String id;

  const YoutubeScreen({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  _YoutubeScreenState createState() => _YoutubeScreenState();
}

class _YoutubeScreenState extends State<YoutubeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          brightness: Brightness.dark,
          backgroundColor: Colors.black,
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: widget.id,
                flags: YoutubePlayerFlags(
                  //isLive: true,
                  autoPlay: true,
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 48,
              width: 48,
              margin: EdgeInsets.only(left: 27),
              decoration: BoxDecoration(
                color: Color(0xFF1E1E1E).withOpacity(0.36),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Icon(
                  Icons.close,
                  color: Color(0xFFEBEBF5).withOpacity(0.6),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
