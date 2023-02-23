//
//  ViewController2.swift
//  SuperKahramanlar
//
//  Created by imrahor on 28.01.2023.
//

import UIKit

class ViewController2: UIViewController {
    var secilenKah = ""
    var secilenRes = ""
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = secilenKah
        imageView.image = UIImage(named: secilenRes)
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
