//
//  APIRequest.swift
//  MagicBall
//
//  Created by Andrey Boyko on 27.01.2022.
//

import Foundation

final class APIRequest {
   
    var answerMagic: Answer?
    
    func getAnswer(completion: ( (Answer?) -> Void)? ) {
        guard let url = URL(string: baseURL) else {
            return
        }
        let session = URLSession.shared
        session.dataTask(with: url) { [self] (data, response, error) in
            if (error != nil) {
            }
            guard let data = data
            else  { completion?(nil)
                return }
            do {
                let answer: Answer? = try JSONDecoder().decode(Answer.self, from: data)
                completion?(answer)
            } catch {
            }
            return
        } .resume()
    }
}

