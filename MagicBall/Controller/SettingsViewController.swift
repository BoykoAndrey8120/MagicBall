//
//  SettingsViewController.swift
//  MagicBall
//
//  Created by Andrey Boyko on 28.01.2022.
//

import UIKit

final class SettingsViewController: UIViewController {
    
    @IBOutlet private weak var saveAnswerButton: UIButton!
    @IBOutlet private weak var answerLabel: UILabel!
    @IBOutlet private weak var userAnswerTextField: UITextField!
    @IBOutlet private weak var saveUserAnswerButton: UIButton!
    
    private var userDefaultData = UserDefaultAnswers()
    private weak var mainVC: MainViewController?
    var text: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        answerLabel.text = updateText()
    }
    
    private func updateText() -> String? {
        if let text2 = mainVC?.ballLabel.text {
            text = text2
        }
        return text
    }
    @IBAction func saveLastAnswer(_ sender: Any) {
        if let text = text {
            userDefaultData.saveAnswers(newAnswer: text)
        }
        answerLabel.text = ""
    }
    
    @IBAction func saveYourAnswer(_ sender: Any) {
        if let text = userAnswerTextField.text {
            userDefaultData.saveAnswers(newAnswer: text)
        }
        userAnswerTextField.text = ""
    }
}



