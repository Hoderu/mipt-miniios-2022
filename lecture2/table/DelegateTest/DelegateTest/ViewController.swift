//
//  ViewController.swift
//  DelegateTest
//
//  Created by a.reshetnikov on 28/10/2019.
//  Copyright © 2019 MIPT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var audioPlayerViewModel: AudioPlayerView!

    // MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        audioPlayerViewModel?.delegate = self
    }

}

extension ViewController: AudioPlayerDelegate {
    func playPauseDidTap() {
        print("play/pause tapped!!")
    }

    func playlistDidTap() {
        print("list tapped!!")
    }
}
