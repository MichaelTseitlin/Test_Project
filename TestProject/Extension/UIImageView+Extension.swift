//
//  UIImageView+Extension.swift
//  TestProject
//
//  Created by Michael Tseitlin on 28.09.2020.
//

import UIKit

extension UIImageView {
    func load(url: URL) {
        if let data = try? Data(contentsOf: url) {
            if let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    self.image = image
                }
            }
        }
    }
}
