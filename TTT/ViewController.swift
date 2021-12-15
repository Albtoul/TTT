//
//  ViewController.swift
//  TTT
//
//  Created by Hell on 07/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var buttons : [UIButton] = []
    var board : [String] =
        ["0","0","0",
         "0","0","0",
         "0","0","0"
        ]
    var playerColor : UIColor = .red
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var button01: UIButton!
    @IBOutlet weak var button02: UIButton!
    @IBOutlet weak var button03: UIButton!
    @IBOutlet weak var button04: UIButton!
    @IBOutlet weak var button05: UIButton!
    @IBOutlet weak var button06: UIButton!
    @IBOutlet weak var button07: UIButton!
    @IBOutlet weak var button08: UIButton!
    @IBOutlet weak var button09: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        buttons = [button01,button02,button03,button04,button05,button06,button07,button08,button09]
        for button in buttons{
            button.backgroundColor = .lightGray
        }
        winnerLabel.text = ""
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton){
        if playerColor == .red {
            sender.backgroundColor = playerColor
            playerColor = .blue
            board[sender.tag] = "X"
        }else{
            sender.backgroundColor = playerColor
            playerColor = .red
            board[sender.tag] = "O"
        }
        sender.isEnabled = false
        checkWinner()
    }
    
    @IBAction func resetButtonPressed(_ sender:UIButton){
        for button in buttons{
            button.isEnabled = true
            button.backgroundColor = .lightGray
            playerColor = .red
        }
        
        board =
            ["0","0","0",
             "0","0","0",
             "0","0","0"
            ]
        winnerLabel.text = ""
    }
    
    func disableBoard(){
        for button in buttons{
            button.isEnabled = false
        }
    }
    
    func checkWinner(){
        if(board[0] == "X" && board[1] == "X" && board[2] == "X")
        {
            winnerLabel.text = "Red Win"
            disableBoard()
        }else if(board[0] == "O" && board[1] == "O" && board[2] == "O"){
            winnerLabel.text = "Blue Win"
            disableBoard()
        } else if(board[3] == "X" && board[4] == "X" && board[5] == "X")
        {
            winnerLabel.text = "Blue Win"
            disableBoard()
        }else if(board[3] == "O" && board[4] == "O" && board[5] == "O"){
            winnerLabel.text = "Blue Win"
            disableBoard()
        } else if(board[6] == "X" && board[7] == "X" && board[8] == "X")
        {
            winnerLabel.text = "Red Win"
            disableBoard()
        }else if(board[6] == "O" && board[7] == "O" && board[8] == "O"){
            winnerLabel.text = "Blue Win"
            disableBoard()
        } else if(board[0] == "X" && board[3] == "X" && board[6] == "X")
        {
            winnerLabel.text = "Red Win"
            disableBoard()
        }else if(board[0] == "O" && board[3] == "O" && board[6] == "O"){
            winnerLabel.text = "Blue Win"
            disableBoard()
        } else if(board[1] == "X" && board[4] == "X" && board[7] == "X")
        {
            winnerLabel.text = "Red Win"
            disableBoard()
        }else if(board[1] == "O" && board[4] == "O" && board[7] == "O"){
            winnerLabel.text = "Blue Win"
            disableBoard()
        } else if(board[2] == "X" && board[5] == "X" && board[8] == "X")
        {
            winnerLabel.text = "Red Win"
            disableBoard()
        }else if(board[2] == "O" && board[5] == "O" && board[8] == "O"){
            winnerLabel.text = "Blue Win"
            disableBoard()
        } else if(board[0] == "X" && board[4] == "X" && board[8] == "X")
        {
            winnerLabel.text = "Red Win"
            disableBoard()
        }else if(board[2] == "O" && board[4] == "O" && board[6] == "O"){
            winnerLabel.text = "Blue Win"
            disableBoard()
        }
    }


}

