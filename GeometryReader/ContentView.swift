//
//  ContentView.swift
//  GeometryReader
//
//  Created by zapbuild on 22/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader{geometryOut in
            ScrollView{
                ForEach(0..<50){index in
                    GeometryReader{geometryReaderIn in
                        LazyVStack{
                            Text("Index: \(index)")
                            Text("Geometry reader inside minY: \(geometryReaderIn.frame(in: .global).minY)")
                        }.padding()
                        .background(index % 2 == 0 ? Color.red : Color.green)
                        .rotationEffect(Angle(degrees: Double(geometryReaderIn.frame(in: .global).minY / 20)))
                    }.frame(height: 100)
                    
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
