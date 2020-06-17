//
//  ParallaxCell.swift
//  ListyApp
//
//  Created by Burak Tunc on 17.06.2020.
//  Copyright © 2020 Burak Tunç. All rights reserved.
//

import UIKit

class ParallaxCell: UITableViewCell {

    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // set up our parallax code later
    }
    
    func configureCell(withImage image:UIImage,andDescription desc:String){
        itemImageView.image = image
        descriptionLabel.text = desc
    }
    
    func setupParallax(){
        
    }

  
}
