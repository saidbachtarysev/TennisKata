//
//  GameViewController.swift
//  TennisKata
//
//  Created by Said Bachtarysev on 11/06/2019.
//  Copyright © 2019 Said-Magomed Bachtarysev. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var gameScoreLabel: UIView!
    @IBOutlet weak var player1ScoreLabel: UILabel!
    @IBOutlet weak var player2ScoreLabel: UILabel!
    
    var player1: Player
    var player2: Player
    var game: Game

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.player1 = Player(playerName: "Player 1")
        self.player2 = Player(playerName: "Player 2")
        self.game = Game(player1: player1, player2: player2)
        super.init(coder: aDecoder)
    }
    
    @IBAction func player1Action(_ sender: Any) {
        self.game.playerPlays(playingPlayer: .player1)
        updateScore()
    }
    
    @IBAction func player2Action(_ sender: Any) {
        self.game.playerPlays(playingPlayer: .player2)
        updateScore()
    }
    
    func updateScore(){
        self.player1ScoreLabel.text = self.game.playerScore(playingPlayer: .player1)
        self.player2ScoreLabel.text = self.game.playerScore(playingPlayer: .player2)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
