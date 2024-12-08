//
//  TweetFilterViewModel.swift
//  TwitterSwiftUI
//
//  Created by serhat on 5.12.2024.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets:
            "Tweets"
        case .replies:
            "Replies"
        case .likes:
            "Likes"
        }
    }
}
