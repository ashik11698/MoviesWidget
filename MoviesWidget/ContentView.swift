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
                    ForEach(MockData.allMovies, id: \.self) { movie in
                        MovieCell(movie: movie)
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
