//
//  playerViewController.swift
//  Advance_Ebook
//
//  Created by User13 on 2019/3/25.
//  Copyright © 2019 CWY. All rights reserved.
//

import UIKit

class playerViewController: UIViewController {

    @IBOutlet var cards: [UIImageView]!;
    @IBOutlet var btn: [UIButton]!;
    let names = ["花木蘭","李翔","木須龍","蟋蟀","金寶","阿堯","花弧","單于"];
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var ansText: UITextField!
    @IBOutlet weak var gameResult: UILabel!
    var answer = "";
    var newImg:[String] = [];
    override func viewDidLoad() {
        super.viewDidLoad()
        newImg = names.shuffled();
        titleLabel.isHidden = true;
        ansText.isHidden = true;
        // Do any additional setup after loading the view.
    }
    

    @IBAction func clickCard(_ sender: UIButton) {

        let cardNum = btn.firstIndex(of: sender)!;
        cards[cardNum].image = UIImage(named:"\(newImg[cardNum])");
        
        print(newImg[cardNum])
        for i in 0...2{
            if i != cardNum{
                print(i);
                cards[i].image = UIImage(named:"\("卡背")");
            }
            btn[i].isHidden = true;
        }
        answer = newImg[cardNum];
        titleLabel.isHidden = false;
        ansText.isHidden = false;
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    }
    
    
    @IBAction func send(_ sender: UITextField) {
        if sender.text == answer{
            print("correct")
            gameResult.textColor = UIColor(red:55/255,green:180/255,blue:35/255,alpha:1);
            gameResult.text = "恭喜你答對了！！"
        }else{
            print("wrong")
            gameResult.textColor = UIColor.red;
            gameResult.text = "請再接再勵！！"
        }
    }

    
}
