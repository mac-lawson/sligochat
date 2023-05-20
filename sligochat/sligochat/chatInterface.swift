//
//  chatInterface.swift
//  sligochat
//
//  Created by Mac Lawson on 5/19/23.
//  GPLv3
//

import SwiftUI

struct chatInterface: View {
    var body: some View {
        VStack{
            Text("Sligo Chat")
                .font(.title)
                .fontWeight(.heavy)
                .multilineTextAlignment(.leading)
            Spacer()
            TextField("Message", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
            Button("Send Message") {
                test()
            }
            Spacer()

        }
        .padding()
    }
}

struct chatInterface_Previews: PreviewProvider {
    static var previews: some View {
        chatInterface()
    }
}
