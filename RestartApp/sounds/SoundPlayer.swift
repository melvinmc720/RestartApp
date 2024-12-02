//
//  SoundPlayer.swift
//  RestartApp
//
//  Created by milad marandi on 11/12/24.
//

import Foundation
import AVFoundation


var soundPlayer:AVPlayer?


func playSound(File:String , Extension:String){
    
    guard let path = Bundle.main.path(forResource: File, ofType: Extension) else {
        return
    }
    
    soundPlayer = AVPlayer(url: URL(fileURLWithPath: path))
    
    soundPlayer?.play()
}
