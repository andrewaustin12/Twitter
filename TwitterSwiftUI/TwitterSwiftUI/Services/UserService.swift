//
//  UserService.swift
//  TwitterSwiftUI
//
//  Created by andrew austin on 3/11/23.
//

import Firebase
import FirebaseStorage
import FirebaseAuth

struct UserService {
    
    func fetchUser(withUid uid: String, completion: @escaping(User) -> Void) {
        print("DEBUG: fetch user Info..")
        Firestore.firestore().collection("users")
            .document(uid)
            .getDocument { snapshot, _ in
                guard let snapshot = snapshot else { return }

                guard let user = try? snapshot.data(as: User.self) else { return }
                completion(user)
                
                print("DEBUG: Username is \(user.username)")
                print("DEBUG: Email is \(user.email)")
            }
    }
}