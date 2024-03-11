//
//  VideoPlayerHelper.swift
//  Africa
//
//  Created by Dhruvin Mulani on 2024-03-10.
//

import Foundation
import AVKit

var videoPlayer : AVPlayer?

func playVideo(filename: String, fileFormate: String) ->  AVPlayer{
    if Bundle.main.url(forResource: filename, withExtension: fileFormate) != nil {
        videoPlayer = AVPlayer(url: Bundle.main.url(forResource: filename, withExtension: fileFormate)!)
        videoPlayer?.play()
    }
    return videoPlayer!
}
