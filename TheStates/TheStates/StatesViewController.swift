//
//  StatesViewController.swift
//  TheStates
//
//  Created by Jaylin Phipps on 7/27/17.
//  Copyright © 2017 Jaylin Phipps. All rights reserved.
//

import UIKit

class StatesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var statesTableView: UITableView!
    
    let theStates = TheStatesJSONLoader.load(fileName: "states")

   // var searchController: UISearchController!
    //var resultsController = UITableViewController()
   // var filteredStates = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        /*
        self.searchController = UISearchController(searchResultsController: self.resultsController)
        self.statesTableView.tableHeaderView = self.searchController.searchBar
        self.searchController.searchResultsUpdater = self
        */
        self.title = "States"
    }
    /*
    func updateSearchResults(for searchController: UISearchController) {
        self.filteredStates = self.states.filter { (state: String) -> Bool in
            return true
        }
        }
    */

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theStates.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "stateCell", for: indexPath)
        
        if let cell = cell as? StateTableViewCell {
            let theStater = theStates[indexPath.row]
            cell.statePicture.image = theStater.classification.image
            cell.stateNameLabel.text = theStater.title
        }
        return cell
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? StatesDetailViewController,
            let row = statesTableView.indexPathForSelectedRow?.row {
            destination.states = theStates[row]
        }
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
