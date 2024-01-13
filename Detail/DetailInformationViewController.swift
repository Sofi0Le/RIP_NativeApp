//
//  DetailInformationViewController.swift
//  yourProjectName
//
//  Created by Sofi on 11.12.2023.
//

import UIKit

class DetailInformationViewController: UIViewController {
    private let  titleLabel: UILabel = UILabel()
    private let  descriptionaLabel: UILabel = UILabel()
    private let photoImageView = CustomImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        [photoImageView,descriptionaLabel,titleLabel].forEach {
            view.addSubview($0)
        }
        
        setVisualAppearance()
        setupImage()
        setDescriptionLabel()
        setTitleLabel()
    }
}

//MARK: - methods
extension DetailInformationViewController {
    func datailConfigure(with model: CatalogUIModel) {
        print(model.calculationName)
        guard let photoUrl = URL(string: model.fullUrl) else {
            return
        }

        photoImageView.loadImage(with: photoUrl)
        titleLabel.text = model.calculationName
        descriptionaLabel.text = model.calculationDescription
    }
}


//MARK: - private methods
private extension DetailInformationViewController {
    func setVisualAppearance() {
        photoImageView.contentMode = .scaleAspectFit // обрезаем фото
        photoImageView.clipsToBounds = true
        [descriptionaLabel, titleLabel].forEach {
            $0.numberOfLines = 0
            $0.font = UIFont(name: "Times New Roman", size: 20) // меняем шрифт
        }
    }
    
    func setTitleLabel() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        titleLabel.sizeToFit()
    }
    
    func setupImage() {
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        photoImageView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25).isActive = true
        photoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        photoImageView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
        photoImageView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8).isActive = true
    }
    
    
    
    func setDescriptionLabel() {
        descriptionaLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionaLabel.topAnchor.constraint(equalTo: photoImageView.bottomAnchor, constant: 50).isActive = true
        descriptionaLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        descriptionaLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        descriptionaLabel.sizeToFit()
    }
}
