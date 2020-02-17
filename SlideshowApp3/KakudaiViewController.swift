//
//  KakudaiViewController.swift
//  SlideshowApp3
//
//  Created by Apple on 2020/02/16.
//  Copyright © 2020 kazuhiro.kabashima. All rights reserved.
//

import UIKit

class KakudaiViewController: UIViewController {

    
    @IBOutlet weak var kakudaiImage: UIImageView!
    
    var image: UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        kakudaiImage.image = image!
    }
    
        //画像を拡大する
    //        let resize = CGSize(image.size.width*3.0,image.size.height*3.0)
    //        UIGraphicsBeginImageContext(resize)
    //        image.drawInRect(CGRect(0, 0, resize.width, resize.height))
    //        let reimage = UIGraphicsGetImageFromCurrentImageContext()
    //        UIGraphicsEndImageContext()
    //
    //        let clip = CGRectMake(
    //            resize.width - image.frame.size.width/2.0,
    //            resize.height - image.frame.size.height/2.0,
    //            image.frame.size.width,
    //            image.frame.size.height)
    //        let cgimage = CGImageCreateWithImageInRect(reimage.CGImage, clip)
    //        image.contentMode = UIView.ContentMode.Center
    //        image.image = UIImage(CGImage: cgimage!)
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
