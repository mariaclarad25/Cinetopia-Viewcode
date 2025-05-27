//
//  FavoriteMovieViewController.swift
//  Cinetopia
//
//  Created by Maria Clara Dias on 27/05/25.
//

import UIKit

class FavoriteMovieViewController: UIViewController {
    
    //MARK: UIComponents
    
    private let mainView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .gray
        
        return view
    }()
    
    //MARK: View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
        
    }
    
    //MARK: Class methods
    
    private func setupConstraints(){
        view.addSubview(mainView)
        mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainView.topAnchor.constraint(equalTo: view.topAnchor,constant: 100).isActive = true
        mainView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        mainView.widthAnchor.constraint(equalToConstant: 150).isActive = true
    }
}

#Preview {
    FavoriteMovieViewController()
}
