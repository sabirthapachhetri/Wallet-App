//
//  Transactions.swift
//  Wallet App
//
//  Created by Sabir's MacBook on 3/18/23.
//

import SwiftUI

struct Transactions: View {
    var body: some View {
        HStack {
            Image("deposit")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
                .clipShape(Circle())
                .padding(.trailing, 10)
            
            VStack(alignment: .leading) {
                Text("Salary")
                    .font(.system(size: 20, weight: .medium))
                Text("Deposit")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Text("+$200.00")
                .font(.system(size: 20, weight: .medium))
                .foregroundColor(.green)
        }
    }
}

struct Transactions_Previews: PreviewProvider {
    static var previews: some View {
        Transactions()
    }
}
