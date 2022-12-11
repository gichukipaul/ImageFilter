//
//  ViewController.swift
//  ImageWorks
//
//  Created by user on 20/10/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ourImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = " Vawulence 🦁"
    }

    @IBAction func sepiaBtnTapped(_ sender: Any) {
        
        // Apply sepia Filter
        let image = UIImage(named: "ship")!
        let context  = CIContext(options: nil)
        if let filter = CIFilter(name: "CISepiaTone") {
            let workingImage = CIImage(image: image)
            filter.setValue(workingImage, forKey: kCIInputImageKey)
            filter.setValue(0.8, forKey: kCIInputIntensityKey)
            
            if let output = filter.outputImage {
                if let ciImg = context.createCGImage(output, from: output.extent) {
                    let chaNGEDiMAGE = UIImage(cgImage: ciImg)
                    ourImageView.image = chaNGEDiMAGE
                }
            }
                        
        }
    }
    
}

