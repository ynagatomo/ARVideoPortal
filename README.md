# AR Video Portal

![App Icon](https://user-images.githubusercontent.com/66309582/150739922-d6f9353a-ca24-4224-ad7f-2f4afa1136d4.png)

A minimal iOS AR app to display 360 / video in sphere space.

- Xcode 13.2.1
- Target: iOS / iPadOS 14.0+
- SwiftUI, ARKit, RealityKit, AVFoundation

This app uses below files and SDKs.

- Video	file: a 360 degrees 1080p mp4 file (video + audio)
- Sphere 3d model: a USDZ file created with Blender
- Video	material: RealityKit - VideoMaterial(avPlayer)
- Infinit loop video playback: AVFoundation - AVPlayerItem(url:), AVQueuePlayer(), AVPlayerLooper

This is a minimal implementation, so please improve the quality or modify it to your app.

- Sync-loading of Assets => Async-loading
- Video texture inversion (currently incorrect) => I've done this. The orientation of the texture is now correct.
- Video playback control such as start and pause
- Replacing the video file with your favorite one
- Changing the sphere 3d model (currently 1.5 meters radius)

The 360 video is provided by mettle. Thank you for sharing nice content.
The video has a watermark. You can purchase the video without a watermark.

- [360/VR London On Tower Bridge](https://vimeo.com/215984568)

![Pict1](https://user-images.githubusercontent.com/66309582/150739581-ca3f32e6-c2c5-4704-afb6-4d1e838a3b35.png)
![Pict2](https://user-images.githubusercontent.com/66309582/150739747-90a3e491-23cb-435e-850f-1842bf069ad2.png)
![Pict3](https://user-images.githubusercontent.com/66309582/150739841-5421eea4-6a41-4b86-b633-bdd9a0e1c0bf.png)
![GIF1](https://user-images.githubusercontent.com/66309582/150741338-c86cb231-a445-4e2b-b48e-6a9b810b4c57.gif)

![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)

