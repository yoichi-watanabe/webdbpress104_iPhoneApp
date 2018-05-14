//
//  ViewController.swift
//  TestApp
//
//  Created by Yoichi Watanabe on 2018/05/15.
//  Copyright © 2018年 Yoichi Watanabe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // ボタンの背景色を黒色に設定
        button.backgroundColor = .black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func buttonTapped(_ sender: Any) {
        print("Hello, world!")
        
        // Main.storyboardからSecondViewControllerを取得
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let storyboardID = "SecondViewController"
        let secondVC = storyboard.instantiateViewController(withIdentifier: storyboardID)
        
        // 別の画面へ遷移したことがわかりやすいよう、画面の背景色を青に変更
        secondVC.view.backgroundColor = .blue
        
        // SecondViewControllerへ画面遷移
        self.present(secondVC, animated: true)
    }
}

