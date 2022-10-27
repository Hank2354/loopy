//
//  ImageLoader.swift
//  Loopy
//
//  Created by Vladislav Mashkov on 28.10.2022.
//

import UIKit
import LEActivity

final class ImageLoader {
    
    typealias imageViewPresetClosure = ((UIImageView) -> Void)
    
    enum LoaderOptions {
        case backgroundColor(UIColor)
        case alpha(CGFloat)
        case useLoadingIndicator(LEActivityStyle, LEActivitySize)
        case showWithAnimating(CGFloat)
    }
    
    static func loadImage(url: URL?, completion: @escaping(_ image: UIImage?) -> ()) {
        guard let url = url else { completion(nil); return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            DispatchQueue.main.async {
                if let data = data, let image = UIImage(data: data) {
                    completion(image)
                } else {
                    completion(nil)
                }
            }
        }.resume()
    }
    
    static func loadImage(to imageView: UIImageView, url: URL?, options: [LoaderOptions]? = nil) {
        var animDur: CGFloat?
        var closures = [imageViewPresetClosure]()
        if let options {
            options.forEach {
                switch $0 {
                case .backgroundColor(let color):
                    imageView.backgroundColor = color
                case .alpha(let alpha):
                    imageView.alpha = alpha
                    closures.append { imageView in
                        imageView.alpha = 1
                    }
                case .useLoadingIndicator(let indicatorStyle, let size):
                    let colorSet = LEActivityColorSet(mainColor: ColorConfig.accentOrange,
                                                      secondMainColor: ColorConfig.lightLavender)
                    let loader = LEActivityIndicatorView(style: indicatorStyle,
                                                         size: size,
                                                         colorSet: colorSet)
                    imageView.addSubview(loader)
                    loader.centerXAnchor.constraint(equalTo: imageView.centerXAnchor).isActive = true
                    loader.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
                    loader.showActivityIndicator()
                    
                    closures.append { imageView in
                        loader.hideActivityIndicator()
                        loader.removeFromSuperview()
                    }
                case .showWithAnimating(let dur):
                    animDur = dur
                }
            }
        }
        
        loadImage(url: url) { image in
            if let animDur {
                UIView.transition(with: imageView,
                                  duration: animDur,
                                  options: .transitionCrossDissolve,
                                  animations: { imageView.image = image },
                                  completion: nil)
            } else { imageView.image = image }
            
            closures.forEach { $0(imageView) }
        }
    }
}
