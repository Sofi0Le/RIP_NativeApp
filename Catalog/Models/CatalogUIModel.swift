//
//  CatalogUIModel.swift
//  lab7_rip
//
//  Created by Sofi on 15.12.2023.
//

import Foundation

struct CatalogUIModel {
    let calculationId: Int
    let calculationName: String
    let calculationDescription: String
    let calculationStatus: String
    let fullUrl: String
    
    init(calculationId: Int = 0,
         calculationName: String = "",
         calculationDescription: String = "",
         calculationStatus: String = "",
         fullUrl: String = "") {
        self.calculationId = calculationId
        self.calculationName = calculationName
        self.calculationDescription = calculationDescription
        self.calculationStatus = calculationStatus
        self.fullUrl = fullUrl
    }
}
