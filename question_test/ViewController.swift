//
//  ViewController.swift
//  question_test
//
//  Created by user on 2016/06/09.
//
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var questiontTextField: UITextView!
    @IBOutlet weak var a1Btn: UIButton!
    @IBOutlet weak var a2Btn: UIButton!
    @IBOutlet weak var a3Btn: UIButton!
    @IBOutlet weak var a4Btn: UIButton!
    @IBOutlet weak var a5Btn: UIButton!
    
    @IBOutlet weak var a1Label: UILabel!
    @IBOutlet weak var a2Label: UILabel!
    @IBOutlet weak var a3Label: UILabel!
    @IBOutlet weak var a4Label: UILabel!
    @IBOutlet weak var a5Label: UILabel!
    
    private var Questions:[String] = []
    private var Answers1:[String] = []
    private var Answers2:[String] = []
    private var Answers3:[String] = []
    private var Answers4:[String] = []
    private var Answers5:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        getAllQuestions()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func getAllQuestions() {
        let config = Realm.Configuration(
            fileURL: NSBundle.mainBundle().URLForResource("default", withExtension: "realm"),
            readOnly: true)
        
        let realm = try! Realm(configuration: config)
        
        
        // Question
        let q_results = realm.objects(realm_test).filter("Q != ''")
        
        for i in 0 ..< q_results.count {
            Questions.append(q_results[i].Q)
        }
        
        // Answer1
        let a1_results = realm.objects(realm_test).filter("A1 != ''")
        
        for i in 0 ..< a1_results.count {
            Answers1.append(a1_results[i].A1)
        }

        // Answer2
        let a2_results = realm.objects(realm_test).filter("A2 != ''")
        
        for i in 0 ..< a2_results.count {
            Answers2.append(a2_results[i].A2)
        }

        // Answer3
        let a3_results = realm.objects(realm_test).filter("A3 != ''")
        
        for i in 0 ..< a3_results.count {
            Answers3.append(a3_results[i].A3)
        }

        // Answer4
        let a4_results = realm.objects(realm_test).filter("A4 != ''")
        
        for i in 0 ..< a4_results.count {
            Answers4.append(a1_results[i].A4)
        }

        // Answer5
        let a5_results = realm.objects(realm_test).filter("A5 != ''")
        
        for i in 0 ..< a5_results.count {
            Answers5.append(a5_results[i].A5)
        }

        
        
        
        print("getAllQuestions=\(q_results)")
        
        questiontTextField.text = Questions[0]
        a1Label.text = Answers1[0]
        a2Label.text = Answers2[0]
        a3Label.text = Answers3[0]
        a4Label.text = Answers4[0]
        a5Label.text = Answers5[0]
    }

    @IBAction func a1Btn(sender: AnyObject) {
        
        
    }
    
    @IBAction func a2Btn(sender: AnyObject) {
    
    
    }
    
    @IBAction func a3Btn(sender: AnyObject) {
    
    
    }

    @IBAction func a4Btn(sender: AnyObject) {
    
    
    }
    
    @IBAction func a5Btn(sender: AnyObject) {
    
    
    }
    

}
























