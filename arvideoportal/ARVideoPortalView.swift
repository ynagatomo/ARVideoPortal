//
//  ARVideoPortalView.swift
//  arvideoportal
//
//  Created by Yasuhito NAGATOMO on 2022/01/24.
//

import SwiftUI
import RealityKit
import ARKit

struct ARVideoPortalView: UIViewControllerRepresentable {
    typealias UIViewControllerType = ARViewController

    func makeCoordinator() -> Coordinator {
        return Coordinator(self)
    }

    func makeUIViewController(context: Context) -> ARViewController {
        let viewController = ARViewController()
        return viewController
    }

    func updateUIViewController(_ uiViewController: ARViewController, context: Context) {
    }

    class Coordinator: NSObject {
        var parent: ARVideoPortalView
        init(_ parent: ARVideoPortalView) {
            self.parent = parent
        }
    }
}

class ARViewController: UIViewController {
    let videoName = "tower_bridge"
    let videoType = "mp4"
    let spaceName = "SphereSpace.usdz"

    var playerLooper: AVPlayerLooper!

    override func viewDidAppear(_ animated: Bool) {
        let arView = ARView(frame: .zero)
        view = arView

        let anchorEntity = AnchorEntity()
        arView.scene.addAnchor(anchorEntity)

        if let url = Bundle.main.url(forResource: videoName, withExtension: videoType) {
            let playerItem = AVPlayerItem(url: url)
            let player = AVQueuePlayer()
            playerLooper = AVPlayerLooper(player: player, templateItem: playerItem)

            let material = VideoMaterial(avPlayer: player)
            do {
                let spaceModelEntity = try Entity.loadModel(named: spaceName)
                spaceModelEntity.model?.materials = [material]
                anchorEntity.addChild(spaceModelEntity)
            } catch {
                assertionFailure("Could not load the USDZ asset.")
            }

            player.play()

        } else {
            assertionFailure("Could not load the video asset.")
        }

        let config = ARWorldTrackingConfiguration()
        arView.session.run(config)
    }
}
