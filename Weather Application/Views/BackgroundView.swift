//
//  BackgroundView.swift
//  Weather Application
//
//  Created by Alexander on 07.09.2021.
//

import UIKit

final class BackgroundView: UIView {
    let blurEffect = UIBlurEffect(style: .systemUltraThinMaterialLight)
    
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
    
    init() {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    fileprivate func setupView() {
        addSubview(backgroundImageView)
        setupBackgroundLayout()
        
        addSubview(containerView)
        setupContainerLayout()
    }
    
    fileprivate func setupBackgroundLayout() {
        NSLayoutConstraint.activate([
                                        backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
                                        backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
                                        backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
                                        backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor)])
    }
    
    
    fileprivate func setupContainerLayout() {
        NSLayoutConstraint.activate([
                                        containerView.topAnchor.constraint(equalTo: topAnchor),
                                        containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
                                        containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
                                        containerView.bottomAnchor.constraint(equalTo: bottomAnchor)])
    }
}
