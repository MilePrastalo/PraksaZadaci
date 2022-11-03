//
//  SecondView.swift
//  Praksa Programski UI
//
//  Created by Mile Prastalo on 3.11.22..
//

import UIKit

class SecondView: UIView {
    
    // MARK: - UIProperties
    
    lazy var imageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "square.and.arrow.up")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var button: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var label: UILabel = {
        let view = UILabel()
        view.text = "Text"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: - Init

    init() {
        super.init(frame: .zero)
        self.backgroundColor = .blue
        
        setupView()
        styleView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Public methods
    
    func setupView() {
        addSubview(imageView)
        addSubview(button)
        button.addSubview(label)
        
        imageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        imageView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        
        button.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        button.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        button.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        label.trailingAnchor.constraint(equalTo: button.trailingAnchor, constant: -10).isActive = true
        label.widthAnchor.constraint(equalToConstant: 80).isActive = true
        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
        label.centerYAnchor.constraint(equalTo: button.centerYAnchor).isActive = true

    }
    
    func styleView() {
        button.backgroundColor = .systemPink
        label.backgroundColor = .yellow
    }
    
}
