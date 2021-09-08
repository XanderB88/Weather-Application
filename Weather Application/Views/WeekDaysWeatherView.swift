//
//  WeekDaysWeatherView.swift
//  Weather Application
//
//  Created by Alexander on 07.09.2021.
//

import UIKit

final class WeekDaysWeatherView: UIView {
    let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialLight)
    
    // MARK: - Week weather scrollView

    lazy var dayWeatherScrollContainer: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [mondayWeatherView, tuesdayWeatherView, wednesdayWeatherView, thursdayWeatherView,fridayWeatherView, saturdayWeatherView, sundayWeatherView])
        stackView.axis = .horizontal
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: - Monday element in scrollview
    lazy var mondayWeatherView: UIVisualEffectView = {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = blurEffect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var mondayLabel: UILabel = {
        let label = UILabel()
        label.text = "Mon"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var mondayWeatherImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "sun")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var mondayTemperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "20°C"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var mondayStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [mondayLabel, mondayWeatherImage, mondayTemperatureLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: - Tuesday element in scrollview
    lazy var tuesdayWeatherView: UIVisualEffectView = {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = blurEffect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var tuesdayLabel: UILabel = {
        let label = UILabel()
        label.text = "Tue"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var tuesdayWeatherImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "sun")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var tuesdayTemperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "20°C"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var tuesdayStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [tuesdayLabel, tuesdayWeatherImage, tuesdayTemperatureLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: - Wenesday element in scrollview
    lazy var wednesdayWeatherView: UIVisualEffectView = {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = blurEffect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var wednesdayLabel: UILabel = {
        let label = UILabel()
        label.text = "Wen"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var wednesdayWeatherImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "sun")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var wednesdayTemperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "20°C"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var wednesdayStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [wednesdayLabel, wednesdayWeatherImage, wednesdayTemperatureLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: - Thursday element in scrollview
    lazy var thursdayWeatherView: UIVisualEffectView = {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = blurEffect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var thursdayLabel: UILabel = {
        let label = UILabel()
        label.text = "Thu"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var thursdayWeatherImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "sun")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var thursdayTemperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "20°C"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var thursdayStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [thursdayLabel, thursdayWeatherImage, thursdayTemperatureLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: - Friday element in scrollview
    lazy var fridayWeatherView: UIVisualEffectView = {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = blurEffect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var fridayLabel: UILabel = {
        let label = UILabel()
        label.text = "Fri"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var fridayWeatherImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "sun")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var fridayTemperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "20°C"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var fridayStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [fridayLabel, fridayWeatherImage, fridayTemperatureLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: - Saturday element in scrollview
    lazy var saturdayWeatherView: UIVisualEffectView = {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = blurEffect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var saturdayLabel: UILabel = {
        let label = UILabel()
        label.text = "Sat"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var saturdayWeatherImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "sun")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var saturdayTemperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "20°C"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var saturdayStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [saturdayLabel, saturdayWeatherImage, saturdayTemperatureLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    // MARK: - Sunday element in scrollview
    lazy var sundayWeatherView: UIVisualEffectView = {
        let view = UIVisualEffectView()
        view.layer.cornerRadius = 20
        view.clipsToBounds = true
        view.effect = blurEffect
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var sundayLabel: UILabel = {
        let label = UILabel()
        label.text = "Sun"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var sundayWeatherImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "sun")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var sundayTemperatureLabel: UILabel = {
        let label = UILabel()
        label.text = "20°C"
        label.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var sundayStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [sundayLabel, sundayWeatherImage, sundayTemperatureLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    init() {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupView() {
        
        addSubview(dayWeatherScrollContainer)
        dayWeatherScrollStackLayout()
        dayWeatherViewLayout()
        
        mondayWeatherView.contentView.addSubview(mondayStackView)
        mondayStackViewLayout()
        
        tuesdayWeatherView.contentView.addSubview(tuesdayStackView)
        tuesdayStackViewLayout()
        
        wednesdayWeatherView.contentView.addSubview(wednesdayStackView)
        wednesdayStackViewLayout()
        
        thursdayWeatherView.contentView.addSubview(thursdayStackView)
        thursdayStackViewLayout()
        
        fridayWeatherView.contentView.addSubview(fridayStackView)
        fridayStackViewLayout()
        
        saturdayWeatherView.contentView.addSubview(saturdayStackView)
        saturdayStackViewLayout()
        
        sundayWeatherView.contentView.addSubview(sundayStackView)
        sundayStackViewLayout()
    }
    
  
    
    fileprivate func dayWeatherScrollStackLayout() {
        NSLayoutConstraint.activate([
                                        dayWeatherScrollContainer.topAnchor.constraint(equalTo: topAnchor),
                                        dayWeatherScrollContainer.leadingAnchor.constraint(equalTo: leadingAnchor)])
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
    
    fileprivate func mondayStackViewLayout() {
        NSLayoutConstraint.activate([
                                        mondayStackView.topAnchor.constraint(equalTo: mondayWeatherView.topAnchor, constant: 5),
                                        mondayStackView.centerXAnchor.constraint(equalTo: mondayWeatherView.centerXAnchor),
                                        
                                        mondayWeatherImage.widthAnchor.constraint(equalToConstant: 45),
                                        mondayWeatherImage.heightAnchor.constraint(equalToConstant: 45)])
    }
    
    fileprivate func tuesdayStackViewLayout() {
        NSLayoutConstraint.activate([
                                        tuesdayStackView.topAnchor.constraint(equalTo: tuesdayWeatherView.topAnchor, constant: 5),
                                        tuesdayStackView.centerXAnchor.constraint(equalTo: tuesdayWeatherView.centerXAnchor),
                                        
                                        tuesdayWeatherImage.widthAnchor.constraint(equalToConstant: 45),
                                        tuesdayWeatherImage.heightAnchor.constraint(equalToConstant: 45)])
    }
    
    fileprivate func wednesdayStackViewLayout() {
        NSLayoutConstraint.activate([
                                        wednesdayStackView.topAnchor.constraint(equalTo: wednesdayWeatherView.topAnchor, constant: 5),
                                        wednesdayStackView.centerXAnchor.constraint(equalTo: wednesdayWeatherView.centerXAnchor),
                                        
                                        wednesdayWeatherImage.widthAnchor.constraint(equalToConstant: 45),
                                        wednesdayWeatherImage.heightAnchor.constraint(equalToConstant: 45)])
    }
    
    fileprivate func thursdayStackViewLayout() {
        NSLayoutConstraint.activate([
                                        thursdayStackView.topAnchor.constraint(equalTo: thursdayWeatherView.topAnchor, constant: 5),
                                        thursdayStackView.centerXAnchor.constraint(equalTo: thursdayWeatherView.centerXAnchor),
                                        
                                        thursdayWeatherImage.widthAnchor.constraint(equalToConstant: 45),
                                        thursdayWeatherImage.heightAnchor.constraint(equalToConstant: 45)])
    }
    
    fileprivate func fridayStackViewLayout() {
        NSLayoutConstraint.activate([
                                        fridayStackView.topAnchor.constraint(equalTo: fridayWeatherView.topAnchor, constant: 5),
                                        fridayStackView.centerXAnchor.constraint(equalTo: fridayWeatherView.centerXAnchor),
                                        
                                        fridayWeatherImage.widthAnchor.constraint(equalToConstant: 45),
                                        fridayWeatherImage.heightAnchor.constraint(equalToConstant: 45)])
    }
    
    fileprivate func saturdayStackViewLayout() {
        NSLayoutConstraint.activate([
                                        saturdayStackView.topAnchor.constraint(equalTo: saturdayWeatherView.topAnchor, constant: 5),
                                        saturdayStackView.centerXAnchor.constraint(equalTo: saturdayWeatherView.centerXAnchor),
                                        
                                        saturdayWeatherImage.widthAnchor.constraint(equalToConstant: 45),
                                        saturdayWeatherImage.heightAnchor.constraint(equalToConstant: 45)])
    }
    
    
    fileprivate func sundayStackViewLayout() {
        NSLayoutConstraint.activate([
                                        sundayStackView.topAnchor.constraint(equalTo: sundayWeatherView.topAnchor, constant: 5),
                                        sundayStackView.centerXAnchor.constraint(equalTo: sundayWeatherView.centerXAnchor),
                                        
                                        sundayWeatherImage.widthAnchor.constraint(equalToConstant: 45),
                                        sundayWeatherImage.heightAnchor.constraint(equalToConstant: 45)])
    }
}
