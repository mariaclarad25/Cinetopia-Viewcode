//
//  MovieDetailsViewController.swift
//  Cinetopia
//
//  Created by Maria Clara Dias on 23/05/25.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    var movie: Movie
    
    private lazy var titleMovieLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white.withAlphaComponent(0.80)
        label.font = .systemFont(ofSize: 28, weight: .semibold)
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    private lazy var movieImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFill
        image.layer.cornerRadius = 20
        image.layer.masksToBounds = true
        return image
    }()
    
    private lazy var classificacaoLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white.withAlphaComponent(1)
        label.font = .systemFont(ofSize: 18, weight: .semibold)
        return label
    }()
    
    private lazy var sinopseLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white.withAlphaComponent(0.80)
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 16)
        label.textAlignment = .justified
        return label
    }()
    
    init(movie: Movie) {
        self.movie = movie
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .background
        titleMovieLabel.text = movie.title
        movieImage.image = UIImage(named: movie.image)
        sinopseLabel.text = movie.synopsis
        addSubviews()
        setupConstrains()
        configureCell(movie: movie)

        // Do any additional setup after loading the view.
    }
    
    func configureCell (movie: Movie){
        classificacaoLabel.text = "Classificação dos usuários: \(movie.rate)"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    private func addSubviews(){
        view.addSubview(titleMovieLabel)
        view.addSubview(movieImage)
        view.addSubview(classificacaoLabel)
        view.addSubview(sinopseLabel)
        
    }
    
    private func setupConstrains(){
        NSLayoutConstraint.activate([
            titleMovieLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            titleMovieLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleMovieLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            movieImage.topAnchor.constraint(equalTo: titleMovieLabel.bottomAnchor, constant: 28),
            movieImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            movieImage.heightAnchor.constraint(equalToConstant: 265),
            movieImage.widthAnchor.constraint(equalToConstant: 215),
            
            classificacaoLabel.topAnchor.constraint(equalTo: movieImage.bottomAnchor, constant: 25),
            classificacaoLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            
            sinopseLabel.topAnchor.constraint(equalTo: classificacaoLabel.bottomAnchor, constant: 25),
            sinopseLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            sinopseLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
}
