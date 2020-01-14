//
//  ContentView.swift
//  SwiftUIPathDraw
//
//  Created by Ian Chen on 2020/1/14.
//  Copyright © 2020 Ian Chen. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   var body: some View {
            ZStack {
          Group {
              //臉
              Path(ellipseIn: CGRect(x: 40, y: 270, width: 330, height: 300))
              .fill(Color(red: 255/255, green: 204/255, blue: 77/255))
                                
              
            //鼻涕
              Path { (path) in
                  path.move(to: CGPoint(x: 202, y: 504))
                  path.addQuadCurve(to: CGPoint(x: 202, y: 588), control: CGPoint(x: 182, y: 591))
                  path.addQuadCurve(to: CGPoint(x: 202, y: 504), control: CGPoint(x: 226, y: 591))
              }
              .fill(Color(red: 2/255, green: 70/255, blue: 112/255))
            
            //嘴巴
            Path { (path) in
                  path.move(to: CGPoint(x: 240, y: 550))
                  path.addQuadCurve(to: CGPoint(x:160, y: 550), control: CGPoint(x: 200, y: 480))
                     }
             .stroke(lineWidth: 5)
            
              // 眉毛
              Path { (path) in
               path.move(to: CGPoint(x: 240, y: 330))
               path.addQuadCurve(to: CGPoint(x: 330, y: 380), control: CGPoint(x: 250, y: 380))
                  }
              .stroke(lineWidth: 15)
              .fill(Color(red: 97/255, green: 68/255, blue: 0/255))
              
                    Path { (path) in
                       path.move(to: CGPoint(x: 180, y: 330))
                       path.addQuadCurve(to: CGPoint(x: 90, y: 380), control: CGPoint(x: 190, y: 380))
                          }
                      .stroke(lineWidth: 15)
              .fill(Color(red: 97/255, green: 68/255, blue: 0/255))
              
            // 左睛
            Path { (path) in
            path.move(to: CGPoint(x: 110, y: 420))
            path.addQuadCurve(to: CGPoint(x: 192, y: 420), control: CGPoint(x: 160, y: 410))
            }
            .stroke(lineWidth: 15)
            .fill(Color(red: 97/255, green: 68/255, blue: 0/255))
  
            // 右眼
            Path { (path) in
            path.move(to: CGPoint(x: 230, y: 420))
            path.addQuadCurve(to: CGPoint(x: 312, y: 420), control: CGPoint(x: 280, y: 410))
            }
            .stroke(lineWidth: 15)
            .fill(Color(red: 97/255, green: 68/255, blue: 0/255))
              
              
          }
        }
   }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
