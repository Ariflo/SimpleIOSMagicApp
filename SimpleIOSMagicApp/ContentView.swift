//
//  ContentView.swift
//  SimpleIOSMagicApp
//
//  Created by Arian Flores - Magic on 1/23/23.
//

import SwiftUI
import MagicSDK

struct ContentView: View {
    let magic = Magic.shared
    let count: Int = 100
    
    var body: some View {
        VStack {
            Button(action: {
                guard let magic = magic else { return }
                let configuration = LoginWithMagicLinkConfiguration(email: "PLACE_YOUR_EMAIL_HERE")

                magic.auth.loginWithMagicLink(configuration, response: { response in
                    guard let result = response.result else { return print("Error:", response.error.debugDescription) }
                    print("Result", result)
                })
            }) {
                Text(String(count))
                    .padding(8)
                    .foregroundColor(Color.white)
                    .background(Color.black)
                    .cornerRadius(5)
                    .multilineTextAlignment(.center)
            }.padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 20))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
