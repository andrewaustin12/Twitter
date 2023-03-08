//
//  UsersRowView.swift
//  TwitterSwiftUI
//
//  Created by andrew austin on 3/8/23.
//

import SwiftUI

struct UsersRowView: View {
    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("joker")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                
                Text("Heath Ledger")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UsersRowView_Previews: PreviewProvider {
    static var previews: some View {
        UsersRowView()
    }
}
