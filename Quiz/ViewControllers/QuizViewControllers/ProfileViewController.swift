//
//  ProfileViewController.swift
//  Quiz
//
//  Created by Alexander Petrenko on 04.10.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    //MARK: - Private properties
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label = UILabel(frame: CGRect(x: self.view.frame.midX, y: self.view.frame.midY, width: self.view.frame.width - 10, height: 20))
        label.textAlignment = .center
        label.center = CGPoint(x: self.view.frame.midX, y: self.view.frame.midY)
//        if let fullname = user.person.fullname! { label.text = fullname }
        label.text = user.person.fullname
        label.font = UIFont(name: label.font.fontName, size: 12)
        
        self.view.addSubview(label)
    }
}
