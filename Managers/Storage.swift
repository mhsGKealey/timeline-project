//
//  Storage.swift
//  Timeline
//
//  Created by Si Chen on 2022-01-03.
//

import Foundation
import FirebaseStorage

final class StorageManager {
    static let shared = StorageManager()
    
    private let database = Storage.storage().reference()
    
    private init() {}
    
    public func uploadUserProfilePicture(
        email: String,
        image: UIImage?,
        completion: @escaping (Bool) -> Void
    ){
        
    }
    
    public func downloadUrlForProfilePicture(
        user: User,
        completion: @escaping (URL?) -> Void
    ){
        
    }
    
    public func uploadAnnoncementHeaderImage(
        annoncementPost: AnnoncementPost,
        image: UIImage?,
        completion: @escaping (Bool) -> Void
    ){
        
    }
    
    public func downloadUrlForPostHeader(
        annoncementPost: AnnoncementPost,
        completion: @escaping (URL?) -> Void
    ){
        
    }
}
