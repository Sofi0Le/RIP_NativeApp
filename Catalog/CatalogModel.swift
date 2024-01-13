//
//  CatalogModel.swift
//  yourProjectName
//
//  Created by Sofi on 04.12.2023.
//

import Foundation

final class CatalogModel {
    private let catalogNetworkManager = CatalogService.shared
    
    func loadCatalog(with title: String? = nil,
                     completion: @escaping (Result<[CatalogUIModel], Error>) -> Void) {
        catalogNetworkManager.getCatalogData(with: title) { result in
            switch result {
            case .success(let data):
                let catalogUIModels = data.calculations.map { catalogApiModel in
                    return CatalogUIModel(calculationId: catalogApiModel.calculationId,
                                          calculationName: catalogApiModel.calculationName,
                                          calculationDescription: catalogApiModel.calculationDescription,
                                          calculationStatus: catalogApiModel.calculationStatus,
                                          fullUrl: catalogApiModel.fullUrl)
                }
                completion(.success(catalogUIModels))
            case .failure(let error):
                print(error)
            }
        }
    }
}
