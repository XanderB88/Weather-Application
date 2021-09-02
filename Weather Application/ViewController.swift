//
//  ViewController.swift
//  Weather Application
//
//  Created by Alexander on 01.09.2021.
//

import UIKit

class ViewController: UIViewController {
    lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "background")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var containerView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.4)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var dayDescriptoinText: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .clear
        textView.text = "Rainy morning"
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    lazy var dayAndTimeText: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .clear
        textView.text = "Tusday 7:03AM"
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backgroundImageView)
        view.addSubview(containerView)
        view.addSubview(dayDescriptoinText)
        view.addSubview(dayAndTimeText)
        setupLayout()
        
        
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            containerView.topAnchor.constraint(equalTo: view.topAnchor),
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            dayDescriptoinText.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            dayDescriptoinText.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            dayDescriptoinText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            dayDescriptoinText.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 120),
            dayDescriptoinText.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 25),
            
            dayAndTimeText.topAnchor.constraint(equalTo: dayDescriptoinText.topAnchor, constant: 20),
            dayAndTimeText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            dayAndTimeText.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 120),
            dayAndTimeText.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 25),
        ])
    }
}
extension UIImageView
{
    func addBlurEffect() {
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.light)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = self.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(blurEffectView)
    }
    
    func setGradientBackground(colorTop: UIColor, colorBottom: UIColor){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop.cgColor, colorBottom.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.locations = [NSNumber(floatLiteral: 0.0), NSNumber(floatLiteral: 1.0)]
        gradientLayer.frame = self.bounds
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
