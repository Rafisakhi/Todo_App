//
//  AddTodoView.swift
//  Todo APP
//
//  Created by mac on 20/04/21.
//

import SwiftUI

struct AddTodoView: View {
    // MARK: - Popertis
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var name: String = ""
    @State private var priority: String = "Normal"
    
    let priorities = ["high", "Normal", "Low" ]
    
    // MARK: - Body
    var body: some View {
        NavigationView{
            VStack{
                Form{
                    //Mark - TODO name
                    TextField("Todo", text:$name )
                
                    //Mark - Todo priority
                    Picker("Priority", selection: $priority) {
                        ForEach(priorities, id: \.self ){
                             Text($0)
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    
                    //Mark - Save Button
                    Button(action: {
                        print("Save a new Todo item..")
                    }) {
                        Text("save")
                    }// save Button
                    
                    
                }//Form
                Spacer()
            }//VStack
            .navigationBarTitle("Todo List",displayMode:.inline)
            
            .navigationBarItems(trailing:
                                    Button(action: {
                                        self.presentationMode.wrappedValue.dismiss()
                                    }) {
                                        Image(systemName: "xmark")
                                    }
            )
        }// Nagigation
    }
}


    // MARK: - Priview

struct AddTodoView_Previews: PreviewProvider {
    static var previews: some View {
        AddTodoView()
    }
}
