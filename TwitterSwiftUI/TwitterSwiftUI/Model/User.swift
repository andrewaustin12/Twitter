//
//  User.swift
//  TwitterSwiftUI
//
//  Created by andrew austin on 3/12/23.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}
