//
//  DataController.swift
//  PersonalSwifGuide - UIkit - SwiftUI
//
//  Created by Bruno Sabadini on 21/09/22.
//

import CoreData
import Foundation

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "DataModelExample")  //Loading and saving in the device

    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
