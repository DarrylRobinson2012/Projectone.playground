//
//  ViewController.swift
//  Projectone.playground
//
//  Created by Darryl Robinson  on 10/16/17.
//  Copyright © 2017 Richard Critz. All rights reserved.
//

import UIKit
import Foundation
class ViewController: UIViewController {

    
    @IBOutlet weak var theLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func clickingTheButton(_ sender: Any) {
   
    theLabel.text = "Clicked button "
        
    
    
    
    
    
    
    


// Darryl Robinson
// Project 1: Soccer Coordinator
// Players Data for each player in their own Dictionary


let player1: [String: Any]  =
    ["name" : "Joe Smith",
     "height" : 42.0,
     "experience" : true,
     "guardians" : "Jim and Jan Smith"
]
let player2: [String: Any] =
    ["name" : "Jill Tanner",
     "height" : 36.0,
     "experience" : true,
     "guardians" : "Clara Tanner"
]
let player3: [String: Any] =
    ["name" : "Bill Bon",
     "height" : 43.0,
     "experience": true,
     "guardians": "Sara and Jenny Bon"
]
let player4: [String: Any] =
    ["name": "Eva Gordon",
     "height": 45.0,
     "experience": false,
     "guardians": "Wendy and Mike Gordon"
]
let player5: [String: Any] =
    ["name": "Matt Gill",
     "height": 40.0,
     "experience": false,
     "guardians": "Charles and Sylvia Gill"
]
let player6: [String: Any] =
    ["name": "Kimmy Stein",
     "height": 41.0,
     "experience": false,
     "guardians": "Bill and Hillary Stein"
]
let player7: [String: Any] =
    ["name": "Sammy Adams",
     "height": 45.0,
     "experience": false,
     "guardians": "Jeff Adams"
]
let player8: [String: Any] =
    ["name": "Karl Saygan",
     "height": 42.0,
     "experience": true,
     "guardians": "Heather Bledsoe"
]
let player9: [String: Any] =
    ["name": "Suzane Greenberg",
     "height": 44.0,
     "experience": true,
     "guardians": "Henrietta Dumas"
]
let player10: [String: Any] =
    ["name": "Sal Dali",
     "height": 41.0,
     "experience": false,
     "guardians": "Gala Dali"
]
let player11: [String: Any] =
    ["name": "Joe Kavalier",
     "height": 39.0,
     "experience": false,
     "guardians": "Sam and Elaine Kavalier"
]
let player12: [String: Any] =
    ["name": "Ben Finkelstein",
     "height": 44.0,
     "experience": false,
     "guardians": "Aaron and Jill Finkelstein"
]
let player13: [String: Any] =
    ["name": "Diego Soto",
     "height": 41.0,
     "experience": true,
     "guardians": "Robin and Sarika Soto"
]
let player14: [String: Any] =
    ["name": "Chloe Alaska",
     "height": 47.0,
     "experience": false,
     "guardians": "David and Jamie Alaska"
]
let player15: [String: Any] =
    ["name": "Arnold Willis",
     "height": 43.0,
     "experience": false,
     "guardians": "Claire Willis"
]

let player16: [String: Any] =
    ["name": "Phillip Helm",
     "height": 44.0,
     "experience": true,
     "guardians": "Thomas Helm and Eva Jones"
        
]
let player17: [String: Any] =
    ["name": "Les Clay",
     "height": 42.0,
     "experience": true,
     "guardians": "Wyonna Brown"
]
let player18: [String: Any] =
    ["name": "Herchel Krustofski",
     "height": 45.0,
     "experience": true,
     "guardians": "Hyman and Rachel Krustofski"
]

//Individual player Dictionaries collected into an array

let players = [player1,
               player2,
               player3,
               player4,
               player5,
               player6,
               player7,
               player8,
               player9,
               player10,
               player11,
               player12,
               player13,
               player14,
               player15,
               player16,
               player17,
               player18]

//Empty sets for teams awaiting for player data to be inputed

var sharks: [[String: Any]] = []
var dragons: [[String: Any]] = []
var raptors: [[String: Any]] = []

//Empty collections to for the expirenced and the unexpirenced
var isExpirenced: [[String: Any]] = []
var isNotExpirenced: [[String: Any]] = []
// logic to sort players by expirience
for player in players{
    if player["experience"] as! Bool == true {
        isExpirenced.append(player)
    }
    else { isNotExpirenced.append(player)
    }
}

// Logic to sort experienced players equally in 3 teams
for i in 0..<isExpirenced.count{
    switch true{
    case i % 3 == 0 : sharks.append(isExpirenced[i])
    case i % 3 == 1 : dragons.append(isExpirenced[i])
    case i % 3 == 2 : raptors.append(isExpirenced[i])
    default : break
    }
}
//Logic to sort the unexpirenced players equally 3 times

for i in 0..<isNotExpirenced.count{
    switch true{
    case i % 3 == 0 : sharks.append(isNotExpirenced[i])
    case i % 3 == 1 : dragons.append(isNotExpirenced[i])
    case i % 3 == 2 : raptors.append(isNotExpirenced[i])
    default : break
    }
}
// Adding a schedule for each team
let teamSchedule: [String: String] = ["Sharks": "March 17, 3pm", "Dragons": "March 17, 1pm", "Raptors": "March 18 1pm"]
// Creating a collection for the letters
var letters: [String] = []
// Logic that prints a letter for each player's guardians that tells what team the child is on and when their first practice is, among other things
func createLetter(for player: [String : Any] , ofTeam team: String) -> String {
    let letter = "Hello \(player["guardians"]!). We are glad to let you know that \(player["name"]!) has been added to \(team) team. It is recommended to attend the first team practice on \(teamSchedule[team]!)!"
    return letter
}
//Logic to add personilized emails to letters array
func addEmails(for team: [[String: Any]], ofTeam: String) {
    for player in team{
        letters.append(createLetter(for: player, ofTeam: ofTeam))
    }
}
//Calling the function so the letters are appended
addEmails(for: sharks, ofTeam: "Sharks")
addEmails(for: dragons, ofTeam: "Dragons")
addEmails(for: raptors, ofTeam: "Raptors")

for letter in letters { print(letter) }

}

}
