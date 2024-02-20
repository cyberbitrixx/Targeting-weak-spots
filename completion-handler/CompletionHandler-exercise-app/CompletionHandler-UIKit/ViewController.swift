//
//  ViewController.swift
//  CompletionHandler-UIKit
//
//  Created by Sophie Shchukina on 02.14.2024


import UIKit

// MARK: - Exercise algorithm

//  1. Add completion handler to getDataSimulator function, to reload the tableView only after the data was fetched.
//  2. Modify the getDataSimulator and getDataButton to make it reusable:
//      - modify the completion handler of getDataSimulator function, to be able to pass the retrieved        by this function data into CH as an argument;
//      - pass back a returnedData as an argument inside completion function;
//      - incapsulate the getDataSimulator function withing custom Service class to have access to it from any place of the app.
//  3. Change the data request thread from .main to the background thread as it would be with real life API request.


class ViewController: UIViewController {
//
    var apiData: [APIData] = []

    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    
    // MARK: - Initial version of getDataButton func (reloads fetched data only after the second tap of the button if data wasn't fetched in time within getDataSimulator func)
    
//    @IBAction func getDataButton(_ sender: Any) {
    //        Table view is being reloaded after fetched data was assigned to apiData variable in getDataSimulator
//        getDataSimulator(item: 1)
//        tableView.reloadData()
//    }
    
    
    // MARK: - Renewed getDataButton with completion handler (.reloadData() is withing escaping closure of getDataSimulator function)

//    getDataButton uses the getDataSimulator function to simulate getting data from an API (takes about 2 seconds)
    @IBAction func getDataButton(_ sender: Any) {
        Service.getDataSimulator(item: 1) { (apiData) in
            self.apiData = apiData
            self.tableView.reloadData()
        }
    }

    
    // MARK: - getDataSimulator initial version (no completion handler). Updated version with CH was abstracted into Service file

//    func getDataSimulator(item: Int) {
//        let dispatchTime = DispatchTime.now() + 2
//        DispatchQueue.main.asyncAfter(deadline: dispatchTime) {
//            // The api request is now complete and returns
//         The fetched data is being assigned to apiData variable
//            let returnedData = APIData.getNames(item: item)
//            self.apiData = returnedData
//        }
//    }
//
//
//}
}


// MARK: - Use apiData as a data source to populate the table view

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        apiData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel!.text = apiData[indexPath.row].name
        return cell
    }
    
    
}
