//
//  ViewController.swift
//  Button Link
//
//  Created by belal medhat on 08/05/2021.
//

import UIKit
import youtube_ios_player_helper
class StartViewController: UIViewController {
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        linkBut.layer.cornerRadius = 10
        linkBut.clipsToBounds = true
        or.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        or.layer.borderWidth = 1
        or.layer.cornerRadius = 10
        or.clipsToBounds = true
        YTVideoPlayer.delegate = self
        YTVideoPlayer.load(withVideoId: "m0QQ-hWs8fc", playerVars: ["playsinline": "1"])

      
    }
    @IBOutlet weak var or: UILabel!
    @IBOutlet weak var YTVideoPlayer: YTPlayerView!
    @IBOutlet weak var linkBut: UIButton!
    @IBAction func linkButton(_ sender: UIButton) {
        openUrl()
    }
    func openUrl(){
        guard let url = URL(string: "https://www.youtube.com/watch?v=m0QQ-hWs8fc") else {return}
            if UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url, options: [:], completionHandler: nil)
            }
        
    }

}
extension StartViewController: YTPlayerViewDelegate {
    func playerViewPreferredWebViewBackgroundColor(_ playerView: YTPlayerView) -> UIColor {
        return UIColor.black
    }
    

}
