//
//  Quote.swift
//  Pensamentos
//
//  Created by Kyrllan Nogueira on 25/05/19.
//  Copyright © 2019 Kyrllan Nogueira. All rights reserved.
//

import Foundation

struct Quote: Codable /*Encodable, Decodable*/ {
    
    let quote: String
    let author: String
    let image: String
    
    var quoteFormatted: String {
        return " ‟" + quote + "” "
    }
    
    var authorFormatted: String {
        return "- " + author + " -"        
    }
}
