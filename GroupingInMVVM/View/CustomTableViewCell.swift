//
//  CustomTableViewCell.swift
//  GroupingInMVVM
//
//  Created by Pushpendra on 04/09/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var view: UIView!
    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblLocation: UILabel!
      
    @IBOutlet weak var lblRating: UILabel!
    
    @IBOutlet weak var lblVacancy: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        addTopShadow(shadowColor: UIColor.cyan, shadowOpacity: 0.30, shadowRadius: 2, offset: CGSize(width: 0, height: 5))
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
extension UIView {
    func addTopShadow(shadowColor: UIColor, shadowOpacity: Float, shadowRadius: CGFloat, offset: CGSize) {
        layer.masksToBounds = false
        layer.cornerRadius = 5
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOffset = offset
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowRadius
        //layer.clipsToBounds = false
       }
}
