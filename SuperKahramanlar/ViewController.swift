//
//  ViewController.swift
//  SuperKahramanlar
//
//  Created by imrahor on 26.01.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var superKahIsimleri = [String]()
    var superKahResimleri = [String]()
    var secilenIsim = ""
    var secilenResim = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        superKahIsimleri.append("Batman")
        superKahIsimleri.append("Superman")
        superKahIsimleri.append("Wolverine")
        
        superKahResimleri.append("batman")
        superKahResimleri.append("superman")
        superKahResimleri.append("wolverine")
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superKahIsimleri.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let a = UITableViewCell()
        a.textLabel?.text = superKahIsimleri[indexPath.row]
        return a
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            superKahIsimleri.remove(at: indexPath.row)
            superKahResimleri.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenIsim = superKahIsimleri[indexPath.row]
        secilenResim = superKahResimleri[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let dVC = segue.destination as! ViewController2
            dVC.secilenKah = secilenIsim
            dVC.secilenRes = secilenResim
        }
    }

}

