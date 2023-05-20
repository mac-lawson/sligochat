//
//  ContentView.swift
//  sligochat
//
//  Created by Mac Lawson on 5/19/23.
//

import SwiftUI

struct ContentView: View {
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
                        Button("Contact 2") {
                            test()
                        }
                        Button("Contact 3") {
                            test()
                        }
                }
                Section(header: Text("Encryption")
                    .font(.subheadline)) {
                        Picker(selection: .constant(1), label: Text("Encryption Level")) {
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
