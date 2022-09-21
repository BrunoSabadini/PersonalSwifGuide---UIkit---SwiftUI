//
//  ContentView.swift
//  PersonalSwifGuide - UIkit - SwiftUI
//
//  Created by Bruno Sabadini on 21/09/22.
//

import SwiftUI

struct ContentView: View {
  
  @Environment(\.managedObjectContext) var moc
  @FetchRequest(sortDescriptors: []) var students: FetchedResults<Student>
  
  var body: some View {
    List {
      ForEach(students) { student in
        Text(student.name ?? "Unknown")
      }  .onDelete(perform: deleteBooks)
      Button("Add"){
        let name = ["G","a","vv"]
        let randomName = name.randomElement()!
        let student = Student(context: moc)
        student.id = UUID()
        student.name = "\(randomName)"
        
        try? moc.save()
      }
    }
  }
  func deleteBooks(at offsets: IndexSet) {
    for offset in offsets {
      let student = students[offset]
      moc.delete(student)
      
      try? moc.save()
    }
  }
}





struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
