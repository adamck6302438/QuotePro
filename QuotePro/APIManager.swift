//
//  APIManager.swift
//  QuotePro
//
//  Created by Frances ZiyiFan on 6/12/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

import UIKit

class APIManager: NSObject {
    
    var quote : Quote?
    var photo : Photo?

    func getQuote(){
        let url = URL(string: "http://api.forismatic.com/api/1.0/?method=getQuote&lang=en&format=json")!
        let request = NSMutableURLRequest(url: url)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request as URLRequest) { (data: Data?, response: URLResponse?, error: Error?) in
            
            guard let data = data else {
                print("no data returned from server \(String(describing: error?.localizedDescription))")
                return
            }
            
            guard let json = try? JSONSerialization.jsonObject(with: data, options: []) as! Dictionary<String,Any> else {
                print("data returned is not json, or not valid")
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                print("no response returned from server \(String(describing: error))")
                return
            }
            
            guard response.statusCode == 200 else {
                // handle error
                print("an error occurred \(String(describing: json["error"]))")
                return
            }
            
        }
        task.resume()
        
    }
    
    func getImage(){
        let url = URL(string: "http://lorempixel.com/200/300/")!
        let request = NSMutableURLRequest(url: url)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request as URLRequest) { (data: Data?, response: URLResponse?, error: Error?) in
            
            guard let data = data else {
                print("no data returned from server \(String(describing: error?.localizedDescription))")
                return
            }
            
            guard let json = try? JSONSerialization.jsonObject(with: data, options: []) as! Dictionary<String,Any> else {
                print("data returned is not json, or not valid")
                return
            }
            
            guard let response = response as? HTTPURLResponse else {
                print("no response returned from server \(String(describing: error))")
                return
            }
            
            guard response.statusCode == 200 else {
                // handle error
//                print("an error occurred \(String(describing: json["error"]))")
                return
            }
            
        }
        task.resume()
    }
}
