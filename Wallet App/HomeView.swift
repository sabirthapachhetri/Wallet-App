//
//  HomeView.swift
//  Wallet App
//
//  Created by Sabir's MacBook on 3/9/23.
//

import SwiftUI

struct HomeView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            
            //HEADER
            HStack {
                Text("Your Wallet")
                    .font(.system(size: 20, weight: .bold))
                
                Spacer()
                
                Image("memoji")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
            }

            // SEARCH BAR
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.gray)
                
                TextField("Search", text: $searchText)
            }
            .padding(15)
            .background(Color(.systemGray5))
            .cornerRadius(8)
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
