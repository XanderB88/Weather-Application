//
//  HeaderWeather.swift
//  Weather Application
//
//  Created by Alexander on 07.09.2021.
//

import UIKit

final class HeaderWeatherView: UIView {
    lazy var dayDescriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "Sunny morning"
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var weekDayAndTimeLabel: UILabel = {
        let label = UILabel()
        label.text = "Tuesday 7:03AM"
        label.font = UIFont.systemFont(ofSize: 18, weight: .light)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
        addSubview(dayDescriptionLabel)
        setupDescriptionLabelLayout()
        
        addSubview(weekDayAndTimeLabel)
        setupWeekDayAndTimeLabelLayout()
    }
    
    fileprivate func setupDescriptionLabelLayout() {
        NSLayoutConstraint.activate([
                                        dayDescriptionLabel.topAnchor.constraint(equalTo: topAnchor),
                                        dayDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
                                        dayDescriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor)])
    }
    
    fileprivate func setupWeekDayAndTimeLabelLayout() {
        NSLayoutConstraint.activate([
                                        weekDayAndTimeLabel.topAnchor.constraint(equalTo: dayDescriptionLabel.bottomAnchor, constant: 10),
                                        weekDayAndTimeLabel.leadingAnchor.constraint(equalTo: leadingAnchor)])
    }
}
