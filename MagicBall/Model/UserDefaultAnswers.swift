//
//  UserDefaultAnswers.swift
//  MagicBall
//
//  Created by Andrey Boyko on 28.01.2022.
//

import Foundation

final class UserDefaultAnswers {
    var defaultAnswers: [String] = ["Just do it!", "Change your mind", "Yes", "Never"]
    var answers: [String] = []
    
    init() {
        answers = fetchAnswers()
        if answers.isEmpty == false {
            defaultAnswers = answers
        }
    }
    
    private func fetchAnswers() -> [String] {
        var fetchArray: [String] = []
        fetchArray = UserDefaults.standard.stringArray(forKey: userDefaultKey) ?? []
        self.answers = fetchArray
        return fetchArray
    }
    
    func saveAnswers(newAnswer: String) {
        answers.append(newAnswer)
        UserDefaults.standard.set(answers, forKey: userDefaultKey)
    }
}


