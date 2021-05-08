//
//  ViewController.swift
//  Button Link
//
//  Created by belal medhat on 08/05/2021.
//

import UIKit

class StartViewController: UIViewController {
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        linkBut.layer.cornerRadius = 10
        linkBut.clipsToBounds = true
    }
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

