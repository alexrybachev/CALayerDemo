//
//  ViewController.swift
//  CALayerDemo
//
//  Created by Aleksandr Rybachev on 22.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var gradientLayer: CAGradientLayer! {
        didSet {
            gradientLayer.startPoint = CGPoint(x: 0, y: 0)
            gradientLayer.endPoint = CGPoint(x: 0, y: 1)            
            gradientLayer.colors = [UIColor.red.cgColor, UIColor.blue.cgColor, UIColor.green.cgColor]
            gradientLayer.locations = [0, 0.2, 1] // изменяем распределением цветов
        }
    }
    
    @IBOutlet weak var imageView: UIImageView! {
        didSet {
            imageView.layer.cornerRadius = imageView.frame.width / 2
            imageView.layer.masksToBounds = true
            let borderColor = UIColor.white
            imageView.layer.borderColor = borderColor.cgColor
            imageView.layer.borderWidth = 10
        }
    }
    
    @IBOutlet weak var button: UIButton! {
        didSet {
            button.layer.shadowOffset = CGSize(width: 0, height: 5)
            button.layer.shadowOpacity = 0.5
            button.layer.shadowRadius = 5
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        gradientLayer = CAGradientLayer()
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        gradientLayer.frame = CGRect(x: 0, y: 0, width: view.bounds.size.width, height: view.bounds.size.height)
    }
}

