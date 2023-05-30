//
//  CanvasDrawingExample.swift
//  Drawing
//
//  Created by 현은백 on 2023/05/30.
//

import SwiftUI

struct CanvasDrawingExample: View {
    
    @State private var lines: [Line] = []
    @State private var selectedColor = Color.orange
    
    
    var body: some View {
        VStack {
            HStack {
                ForEach([Color.green, .orange, .blue, .red, .pink, .black , .purple], id: \.self) { color in
                    colorButton(color: color)
                }
                clearButton()
            }
        }
    }
    
    @ViewBuilder
    func colorButton(color: Color) -> some View {
        Button {
            self.selectedColor = color
        } label: {
            Image(systemName: "circle.fill")
                .font(.largeTitle)
                .foregroundColor(color)
                .mask {
                    Image(systemName: "pencil.tip")
                        .font(.largeTitle)
                }
        }
    }
    
    @ViewBuilder
    func clearButton() -> some View {
        Button {
            lines = []
        } label: {
            Image(systemName: "pencil.tip.crop.circle.badge.minus")
                .font(.largeTitle)
                .foregroundColor(.gray)
        }
    }
}

struct CanvasDrawingExample_Previews: PreviewProvider {
    static var previews: some View {
        CanvasDrawingExample()
    }
}
