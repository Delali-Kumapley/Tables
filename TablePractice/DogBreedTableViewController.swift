//
//  DogBreedTableViewController.swift
//  TablePractice
//
//  Created by Delali Kumapley on 8/12/19.
//  Copyright © 2019 Delali Kumapley. All rights reserved.
//

import UIKit

struct Dogs {
    var id: Int
    var title : String
    var text: String
    var image: String
}

class DogBreedTableViewController: UITableViewController {
var allDogBreeds = [
    Dogs(id: 1,
         title: "Doberman",
        text: "Dobermans have black and brown fur.",
        image: "Doberman"),
    
    Dogs(id: 2,
        title: "Golden Retriever",
        text: "Golden Retrievers can hold an egg in their mouths without breaking it!",
        image: "GoldenEgg"),
    
    Dogs(id: 3,
        title: "Husky",
        text: "Huskies are great in the snow!",
        image: "Husky"),
    
    ]
   
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allDogBreeds.count
    }
    

    
    func tableView(_tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        cell.textLabel?.text = allDogBreeds[indexPath.row].title
        cell.detailTextLabel?.text = allDogBreeds[indexPath.row].text
        cell.imageView?.image = UIImage(named: allDogBreeds[indexPath.row].image)
    

        return cell
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
