//
//  BigBuckBunnyViewController.swift
//  BigBuckBunny
//
//  Created by David Cordero on 12/10/16.
//  Copyright © 2016 David Cordero. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit


class BigBuckBunnyViewController: AVPlayerViewController {

    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        play()
    }
    
    override func pressesBegan(presses: Set<UIPress>, withEvent event: UIPressesEvent?) {
        
        for press in presses {
            switch press.type {
            case .UpArrow:
                print("Tap Up 👆")
            case .DownArrow:
                print("Tap Down 👇")
            case .Select:
                print("Select ✊")
            default:
                super.pressesBegan(presses, withEvent: event)
            }
        }
    }
    
    // MARK: - Private
    
    private func play() {
        let asset = AVAsset(URL: NSURL(string: "https://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4")!)
        let playetItem = AVPlayerItem(asset: asset)
        player = AVPlayer(playerItem: playetItem)
        player?.play()
    }
}
