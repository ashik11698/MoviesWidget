//
//  MovieProvider.swift
//  WidgetExtensionExtension
//
//  Created by Mac on 15/9/23.
//

import WidgetKit
import SwiftUI

struct MovieProvider: TimelineProvider {
    
    typealias Entry = MovieEntry
    
    func placeholder(in context: Context) -> MovieEntry {
        MovieEntry.init(date: Date(), movie: [MockData.movie1])
    }

    func getSnapshot(in context: Context, completion: @escaping (MovieEntry) -> ()) {
        let entry = MovieEntry.init(date: Date(), movie: [MockData.movie1])
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
     
        var entries: [MovieEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()

        let entry = MovieEntry(date: currentDate, movie: MockData.allMovies)
        let refreshTime = Calendar.current.date(byAdding: .minute, value: 5, to: currentDate)
        entries.append(entry)
        
        let timeline = Timeline(entries: entries, policy: .after(refreshTime!))
        completion(timeline)
    }
}
