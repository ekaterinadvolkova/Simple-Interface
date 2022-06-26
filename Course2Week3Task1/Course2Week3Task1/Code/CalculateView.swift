//
//  CalculateView.swift
//  Course2Week3Task1
//
//  Created by Ekaterina Volkova on 26/06/2022.
//  Copyright © 2022 e-Legion. All rights reserved.
//

import Foundation
import UIKit

class CalculateView: UIView {
    @IBOutlet weak var resultLabel: UILabel!
    
    override init(frame: CGRect){
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.commonInit()
    }
    
    private func commonInit(){
        let bundle = Bundle.init(for: CalculateView.self)
        if let viewToAdd = bundle.loadNibNamed("CalculateView", owner: self, options: nil),
           let contentView = viewToAdd.first as? UIView {
            addSubview(contentView)
            contentView.frame = self.bounds
            contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        }
    }
}
