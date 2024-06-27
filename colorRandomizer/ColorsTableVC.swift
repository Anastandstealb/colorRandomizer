//
//  ColorsTableVC.swift
//  colorRandomizer
//
//  Created by aryan on 22/06/24.
//

import UIKit

class ColorsTableVC: UIViewController {
    // table view and collection view need an array to show something
    var colors:[UIColor]=[]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createRandomColors()
        // Do any additional setup after loading the view.
    }
//    create random colors fucntion
    func createRandomColors() {
        for _ in 0..<50{
            colors.append(UIColor.genrateRandom())
        }
    }
    
    
// this function is basically preparing for the segue to happen , we used as! to tell segue.destination that we have a destination for you that is ColorsDetailVC and below we told that sender is a UIColor
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.selectedColor = sender as? UIColor
    }
}

extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource{
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    
    
//  ---
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    here we are using optional as cell can also not populate and then we have nil thus --> crash
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "IndieCell") else{return UITableViewCell() }
//        above function baically reuses the cell on the screen
        cell.backgroundColor = colors[indexPath.row]

//        here we are setting the backfground of the cell using indexpath of the row basically finding where is the row pointing it to the array in colors and populating color of cell with the color in Colors at that index
        return cell
    }
 
    
    
//    ---
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tapping the row we get specific color at that row
        let selectColor = colors[indexPath.row]
        
//        below we perform a transition/segue to color detail view controller , sender basically tells what needs to be executed
        performSegue(withIdentifier: "ToColorsDetailVc", sender: selectColor )
    }
}
