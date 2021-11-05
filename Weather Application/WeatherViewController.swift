//
//  ViewController.swift
//  Weather Application
//
//  Created by Alexander on 01.09.2021.
//

import UIKit
import CoreLocation



class WeatherViewController: UIViewController {

    private var weatherUrl: String {
        return "https://api.openweathermap.org/data/2.5/weather?q=samara&appid=\(apiKey)&units=metric"
    }
    
    var networkManager: WeatherNetworkManager?
    
    
    //    Views
    lazy var backgroundView: BackgroundView = {
        let view = BackgroundView()
        return view
    }()
    
    lazy var headerView: HeaderWeatherView = {
        let view = HeaderWeatherView()
        return view
    }()
    
    lazy var cityNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Samara"
        label.font = UIFont.systemFont(ofSize: 34, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var mainWeatherView: MainWeatherView = {
        let view = MainWeatherView()
        return view
    }()
    
    let locationManager = CLLocationManager()
    let weatherManager = WeatherNetworkManager()
    
    
    //    Lock portrait orientation
    var orientations = UIInterfaceOrientationMask.portrait
    override var supportedInterfaceOrientations : UIInterfaceOrientationMask {
        get { return self.orientations }
        set { self.orientations = newValue }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(backgroundView)
        backgroundViewLayout()
        
        view.addSubview(headerView)
        headerViewLayout()
        
        view.addSubview(cityNameLabel)
        setupCityNameLabelLayout()
        
        view.addSubview(mainWeatherView)
        mainViewLayout()
        
        networkManager = WeatherNetworkManager()
        
        networkManager?.fetchWeather(withURL: weatherUrl, completion: { weather in
            print(weather)
            DispatchQueue.main.async {
                self.headerView.dayDescriptionLabel.text = weather.description
                self.mainWeatherView.weatherImageView.image = UIImage(named: weather.conditionName)
                self.mainWeatherView.temperatureLabel.text = "\(weather.temperatureString) °C"
                self.mainWeatherView.humidityLabel.text = "\(weather.humidity) %"
                self.mainWeatherView.windLabel.text = "\(weather.windSpeed) m/s"
                self.cityNameLabel.text = weather.cityName
            }
        })
        
    }
    
    //    Setup layouts
    fileprivate func backgroundViewLayout() {
        NSLayoutConstraint.activate([
                                        backgroundView.topAnchor.constraint(equalTo: view.topAnchor),
                                        backgroundView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                                        backgroundView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                                        backgroundView.bottomAnchor.constraint(equalTo: view.bottomAnchor)])
    }
    
    fileprivate func headerViewLayout() {
        NSLayoutConstraint.activate([
                                        headerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
                                        headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30)])
    }
    
    fileprivate func setupCityNameLabelLayout() {
        NSLayoutConstraint.activate([
                                        cityNameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 220),
                                        cityNameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
    }
    
    fileprivate func mainViewLayout() {
        NSLayoutConstraint.activate([
                                        mainWeatherView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                        mainWeatherView.centerYAnchor.constraint(equalTo: view.centerYAnchor)])
    }
}


