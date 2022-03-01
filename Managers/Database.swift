//
//  Database.swift
//  Timeline
//
//  Created by Si Chen on 2022-01-03.
//

import Foundation
import FirebaseFirestore

final class DatabaseManager {
    static let shared = DatabaseManager()
    
    private let database = Firestore.firestore()
    
    private init() {}
    
    public func insert(
        annoncementPost: AnnoncementPost,
        user: User,
        completion: @escaping (Bool) -> Void
    ){
        
    }
    
    public func getAllPosts(
        completion: @escaping ([AnnoncementPost]) -> Void
    ){
        
    }
    
    public func getSelectivePosts(
        for user: User,
        completion: @escaping ([AnnoncementPost]) -> Void
    ){
        
    }
    
    public func insert(
        user: User,
        completion: @escaping (Bool) -> Void
    ){
        let documentId = user.email
            .replacingOccurrences(of: ".", with: "_")
            .replacingOccurrences(of: "@", with: "_")
        
        let data = [
            "email": user.email,
            "name": user.name
        ]
        
        
        database
            .collection("Users")
            .document(documentId)
            .setData(data) { error in
                completion(error == nil)
            }
    }
}
