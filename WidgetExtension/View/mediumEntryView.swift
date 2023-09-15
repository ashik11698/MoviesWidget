//
//  largeEntryView.swift
//  WidgetExtensionExtension
//
//  Created by Mac on 15/9/23.
//

import SwiftUI
import WidgetKit

struct mediumEntryView: View {
    
    let movie: [MovieModel]
    let day: String
    let date: Int
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                Text("\(day)")
                    .foregroundColor(.orange)
                    .bold()
                Text("\(date)")
                    .bold()
                
                Spacer()
                
                Image(systemName: "list.bullet.circle.fill")
                    .foregroundColor(.yellow)
                    .font(.title)
            }
            
            Spacer()
            
            VStack(alignment: .leading) {
                ForEach(0..<3, id: \.self) { i in
                    Text("\(i+1). \(movie[i].movieName)")
                    
                    HStack {
                        ForEach(0..<movie[i].numberOfStars, id: \.self) { i in
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        }
                        
                        Text("\(String(format: "%.1f", movie[i].rating)) (\(movie[i].numberOfPeopleRates))")
                    }
                    
                    Divider()
                }
            }
            .font(.subheadline)
        }
        .padding()
    }
}

struct mediumEntryView_Previews: PreviewProvider {
    static var previews: some View {
        mediumEntryView(movie: MockData.allMovies, day: "Tuesday", date: 12)
            .previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
