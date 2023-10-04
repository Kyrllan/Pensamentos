//
//  QuotesManager.swift
//  Pensamentos
//
//  Created by Kyrllan Nogueira on 25/05/19.
//  Copyright © 2019 Kyrllan Nogueira. All rights reserved.
//

import Foundation

class QuotesManager  {
    
    let quotes: [Quote]
    
    init() {
        let fileURL = Bundle.main.url(forResource: "quotes", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileURL)
        let jsonDecoder = JSONDecoder()
        quotes = try! jsonDecoder.decode([Quote].self, from: jsonData)
    }
    
    func getRandomQuote() -> Quote {
        let index = Int(arc4random_uniform(UInt32(quotes.count)))
        return quotes[index]
        
    }
}
