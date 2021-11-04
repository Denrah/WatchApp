//
//  HeartRate.swift
//  WatchApp WatchKit Extension
//
//  Created by National Team on 04.11.2021.
//

import SwiftUI

struct HeartRate: View {
  var body: some View {
    ScrollView(.vertical) {
      LazyVStack(spacing: 4) {
        NavigationLink {
          CallView()
        } label: {
          VStack(alignment: .leading, spacing: 2) {
            Text("Current").font(.system(size: 14)).foregroundColor(.white)
            HStack(spacing: 8) {
              Image("heart").resizable().aspectRatio(contentMode: .fit).frame(width: 20, height: 20)
              Text("63").font(.system(size: 30)).foregroundColor(.white) + Text("BPM").font(.system(size: 23)).foregroundColor(Color(red: 1, green: 0.31, blue: 0.31))
              Spacer()
            }
            Text("58 BPM, 3m ago").font(.system(size: 14)).foregroundColor(.white.opacity(0.5))
          }.padding(8).background(Color(red: 0.8, green: 0.8, blue: 0.8).opacity(0.14)).cornerRadius(5)
        }.buttonStyle(PlainButtonStyle())
        NavigationLink {
          CallView()
        } label: {
          VStack(alignment: .leading, spacing: 2) {
            Text("Resting Rate").font(.system(size: 14)).foregroundColor(.white)
            HStack(spacing: 8) {
              Text("56").font(.system(size: 30)).foregroundColor(.white) + Text("BPM").font(.system(size: 23)).foregroundColor(Color(red: 1, green: 0.31, blue: 0.31))
              Spacer()
            }
            Text("Today").font(.system(size: 14)).foregroundColor(.white.opacity(0.5))
          }.padding(8).background(Color(red: 0.8, green: 0.8, blue: 0.8).opacity(0.14)).cornerRadius(5)
        }.buttonStyle(PlainButtonStyle())
        NavigationLink {
          CallView()
        } label: {
          VStack(alignment: .leading, spacing: 2) {
            Text("Resting Rate").font(.system(size: 14)).foregroundColor(.white)
            HStack(spacing: 8) {
              Text("48").font(.system(size: 30)).foregroundColor(.white) + Text("BPM").font(.system(size: 23)).foregroundColor(Color(red: 1, green: 0.31, blue: 0.31))
              Spacer()
            }
            Text("1 day ago").font(.system(size: 14)).foregroundColor(.white.opacity(0.5))
          }.padding(8).background(Color(red: 0.8, green: 0.8, blue: 0.8).opacity(0.14)).cornerRadius(5)
        }.buttonStyle(PlainButtonStyle())
        NavigationLink {
          CallView()
        } label: {
          VStack(alignment: .leading, spacing: 2) {
            Text("Resting Rate").font(.system(size: 14)).foregroundColor(.white)
            HStack(spacing: 8) {
              Text("72").font(.system(size: 30)).foregroundColor(.white) + Text("BPM").font(.system(size: 23)).foregroundColor(Color(red: 1, green: 0.31, blue: 0.31))
              Spacer()
            }
            Text("2 days ago").font(.system(size: 14)).foregroundColor(.white.opacity(0.5))
          }.padding(8).background(Color(red: 0.8, green: 0.8, blue: 0.8).opacity(0.14)).cornerRadius(5)
        }.buttonStyle(PlainButtonStyle())
      }
    }.navigationTitle("Heart Rate").navigationBarTitleDisplayMode(.inline)
  }
}

struct HeartRate_Previews: PreviewProvider {
  static var previews: some View {
    HeartRate()
  }
}
