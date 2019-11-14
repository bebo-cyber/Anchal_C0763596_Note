//
//  addNoteViewController.swift
//  Anchal_C0763596_Note_P1
//
//  Created by MacStudent on 2019-11-14.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class addNoteViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    var newNotes: String?
    weak var notesTable: noteTableViewController?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = newNotes ?? ""

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
           
           folderData.foldersData[notesTable!.curIndx].notesName.append(textView.text!)
           notesTable?.tableView.reloadData()
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
