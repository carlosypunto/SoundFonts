//
//  ViewController.swift
//  SoundFonts
//
//  Created by Carlos García on 14/11/15.
//  Copyright © 2015 Carlos García. All rights reserved.
//

import UIKit
import AudioKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("AcousticGuitar", ofType:"sf2")
        let soundFont = AKSoundFont(filename: path!)
        soundFont.fetchPresets { soundFont in
            print("My font: \(soundFont)") // never is called
        }
        print(path)
        print("Sound Font Loaded: \(soundFont.loaded)")
    }
    
}

