//
//  ViewController.swift
//  GroupingInMVVM
//
//  Created by Pushpendra on 03/09/24.
//

import UIKit

class ViewController: UIViewController {
    
    var companyViewModel = CompanyVieModel()
    @IBOutlet weak var topLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = UITableView.automaticDimension
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "CustomTableViewCell")
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return companyViewModel.alphabaticArray.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companyViewModel.getCompaniesOfCharacter(character: companyViewModel.alphabaticArray[section]).count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        let company = companyViewModel.getCompaniesOfCharacter(character: companyViewModel.alphabaticArray[indexPath.section])[indexPath.row]
        cell.imageView1.image = UIImage(systemName: "trash")
        cell.lblName.text = company.name
        cell.lblLocation.text = "📍\(company.location)"
        cell.lblRating.text = "⭐\(String(company.rating))"
        cell.lblVacancy.text = "\(String(company.vacancy)) Vacancy"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Alphabet: \(companyViewModel.alphabaticArray[section])"
    }
}
