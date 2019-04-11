//
//  characterViewController.swift
//  Advance_Ebook
//
//  Created by User13 on 2019/3/25.
//  Copyright © 2019 CWY. All rights reserved.
//

import UIKit

class characterViewController: UIViewController {
    
    @IBOutlet var btn: [UIButton]!
    @IBOutlet weak var characterName: UILabel!
    @IBOutlet weak var characterIntro: UILabel!
    let names = ["花木蘭","李翔","木須龍","蟋蟀","金寶","阿堯","花弧","單于"];
    let intro = ["女主角,代父從軍接受嚴酷的訓練,結果在戰場上用智打敗匈奴,之後還讓京城免於災難,成為一代女英雄",
                 "男主角,帶領軍隊的將軍之子,訓練部下非常嚴苛.但是武藝高超,戰爭結束後好像對木蘭有好感",
                 "自稱是木蘭家的守護龍,其實只是敲鑼的,但是他也幫了木蘭不少忙",
                 "本來是被木蘭的奶奶買來招運用的.最後卻和木蘭一起去打仗",
                 "木蘭在軍營中認識的朋友,非常愛吃,但力氣很大,個性寬厚",
                 "身材矮小,不過力氣也很大,個性急躁,剛開始一直找木蘭的碴.不過最後卻成為她的朋友",
                 "木蘭的父親",
                 "蒙古人的首領,率領千軍萬馬攻打京城,被木蘭阻止後,潛入皇宮刺殺皇帝,所幸又被木蘭及時阻止"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func clickImg(_ sender: UIButton) {
        let imageNum = btn.firstIndex(of: sender)!;
        print(imageNum);
        characterName.text = names[imageNum];
        characterIntro.text = intro[imageNum];
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
