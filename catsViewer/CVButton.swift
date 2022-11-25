//
//  CVButton.swift
//  catsViewer
//
//  Created by Ярослав Грогуль on 24.11.2022.
//

import UIKit

class CVButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(bgColor: UIColor, fontColor : UIColor, title : String, systemImageName: String) {
        super.init(frame: .zero)
        
        configuration = .filled()
        configuration?.title = title
        configuration?.baseForegroundColor = fontColor
        configuration?.baseBackgroundColor = bgColor
        configuration?.cornerStyle = .medium
        translatesAutoresizingMaskIntoConstraints = false // Use Auto-layout
        
        configuration?.image = UIImage(systemName: systemImageName)
        configuration?.imagePadding = 4
        configuration?.imagePlacement = .trailing
    }
    

}
