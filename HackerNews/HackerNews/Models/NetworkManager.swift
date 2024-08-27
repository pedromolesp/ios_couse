//
//  File.swift
//  HackerNews
//
//  Created by Molina Espinosa, Pedro on 26/8/24.
//

import Foundation

class NetworkingManager: ObservableObject{
    @Published var post = [Post]()
    func fetchData(){
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page"){
            let sesion = URLSession(configuration: .default)
            let task = sesion.dataTask(with: url) {
                (data,response,error) in
                if(error == nil){
                    let decoder = JSONDecoder()
                    if let safeData = data{
                        do {
                            let results = try
                            decoder.decode(Results.self,from: safeData)
                            DispatchQueue.main.async {
                                self.post = results.hits
                            }
                        } catch{
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
