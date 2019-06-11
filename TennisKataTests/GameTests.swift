//
//  GameTests.swift
//  TennisKataTests
//
//  Created by Said Bachtarysev on 12/06/2019.
//  Copyright © 2019 Said-Magomed Bachtarysev. All rights reserved.
//

import XCTest
 @testable import TennisKata

class GameTests: XCTestCase {
    
    let player1 = Player(playerName: "player1")
    let player2 = Player(playerName: "player2")

    //Winning
    func testPlayer1Wins() {
        let game = Game(player1: player1, player2: player2)
        
        for _ in 0..<4 {
            game.playerPlays(playingPlayer: .player1)
        }
        XCTAssertTrue(game.gameScore() == "\(player1.name) Wins")
    }
    
    func testPlayer2Wins() {
        let game = Game(player1: player1, player2: player2)
        
        for _ in 0..<4 {
            game.playerPlays(playingPlayer: .player2)
        }
        XCTAssertTrue(game.gameScore() == "\(player2.name) Wins")
    }
    
    //Deuce
    func testDeuce(){
        let game = Game(player1: player1, player2: player2)
        
        for _ in 0..<5 {
            game.playerPlays(playingPlayer: .player1)
            game.playerPlays(playingPlayer: .player2)
        }
        
        XCTAssertTrue(game.gameScore() == "Deuce")
    }
    
    //Advantage
    func testPlayer1Advantage(){
        let game = Game(player1: player1, player2: player2)
        
        for _ in 0..<4 {
            game.playerPlays(playingPlayer: .player1)
            
        }
        for _ in 0..<3 {
            game.playerPlays(playingPlayer: .player2)
            
        }
        XCTAssertTrue(game.gameScore() == "\(player1.name) Advantage")
    }
    
    func testPlayer2Advantage(){
        let game = Game(player1: player1, player2: player2)
        
        for _ in 0..<4 {
            game.playerPlays(playingPlayer: .player2)
            
        }
        for _ in 0..<3 {
            game.playerPlays(playingPlayer: .player1)
            
        }
        XCTAssertTrue(game.gameScore() == "\(player2.name) Advantage")
    }
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

}
