//
//  ViewController.swift
//  Part6
//
//  Created by 葡萄酒 on 2021/08/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slider.value = slider.maximumValue / 2

        resultLabel.text = String(Int.random(in: 1...100))
    }

    @IBAction private func resultButton(_ sender: UIButton) {
        
        let sliderValue = Int(slider.value)
        
        if sliderValue == Int(resultLabel.text!) {
            let message = "あたり！\nあなたの値：\(sliderValue)"
            displayAlert(message)
        } else {
            let message = "はずれ！\nあなたの値：\(sliderValue)"
            displayAlert(message)
        }

        slider.value = slider.maximumValue / 2

        resultLabel.text = String(Int.random(in: 1...100))
    }
    
    //アラート表示用関数
    private func displayAlert(_ message: String) {
          
          //アラート作成
          let alert = UIAlertController(title: "結果", message: message, preferredStyle: .alert)
          
          //ボタンの作成、追加
          let button = UIAlertAction(title: "再挑戦", style: .default, handler: nil)
          alert.addAction(button)
          
          //アラートの表示
          present(alert, animated: true, completion: nil)
      }
    
}

