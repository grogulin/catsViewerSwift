//
//  CatsViewerVC.swift
//  catsViewer
//
//  Created by Ярослав Грогуль on 24.11.2022.
//

import UIKit

class CatsViewerVC: UIViewController {
    
    let reloadButton = CVButton(bgColor: .systemRed, fontColor: .white, title: "Reload Image", systemImageName: "arrow.clockwise.circle")
    let catImageView = UIImageView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .brown
        configureUI()
        

        // Do any additional setup after loading the view.
    }
    
    func configureUI() {
        configureCatImage()
        configureReloadButton()
    }
    
    func configureCatImage() {
        view.addSubview(catImageView)
        
        catImageView.translatesAutoresizingMaskIntoConstraints = false
        
        
//        let catImage = UIImage(named: "defaultCat")
        
//        catImageView.image = catImage
        
        
//        let catImage = catImageView.image
        updateCatImage()
    
        
        
        
        NSLayoutConstraint.activate([
            catImageView.widthAnchor.constraint(equalToConstant: 150),
            catImageView.heightAnchor.constraint(equalToConstant: 600),
            catImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            catImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100)
        ])
    }
    
    @objc func updateCatImage() {
        catImageView.loadFrom(URLAddress: "https://cataas.com/cat")
    }
    
    
    
    func configureReloadButton() {
        view.addSubview(reloadButton)
        
        reloadButton.addTarget(self, action: #selector(updateCatImage), for: .touchUpInside)
        
        
        reloadButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            reloadButton.widthAnchor.constraint(equalToConstant: 300),
            reloadButton.heightAnchor.constraint(equalToConstant: 50),
            reloadButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            reloadButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
        ])
    }
    
}
