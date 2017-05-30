//
//  News.swift
//  Peerapong
//
//  Created by std117 on 5/29/17.
//  Copyright © 2017 std117. All rights reserved.
//

import UIKit

class News {
    var title:String
    var description:String
    var iconImage:UIImage
    var author:String
    var view:Int
    var createdate:String
    var groups:String
    init(title:String, description:String, iconImage:UIImage, author:String, view:Int, createdate:String, groups:String) {
        self.title = title
        self.description = description
        self.iconImage = iconImage
        self.author = author
        self.view = view
        self.createdate = createdate
        self.groups = groups
    }

}
