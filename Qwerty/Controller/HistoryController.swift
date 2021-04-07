//
//  HistoryController.swift
//  Qwerty
//
//  Created by Jessi Febria on 08/04/21.
//

import CoreData
import UIKit

class HistoryController {
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func getAllHistory() -> [History] {
        let request : NSFetchRequest<History> = History.fetchRequest()
        return loadHistory(request)
    }
    
    
    func loadHistory(_ request : NSFetchRequest<History>) -> [History]{
        
        do {
            return try context.fetch(request)
        } catch  {
            print("fail load item")
        }
        return []
    }
    
    
    
}
