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
            
            // HEADER
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
            .padding(.bottom, 20)

            // BALANCE
            VStack(alignment: .leading) {
                HStack {
                    Text("Balance")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.gray)
                    
                    Spacer()
                }
                .padding(.bottom, -5)
                // Actual Balance
                Text("24023.65")
                    .font(.system(size: 30, weight: .heavy))
            }
            
            // CARD VIEW
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    MasterCardView()
                    Spacer().frame(width: 25)
                    VisaCardView()
                    
                }                
            }
            .padding(.bottom, 20)

                HStack {
                    Text("Transactions")
                        .font(.system(size: 30, weight: .heavy))
                    Spacer()
                    Image("transactions")
                }
            
            ScrollView(.vertical, showsIndicators: false) {
                    VStack(spacing: 20) {
                        ForEach(1...5, id: \.self) { index in
                            Transactions()
                                .frame(height: 50)
                        }
                    }
            }
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
