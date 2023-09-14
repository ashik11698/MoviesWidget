//
//  MovieCell.swift
//  MoviesWidget
//
//  Created by Mac on 14/9/23.
//

import SwiftUI

struct MovieCell: View {

    let movie: MovieModel
    
    var body: some View {
        HStack {
            Image(movie.movieImage)
                .resizable()
                .frame(width: 80, height: 110)
                .padding(.trailing)
            
            VStack(alignment: .leading) {
                HStack {
                    Text("\(movie.serialNumberOfMovie).")
                    Text("\(movie.movieName)")
                        
                }
                .font(.title3)
                .fontWeight(.heavy)
                
                HStack{
                    Text("Weekend Gross:")
                    Text("\(movie.weekendGross)")
                        .bold()
                }
                
                HStack{
                    Text("Total Gross:")
                    Text("\(movie.totalGross)")
                        .bold()
                }
                
                HStack{
                    Text("Weaks Released:")
                    Text("\(movie.weeksReleased)")
                        .bold()
                }
                
                HStack{
                    ForEach(0..<movie.numberOfStars, id: \.self) { i in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                    }
                    Text("\(String(format: "%.1f", movie.rating)) (\(movie.numberOfPeopleRates))")
                        .bold()
                }
            }
        }
        .lineLimit(1)
    }
}

struct MovieCell_Previews: PreviewProvider {
    static var previews: some View {
        MovieCell(movie: MockData.movie1)
    }
}
