//
//  ViewController.swift
//  colorPickerUsingSlider
//
//  Created by Yahya Emad on 20/04/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        showColorOutput()
    }
    
    @IBAction func showColorOutput(){
        
        if colorView == nil || redSlider == nil || greenSlider == nil || blueSlider == nil{
            return
        }
        
        //MARK: - Testing the isContinuous property for sliders which takes the value of slider only when the thumb is released
        redSlider.isContinuous = false
        greenSlider.isContinuous = false
        blueSlider.isContinuous = false
        
        let r:CGFloat = CGFloat(redSlider.value)
        let b:CGFloat = CGFloat(blueSlider.value)
        let g:CGFloat = CGFloat(greenSlider.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }


}

