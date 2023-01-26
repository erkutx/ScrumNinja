//
//  ContentView.swift
//  ScrumNinja
//
//  Created by Erkut Cetiner on 1/26/23.
//

import SwiftUI

struct MeetingView: View {
    var body: some View {
        VStack{
            ProgressView(value: 5 , total: 25)
            HStack {
                VStack(alignment: .leading){
                    Text ("Second Elapsed")
                        .font(.caption)
                    Label( "300" , systemImage: "hourglass.bottomhalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing){
                    Text ("Second Remaining")
                        .font(.caption)
                    Label ("600", systemImage: "hourglass.tophalf.filled")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 Minutes")
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack{
                Text("Speaker 1 0f 4")
                Spacer()
                Button(action: {}) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next Speaker")
            }
        }
        .padding()
    }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MeetingView()
    }
}
