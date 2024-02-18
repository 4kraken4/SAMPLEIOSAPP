//
//  MoviesListView.swift
//  SAMPLEIOSAPP
//
//  Created by Mangi Wimalaweera on 2024-02-17.
//

import SwiftUI
import Kingfisher

struct MoviesListView: View {
    @StateObject var moviesVM : MovieViewModel = MovieViewModel()
    
    var body: some View {
        VStack {
            Text("Movies")
                .font(.largeTitle)
                .bold().padding(.horizontal)
        }.frame(height: 72)
        
        
        
        ScrollView {
            RoundedRectangle(cornerSize: CGSize(width: 12, height: 12))
                .fill(.white)
                .shadow(radius: 8)
                .frame(height: 172)
                .padding()
                .overlay {
                    HStack(alignment: .center) {
                        
                    }
                }
        }
        
        Spacer()
    }
}

func imageCode() {
//    ScrollView{
//        ForEach(moviesVM.movieResults, id: \.id) { movie in
//            ZStack(content: {
//                RoundedRectangle(cornerRadius: 16)
//                    .fill(.white)
//                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                    .overlay(
//                        HStack {
//                            KFImage.url(URL(string: "https://www.google.com/url?sa=i&url=https%3A%2F%2Ftwitter.com%2Fletscinema%2Fstatus%2F1523665145876316166&psig=AOvVaw2WKACF3ekDab5D7uF1b5Zz&ust=1708266350547000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCKi0sa7KsoQDFQAAAAAdAAAAABAD"))
//                                .resizable()
//                                .scaledToFill()
//                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
//                                .clipShape(RoundedRectangle(cornerRadius: 20))
//                            Spacer()
//                        }
//                    )
//                    .frame(height: 180)
//                    .padding()
//            })
//        }
//    }
}

#Preview {
    MoviesListView()
}
