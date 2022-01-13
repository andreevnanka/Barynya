import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
//import 'package:barinya/main.dart';
// import 'package:barinya/pages/video/video-list.dart';
// import 'package:http/http.dart' as http;
//просто для настройки гита

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/sample.mp4');
    _initializeVideoPlayerFuture = _controller.initialize();

    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(),
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the VideoPlayerController has finished initialization, use
            // the data it provides to limit the aspect ratio of the video.
            return Stack(
              children: [
                FittedBox(
                  fit: BoxFit.fill,
                  child: SizedBox(
                    child: Row(
                      children: [
                        Column(
                            children: [
                              Padding(padding: EdgeInsets.zero),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16.0),
                                child: Container(
                                  height: 650,
                                  width: MediaQuery.of(context).size.width,
                                  //решает проблему позиционирования для 10 айфона, но не для остальных форматов
                                  child: VideoPlayer(_controller),
                                ),
                              ),
                              Padding(padding: EdgeInsets.only(bottom: 32.0)),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100.0),
                                child: Container(
                                  padding: EdgeInsets.zero,
                                  width: 327,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(100.0),
                                      border: Border.all(
                                        color: Colors.white,
                                        style: BorderStyle.solid,
                                        width: 1,
                                      )
                                  ),
                                  child: VideoProgressIndicator(
                                    _controller,
                                    colors: VideoProgressColors(
                                        playedColor: Color.fromRGBO(255, 255, 255, 1.0)
                                    ),
                                    allowScrubbing: false,
                                    padding: EdgeInsets.zero,
                                  ),
                                ),
                              ),
                            ]
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 154,
                      child:
                      Row(
                        children: [
                          Flexible(
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 6.0)),
                                  Container(
                                    padding: EdgeInsets.all(18.0),
                                    width: 186,
                                    height: 154,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(16.0)
                                    ),
                                    child: Stack(
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.only(bottom: 18.0),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    'Now',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                  Text(
                                                    '5/12',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 18,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: EdgeInsets.only(bottom: 12.0),
                                              child:  Row(
                                                children: [
                                                  Icon(
                                                    Icons.circle,
                                                    color: Colors.deepOrange,
                                                    size: 12,
                                                  ),
                                                  Padding(padding: EdgeInsets.only(right: 12.0)),
                                                  Container(
                                                    width: 116,
                                                    child: Text(
                                                      'Head massage lifting',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w700,
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                TextButton(
                                                  onPressed: () => showDialog<String>(
                                                      context: context,
                                                      builder: (BuildContext context) => Container(
                                                        child: AlertDialog(
                                                          title: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Container(
                                                                  padding: EdgeInsets.all(0.0),
                                                                  width: 24,
                                                                  height: 24,
                                                                  decoration: BoxDecoration(
                                                                    borderRadius: BorderRadius.circular(100.0),
                                                                    color: Colors.black,
                                                                  ),
                                                                  child: IconButton(
                                                                      onPressed: () {
                                                                        Navigator.of(context).pop();
                                                                      },
                                                                      icon: Icon(Icons.close),
                                                                      iconSize: 12,
                                                                      color: Colors.white
                                                                  )
                                                              ),
                                                              Text(
                                                                'Head massage lifting',
                                                                style: TextStyle(
                                                                  color: Colors.black,
                                                                  fontSize: 16,
                                                                  fontWeight: FontWeight.bold,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          content: Text(
                                                            'Make the letter "o" with your lips and hold in this position for 1.5 minutes. During the exercise, the nasolabial fold is smoothed, a good lymphatic drainage effect is obtained and the cheekbones become brighter.',
                                                            style: TextStyle(
                                                                color: Colors.black,
                                                                fontSize: 20,
                                                                fontWeight: FontWeight.bold
                                                            ),
                                                          ),
                                                        ),
                                                      )
                                                  ),
                                                  child: Text(
                                                    'Text instruction',
                                                    style: TextStyle(
                                                      color: Colors.deepOrange,
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w700,
                                                      decoration: TextDecoration.underline,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ]
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 186,
                                              height: 1,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(100.0),
                                                  color: Color.fromRGBO(0, 0, 0, 0)
                                              ),
                                            ),
                                            Padding(padding: EdgeInsets.fromLTRB(0, 0, 0, 0)),
                                            Container(
                                              width: 182,
                                              height: 77,
                                              decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(100.0),
                                                  color: Color.fromRGBO(0, 0, 0, 0.5)
                                              ),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '6/12',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 12,
                                                        fontWeight: FontWeight.w400
                                                    ),
                                                  ),
                                                  Text(
                                                    'Massage of Head',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w700
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ]
                                        ),
                                      ]
                                    )
                                  //Padding(padding: EdgeInsets.symmetric(horizontal: 6.0)),
                                  )
                                ]
                              )
                          )
                        ],
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 130.0)),
                  ],
                )
              ],
            );
          } else {
            // If the VideoPlayerController is still initializing, show a
            // loading spinner.
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        onPressed: () {
          // Wrap the play or pause in a call to `setState`. This ensures the
          // correct icon is shown.
          setState(() {
            // If the video is playing, pause it.
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              // If the video is paused, play it.
              _controller.play();
            }
          });
        },
        // Display the correct icon depending on the state of the player.
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}

// class VideosList extends StatelessWidget {
//   const VideosList({Key? key, required this.videos}) : super(key: key);
//
//   final List<Video> videos;
//
//   @override
//   Widget build(BuildContext context) {
//     return Text('${videos[0].id}');
//   }}