//
//  CatImageView.swift
//  catsViewer
//
//  Created by Ярослав Грогуль on 25.11.2022.
//

import UIKit

extension UIImageView {
    func loadFrom(URLAddress: String) {
        guard let url = URL(string: URLAddress) else {
            return self.image = UIImage(named: "defaultCat")
        }
        
        DispatchQueue.main.async { [weak self] in
            if let imageData = try? Data(contentsOf: url) {
                if let loadedImage = UIImage(data: imageData) {
                        self?.image = loadedImage
                    
                        if loadedImage.size.width > loadedImage.size.height {
                            // fit
                            self?.contentMode = .scaleAspectFill
                        } else {
                            // fill
                            self?.contentMode = .scaleAspectFill
                        }
                }
            }
        }
    }
}
