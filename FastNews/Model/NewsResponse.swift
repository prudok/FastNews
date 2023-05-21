//
//  NewsResponse.swift
//  FastNews
//
//  Created by home on 21.05.2023.
//

import Foundation

// MARK: - NewsResponse
struct NewsResponse: Codable {
    let articles: [Article]
}

// MARK: - Article
struct Article: Codable, Identifiable {
    let id = UUID()
    let author: String?
    let url: String?
    let source, title: String?
    let description: String?
    let image: String?
    let date: Date?
}
//"author": "Sammy Barker",
//"url": "https://www.pushsquare.com/news/2023/05/mortal-kombat-1s-ps5-kombat-pack-kontents-may-have-been-accidentally-outed",
//"source": "Push Square",
//"title": "Mortal Kombat 1's PS5 Kombat Pack Kontents May Have Been Accidentally Outed - Push Square",
//"description": "Get a load of this",
//"image": "https://images.pushsquare.com/e80add5abe201/1280x720.jpg",
//"date": "2023-05-19T23:15:00Z"

extension Article {
    static var dummyData: Article {
        .init(author: "Sammy Barker", url: "https://www.pushsquare.com/news/2023/05/mortal-kombat-1s-ps5-kombat-pack-kontents-may-have-been-accidentally-outed", source: "Push Square", title: "Mortal Kombat 1's PS5 Kombat Pack Kontents May Have Been Accidentally Outed - Push Square", description: "Get a load of this", image: "https://images.pushsquare.com/e80add5abe201/1280x720.jpg", date: Date())
    }
}
