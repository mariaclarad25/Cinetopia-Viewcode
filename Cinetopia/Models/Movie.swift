//
//  Movie.swift
//  Cinetopia
//
//  Created by Maria Clara Dias on 22/05/25.
//

import Foundation

struct Movie: Decodable {
    let id: String
    let title: String
    let image: String
    let synopsis: String
    let rate: Double
    let releaseDate: String
}

let movies: [Movie] = [
    Movie(id: "1", title: "Avatar", image: "https://github.com/alura-cursos/movie-api/blob/main/images/avatar.jpg?raw=true", synopsis: "No exuberante mundo alienígena de Pandora vivem os Na'vi, seres que parecem ser primitivos, mas são altamente evoluídos. Como o ambiente do planeta é tóxico, foram criados os avatares, corpos biológicos controlados pela mente humana que se movimentam livremente em Pandora. Jake Sully, um ex-fuzileiro naval paralítico, volta a andar através de um avatar e se apaixona por uma Na'vi. Esta paixão leva Jake a lutar pela sobrevivência de Pandora.", rate: 7.9, releaseDate: "18/12/2009"),
    
    Movie(id: "2", title: "Vingadores: Ultimato", image: "https://github.com/alura-cursos/movie-api/blob/main/images/vingadores-ultimato.jpg?raw=true", synopsis: "Após Thanos eliminar metade das criaturas vivas, os Vingadores têm de lidar com a perda de amigos e entes queridos. Com Tony Stark vagando perdido no espaço sem água e comida, Steve Rogers e Natasha Romanov lideram a resistência contra o titã louco.", rate: 8.4, releaseDate: "25/04/2019"),
    
    Movie(id: "3", title: "Avatar: O Caminho da Água", image: "https://github.com/alura-cursos/movie-api/blob/main/images/avatar-2.jpg?raw=true", synopsis: "Após anos entre os Na'vi, Jake Sully construiu uma família com Neytiri e se tornou parte de Pandora. Quando os humanos retornam com novas ameaças, Jake e sua família deixam a floresta e buscam abrigo entre os Metkayina, um clã que vive nos recifes. Lá, enfrentam desafios para se adaptar ao modo de vida aquático. Com a guerra se aproximando, Jake precisa proteger sua família e lutar pela sobrevivência do novo lar.", rate: 7.5, releaseDate: "15/12/2022"),
    
    Movie(id: "4", title: "Titanic", image: "https://github.com/alura-cursos/movie-api/blob/main/images/titanic.jpg?raw=true", synopsis: "Em 1912, o luxuoso navio Titanic parte em sua viagem inaugural, considerado o mais seguro do mundo. A bordo, Rose, uma jovem da alta sociedade, conhece Jack, um artista pobre que viaja na terceira classe. Apesar das diferenças, eles se apaixonam intensamente. Mas quando o navio colide com um iceberg, a tragédia muda para sempre o destino de todos a bordo.", rate: 7.9, releaseDate: "19/12/1997")
]
