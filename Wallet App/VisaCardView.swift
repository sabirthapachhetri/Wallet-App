//
//  VisaCardView.swift
//  Wallet App
//
//  Created by Sabir's MacBook on 3/10/23.
//

import SwiftUI

struct VisaCardView: View {
    
    let cardNumber = "1234567890127215"
    
    // Compund property to mask card number
    var maskedCardNumber: String {
        let index = cardNumber.index(cardNumber.startIndex, offsetBy: 12)
        let maskedString = String(repeating: "*", count: 12)
        
        let spacedString = maskedString.enumerated().reduce("") { (result, pair) in
            let (i, c) = pair
            if i % 4 == 0 && i > 0 {
                return result + " " + String(c)
            } else {
                return result + String(c)
            }
        }
        
        return spacedString + " " + String(cardNumber[index...])
    }
    
    var body: some View {
            ZStack {
                Image("visaCard")
                    .resizable()
                    .frame(width: 270, height: 170)
                
                VStack(alignment: .leading, spacing: 35) {
                    Text("VISA")
                        .font(.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                    
                    Text(maskedCardNumber)
                        .font(.system(size: 15, weight: .bold))
                        .foregroundColor(.white)
                    
                    Text("04/25")
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(.white)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 15)
            }
        }
    }

struct VisaCardView_Previews: PreviewProvider {
    static var previews: some View {
        VisaCardView()
            .previewLayout(.fixed(width: 270, height: 170))
    }
}
