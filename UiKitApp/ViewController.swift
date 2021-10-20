//
//  ViewController.swift
//  UiKitApp
//
//  Created by Vlad Zavada on 20.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var viewRgb: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    var startRedValue = 1
    var startGreenValue = 1
    var startBlueValue = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        
        redSlider.minimumValue = 1
        redSlider.maximumValue = 255
        greenSlider.minimumValue = 1
        greenSlider.maximumValue = 255
        blueSlider.minimumValue = 1
        blueSlider.maximumValue = 255
        

        
        viewRgb.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }
    func rgbChange ()
    { viewRgb.backgroundColor = UIColor(red: CGFloat(startRedValue)/255, green:CGFloat(startGreenValue)/255, blue: CGFloat(startBlueValue)/255, alpha: 1)
    }
    
// MARK: rgb view
    @IBOutlet var vievRgbAction: UIView!
   
    
    // MARK: Sliders
    @IBAction func redSliderAction(_ sender: Any) {
        redLabel.text = String("Red:  \(Int(redSlider.value))")
        startRedValue = Int(redSlider.value)
        
        rgbChange()
        
    }
    
    @IBAction func greenSlider(_ sender: Any) {
        greenLabel.text = String("Green:  \(Int(greenSlider.value))")
        startBlueValue = Int(greenSlider.value)
        rgbChange()
    }
    
    @IBAction func blueSliderAction(_ sender: Any) {
        blueLabel.text = String("Blue:  \(Int(blueSlider.value))")
        startGreenValue = Int(blueSlider.value)
        rgbChange()
    }
    
}

