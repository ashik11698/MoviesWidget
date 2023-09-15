//
//  ContentView.swift
//  MoviesWidget
//
//  Created by Mac on 14/9/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {

        NavigationView {
            VStack {
                List {
                    ForEach(0..<MockData.allMovies.count, id: \.self) { movieIndex in
                        MovieCell(serialNumberOfMovie: movieIndex + 1, movie: MockData.allMovies[movieIndex])
                    }
                }
            }
            .navigationTitle("Top Box Office US")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
