//
//  CallView.swift
//  WatchApp WatchKit Extension
//
//  Created by National Team on 04.11.2021.
//

import SwiftUI

struct CallView: View {
    var body: some View {
      VStack(spacing: 0) {
        Image("call-ava").resizable().aspectRatio(contentMode: .fit).frame(width: 60, height: 60).padding(.bottom, 5)
        Text("Sylvie").font(.system(size: 20))
        Text("Incoming Call").textCase(.uppercase).font(.system(size: 12)).foregroundColor(Color(red: 0.47, green: 1, blue: 0.28)).opacity(0.5)
        HStack(spacing: 40) {
          NavigationLink {
            TopicsView()
          } label: {
            Image("tube").resizable().aspectRatio(contentMode: .fit).frame(width: 25, height: 25).rotationEffect(.degrees(135)).offset(y: 1)
          }.buttonStyle(PlainButtonStyle()).frame(width: 50, height: 50).background(Color(red: 1, green: 0.15, blue: 0.15)).cornerRadius(25)
          NavigationLink {
            TopicsView()
          } label: {
            Image("tube").resizable().aspectRatio(contentMode: .fit).frame(width: 25, height: 25)
          }.buttonStyle(PlainButtonStyle()).frame(width: 50, height: 50).background(Color(red: 0.19, green: 0.71, blue: 0)).cornerRadius(25)
        }.padding(.top, 11)
      }
    }
}

struct CallView_Previews: PreviewProvider {
    static var previews: some View {
        CallView()
    }
}
