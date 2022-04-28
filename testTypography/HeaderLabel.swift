//
//  HeaderLabel.swift
//  CoconalaCustomViews
//
//  Created by yuki.osu on 2021/03/23.
//  Copyright © 2021 Coconala. All rights reserved.
//

import UIKit

enum Typography {
    enum Font {
        static let h1: UIFont = UIFont(name: "Avenir-Black", size: 20.0)!
        static let h2: UIFont = UIFont(name: "Avenir-Black", size: 16.0)!
        static let h3: UIFont = UIFont.boldSystemFont(ofSize: 14.0)
        static let h4: UIFont = UIFont.systemFont(ofSize: 13.0)
        static let h5: UIFont = UIFont.boldSystemFont(ofSize: 12.0)
        static let h6: UIFont = UIFont.boldSystemFont(ofSize: 11.0)
    }
}

public class BaseLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }

    fileprivate func setup() {
        // override to set font, color, etc...
    }
}

@IBDesignable
public class h1: BaseLabel {
    override func setup() {
        self.font = Typography.Font.h1
    }
}

@IBDesignable
public class h2: BaseLabel {
    override func setup() {
        self.font = Typography.Font.h2
    }
}

@IBDesignable
public class h3: BaseLabel {
    override func setup() {
        self.font = Typography.Font.h3
    }
}

@IBDesignable
public class h4: BaseLabel {
    override func setup() {
        self.font = Typography.Font.h4
    }
}

@IBDesignable
public class h5: BaseLabel {
    override func setup() {
        self.font = Typography.Font.h5
    }
}

@IBDesignable
public class h6: BaseLabel {
    override func setup() {
        self.font = Typography.Font.h6
    }
}

