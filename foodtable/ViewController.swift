//
//  ViewController.swift
//  foodtable
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    
    var foods:[String]?
    //var healthyfoods:[String]?
    //var unhealthyfoods:[String]?
    var calories: [Int]?
    //it shows which calories are related to which fodd item
    var fooddata:[(name:String, calory:Int)]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //these are used for view all the values in tableview
        tableview.dataSource = self
        tableview.delegate = self
        foods = ["Apple","Banana","Burger","Fries","Orange","Pizza"]
        calories = [50, 60 ,900, 600 ,30 ,700]
        fooddata = [("Apple",50),("Banana",60),("Burger" , 900),("Fries" , 600),("Orange" , 30), ("Pizza",700)]
        
        
    tableview.register(foodTableViewCell.self, forCellReuseIdentifier: "food cell")
        
       // healthyfoods = ["Apple","Banana","Orange"]
       //  unhealthyfoods = ["Burger","Fries","Pizza"]
       
        
    }
    
    
   
//        return healthyfoods!.count
//    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foods?.count ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard foods != nil else {return UITableViewCell()}
    //wednesday
//let cell = UITableViewCell(style: .value1, reuseIdentifier: "")
//    let foodname = foods![indexPath.row]
//
//    cell.textLabel?.text = foodname
//        cell.imageView?.image = UIImage(named: foodname)
//        cell.detailTextLabel?.text = "calories:\(calories![indexPath.row])"
//        return cell
        //wednesday create instances of table or get name of food anmd calories
//        let foodname = foods![indexPath.row]
//        let foodcalory = calories![indexPath.row]
        let foodname = fooddata![indexPath.row].name
               let foodcalory = fooddata![indexPath.row].calory
        let cell = tableview.dequeueReusableCell(withIdentifier: "food cell") as! foodTableViewCell
        //as is used to unwrapp the uitableviewcell
        
        cell.setName(name: foodname, calories: foodcalory, image: foodname)
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let foodname = fooddata![indexPath.row].name
        let alertcontroller = UIAlertController(title: "food selector", message: "you have selected \(foodname)", preferredStyle: .actionSheet)//alert instead of actionsheet
        let okaction = UIAlertAction(title: "OK", style: .cancel, handler: nil)//
        let printaction = UIAlertAction(title: "Print", style: .default) { (action) in
            print("selected food is \(foodname)")
        }
        
        alertcontroller.addAction(okaction)
        alertcontroller.addAction(printaction)
        //in order to click and print or ok window open
       self.present(alertcontroller, animated: true, completion: nil)
    }
    
    }
        //tuesday
//        guard  foods != nil else {
//            return 0
//        }
//        return foods!.count
        // for print only in rows for once
        
        // for printing in sections
//        guard  healthyfoods != nil && unhealthyfoods != nil else {
//            return 0
//
//        }
//        if section == 0{
//            return healthyfoods!.count
//            }
//        else{
//            return unhealthyfoods!.count
//        }
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //part 1
//        guard  foods != nil else {
//            return UITableViewCell()
//        }
//        let cell = UITableViewCell(style: .default, reuseIdentifier: " ")
//        let foodname = foods![indexPath.row]
//        cell.textLabel?.text = foodname
//
//        cell.imageView?.image = UIImage(named: foodname)
//        return cell
        
        //part2
//        guard  healthyfoods != nil && unhealthyfoods != nil else {
//            return UITableViewCell()
//            }
//        let cell = UITableViewCell(style: .default, reuseIdentifier: " ")
//        let foodname = (indexPath.section == 0) ? healthyfoods![indexPath.row] :
//        unhealthyfoods![indexPath.row]
//        cell.textLabel?.text = foodname
//
//               cell.imageView?.image = UIImage(named: foodname)
//                return cell
//
//    }
//    func numberOfSections(in tableView: UITableView) -> Int {
//        //        guard  healthyfoods != nil else {
//        return 2
//
//    }
//
    


