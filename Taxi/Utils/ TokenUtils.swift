//
//   TokenUtils.swift
//  Taxi
//
//  Created by Shokhrukh Egamov on 03.01.2022.
//

import Foundation
import Security
import Alamofire

class TokenUtils {
    static func create(_ service: String, account: String, value: String) {
     
        let keyChainQuery: NSDictionary = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrService: service,
            kSecAttrAccount: account,
            kSecValueData: value.data(using: .utf8, allowLossyConversion: false)!
        ]
        
        SecItemDelete(keyChainQuery)
        
     
        let status: OSStatus = SecItemAdd(keyChainQuery, nil)
        assert(status == noErr, "")
    }
    
    static func read(_ service: String, account: String) -> String? {
        let keyChainQuery: NSDictionary = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrService: service,
            kSecAttrAccount: account,
            kSecReturnData: kCFBooleanTrue,
            kSecMatchLimit: kSecMatchLimitOne
        ]
        
        var dataTypeRef: AnyObject?
        let status = SecItemCopyMatching(keyChainQuery, &dataTypeRef)
        
        if(status == errSecSuccess) {
            let retrievedData = dataTypeRef as! Data
            let value = String(data: retrievedData, encoding: String.Encoding.utf8)
            return value
        }else {
            print(" status code = \(status)")
            return nil
        }
    }
    
    static func delete(_ service: String, account: String) {
        let keyChainQuery: NSDictionary = [
            kSecClass: kSecClassGenericPassword,
            kSecAttrService: service,
            kSecAttrAccount: account
        ]
        let status = SecItemDelete(keyChainQuery)
        assert(status == noErr, " status code = \(status)")
    }
    
    //HTTPHeaders
    static func getToken(serviceID: String) -> String? {
        let serviceID = serviceID
        
        if let token = self.read(serviceID, account: "token") {
            return "Bearer \(token)"
        }else {
            return nil
        }
    }
}
