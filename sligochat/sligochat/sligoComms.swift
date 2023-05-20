//
//  sligoComms.swift
//  sligochat
//
//  Created by Mac Lawson on 5/19/23.
//

import Foundation
import SQLite3

struct sligoAccounts {
    var id: Int64;
    var phoneNumber: String;
    
    /*
     * Returns true if the user's ID indicates if it is a premium account
     */
    func isUserPremium(id: Int64) -> DarwinBoolean {
        if (id.leadingZeroBitCount == 0) {
            return true;
        }
        else {
            return false;
        }
    }
    
    func getUserContacts() -> [String] {
        
        return ["null", "null"];
    }
    
}

struct sligoMessaging {
    var id: Int64;
    
    func sendMessage() {
        
    }
    
    func getRecentMessages() -> [String] {
        
    }
    }
    
}

