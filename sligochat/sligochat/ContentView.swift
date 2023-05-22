//
//  ContentView.swift
//  sligochat
//
//  Created by Mac Lawson on 5/19/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedEncryptionLevel = 1
    @State private var isNewChatActive = false // New state variable for navigation
    @State private var lastClickedContact: String = "Sligo Support" // Change to non-optional String
    @State private var showAddContactSheet = false // New state variable for showing the add contact sheet
    @State private var newContactUsername = "" // New state variable for storing the new contact username
    @State private var contacts = ["Contact 1", "Contact 2", "Emergency Contact", "Sligo Support"] // Array of contact names
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Sligo Chat")
                        .font(.title)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.leading)
                    
                    Spacer()
                    
                    Button(action: {
                        showAddContactSheet = true
                    }) {
                        Image(systemName: "plus")
                            .font(.title)
                            .foregroundColor(.blue)
                    }
                    .padding(.trailing)
                }
                
                Spacer()
                
                Form {
                    Section(header: Text("Contacts")
                        .font(.subheadline)) {
                            Picker(selection: $lastClickedContact, label: Text("Select Contact")) {
                                ForEach(contacts, id: \.self) { contact in
                                    Text(contact)
                                        .tag(contact)
                                }
                            }
                            .foregroundColor(.blue)
                            .pickerStyle(MenuPickerStyle())
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
                    isNewChatActive = true // Set the flag to activate navigation
                }) {
                    Text("New Chat")
                        .font(.title3)
                        .fontWeight(.light)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                .sheet(isPresented: $isNewChatActive) {
                    chatInterface(lastClickedContact: lastClickedContact)
                }
            }
            .padding()
            .navigationBarHidden(true)
        }
        .sheet(isPresented: $showAddContactSheet) {
            addContactSheet()
        }
    }
    
    private func addContact() {
        contacts.append(newContactUsername)
        newContactUsername = ""
        showAddContactSheet = false
    }
    
    @ViewBuilder
    private func addContactSheet() -> some View {
        VStack {
            TextField("Username", text: $newContactUsername)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Add") {
                addContact()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
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
