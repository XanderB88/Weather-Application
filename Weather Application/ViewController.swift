//
//  ViewController.swift
//  Weather Application
//
//  Created by Alexander on 01.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backgroundImage)
        view.addSubview(containerView)
        
        
                NSLayoutConstraint.activate([
                    backgroundImage.topAnchor.constraint(equalTo: view.topAnchor),
                    backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                    backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor),
                    
                    containerView.topAnchor.constraint(equalTo: view.topAnchor),
                    containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                    containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
                ])
        
    }
    
    lazy var backgroundImage: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.image = UIImage(named: "background")
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    lazy var containerView: UIImageView = {
        let view = UIImageView()
        view.backgroundColor = UIColor(white: 1, alpha: 0.5)
        view.contentMode = .scaleToFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
}

extension UIImageView
{
    func addBlurEffect()
    {
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(blurEffectView)
    }
}
