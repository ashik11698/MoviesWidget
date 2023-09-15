//
//  WidgetExtension.swift
//  WidgetExtension
//
//  Created by Mac on 15/9/23.
//

import WidgetKit
import SwiftUI

struct WidgetExtensionEntryView : View {
    var entry: MovieProvider.Entry
    
    @Environment(\.widgetFamily) var family

    @ViewBuilder
    var body: some View {
        switch family {
        case .systemMedium:

            mediumEntryView(movie: entry.movie, day: "\(Date().loadDayName())", date: Date().getDate())

        default:
            fatalError()
        }
        
    }

}

struct WidgetExtension: Widget {
    let kind: String = "WidgetExtension"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: MovieProvider()) { entry in
            WidgetExtensionEntryView(entry: entry)
        }
        .configurationDisplayName("Movie Widget")
        .description("This is a widget of movie app.")
        .supportedFamilies([.systemMedium])
    }
}

struct WidgetExtension_Previews: PreviewProvider {
    static var previews: some View {
        WidgetExtensionEntryView(entry: MovieEntry(date: Date(), movie: [MockData.movie1]))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
