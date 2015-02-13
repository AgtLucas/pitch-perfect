//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Lucas on 2/12/15.
//  Copyright (c) 2015 AWLKA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var recordingInProgress: UILabel!
    @IBOutlet weak var stopButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        stopButton.hidden = true
    }


    @IBAction func recordAudio(sender: UIButton) {                stopButton.hidden = false
        recordingInProgress.hidden = false
    }

    @IBAction func stopRecord(sender: UIButton) {
        recordingInProgress.hidden = true
    }
}

