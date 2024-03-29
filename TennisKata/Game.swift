//
//  Game.swift
//  TennisKata
//
//  Created by Said Bachtarysev on 11/06/2019.
//  Copyright © 2019 Said-Magomed Bachtarysev. All rights reserved.
//

import Foundation

enum playingPlayer {
    case player1
    case player2
}
class Game {
    var player1: Player
    var player2: Player
    
    init(player1: Player, player2:Player) {
        self.player1 = player1
        self.player2 = player2
    }
    func playerScore(playingPlayer: playingPlayer) -> String {
        switch playingPlayer {
        case .player1:
            return self.playerScoreCalculator(playerPoints: self.player1.points, otherPlayerPoints: self.player2.points)
        case .player2:
            return self.playerScoreCalculator(playerPoints: self.player2.points, otherPlayerPoints: self.player1.points)
        }
    }
    
    func playerPlays(playingPlayer: playingPlayer) {
        switch playingPlayer {
        case .player1:
            self.player1.play()
        case .player2:
            self.player2.play()
        }
    }
    
    func playerScoreCalculator(playerPoints: Int, otherPlayerPoints: Int) -> String {

        if playerPoints >= 4 && otherPlayerPoints >= 4 && playerPoints - otherPlayerPoints == 1 {
            return "Advantage"
        }
        
        if playerPoints < 4 && otherPlayerPoints >= 4 {
            return "-"
        }
        if playerPoints >= 4 && otherPlayerPoints >= 4 && playerPoints == otherPlayerPoints {
            return "Deuce"
        }
        switch playerPoints {
        case 0:
            return "0"
        case 1:
            return "15"
        case 2:
            return "30"
        case 3:
            return "40"
        default:
            return "-"
        }
    }
    
    func gameScore() -> String {
        if self.player1.points < 4 && self.player2.points < 4 {
            let firstPlayer = "\(self.player1.name) \(self.pointsToWords(points: self.player1.points))"
            
            let secondPlayer = "\(self.player2.name) \(self.pointsToWords(points: self.player2.points))"
            
            return "\(firstPlayer) - \(secondPlayer)"
        }
        
        let pointsDifference = self.player1.points - self.player2.points
        if pointsDifference != 0 {
            let player = pointsDifference > 0 ? self.player1.name : self.player2.name
            let score = pointsDifference >= 2 || pointsDifference <= -2 ? "Wins" : "Advantage"
            return player + " " + score
        }
        return "Deuce"
    }
    func pointsToWords(points: Int) -> String{
        switch points {
        case 0:
            return "Love"
        case 1:
            return "Fifteen"
        case 2:
            return "Thirty"
        case 3:
            return "Forty"
        default:
            return ""
        }
    }
}
