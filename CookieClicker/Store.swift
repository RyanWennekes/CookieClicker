//
//  Store.swift
//  CookieClicker
//
//  Created by Ryan Wennekes on 09/02/2022.
//

import SwiftUI

struct Store: View {
    @Binding var timesClicked: Int
    
    var body: some View {
        Text("You have clicked \(timesClicked) times!")
    }
}

struct Store_Previews: PreviewProvider {
    static var previews: some View {
        Store(timesClicked: .constant(0))
    }
}
