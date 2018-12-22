//
//  ViewController.swift
//  AudioPlayer
//
//  Created by Michael Miles on 12/21/18.
//  Copyright © 2018 Michael Miles. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playButtonPressed(_ sender: Any) {
        if player?.isPlaying == true {
            player?.stop()
        } else {
            playMusic()
        }
    }
    

    func playMusic() {
        let soundURL = Bundle.main.url(forResource: "bensound-ukulele", withExtension: "mp3")
        
        do {
       try player = AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        
        player?.play()
    }
}

