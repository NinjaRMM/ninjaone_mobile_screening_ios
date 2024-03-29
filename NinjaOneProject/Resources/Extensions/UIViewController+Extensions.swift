//
//  UIViewController+Extensions.swift
//  NinjaOneProject
//
//

import UIKit

extension UIViewController {
    func alert(title: String, message: String, completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
            alert.dismiss(animated: true)
            completion?()
        }))
        self.present(alert, animated: true)
    }
}
