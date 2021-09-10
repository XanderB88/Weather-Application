//
//  ViewController.swift
//  Weather Application
//
//  Created by Alexander on 01.09.2021.
//

import UIKit
import CoreLocation

class WeatherViewController: UIViewController {
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
        let view = MainWeatherView(temperature: "Text", image: UIImage(named: "Text") ?? #imageLiteral(resourceName: "snow"), humidity: "Text", wind: "Text")
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
        
        locationManager.delegate = self
        locationManager.requestLocation()
        weatherManager.fetchWeatherByCityName(cityName: "Moscow")
        
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

extension WeatherViewController: WeatherNetworkManagerDelegate {
    func didUpdateWeather(_ weatherNetworkManager: WeatherNetworkManager, weather: WeatherModel) {
        DispatchQueue.main.async {
            
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
}

extension WeatherViewController: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            locationManager.stopUpdatingLocation()
            let latitude = location.coordinate.latitude
            let longitude = location.coordinate.longitude
            weatherManager.fetcWeatherByLocation(latitude: latitude, longitude: longitude)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}



//extension UIVisualEffectView {
//    func setGradientBackground(colorTop: UIColor, colorBottom: UIColor){
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.colors = [colorTop.cgColor, colorBottom.cgColor]
//        gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
//        gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
//        gradientLayer.locations = [NSNumber(floatLiteral: 0.0), NSNumber(floatLiteral: 1.0)]
//        gradientLayer.frame = self.bounds
//
//        self.layer.insertSublayer(gradientLayer, at: 0)
//    }
//
//    func dropShadow(color: UIColor, opacity: Float = 0.5, offSet: CGSize, radius: CGFloat = 1, scale: Bool = true) {
//        layer.masksToBounds = false
//        layer.shadowColor = color.cgColor
//        layer.shadowOpacity = opacity
//        layer.shadowOffset = offSet
//        layer.shadowRadius = radius
//
//        layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
//        layer.shouldRasterize = true
//        layer.rasterizationScale = scale ? UIScreen.main.scale : 1
//    }
//}
