//
//  SearchVC.swift
//  ProjectsGSG
//
//  Created by Rewaa on 12/19/19.
//  Copyright © 2019 Rewaa. All rights reserved.
//

import UIKit
struct Search{
    var name : String
    var title : String
    var num : String
    var kacl : String
    
}
class SearchVC: UIViewController {
    var search : [Search] = []
    @IBOutlet weak var tv: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
search.append(Search(name: "banana", title: "100 g", num: "80", kacl: "kcal"))
        search.append(Search(name: "banana milkshake", title: "1.o cup", num: "50", kacl: "kcal"))
        search.append(Search(name: "banana (half)", title: "150 g", num: "200", kacl: "kcal"))
        search.append(Search(name: "banana", title: "50 g", num: "30", kacl: "kcal"))
        search.append(Search(name: "banana", title: "50 g", num: "30", kacl: "kcal"))
        tv.dataSource = self
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
extension SearchVC : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return search.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SearchCell", for: indexPath) as! SearchCell
        let cal = search[indexPath.row]
        cell.name.text = cal.name
        cell.title.text = cal.title
        cell.num.text = cal.num
        cell.kacl.text = cal.kacl
        return cell
    }}
