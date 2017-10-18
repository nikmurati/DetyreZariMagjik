//
//  ViewController.swift
//  Projekti1
//
//  Created by macbookpro on 18/10/2017.
//  Copyright © 2017 Besnik. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    func Luaj() -> String {
        
        var zeri = Bundle.main.url(forResource: "pergjigja", withExtension: "wav")
        audioPLayer = try! AVAudioPlayer(contentsOf: zeri!)
        audioPLayer.play()
        
        var numriRandom:Int = Int(arc4random_uniform(5))
        var fotot1:String = fotot[numriRandom]
        imgFotoja.image = UIImage.init(named: fotot1)
        return fotot1
    }
    
    
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake{
            
            Luaj()
            
        }
    }
    
    @IBOutlet weak var imgFotoja: UIImageView!
    var fotot = ["topi1","topi2","topi3","topi4","topi5"]
    var audioPLayer :  AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnLuaj(_ sender: Any) {
        Luaj()
    
        
    }
    
}

