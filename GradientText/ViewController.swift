//
//  ViewController.swift
//  GradientText
//
//  Created by steve.lai on 26/4/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.label.textColor = UIColor.gradientColor(bounds: self.label.bounds,
                                                     colors: [
                                                        UIColor.red.cgColor,
                                                        UIColor.green.cgColor,
                                                        UIColor.blue.cgColor
                                                     ],
                                                     startPoint: .zero,
                                                     endPoint: CGPoint(x: 1, y: 1))
        
        
        // Bonus
        self.label.layer.shadowColor = UIColor.gray.cgColor
        self.label.layer.shadowOffset = CGSize(width: 2, height: 4)
        self.label.layer.shadowOpacity = 0.5
        self.label.layer.shadowRadius = 0
        
    }


}

