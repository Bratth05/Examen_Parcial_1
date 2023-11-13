import 'package:flutter/material.dart';

class PodcastPage extends StatelessWidget {
  const PodcastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Podcast'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.music_note,
              size: 100.0,
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Hablando del Examen',
              style: TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.fast_rewind),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.play_arrow),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.fast_forward),
                  onPressed: () {},
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Slider(
              value: 0.3,
              onChanged: (double value) {},
            ),
          ],
        ),
      ),
    );
  }
}
