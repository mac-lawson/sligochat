//
//  chatInterface.swift
//  sligochat
//
//  Created by Mac Lawson on 5/19/23.
//  GPLv3
//

import SwiftUI

struct chatInterface: View {
    var lastClickedContact: String? // Receive the last clicked contact as a parameter
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var messageText = "Message..."
    @State private var displayedText = ""
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "phone.fill")
                    .font(.title)
                    .foregroundColor(.blue)
                
                Spacer()
                
                Text("\(lastClickedContact ?? "")") // Display the last clicked contact
                    
                    .font(.title)
                    .fontWeight(.heavy)
                
                Spacer()
                
                Image(systemName: "video.fill")
                    .font(.title)
                    .foregroundColor(.blue)
            }
            .padding(.horizontal)
            
            ScrollView {
                VStack(alignment: .leading, spacing: 10) {
                    ForEach(displayedText.components(separatedBy: "\n"), id: \.self) { textLine in
                        HStack {
                            Spacer()
                            Text(textLine)
                                .padding(10)
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                }
            }
            
            HStack {
                TextField("Message", text: $messageText)
                
                Button(action: {
                    displayedText += "\n" + messageText
                    messageText = ""
                }) {
                    Image(systemName: "paperplane.fill")
                        .font(.title)
                        .foregroundColor(.blue)
                }
            }
            .padding(.horizontal)
            
            Spacer()
            
            Button(action: {
                presentationMode.wrappedValue.dismiss()
            }) {
                Text("Contacts")
                    .font(.headline)
                    .foregroundColor(.blue)
            }
            .padding(.bottom, 20)
        }
        .padding()
        .navigationBarHidden(true)
    }
}




struct chatInterface_Previews: PreviewProvider {
    static var previews: some View {
        chatInterface()
    }
}
