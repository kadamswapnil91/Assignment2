//
//  ViewController.swift
//  Json Parsing
//
//  Created by Swapnil Kadam on 22/06/20.
//  Copyright © 2020 Swapnil Kadam. All rights reserved.
//

import UIKit

struct jsonstruct : Decodable
{
    let name: String
    let capital : String
    let alpha3Code :String
   let subregion:String
   let region:String
   let nativeName:String
    
    
}

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    
    
    var arrdata = [jsonstruct]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        getdata()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.arrdata.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: customTableViewCell = tableview.dequeueReusableCell(withIdentifier: "customTableViewCell") as! customTableViewCell
        cell.lbl_countryname.text = "\(arrdata[indexPath.row].name)"
        cell.lbl_countrycapital.text = "\(arrdata[indexPath.row].capital)"
        
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let second :SecondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        second.strregion = arrdata[indexPath.row].region
        second.stralpha3code = arrdata[indexPath.row].alpha3Code
        second.strnativeName = arrdata[indexPath.row].nativeName
        second.strSubregion = arrdata[indexPath.row].subregion
        self.navigationController?.pushViewController(second, animated: true)
        
    }
    
    
    func getdata()
    {
        
        let url = URL(string: "https://restcountries.eu/rest/v2/all")
        
        URLSession.shared.dataTask(with: url!) { (data, responce, error) in
           do
           {
            if error == nil
            {
                self.arrdata = try JSONDecoder().decode([jsonstruct].self, from: data!)
                 print(self.arrdata.count)
                for mainarray in self.arrdata
                {
            print(mainarray.name ,":",mainarray.capital,":",mainarray.alpha3Code,":",mainarray.nativeName)
                   DispatchQueue.main.async {
                        self.tableview.reloadData()
                    }
        
                    
                }
                
            }
            
            
            }
           catch
           {
            
            print("error in json parsing")
            }
        }.resume()
        
       
    }

}





