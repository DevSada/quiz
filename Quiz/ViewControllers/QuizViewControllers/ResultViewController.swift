//
//  ResultViewController.swift
//  Quiz
//
//  Created by Alexander Petrenko on 30.09.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    var answerChosen:[Answer] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var cat = 0
        var dog = 0
        var turtle = 0
        var rabbit = 0
        
        for answer in answerChosen {
            switch answer.type {
            case .cat:
                cat += 1
            case .dog:
                dog += 1
            case .turtle:
                turtle += 1
            case .rabbit:
                rabbit += 1
            }
        }
        
        let animalDict = [AnimalType.cat: cat,
                          AnimalType.dog: dog,
                          AnimalType.turtle: turtle,
                          AnimalType.rabbit: rabbit]

        let animalWinner = animalDict.sorted{ (first, second) -> Bool in
            return first.value > second.value
        }
        
        
        self.navigationItem.hidesBackButton = true

    }

}


