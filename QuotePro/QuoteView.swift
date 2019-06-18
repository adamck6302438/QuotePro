//
//  QuoteView.swift
//  QuotePro
//
//  Created by Frances ZiyiFan on 6/12/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

import UIKit

class QuoteView: UIView {

    @IBOutlet weak var imageView : UIImageView!
    @IBOutlet weak var quoteLabel : UILabel!
    @IBOutlet weak var authorLabel : UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setUpWithQuote(quote : Quote){
        self.quoteLabel.text = quote.quote
        self.authorLabel.text = quote.author
    }
    
}
