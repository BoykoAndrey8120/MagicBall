//
//  Magic.swift
//  MagicBall
//
//  Created by Andrey Boyko on 27.01.2022.
//

import Foundation

struct Answer: Codable  {
    let magic: Magic
}

struct Magic: Codable {
    let answer: String
}

