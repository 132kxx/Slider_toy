//
//  ContentView.swift
//  Slider_toy
//
//  Created by kxx: on 2022/07/30.
//

import SwiftUI

struct ContentView: View {
    @State private var r = 0.0
    @State private var g = 0.0
    @State private var b = 0.0
    @State private var isWorking = false
    
    var color: Color {
        Color(red: r / 255, green: g / 255, blue: b / 255)
    }
 
    var body: some View {
        
        VStack {
            
            Image(systemName: "umbrella.fill")
                .resizable()
                .foregroundColor(color)
                .frame(width: 250, height: 250)
            
            Slider(value: $r, in: 0 ... 255, step: 1) {
                //
            } minimumValueLabel: {
                Text("R")
                    .foregroundColor(.red)
                    .frame(minWidth: 30)
            } maximumValueLabel: {
                Text("\(Int(r))")
                    .frame(minWidth: 30)
            } onEditingChanged: { editing in
                isWorking = editing
            }
            .padding()
            .tint(.green)
            
            Slider(value: $g, in: 0 ... 255, step: 1) {
                //
            } minimumValueLabel: {
                Text("G")
                    .foregroundColor(.green)
                    .frame(minWidth: 30)
            } maximumValueLabel: {
                Text("\(Int(g))")
                    .frame(minWidth: 30)
            } onEditingChanged: { editing in
                isWorking = editing
            }
            .padding()
            .tint(.red)

            Slider(value: $b, in: 0 ... 255, step: 1) {
                //
            } minimumValueLabel: {
                Text("B")
                    .foregroundColor(.blue)
                    .frame(minWidth: 30)
            } maximumValueLabel: {
                Text("\(Int(b))")
                    .frame(minWidth: 30)
            } onEditingChanged: { editing in
                isWorking = editing
            }
            .padding()
            .tint(.blue)

            
            Text("R: \(Int(r))  G: \(Int(g))  B: \(Int(b))")
            
            Button("Reset") {
                r = 0.0
                g = 0.0
                b = 0.0
            }
            .buttonStyle(.borderedProminent)
            .disabled(isWorking)
            

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
