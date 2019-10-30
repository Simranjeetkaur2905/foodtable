//
//  foodTableViewCell.swift
//  foodtable
//
//  Created by MacStudent on 2019-10-30.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class foodTableViewCell: UITableViewCell {


    var nameLabel:UILabel?
    
    var caloriesLabel:UILabel?
    var iconfoodimage:UIImageView?
    

    func setName(name: String , calories: Int , image:String){
        nameLabel = UILabel(frame: CGRect(x: 10, y: 15, width: 140, height: 40))
       nameLabel?.text = name
        caloriesLabel = UILabel(frame: CGRect(x: 160, y: 15, width: 140, height: 40))
        caloriesLabel?.text = "\(calories)cals"
        
        iconfoodimage = UIImageView(image: UIImage(named: image))
        iconfoodimage?.frame =  CGRect(x: 310, y: 6, width: 40, height: 40)
        // polymorphism is dine in order to call image calories and foods
        self.contentView.addSubview(nameLabel!)
        self.contentView.addSubview(caloriesLabel!)
        self.contentView.addSubview(iconfoodimage!)
        
    }
    
}
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        // Initialization code
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//    }
//    //reguired init is required to overeride a function otherwise it shows the error
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//
//    }
