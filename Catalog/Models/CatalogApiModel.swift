//
//  CatalogApiModel.swift
//  yourProjectName
//
//  Created by Sofi on 04.12.2023.
//

import Foundation

struct CatalogApiModel: Codable {
    let calculations: [Calculation]

    struct Calculation: Codable {
        let calculationId: Int
        let calculationName: String
        let calculationDescription: String
        let calculationStatus: String
        let fullUrl: String

        private enum CodingKeys: String, CodingKey {
            case calculationId = "calculation_id"
            case calculationName = "calculation_name"
            case calculationDescription = "calculation_description"
            case calculationStatus = "calculation_status"
            case fullUrl = "full_url"
        }
    }
}
