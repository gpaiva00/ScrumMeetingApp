//
//  ContentView.swift
//  MyScrumdinger
//
//  Created by Gabriel Paiva on 24/06/21.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack() {
            ProgressView(value: 5, total: 15)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Segundos decorridos")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Segundos restantes")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: /*@START_MENU_TOKEN@*/.ignore/*@END_MENU_TOKEN@*/)
            .accessibilityLabel(Text("Tempo restante"))
            .accessibilityValue(Text("10 minutos"))
            
            Circle()
                .strokeBorder(lineWidth: 24, antialiased: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
            
            HStack {
                Text("Orador 1 de 3")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel(Text("Próximo orador"))
                    
            }
        }
        .padding()
    }
}

struct MeetingView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
