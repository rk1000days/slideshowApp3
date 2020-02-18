//
//  ViewController.swift
//  SlideshowApp3
//
//  Created by Apple on 2020/02/16.
//  Copyright © 2020 kazuhiro.kabashima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func onTapImage(_ sender: Any) {
        performSegue(withIdentifier: "result", sender: nil)
    }
    
    var timer: Timer!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let kakudaiViewController:KakudaiViewController = segue.destination as! KakudaiViewController
        kakudaiViewController.image = imageView.image
        timer?.invalidate()
            self.timer = nil
            play.setTitle("再生", for: UIControl.State())
            fwd.isEnabled = true
            back.isEnabled = true
    }
    
    var indexNum = 0
    
    
    
    let photoArray = [UIImage(named: "National Studium") ,UIImage(named: "Oita Dome") ,UIImage(named: "Kumamoto Studium")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let theImage = photoArray[0]
        imageView.image = theImage
    }
    
    //進む
    @IBOutlet weak var fwd: UIButton!
    @IBAction func fwdTap(_ sender: Any) {
        indexNum += 1
        if indexNum >= 3{
            indexNum = 0
        }        
        imageView.image = photoArray[indexNum]
    }
    
    //戻る
    @IBOutlet weak var back: UIButton!
    @IBAction func backTap(_ sender: Any) {
        indexNum -= 1
        if indexNum <= -1 {
            indexNum = 2
        }
        imageView.image = photoArray[indexNum]
    }
    //
    @objc func imagetimer(_ timer: Timer) {
        if self.indexNum == 2 {
            self.indexNum = 0
        } else {
            self.indexNum += 1
        }
        self.imageView.image = photoArray[indexNum]
    }
  
    //「再生／停止」ボタン
    @IBOutlet weak var play: UIButton!
    //「停止」ボタンを押す
    @IBAction func switchTap(_ sender: Any) {
        if self.timer != nil {
            self.timer.invalidate()
            self.timer = nil
            play.setTitle("再生", for: UIControl.State())
            fwd.isEnabled = true
            back.isEnabled = true
            
            //「再生」ボタンを押す
        }else{
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(imagetimer(_:)) , userInfo: nil, repeats: true)
            play.setTitle("停止", for: UIControl.State())
            fwd.isEnabled = false
            back.isEnabled = false
        }
        
        
    }
    @IBAction func unwind(_ segue:UIStoryboardSegue){
    }
}
