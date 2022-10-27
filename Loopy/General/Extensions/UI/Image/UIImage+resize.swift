//
//  UIImage+resize.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 28.10.2022.
//

import UIKit

extension UIImage {
    
    func resizeImage(_ targetSize: CGSize) -> UIImage {
        let size = self.size
        
        let widthRatio  = targetSize.width  / size.width
        let heightRatio = targetSize.height / size.height
        
        var newSize: CGSize
        
        if widthRatio > heightRatio {
            newSize = CGSize(width: size.width * heightRatio,
                             height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio,
                             height: size.height * widthRatio)
        }
        
        let rect = CGRect(origin: .zero, size: .init(width: newSize.width,
                                                     height: newSize.height))
        
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        self.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
}
