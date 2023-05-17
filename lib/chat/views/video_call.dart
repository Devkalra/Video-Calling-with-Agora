import 'package:flutter/material.dart';
import 'package:agora_uikit/agora_uikit.dart';

class VideoCall extends StatefulWidget {
  const VideoCall({Key? key}) : super(key: key);

  @override
  State<VideoCall> createState() => _VideoCallState();
}

class _VideoCallState extends State<VideoCall> {
  final AgoraClient _client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
        appId: 'e2e2e2faab5d47bea5e6cafcc35ac40d',
        channelName: 'fluttering',
        tempToken:
            '007eJxTYFAumO/I8lTI8VPOjo83v7ze9SS1T/jkmhZRNu6YO5e/b1mhwJBqBIJpiYlJpikm5kmpiaapZsmJacnJxqaJySYGKZP0U1MaAhkZONIUGBkZIBDE52JIyyktKUktysxLZ2AAANouJA4='),
  );
  @override
  void initState() {
    super.initState();
    _initAgora();
  }

  Future<void> _initAgora() async {
    await _client.initialize();
  }

  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text("Video Call"),
        ),
        body: SafeArea(
          child: Stack(
            children: const [
              AgoraVideoViewer(
                client: _client,
                layoutType: Layout.floating,
                showNumberOfUsers: true,
              ),
              AgoraVideoButtons(
                client: _client,
                enabledButtons: [
                  BuiltInButtons.toggleCamera,
                  BuiltInButtons.callEnd,
                  BuiltInButtons.toggleMic
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
