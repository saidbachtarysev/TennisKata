//
//  PlayerTests.swift
//  TennisKataTests
//
//  Created by Said Bachtarysev on 12/06/2019.
//  Copyright © 2019 Said-Magomed Bachtarysev. All rights reserved.
//

import XCTest
 @testable import TennisKata

class PlayerTests: XCTestCase {
    
    let player1 = Player(playerName: "player1")
    let player2 = Player(playerName: "player2")
    
    //Players can score
    func testPlayer1CanScore(){
        player1.play()
        
        XCTAssertTrue(player1.points == 1)
    }
    
    func testPlayer2CanScore(){
        player2.play()
        
        XCTAssertTrue(player2.points == 1)
    }
    
    //Players can exist
    func testPlayer1CanExist(){
        let playerOne = Player(playerName: "player1")
        XCTAssertTrue(playerOne.points == 0)
    }
    func testPlayer2CanExist(){
        let playerTwo = Player(playerName: "player2")
        XCTAssertTrue(playerTwo.points == 0)
    }
    
    //Player 1 Scores
    func testPlayerOneScoresFifteen(){
        let game = Game(player1: player1, player2: player2)
        
        game.playerPlays(playingPlayer: .player1)
        
        XCTAssertTrue(game.playerScore(playingPlayer: .player1) == "15")
    }
    
    func testPlayerOneScoresThirty(){
        let game = Game(player1: player1, player2: player2)
        
        for _ in 0..<2 {
            game.playerPlays(playingPlayer: .player1)
            
        }
        
        XCTAssertTrue(game.playerScore(playingPlayer: .player1) == "30")
    }
    
    func testPlayerOneScoresForty(){
        let game = Game(player1: player1, player2: player2)
        
        for _ in 0..<3 {
            game.playerPlays(playingPlayer: .player1)
            
        }
        
        XCTAssertTrue(game.playerScore(playingPlayer: .player1) == "40")
    }
    
    //Player 2 Scores
    func testPlayerTwoScoresFifteen(){
        let game = Game(player1: player1, player2: player2)
        
        game.playerPlays(playingPlayer: .player2)
        
        XCTAssertTrue(game.playerScore(playingPlayer: .player2) == "15")
    }
    
    func testPlayerTwoScoresThirty(){
        let game = Game(player1: player1, player2: player2)
        
        for _ in 0..<2 {
            game.playerPlays(playingPlayer: .player2)
            
        }
        
        XCTAssertTrue(game.playerScore(playingPlayer: .player2) == "30")
    }
    
    func testPlayerTwoScoresForty(){
        let game = Game(player1: player1, player2: player2)
        
        for _ in 0..<3 {
            game.playerPlays(playingPlayer: .player2)
            
        }
        
        XCTAssertTrue(game.playerScore(playingPlayer: .player2) == "40")
    }

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

}
