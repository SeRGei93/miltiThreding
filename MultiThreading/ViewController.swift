//
//  ViewController.swift
//  MultiThreading
//
//  Created by Сергей Бушкевич on 6.07.21.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {
    
    var imageVC: ImageViewController?
    let imgPath = "https://thumb.tildacdn.com/tild6332-3265-4436-a636-323461643033/-/cover/720x720/center/center/-/format/webp/noroot.png"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "image")
    }

    @IBAction func loadImage(_ sender: Any) {
        guard let vc = imageVC else { return }
        _ = vc.view
        /*
        DispatchQueue.global(qos: .background).sync {
            if let imageUrl = URL(string: self.imgPath),
               let imageData = try? Data(contentsOf: imageUrl){
                let image = UIImage(data: imageData)
                DispatchQueue.main.async {
                    vc.imageContainer.image = image
                }
            }
        }*/
        
        vc.imageContainer.sd_setImage(with: URL(string: imgPath), completed: nil)


        
        navigationController?.show(vc, sender: nil)
    }
    
}

