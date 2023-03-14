//
//  UploadTweetViewModel.swift
//  TwitterSwiftUI
//
//  Created by andrew austin on 3/14/23.
//

import Foundation

class UploadTweetViewModel: ObservableObject {
    @Published var didUploadTweet = false
    
    let service = TweetService()
    
    func uploadTweet(withCaption caption: String) {
        service.uploadTweet(caption: caption) { success in
            if success {
                self.didUploadTweet = true
            } else {
                // show error message to user..
            }
        }
    }
}
