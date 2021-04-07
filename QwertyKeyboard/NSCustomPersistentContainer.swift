//
//  NSCustomPersistantContainer.swift
//  Qwerty
//
//  Created by Jessi Febria on 07/04/21.
//
import UIKit
import CoreData

class NSCustomPersistentContainer: NSPersistentContainer {
    
    override open class func defaultDirectoryURL() -> URL {
        var storeURL = FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: "com.jessifebria.Qwerty")
        storeURL = storeURL?.appendingPathComponent("Qwerty.sqlite")
        
        print(storeURL!)
        return storeURL!
    }

}
