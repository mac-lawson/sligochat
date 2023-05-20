//
//  sligoComms.swift
//  sligochat
//
//  Created by Mac Lawson on 5/19/23.
//

import Foundation

struct sligoAccounts {
    var id: Int64;
    var phoneNumber: String;
    
    /*
     
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
