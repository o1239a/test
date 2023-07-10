//
//  ViewController.swift
//  soundApp
//
//  Created by Yoshihito Nakanishi on 2023/07/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var test_button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        LibpdManager.shared.setup()
        LibpdManager.shared.enable(true)
        LibpdManager.shared.openPatch("test.pd")

    }

    @IBAction func test_button_tapped(_ sender: Any) {
        PdBase.sendBang(toReceiver: "test")
    }
    
}

