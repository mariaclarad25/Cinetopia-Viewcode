//
//  FavoriteCollectionReusableView.swift
//  Cinetopia
//
//  Created by Maria Clara Dias on 28/05/25.
//

import UIKit

class FavoriteCollectionReusableView: UICollectionReusableView {
        
    //MARK: UI Components
    
    private lazy var headerLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 28, weight: .medium)
        label.textColor = .white
        label.textAlignment = .left
        return label
    }()
    
    //MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupConstrains()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Class methods
    
    func setupTitle(_ text: String){
        headerLabel.text = text
    }
    
    private func setupConstrains(){
        addSubview(headerLabel)
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: topAnchor),
            headerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            headerLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            headerLabel.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
