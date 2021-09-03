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
        imageView.image = #imageLiteral(resourceName: "white-clouds-in-the-sky-iphone-7-wallpaper-1080x1920_66d50aee72ada8437c16462cc18fe703_raw")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var containerView: UIVisualEffectView = {
        let view = UIVisualEffectView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var dayDescriptoinLabel: UILabel = {
        let label = UILabel()
        label.text = "Rainy morning"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var weekDayAndTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "Tusday 7:03AM"
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var cityNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Samara"
        label.font = UIFont.systemFont(ofSize: 34, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var weatherView: UIVisualEffectView = {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var weatherTopStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [temperatureLabel, weatherImageView])
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.spacing = 30.0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "22°C"
        label.font = UIFont.systemFont(ofSize: 34, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var weatherImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "AppIcon40x40")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    fileprivate func weatherViewLayout() {
        NSLayoutConstraint.activate([
                                        weatherView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                        weatherView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                                        weatherView.heightAnchor.constraint(equalToConstant: 220),
                                        weatherView.widthAnchor.constraint(equalToConstant: 350)])
    }
    
    fileprivate func weatherTopStackViewLayout() {
        NSLayoutConstraint.activate([
                                        weatherTopStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                        weatherTopStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                                        weatherTopStackView.heightAnchor.constraint(equalToConstant: 50),
                                        weatherTopStackView.widthAnchor.constraint(equalToConstant: 300)])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialLight)
        
        
        view.addSubview(backgroundImageView)
        setupBackgroundLayout()
        
        view.addSubview(containerView)
        containerView.effect = blurEffect
        setupContainerLayout()
        
        view.addSubview(dayDescriptoinLabel)
        setupDescriptionLabelLayout()
        
        view.addSubview(weekDayAndTimeLabel)
        setupWeekDayAndTimeLabelLayout()
        
        view.addSubview(cityNameLabel)
        setupCityNameLabelLayout()
        
        view.addSubview(weatherView)
        weatherView.effect = blurEffect
        weatherViewLayout()
        
        weatherView.contentView.addSubview(weatherTopStackView)
        weatherTopStackViewLayout()
    }
    
    fileprivate func setupBackgroundLayout() {
        NSLayoutConstraint.activate([
                                        backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
                                        backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                        backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                                        backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
    }
    
    
    fileprivate func setupContainerLayout() {
        NSLayoutConstraint.activate([
                                        containerView.topAnchor.constraint(equalTo: view.topAnchor),
                                        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                                        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
    }
    
    fileprivate func setupDescriptionLabelLayout() {
        NSLayoutConstraint.activate([
                                        dayDescriptoinLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
                                        dayDescriptoinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60)])
    }
    
    fileprivate func setupWeekDayAndTimeLabelLayout() {
        NSLayoutConstraint.activate([
                                        weekDayAndTimeLabel.topAnchor.constraint(equalTo: dayDescriptoinLabel.topAnchor, constant: 30),
                                        weekDayAndTimeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 60)])
    }
    
    fileprivate func setupCityNameLabelLayout() {
        NSLayoutConstraint.activate([
                                        cityNameLabel.topAnchor.constraint(equalTo: weekDayAndTimeLabel.topAnchor, constant: 120),
                                        cityNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
    }
}
extension UIView
{
    
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
