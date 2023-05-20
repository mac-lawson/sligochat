//
//  ContentView.swift
//  sligochat
//
//  Created by Mac Lawson on 5/19/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedEncryptionLevel = 1
    var body: some View {
        VStack {
            Text("Sligo Chat")
                .font(.title)
                .fontWeight(.heavy)
                .multilineTextAlignment(.leading)
            Spacer()
            Form {
                Section(header: Text("Contacts")
                    .font(.subheadline)) {
                        Button("Contact 1") {
                            test()
                        }
                        .foregroundColor(.blue)

                        Button("Contact 2") {
                            test()
                        }
                        .foregroundColor(.blue)

                        Button("Emergency Contact") {
                            test()
                        }
                        .foregroundColor(.red)
                }
                Section(header: Text("Encryption")
                    .font(.subheadline)) {
                        Picker(selection: $selectedEncryptionLevel, label: Text("Encryption Level")) {
                            Text("Low (Hex)").tag(1)
                            Text("High (AES)").tag(2)
                        }
                }
            }
            Button(action: {
                // Code to execute when the button is tapped
                
            }) {
                Text("New Chat")
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

func test(){
    
}
