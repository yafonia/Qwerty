//
//  KataKotorController.swift
//  Qwerty
//
//  Created by Jessi Febria on 08/04/21.
//

import CoreData
import UIKit

class KataKotorService {
    
    let historyService = HistoryService()
    let contextService = ContextService()
    
    func getAllKataKotor() -> [KataKotor]{
        let request : NSFetchRequest<KataKotor> = KataKotor.fetchRequest()
        return contextService.loadKataKotor(request)
    }
    
    func getUniqueKataKotor(filter : String) -> ( listKataKotor : [KataKotorRiwayat], countTotal : Int ){
        let request : NSFetchRequest<KataKotor> = KataKotor.fetchRequest()
        request.predicate = NSPredicate(format: "total > 0")
        let kataKotorArray : [KataKotor] = contextService.loadKataKotor(request)
        
        var result : [KataKotorRiwayat] = [KataKotorRiwayat]()
        var count = 0
    
        if filter == "All" {
            for kata in kataKotorArray {
                let newKata = KataKotorRiwayat(kata: kata.kata!, total: Int(kata.total))
                count += Int(kata.total)
                result.append(newKata)
            }
            return (result, count)
        }
        
        for kata in kataKotorArray {
            let countKata = historyService.getHistoryByKataKotor(kataKotor: kata.kata! , filter: filter).count
            if countKata > 0 {
                let newKata = KataKotorRiwayat(kata: kata.kata!, total: countKata)
                result.append(newKata)
                count += countKata
            }
        }
        
        return (result, count)
    }
    
    func deleteKataKotor(_ kataKotor : KataKotor){
        historyService.updateHistoryByKataKotor(kataKotor.kata!)
        contextService.deleteKataKotor(kataKotor)
        
    }
    
    func addKataKotor(_ kata : String){
        let newKataKotor = KataKotor(context: contextService.context)
        newKataKotor.kata = kata
        newKataKotor.total = 0
        
        contextService.saveChanges()
        
    }
    
    
    func minusTotalKataKotor(_ kalimat : String) {
        
        let kataArray = kalimat.components(separatedBy: " ")
        
        for i in 1...kataArray.count - 1 {
            var kata = kataArray[i]
            kata.remove(at: kata.index(before: kata.endIndex))
            
            let request : NSFetchRequest<KataKotor> = KataKotor.fetchRequest()
            
            request.predicate = NSPredicate(format: "kata MATCHES[cd] %@", kata)
            
            let kataObject = contextService.loadKataKotor(request)[0]
            let newTotal = kataObject.total - 1
            kataObject.setValue(newTotal, forKey: "total")
            contextService.saveChanges()
        }
    }
    
    
}
