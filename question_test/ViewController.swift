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
    
    private var Questions:[String] = []

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
        
        let results = realm.objects(realm_test).filter("Q != ''")
        
        for i in 0 ..< results.count {
            Questions.append(results[i].Q)
        }
        
        print("getAllQuestions=\(results)")
    }


}

