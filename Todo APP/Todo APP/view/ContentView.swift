//
//  ContentView.swift
//  Todo APP
//
//  Created by mac on 20/04/21.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - Propertis
    
    @State private var showingAddTodoView: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            List(0..<5){data in
                Text("Hello WOrld")
            }//: LISt
            .navigationBarTitle("Todo",displayMode:.inline)
            .navigationBarItems(trailing:
                                    Button(action:{
                                        self.showingAddTodoView.toggle()
                                    }) {
                                        Image(systemName: "plus")
                                    }// add Button
                                    .sheet(isPresented: $showingAddTodoView) {
                                        AddTodoView()
                                    }
            )
        }// : Navigation
    }
}


    //MARK: - PRiview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
