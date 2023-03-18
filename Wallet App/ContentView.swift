//
//  ContentView.swift
//  Wallet App
//
//  Created by Sabir's MacBook on 3/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                HomeView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                ExpensesView()
                    .tabItem {
                        Image(systemName: "dollarsign.circle")
                        Text("Expenses")
                    }
                ChatView()
                    .tabItem {
                        Image(systemName: "message.circle")
                        Text("Chat")
                    }
                HistoryView()
                    .tabItem {
                        Image(systemName: "clock")
                        Text("History")
                    }
                SettingsView()
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
