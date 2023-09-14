//
//  DataModel.swift
//  MoviesWidget
//
//  Created by Mac on 14/9/23.
//

import Foundation

struct MovieModel: Codable, Hashable {
    
    var serialNumberOfMovie: Int
    var movieName: String
    var movieImage: String
    var weekendGross: String
    var totalGross: String
    var weeksReleased: Int
    var numberOfStars: Int
    var rating: Double
    var numberOfPeopleRates: String
    
}

struct MockData {
    
    static let movie1 = MovieModel(
        serialNumberOfMovie: 1,
        movieName: "Moana",
        movieImage: "moana",
        weekendGross: "$13M",
        totalGross: "$13M",
        weeksReleased: 1,
        numberOfStars: 3,
        rating: 7.1,
        numberOfPeopleRates: "14K"
    )
    
    static let movie2 = MovieModel(
        serialNumberOfMovie: 2,
        movieName: "THE NUN",
        movieImage: "nun",
        weekendGross: "$13M",
        totalGross: "$13M",
        weeksReleased: 1,
        numberOfStars: 3,
        rating: 7.1,
        numberOfPeopleRates: "14K"
    )
    
    static let movie3 = MovieModel(
        serialNumberOfMovie: 3,
        movieName: "THE NUN II",
        movieImage: "nun2",
        weekendGross: "$12M",
        totalGross: "$12M",
        weeksReleased: 1,
        numberOfStars: 3,
        rating: 7.1,
        numberOfPeopleRates: "14K"
    )
    
    static let movie4 = MovieModel(
        serialNumberOfMovie: 4,
        movieName: "Boss Baby",
        movieImage: "bossBaby",
        weekendGross: "$11M",
        totalGross: "$11M",
        weeksReleased: 1,
        numberOfStars: 3,
        rating: 7.1,
        numberOfPeopleRates: "14K"
    )
    
    static let movie5 = MovieModel(
        serialNumberOfMovie: 5,
        movieName: "Titanic",
        movieImage: "titanic",
        weekendGross: "$13M",
        totalGross: "$13M",
        weeksReleased: 1,
        numberOfStars: 3,
        rating: 7.1,
        numberOfPeopleRates: "14K"
    )
    
    static let movie6 = MovieModel(
        serialNumberOfMovie: 6,
        movieName: "Bird Box",
        movieImage: "birdBox",
        weekendGross: "$13M",
        totalGross: "$13M",
        weeksReleased: 1,
        numberOfStars: 3,
        rating: 7.1,
        numberOfPeopleRates: "14K"
    )
    
    static let movie7 = MovieModel(
        serialNumberOfMovie: 7,
        movieName: "The Terminator",
        movieImage: "terminator",
        weekendGross: "$13M",
        totalGross: "THE NUN",
        weeksReleased: 1,
        numberOfStars: 4,
        rating: 7.1,
        numberOfPeopleRates: "14K"
    )
    
    static let movie8 = MovieModel(
        serialNumberOfMovie: 8,
        movieName: "The Terminator 2",
        movieImage: "terminator2",
        weekendGross: "$13M",
        totalGross: "THE NUN II",
        weeksReleased: 1,
        numberOfStars: 1,
        rating: 7.1,
        numberOfPeopleRates: "14K"
    )
    
    static let movie9 = MovieModel(
        serialNumberOfMovie: 9,
        movieName: "Spider-Man",
        movieImage: "spiderman",
        weekendGross: "$13M",
        totalGross: "Boss Baby",
        weeksReleased: 1,
        numberOfStars: 3,
        rating: 7.1,
        numberOfPeopleRates: "14K"
    )
    
    static let movie10 = MovieModel(
        serialNumberOfMovie: 10,
        movieName: "Spider-Man 2",
        movieImage: "spiderman2",
        weekendGross: "$13M",
        totalGross: "$13M",
        weeksReleased: 1,
        numberOfStars: 3,
        rating: 7.1,
        numberOfPeopleRates: "14K"
    )
    
    
    static let allMovies = [movie1, movie2, movie3, movie4, movie5, movie6, movie7, movie8, movie9, movie10]
    
    
}
