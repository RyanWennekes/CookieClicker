//
//  CreditsView.swift
//  CookieClicker
//
//  Created by Ryan Wennekes on 09/02/2022.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        NavigationView() {
            VStack() {
                Text("Some Name")
                Text("Some Other Name")
                Text("Final Name")
                Spacer()
            }
            .navigationBarTitle("Credits", displayMode: .inline)
        }
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
