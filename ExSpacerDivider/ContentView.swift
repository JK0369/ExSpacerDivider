//
//  ContentView.swift
//  ExSpacerDivider
//
//  Created by 김종권 on 2022/08/21.
//

import SwiftUI

struct MyModel: Identifiable {
  let name: String
  var id: String { self.name }
}

struct ContentView: View {
  let models = [
    MyModel(name: "1"),
    .init(name: "2"),
    .init(name: "3"),
    .init(name: "4"),
    .init(name: "5"),
    .init(name: "6"),
    .init(name: "7")
  ]
  
  var body: some View {
    VStack {
      List {
        ForEach(models) { model in
          ChecklistRow(name: model.name)
        }
      }
      .frame(maxHeight: 300)
      
      Text("Some Text1")
      Divider()
        .frame(width: 200)
        .background(.blue)
      Text("Some Text2")
      
      HStack {
        Text("Some Text3")
        Divider()
        Text("Some Text4")
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct ChecklistRow: View {
  let name: String
  
  var body: some View {
    HStack {
      Spacer() // <-
      Image(systemName: "checkmark")
      Text(name)
      Spacer() // <-
    }
    .border(Color.blue)
  }
}
