//
//  TableViewController.swift
//  Random Colors 2
//
//  Created by Ragava Krishnan N S on 02/05/23.
//

import UIKit

class TableViewController: UIViewController{
    
    var colors: [UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
        
        // Do any additional setup after loading the view.
    }
    func addRandomColors(){
        for _ in 0..<50{
            colors.append(.random())
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! DetailViewController
        destVC.color = sender as? UIColor
    }
}
    
extension TableViewController: UITableViewDataSource, UITableViewDelegate {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return colors.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell")
            else { return UITableViewCell()}
                cell.backgroundColor = colors[indexPath.row]
                return cell
        }
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
            let color = colors[indexPath.row]
            performSegue(withIdentifier: "toDetailView", sender: color)
        }
        
    }


