//
//  SearchViewController.swift
//  taskapp
//
//  Created by Natsuko Sakai on 2022/09/13.
//

import UIKit
import RealmSwift

class SearchViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    
    let realm = try! Realm()
    var task: Task!

    override func viewDidLoad() {
        super.viewDidLoad()

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
