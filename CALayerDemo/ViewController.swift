//
//  ViewController.swift
//  CALayerDemo
//
//  Created by Aleksandr Rybachev on 22.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var imageview: UIImageView! {
        didSet {
            imageview.layer.cornerRadius = 10
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

