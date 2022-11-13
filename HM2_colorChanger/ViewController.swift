//
//  ViewController.swift
//  HM2_colorChanger
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLable: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorView.layer.cornerRadius = 15
        
        setColor()
        
        setValue(for: redLabel, greenLabel, blueLable)
    }
    
    // MARK: - Actions
    
    @IBAction func RGBSliderAction(_ sender: UISlider) {
        
        setColor()
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLable.text = String(format: "%.2f", blueSlider.value)
    }
    
    private func setColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
    
    private func setValue(for labels: UILabel...) {
        labels.forEach { label in
            switch label {
            case redLabel:
                redLabel.text = string(slider: redSlider)
            case greenLabel:
                greenLabel.text = string(slider: greenSlider)
            default:
                blueLable.text = string(slider: blueSlider)
            }
        }
    }
    
    private func string(slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}
