//
//  ViewController.swift
//  Weather Application
//
//  Created by Alexander on 01.09.2021.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Background of screen
    lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "white-clouds-in-the-sky-iphone-7-wallpaper-1080x1920_66d50aee72ada8437c16462cc18fe703_raw")
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var containerView: UIVisualEffectView = {
        let view = UIVisualEffectView()
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialLight)
        view.effect = blurEffect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: - Header
    lazy var dayDescriptoinLabel: UILabel = {
        let label = UILabel()
        label.text = "Sunny morning"
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
    
    // MARK: - WeatherView card with city name
    lazy var cityNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Samara"
        label.font = UIFont.systemFont(ofSize: 34, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var weatherView: UIVisualEffectView = {
        let view = UIVisualEffectView()
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialLight)
        view.effect = blurEffect
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: - Weather topstackView
    lazy var weatherTopStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [temperatureLabel, weatherImageView])
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "22°C"
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    lazy var weatherImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "sun")
        imageView.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // MARK: - Weather bottomstackView
    lazy var weatherBottomStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [humidityStackView, windStackView])
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var humidityStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [descriptionHumidityLabel, humidityLabel])
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var descriptionHumidityLabel: UILabel = {
        let label = UILabel()
        label.text = "Humidity"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var humidityLabel: UILabel = {
        let label = UILabel()
        label.text = "80%"
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var windStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [descriptionWindLabel, windLabel])
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var descriptionWindLabel: UILabel = {
        let label = UILabel()
        label.text = "Wind"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var windLabel: UILabel = {
        let label = UILabel()
        label.text = "10 km"
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Week weather scrollView
    lazy var dayWeatherScrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: .zero)
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    lazy var dayWeatherScrollContainer: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [mondayWeatherView, tuesdayWeatherView, wednesdayWeatherView, thursdayWeatherView,fridayWeatherView, saturdayWeatherView, sundayWeatherView])
        stackView.axis = .horizontal
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var mondayWeatherView: UIVisualEffectView = {
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialLight)
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = blurEffect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var tuesdayWeatherView: UIVisualEffectView = {
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialLight)
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = blurEffect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var wednesdayWeatherView: UIVisualEffectView = {
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialLight)
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = blurEffect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var thursdayWeatherView: UIVisualEffectView = {
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialLight)
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = blurEffect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var fridayWeatherView: UIVisualEffectView = {
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialLight)
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = blurEffect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var saturdayWeatherView: UIVisualEffectView = {
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialLight)
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = blurEffect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var sundayWeatherView: UIVisualEffectView = {
        let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialLight)
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = blurEffect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //    Lock portrait orientation
    var orientations = UIInterfaceOrientationMask.portrait
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        get { return self.orientations }
        set { self.orientations = newValue }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backgroundImageView)
        setupBackgroundLayout()
        
        view.addSubview(containerView)
        setupContainerLayout()
        
        view.addSubview(dayDescriptoinLabel)
        setupDescriptionLabelLayout()
        
        view.addSubview(weekDayAndTimeLabel)
        setupWeekDayAndTimeLabelLayout()
        
        view.addSubview(cityNameLabel)
        setupCityNameLabelLayout()
        
        view.addSubview(weatherView)
        weatherViewLayout()
        
        weatherView.contentView.addSubview(weatherTopStackView)
        weatherImageViewLayout()
        weatherTopStackViewLayout()
        
        weatherView.contentView.addSubview(weatherBottomStackView)
        humidityAndWindStackLayout()
        weatherBottomStackViewLayout()
        
        view.addSubview(dayWeatherScrollView)
        dayWeatherScrollLayout()
        
        dayWeatherScrollView.addSubview(dayWeatherScrollContainer)
        dayWeatherScrollStackLayout()
        dayWeatherViewLayout()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        dayWeatherScrollView.contentSize = CGSize(width: dayWeatherScrollContainer.frame.width + 850, height: dayWeatherScrollContainer.frame.height)
    }
    
    // MARK: - Background constraints
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
    
    // MARK: - Header constraints
    fileprivate func setupDescriptionLabelLayout() {
        NSLayoutConstraint.activate([
                                        dayDescriptoinLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
                                        dayDescriptoinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30)])
    }
    
    fileprivate func setupWeekDayAndTimeLabelLayout() {
        NSLayoutConstraint.activate([
                                        weekDayAndTimeLabel.topAnchor.constraint(equalTo: dayDescriptoinLabel.topAnchor, constant: 30),
                                        weekDayAndTimeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30)])
    }
    
    // MARK: - WeatherView card with city name constraints
    fileprivate func setupCityNameLabelLayout() {
        NSLayoutConstraint.activate([
                                        cityNameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 220),
                                        cityNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
    }
    
    fileprivate func weatherViewLayout() {
        NSLayoutConstraint.activate([
                                        weatherView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                        weatherView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
                                        weatherView.heightAnchor.constraint(equalToConstant: 220),
                                        weatherView.widthAnchor.constraint(equalToConstant: 350)])
    }
    
    fileprivate func weatherImageViewLayout() {
        NSLayoutConstraint.activate([
                                        weatherImageView.heightAnchor.constraint(equalToConstant: 70),
                                        weatherImageView.widthAnchor.constraint(equalToConstant: 70)])
    }
    
    fileprivate func weatherTopStackViewLayout() {
        NSLayoutConstraint.activate([
                                        weatherTopStackView.topAnchor.constraint(equalTo: weatherView.topAnchor, constant: 30),
                                        weatherTopStackView.leadingAnchor.constraint(equalTo: weatherView.leadingAnchor, constant: 30),
                                        weatherTopStackView.heightAnchor.constraint(equalToConstant: 70),
                                        weatherTopStackView.widthAnchor.constraint(equalToConstant: 290)])
    }
    
    fileprivate func humidityAndWindStackLayout() {
        NSLayoutConstraint.activate([
                                        humidityStackView.heightAnchor.constraint(equalToConstant: 40),
                                        windStackView.heightAnchor.constraint(equalToConstant: 40),
                                        windStackView.widthAnchor.constraint(equalToConstant: 70)])
    }
    
    fileprivate func weatherBottomStackViewLayout() {
        NSLayoutConstraint.activate([
                                        weatherBottomStackView.topAnchor.constraint(equalTo: weatherView.topAnchor, constant: 120),
                                        weatherBottomStackView.leadingAnchor.constraint(equalTo: weatherView.leadingAnchor, constant: 30),
                                        weatherBottomStackView.heightAnchor.constraint(equalToConstant: 70),
                                        weatherBottomStackView.widthAnchor.constraint(equalToConstant: 290)])
    }
    
    fileprivate func dayWeatherScrollLayout() {
        NSLayoutConstraint.activate([
                                        dayWeatherScrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 630),
                                        dayWeatherScrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
                                        dayWeatherScrollView.heightAnchor.constraint(equalToConstant: 150),
                                        dayWeatherScrollView.widthAnchor.constraint(equalToConstant: 1200)])
    }
    
    fileprivate func dayWeatherScrollStackLayout() {
        NSLayoutConstraint.activate([
                                        dayWeatherScrollContainer.topAnchor.constraint(equalTo: dayWeatherScrollView.topAnchor),
                                        dayWeatherScrollContainer.leadingAnchor.constraint(equalTo: dayWeatherScrollView.leadingAnchor),
                                        dayWeatherScrollContainer.bottomAnchor.constraint(equalTo: dayWeatherScrollView.bottomAnchor)])
    }
    
    fileprivate func dayWeatherViewLayout() {
        NSLayoutConstraint.activate([
                                        mondayWeatherView.heightAnchor.constraint(equalToConstant: 140),
                                        mondayWeatherView.widthAnchor.constraint(equalToConstant: 80),
        
                                        tuesdayWeatherView.heightAnchor.constraint(equalToConstant: 140),
                                        tuesdayWeatherView.widthAnchor.constraint(equalToConstant: 80),
                                        
                                        wednesdayWeatherView.heightAnchor.constraint(equalToConstant: 140),
                                        wednesdayWeatherView.widthAnchor.constraint(equalToConstant: 80),
                                        
                                        thursdayWeatherView.heightAnchor.constraint(equalToConstant: 140),
                                        thursdayWeatherView.widthAnchor.constraint(equalToConstant: 80),
                                        
                                        fridayWeatherView.heightAnchor.constraint(equalToConstant: 140),
                                        fridayWeatherView.widthAnchor.constraint(equalToConstant: 80),
                                        
                                        saturdayWeatherView.heightAnchor.constraint(equalToConstant: 140),
                                        saturdayWeatherView.widthAnchor.constraint(equalToConstant: 80),
                                        
                                        sundayWeatherView.heightAnchor.constraint(equalToConstant: 140),
                                        sundayWeatherView.widthAnchor.constraint(equalToConstant: 80)])
    }
}
extension UIVisualEffectView {
    func setGradientBackground(colorTop: UIColor, colorBottom: UIColor){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop.cgColor, colorBottom.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
        gradientLayer.locations = [NSNumber(floatLiteral: 0.0), NSNumber(floatLiteral: 1.0)]
        gradientLayer.frame = self.bounds
        
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
        layer.masksToBounds = false
        layer.shadowColor = color.cgColor
        layer.shadowOpacity = opacity
        layer.shadowOffset = offSet
        layer.shadowRadius = radius
        
        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        layer.shouldRasterize = true
        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
    }
}
