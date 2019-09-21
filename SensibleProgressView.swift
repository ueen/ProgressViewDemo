//
//  SensibleProgressView.swift
//  SensibleProgressView.swift
//
//  Originally Created by huangkun on 2019/4/13.
//  Forked by ueen 2019/9/21
//  Copyright © 2019 huangkun/ueen. All rights reserved.
//

import UIKit

class SensibleProgressView: UIView {
    
    private var progressBackgroundView: UIView!
    private var progressContentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        build()
    
    }
    
   required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.build()
    }
    
    func build() {
        let bgColor = UIColor.clear
        let progressColor = UIColor.white
        
        backgroundColor = bgColor
        layer.borderColor = progressColor.cgColor
        layer.borderWidth = 2
        layer.cornerRadius = frame.size.height / 2
        layer.masksToBounds = true
        
        progressBackgroundView = UIView()
        progressBackgroundView.frame.size.height = frame.size.height
        progressBackgroundView.backgroundColor = progressColor
        addSubview(progressBackgroundView)
        
        
        progressContentView = UIView()
        progressContentView.backgroundColor = bgColor
        progressContentView.frame = progressBackgroundView.frame
        addSubview(progressContentView)
        
    }

    
    /// The current progress value. Valid Range: 0.0 ~ 1.0
    var progress: Float = 0.0 {
        didSet {
            let temp = max(0.0, progress)
            progress = min(temp, 1.0)
            
            let width = bounds.size.width * CGFloat(progress)
            progressBackgroundView.frame.size.width = width
            progressContentView.frame.size.width = width

        }
    }
    
}
