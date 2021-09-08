//
//  MainWeatherView.swift
//  Weather Application
//
//  Created by Alexander on 07.09.2021.
//

import UIKit

final class MainWeatherView: UIView {
    private let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialLight)
    private var temperature: String
    private var image: UIImage
    private var humidity: String
    private var wind: String
    
    
    lazy var weatherView: UIVisualEffectView = {
        let view = UIVisualEffectView()
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
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "\(temperature)°C"
        label.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        return label
    }()
    
    lazy var weatherImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
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
        label.text = "\(humidity) %"
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
        label.text = "\(wind) km"
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    init(temperature: String,
         image: UIImage,
         humidity: String,
         wind: String
      ) {
        self.temperature = temperature
        self.image = image
        self.humidity = humidity
        self.wind = wind
        super.init(frame:.zero)
        translatesAutoresizingMaskIntoConstraints = false
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupView() {
        addSubview(weatherView)
        weatherViewLayout()
        
        weatherView.contentView.addSubview(weatherTopStackView)
        weatherImageViewLayout()
        weatherTopStackViewLayout()
        
        weatherView.contentView.addSubview(weatherBottomStackView)
        humidityAndWindStackLayout()
        weatherBottomStackViewLayout()
    }
    
    fileprivate func weatherViewLayout() {
        NSLayoutConstraint.activate([
                                        weatherView.centerXAnchor.constraint(equalTo: centerXAnchor),
                                        weatherView.centerYAnchor.constraint(equalTo: centerYAnchor),
                                        weatherView.heightAnchor.constraint(equalToConstant: 220),
                                        weatherView.widthAnchor.constraint(equalToConstant: 350)])
    }
    
    fileprivate func weatherImageViewLayout() {
        NSLayoutConstraint.activate([
                                        weatherImageView.heightAnchor.constraint(equalToConstant: 100),
                                        weatherImageView.widthAnchor.constraint(equalToConstant: 100)])
    }
    
    fileprivate func weatherTopStackViewLayout() {
        NSLayoutConstraint.activate([
                                        weatherTopStackView.topAnchor.constraint(equalTo: weatherView.topAnchor, constant: 30),
                                        weatherTopStackView.centerXAnchor.constraint(equalTo: weatherView.centerXAnchor)])
    }
    
    fileprivate func humidityAndWindStackLayout() {
        NSLayoutConstraint.activate([
                                        humidityStackView.heightAnchor.constraint(equalToConstant: 40),
                                        windStackView.heightAnchor.constraint(equalToConstant: 40)])
    }
    
    fileprivate func weatherBottomStackViewLayout() {
        NSLayoutConstraint.activate([
                                        weatherBottomStackView.topAnchor.constraint(equalTo: weatherView.topAnchor, constant: 120),
                                        weatherBottomStackView.leadingAnchor.constraint(equalTo: weatherView.leadingAnchor, constant: 30),
                                        weatherBottomStackView.heightAnchor.constraint(equalToConstant: 70),
                                        weatherBottomStackView.widthAnchor.constraint(equalToConstant: 290)])
    }
}
