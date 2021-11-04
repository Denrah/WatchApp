//
//  FeedView.swift
//  WatchApp WatchKit Extension
//
//  Created by National Team on 04.11.2021.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
      GeometryReader { geometry in
        VStack {
          TabView {
            Image("p2").resizable().aspectRatio( contentMode: .fill).frame(width: geometry.size.width - 24, height: (geometry.size.width - 24) * 0.75).cornerRadius(10)
            Image("p1").resizable().aspectRatio( contentMode: .fill).frame(width: geometry.size.width - 24, height: (geometry.size.width - 24) * 0.75).cornerRadius(10)
            Image("p3").resizable().aspectRatio( contentMode: .fill).frame(width: geometry.size.width - 24, height: (geometry.size.width - 24) * 0.75).cornerRadius(10)
            Image("p4").resizable().aspectRatio( contentMode: .fill).frame(width: geometry.size.width - 24, height: (geometry.size.width - 24) * 0.75).cornerRadius(10)
          }.tabViewStyle(.page(indexDisplayMode: .never))
          Spacer()
          HStack {
            NavigationLink {
              ExerciseView()
            } label: {
              VStack(spacing: 1) {
                Image("h").resizable().aspectRatio(contentMode: .fit).frame(width: 15, height: 15)
                Text("45").font(.system(size: 8)).foregroundColor(.white.opacity(0.5))
              }
            }.buttonStyle(PlainButtonStyle())
            Spacer()
            NavigationLink {
              ExerciseView()
            } label: {
              VStack(spacing: 1) {
                Image("c").resizable().aspectRatio(contentMode: .fit).frame(width: 15, height: 15)
                Text("5").font(.system(size: 8)).foregroundColor(.white.opacity(0.5))
              }
            }.buttonStyle(PlainButtonStyle())
          }.padding(.horizontal, 30)
        }
      }.navigationTitle("Feed").navigationBarTitleDisplayMode(.inline)
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
