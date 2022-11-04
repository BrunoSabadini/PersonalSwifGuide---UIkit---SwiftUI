//
//  PersonalSwifGuide___UIkit___SwiftUIApp.swift
//  PersonalSwifGuide - UIkit - SwiftUI
//
//  Created by Bruno Sabadini on 21/09/22.
//

import SwiftUI

@main
struct PersonalSwifGuide___UIkit___SwiftUIApp: App {
  @StateObject private var dataController = DataController()
  
    var body: some Scene {
        WindowGroup {
          DollarAPI()
            .environment(\.managedObjectContext, dataController.container.viewContext)
              }
        }
    }
