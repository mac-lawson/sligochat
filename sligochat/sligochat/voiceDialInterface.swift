//
//  voiceDialInterface.swift
//  sligochat
//
//  Created by Mac Lawson on 5/21/23.
//

import SwiftUI

struct voiceDialInterface: View {
    var incomingCallerUserID: String
    var body: some View {
        VStack {
            Spacer()
            
            VStack(spacing: 10) {
                
                Text("John Doe")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Incoming...")
                    .font(.headline)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            HStack(spacing: 40) {
                Button(action: {}) {
                    Image(systemName: "phone.fill")
                        .font(.title)
                        .foregroundColor(.green)
                }
                
                Button(action: {}) {
                    Image(systemName: "phone.down.fill")
                        .font(.title)
                        .foregroundColor(.red)
                }
            }
            .padding(.bottom, 30)
        }
        .padding()
        .background(Color.white)
    }
}


struct voiceDialInterface_Previews: PreviewProvider {
    static var previews: some View {
        voiceDialInterface(incomingCallerUserID: "hi")
    }
}
