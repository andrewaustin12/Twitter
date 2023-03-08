//
//  UserStatsView.swift
//  TwitterSwiftUI
//
//  Created by andrew austin on 3/8/23.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 4) {
            HStack{
                Text("887")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text("Following")
                    .font(.caption)
                    .bold()
            }
            HStack{
                Text("6.9M")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text("Followers")
                    .font(.caption)
                    .bold()
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
