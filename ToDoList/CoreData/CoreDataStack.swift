//
//  CoreDataStack.swift
//  ToDoList
//
//  Created by Tirthrajsinh Chauhan on 2018-12-06.
//  Copyright © 2018 CentennialCollege. All rights reserved.
//


import Foundation
import CoreData

class CoreDataStack {
    var container: NSPersistentContainer {
        let container = NSPersistentContainer(name: "Todos")
        container.loadPersistentStores { (description, error) in
            guard error == nil else {
                print("Error: \(error!)")
                return
            }
        }
        
        return container
    }
    
    var managedContext: NSManagedObjectContext {
        return container.viewContext
    }
}
