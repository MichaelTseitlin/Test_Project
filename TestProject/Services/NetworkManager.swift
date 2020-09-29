//
//  NetworkManager.swift
//  TestProject
//
//  Created by Michael Tseitlin on 28.09.2020.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    
    func getImage(completion: @escaping (Result<Cat, Error>) -> Void) {
        
        guard let url = URL(string: "https://aws.random.cat/meow") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil else {
                completion(.failure(error!))
                return
            }
            
            guard let data = data else { return }
            
            do {
                let json = try JSONDecoder().decode(Cat.self, from: data)
                completion(.success(json))
            } catch let error {
                completion(.failure(error))
            }
           
        }.resume()
    }
}
