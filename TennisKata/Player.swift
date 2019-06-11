//
//  Player.swift
//  TennisKata
//
//  Created by Said Bachtarysev on 11/06/2019.
//  Copyright © 2019 Said-Magomed Bachtarysev. All rights reserved.
//

import Foundation

class Player {
    var name: String
    var points: Int = 0
    
    init(playerName: String){
        self.name = playerName
        self.points = 0
    }
    
    func play() {
        self.points += 1
    }
}
