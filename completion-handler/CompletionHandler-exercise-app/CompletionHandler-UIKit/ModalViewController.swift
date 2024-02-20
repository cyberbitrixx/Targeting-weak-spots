//
//  ModalViewController.swift
//  CompletionHandler-UIKit
//
//  Created by Sophie Shchukina on 02.14.2024


import UIKit

/// A Modal view controller, which is used as example of reusing existing piece of functionality with completion handler to request data and populate ModalViewController table view with it's objects
class ModalViewController: UIViewController {

        var apiData2: [APIData] = []

        @IBOutlet var tableView: UITableView!
        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.dataSource = self
        }

//    MARK: - Using the same Service method for requesting data and populating the Modal table view
        @IBAction func getDataButton(_ sender: Any) {
            Service.getDataSimulator(item: 2) { (apiData) in
                self.apiData2 = apiData
                self.tableView.reloadData()
            }
        }

        
    }


    extension ModalViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            apiData2.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel!.text = apiData2[indexPath.row].name
            return cell
        }
        
        
    }
    
