//
//  ExerciseView.swift
//  WatchApp WatchKit Extension
//
//  Created by National Team on 04.11.2021.
//

import SwiftUI

struct CircleArcShape: Shape {
  private var percent: Double
  
  init(percent: Double) {
    self.percent = percent
  }
  
  func path(in rect: CGRect) -> Path {
    var path = Path()
    let angle = percent * 360
    path.addArc(center: CGPoint(x: rect.width / 2, y: rect.height /  2), radius: rect.width / 2, startAngle: .degrees(-90), endAngle: .degrees(angle - 90), clockwise: false)
    return path.strokedPath(StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
  }
}

extension CircleArcShape {
  var animatableData: Double {
    get {
      percent
    }
    set {
      self.percent = newValue
    }
  }
}

struct ExerciseView: View {
  @State private var totoalTime: Double = 30
  @State private var currentTime: Double = 30
  
  var body: some View {
    ZStack {
      CircleArcShape(percent: currentTime / totoalTime).frame(width: 129, height: 129).foregroundColor(Color(red: 0.62, green: 0.97, blue: 0.07))
      VStack(spacing: 0) {
        Text("\(Int(currentTime))").font(.system(size: 48)).foregroundColor(.white).animation(nil)
        Text("OF \(Int(totoalTime)) SECS").font(.system(size: 13)).foregroundColor(.white)
      }.offset(y: -2)
    }.navigationTitle("Exercise")
      .task {
        currentTime = totoalTime
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
          withAnimation(.linear(duration: 1)) {
            self.currentTime -= 1
            if self.currentTime == 0 {
              timer.invalidate()
            }
          }
        }
      }
  }
}

struct ExerciseView_Previews: PreviewProvider {
  static var previews: some View {
    ExerciseView()
  }
}
