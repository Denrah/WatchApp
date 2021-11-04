//
//  TopicsView.swift
//  WatchApp WatchKit Extension
//
//  Created by National Team on 04.11.2021.
//

import SwiftUI

struct TopicsView: View {
    var body: some View {
      VStack(spacing: 6) {
        HStack(spacing: 8) {
          NavigationLink {
            FeedView()
          } label: {
            Image("t1").resizable().aspectRatio(contentMode: .fit).frame(width: 24, height: 24)
          }.buttonStyle(PlainButtonStyle()).frame(width: 37, height: 37).background(RadialGradient(colors: [Color(red: 0.38, green: 0.9, blue: 0.15), Color(red: 0.3, green: 0.7, blue: 0.13)], center: UnitPoint(x: 0.65, y: 0.3), startRadius: 0, endRadius: 27)).cornerRadius(18.5)
          NavigationLink {
            FeedView()
          } label: {
            Image("t2").resizable().aspectRatio(contentMode: .fit).frame(width: 24, height: 24)
          }.buttonStyle(PlainButtonStyle()).frame(width: 37, height: 37).background(RadialGradient(colors: [Color(red: 1, green: 0.27, blue: 0.52), Color(red: 1, green: 0.44, blue: 0.63)], center: UnitPoint(x: 0.65, y: 0.3), startRadius: 0, endRadius: 27)).cornerRadius(18.5)
        }
        HStack(spacing: 8) {
          NavigationLink {
            FeedView()
          } label: {
            Image("t3").resizable().aspectRatio(contentMode: .fit).frame(width: 24, height: 24)
          }.buttonStyle(PlainButtonStyle()).frame(width: 37, height: 37).background(RadialGradient(colors: [Color(red: 0.67, green: 0.93, blue: 0.98), Color(red: 0.07, green: 0.75, blue: 0.97)], center: UnitPoint(x: 0.65, y: 0.3), startRadius: 0, endRadius: 27)).cornerRadius(18.5)
          NavigationLink {
            FeedView()
          } label: {
            Image("t4").resizable().aspectRatio(contentMode: .fit).frame(width: 24, height: 24)
          }.buttonStyle(PlainButtonStyle()).frame(width: 37, height: 37).background(RadialGradient(colors: [Color(red: 0.99, green: 0.86, blue: 0.51), Color(red: 1, green: 0.68, blue: 0.11)], center: UnitPoint(x: 0.65, y: 0.3), startRadius: 0, endRadius: 27)).cornerRadius(18.5)
          NavigationLink {
            FeedView()
          } label: {
            Image("t5").resizable().aspectRatio(contentMode: .fit).frame(width: 24, height: 24)
          }.buttonStyle(PlainButtonStyle()).frame(width: 37, height: 37).background(RadialGradient(colors: [Color(red: 0.09, green: 0.73, blue: 0.99), Color(red: 0.13, green: 0.54, blue: 0.95)], center: UnitPoint(x: 0.65, y: 0.3), startRadius: 0, endRadius: 27)).cornerRadius(18.5)
        }
        HStack(spacing: 8) {
          NavigationLink {
            FeedView()
          } label: {
            Image("t6").resizable().aspectRatio(contentMode: .fit).frame(width: 24, height: 24)
          }.buttonStyle(PlainButtonStyle()).frame(width: 37, height: 37).background(RadialGradient(colors: [Color(red: 0.37, green: 0.01, blue: 0.67), Color(red: 0.53, green: 0.06, blue: 0.95)], center: UnitPoint(x: 0.65, y: 0.3), startRadius: 0, endRadius: 27)).cornerRadius(18.5)
          NavigationLink {
            FeedView()
          } label: {
            Image("t7").resizable().aspectRatio(contentMode: .fit).frame(width: 24, height: 24)
          }.buttonStyle(PlainButtonStyle()).frame(width: 37, height: 37).background(RadialGradient(colors: [Color(red: 0.99, green: 0.89, blue: 0.4), Color(red: 1, green: 0.78, blue: 0.09)], center: UnitPoint(x: 0.65, y: 0.3), startRadius: 0, endRadius: 27)).cornerRadius(18.5)
        }
      }
    }
}

struct TopicsView_Previews: PreviewProvider {
    static var previews: some View {
        TopicsView()
    }
}
