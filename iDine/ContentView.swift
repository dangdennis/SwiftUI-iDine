//
//  ContentView.swift
//  iDine
//
//  Created by Dennis Dang on 9/20/19.
//  Copyright © 2019 Dennis Dang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    @EnvironmentObject var order: Order
    
    var body: some View {
            NavigationView {
                List {
                    ForEach(menu) { section in
                        Section(header: Text(section.name)) {
                            ForEach(section.items) { item in
                                ItemRow(item: item)
                            }
                        }
                    }
                }
                .navigationBarTitle("Dining in?")
                .listStyle(GroupedListStyle())
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
