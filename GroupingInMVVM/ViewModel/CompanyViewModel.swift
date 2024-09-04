//
//  CompanyViewModel.swift
//  GroupingInMVVM
//
//  Created by Pushpendra on 04/09/24.
//

import Foundation
class CompanyVieModel {
    var arrCompanies: [CompanyInfo] = []
//    var dicCompanies: [String: [CompanyInfo]] = [:]
    var alphabaticArray = [String]()
    init() {
        generateMockData()
    }
    func generateMockData() {
        arrCompanies.append(CompanyInfo(id: UUID().uuidString, name: "Tech Innovators Inc.", rating: 4.8, location: "San Francisco, CA", vacancy: 5))
        arrCompanies.append(CompanyInfo(id: UUID().uuidString, name: "Green Earth Solutions", rating: 4.5, location: "Austin, TX", vacancy: 12))
        arrCompanies.append(CompanyInfo(id: UUID().uuidString, name: "Skyline Enterprises", rating: 4.2, location: "New York, NY", vacancy: 3))
        arrCompanies.append(CompanyInfo(id: UUID().uuidString, name: "Oceanic Ventures", rating: 4.7, location: "Seattle, WA", vacancy: 8))
        arrCompanies.append(CompanyInfo(id: UUID().uuidString, name: "Quantum Dynamics", rating: 4.9, location: "Boston, MA", vacancy: 2))
        arrCompanies.append(CompanyInfo(id: UUID().uuidString, name: "Solaris Technologies", rating: 4.3, location: "San Diego, CA", vacancy: 10))
        arrCompanies.append(CompanyInfo(id: UUID().uuidString, name: "Peak Performance", rating: 4.6, location: "Denver, CO", vacancy: 6))
        arrCompanies.append(CompanyInfo(id: UUID().uuidString, name: "Urban Innovations", rating: 4.4, location: "Chicago, IL", vacancy: 4))
        arrCompanies.append(CompanyInfo(id: UUID().uuidString, name: "Pioneer Robotics", rating: 4.8, location: "Palo Alto, CA", vacancy: 7))
        arrCompanies.append(CompanyInfo(id: UUID().uuidString, name: "EcoWave Solutions", rating: 4.5, location: "Portland, OR", vacancy: 9))
        groupDic()
    }
    func groupDic() {
        //arry sorting
        let compnies = arrCompanies.sorted {$0.name < $1.name}
        var finalArray: [CompanyInfo] = [] //model me var startdWith lia
        for compny in compnies {
            let alphabate = String(compny.name.prefix(1))
            var companyData = compny
            companyData.startdWith = alphabate
            finalArray.append(companyData)
            if !alphabaticArray.contains(alphabate) {
                alphabaticArray.append(alphabate)
            }
        }
//        for character in alphabaticArray {
//            dicCompanies[character] = arrCompanies.filter {$0.name.prefix(1) == character}
//        }
        arrCompanies = finalArray
        print(arrCompanies)
    }
    
    func getCompaniesOfCharacter(character:String) -> [CompanyInfo] {
        return arrCompanies.filter {$0.startdWith == character}
    }
}
