//
//  TabBarController.swift
//  Cinetopia
//
//  Created by Maria Clara Dias on 28/05/25.
//

import UIKit

class TabBarController: UITabBarController {
    
    //MARK: View life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        setupTabBarController()
        
    }
    
    //MARK: Class methods
    
    private func setupTabBarController(){
        let view = MoviesView()
        let interactor = MoviesInteractor()
        let presenter = MoviePresenter(view: view, interactor: interactor)
        let home = UINavigationController(rootViewController: MoviesViewController(view: view, presenter: presenter))
        let symbolConfiguration = UIImage.SymbolConfiguration(scale: .medium)
        let homeSymbol = UIImage(systemName: "film", withConfiguration: symbolConfiguration)
        home.tabBarItem.image = homeSymbol
        home.tabBarItem.title = "Filmes Populares"
        
        let favorites = UINavigationController(rootViewController: FavoriteMoviesViewController())
        let heartSymbol = UIImage(systemName: "heart", withConfiguration: symbolConfiguration)
        favorites.tabBarItem.image = heartSymbol
        favorites.tabBarItem.title = "Favoritos"
        
        self.setViewControllers([home, favorites], animated: true)
        
    }

}
