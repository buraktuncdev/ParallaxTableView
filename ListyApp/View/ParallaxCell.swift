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
        
        setupParallax()
    }
    
    func configureCell(withImage image:UIImage,andDescription desc:String){
        itemImageView.image = image
        descriptionLabel.text = desc
    }
    
    // Implement UIMotion Effect with min and max relative value
    func setupParallax(){
        let min = CGFloat(-30)
        let max = CGFloat(30)
        let xMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.x", type: .tiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue = min
        xMotion.maximumRelativeValue = max
        let yMotion = UIInterpolatingMotionEffect(keyPath: "layer.transform.translation.y", type: .tiltAlongVerticalAxis)
        yMotion.minimumRelativeValue = min
        yMotion.maximumRelativeValue = max
    
        let motionEffectGroup = UIMotionEffectGroup()
        motionEffectGroup.motionEffects = [xMotion,yMotion]
        
        itemImageView.addMotionEffect(motionEffectGroup)
    }
    

  
}
