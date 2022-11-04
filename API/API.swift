//
//  API.swift
//  PersonalSwifGuide - UIkit - SwiftUI
//
//  Created by Bruno Sabadini on 02/11/22.
//

import SwiftUI


struct DollarAPI: View {
  
  @State private var results = Result(high: "Loading Dollar")
  
  func loadData() async {
    
    guard let url = URL(string: "https://economia.awesomeapi.com.br/json/last/USD-BRL,EUR-BRL") else {
      print("Invalid URL")
      return
    }
    
    do {
      let (data, _) = try await URLSession.shared.data(from: url)
      
      if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
        results = decodedResponse.USDBRL
      }
      
    }
    catch {
      print("Invalid data")
    }
    
  }
  
  
  var body: some View {
    VStack{
      VStack(alignment: .leading) {
        Text(results.high).bold()
          .font(.headline)
      }.task {
        await loadData()
      }
    }
  }
}


struct Response: Codable {
  var USDBRL: Result
}

struct Result: Codable {
  var high: String
}
