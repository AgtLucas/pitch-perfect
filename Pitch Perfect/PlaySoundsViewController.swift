//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Lucas on 2/13/15.
//  Copyright (c) 2015 AWLKA. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    var audioPlayer:AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
            // Convert string path to url
            var filePathUrl = NSURL.fileURLWithPath(filePath)
            // Initialize Audio Player
            audioPlayer = AVAudioPlayer(contentsOfURL: filePathUrl, error: nil)
            audioPlayer.enableRate = true

        } else {
            println("Yo, unable to find the path!")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Play audio
    func playAudio(rateValue: Float32) -> Float32 {
        audioPlayer.stop()
        audioPlayer.rate = rateValue
        audioPlayer.currentTime = 0.0
        audioPlayer.play()
        return rateValue
    }

    // Play slow audio
    @IBAction func playSlowAudio(sender: UIButton) {
        playAudio(0.5)
    }

    // Play fast audio
    @IBAction func playFastAudio(sender: UIButton) {
        playAudio(1.5)
    }

    // Stop, stop, stop the audio!
    @IBAction func stopAudio(sender: UIButton) {
        audioPlayer.stop()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
