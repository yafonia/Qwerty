//
//  KeyboardDataController.swift
//  QwertyKeyboard
//
//  Created by Jessi Febria on 07/04/21.
//

import Foundation
import CoreData
import UIKit

class KeyboardDataController {
    
    // MARK: - Core Data Setting
       lazy var persistentContainer: NSPersistentContainer = {
           let container = NSCustomPersistentContainer(name: "Qwerty")
           
           container.loadPersistentStores(completionHandler: { (storeDescription, error) in
               if let error = error as NSError? {
                   fatalError("Unresolved error \(error), \(error.userInfo)")
               }
           })
           return container
       }()

    //MARK: Controller
    
    func isKataKotor(_ kata : String) -> Bool {
        
        let context = persistentContainer.viewContext
        let request : NSFetchRequest<KataKotor> = KataKotor.fetchRequest()
        var rowCount = 0
        
        request.predicate = NSPredicate(format: "kata MATCHES[cd] %@", kata)
        
        do {
           rowCount = try context.count(for: request)
        } catch  {
            print("Error checking row count \(error)")
        }
        
        return rowCount == 0 ? false : true
    }
    

    func saveHistory (kalimat : String, kataKotor : String, platform : String) {
        
        let context = persistentContainer.viewContext
        let newHistory = History(context: context)
        newHistory.kalimat = kalimat
        newHistory.kataKotor = kataKotor
        newHistory.platform = platform
        newHistory.waktu = Date()
        
        saveChanges(context)
    }
    
    func saveKataKotor(_ listKataKotor : [String]){
        let context = persistentContainer.viewContext
        
        for kata in listKataKotor {
            let newKataKotor = KataKotor(context: context)
            newKataKotor.kata = kata
            saveChanges(context)
        }
        
    }
    
    
    func saveChanges(_ context : NSManagedObjectContext){
        if context.hasChanges {
            do {
                try context.save()
            } catch {
                
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
    
    
    
}
