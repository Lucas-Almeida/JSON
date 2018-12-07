//
//  Modelo.swift
//  JsonManipulation
//
//  Created by Lucas Pinheiro Almeida on 07/12/2018.
//  Copyright © 2018 Lucas Pinheiro Almeida. All rights reserved.
//

import Foundation

struct Modelo: Decodable {
    let buy: Double
    let sell: Double
    let symbol: String
}
