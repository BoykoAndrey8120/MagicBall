//
//  ViewController.swift
//  MagicBall
//
//  Created by Andrey Boyko on 27.01.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var ballLabel: UILabel!
    
    var api = APIRequest()
    var responder: Answer?
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override var canBecomeFirstResponder: Bool {
        get {
            return true
        }
    }
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        self.api.getAnswer(completion:  { [weak self] answer in
                self?.responder = answer
                               DispatchQueue.main.async {
                                self?.ballLabel.text = answer?.magic.answer ?? ""
            }
        })
    }
    
}

