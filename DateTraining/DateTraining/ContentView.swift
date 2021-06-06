//
//  ContentView.swift
//  DateTraining
//
//  Created by 岡優志 on 2021/06/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            let time: TimeInterval = 30000000
                       let formatter = DateComponentsFormatter()
                       formatter.unitsStyle = .full
                       formatter.includesApproximationPhrase = false
                       formatter.includesTimeRemainingPhrase = false
                       formatter.allowedUnits = [.day, .hour, .minute, .second]
                       let outputString = formatter.string(from: time)!
                       print(outputString)
        }, label: {
            Text("Button")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
