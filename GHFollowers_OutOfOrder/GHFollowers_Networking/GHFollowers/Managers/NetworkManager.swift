//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by YB on 3/11/24.
//  Copyright © 2024 Sean Allen. All rights reserved.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    
    let baseURL = "https://api.github.com/users/"
    
    private init(){ }
    
    func getFollowers(for username: String, page: Int, completed: @escaping ([Follower]?, String?) -> Void) {
        let endpoint = baseURL + username + "/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(nil, "This username created an invalid request. Please try again.")
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error {
                completed(nil, "Unable to complete your request. Please try again.")
                return
            }
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(nil, "Invalid response from server. Please try again.")
                return
            }
            
            guard let data = data else {
                completed(nil, "Data was corrupted in transaction. Please try again.")
                return
            }
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            do {
                let decodedData = try decoder.decode([Follower].self, from: data)
                completed(decodedData, nil)
                return
            } catch {
                completed(nil, "JSON decoding was corrupted. Please check your mapping.")
                return
            }
        }
        task.resume()
    }
    
    
}
