//
//  ArticleView.swift
//  FastNews
//
//  Created by home on 21.05.2023.
//

import SwiftUI
import URLImage
import URLImageStore

struct ArticleView: View {
    
    let article: Article
    
    var body: some View {
        HStack {
            if let imageUrl = article.image,
               let url = URL(string: imageUrl) {
                let urlImageService = URLImageService(fileStore: URLImageFileStore(), inMemoryStore: URLImageInMemoryStore())
                URLImage(url) {
                } inProgress: { progress in
                    ProgressView()
                } failure: { error, retry in
                    PlaceholderImageView()
                } content: { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .environment(\.urlImageService, urlImageService)
                .frame(width: 100, height: 100)
                .cornerRadius(10)
            } else {
                PlaceholderImageView()
            }
            
            VStack(alignment: .leading, spacing: 4) {
                Text(article.title ?? "")
                    .foregroundColor(.black)
                    .font(.system(size: 18, weight: .semibold))
                HStack {
                    Text(article.source == nil ? "" : (article.source! + ","))
                        .foregroundColor(.gray)
                        .font(.footnote)
                    Text(article.date!, style: .date)
                        .foregroundColor(.gray)
                        .font(.footnote)
                }
            }
        }
    }
}

struct PlaceholderImageView: View {
    var body: some View {
        Image(systemName: "photo.fill")
            .foregroundColor(.white)
            .background(Color.gray)
            .frame(width: 100, height: 100)
    }
}

struct ArticleView_Previews: PreviewProvider {
    static var previews: some View {
        ArticleView(article: Article.dummyData)
            .previewLayout(.sizeThatFits)
    }
}
