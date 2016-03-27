//
//  Photo.swift
//  PhotoViewer
//
//  Created by Vladimir Valter on 09.03.16.
//  Copyright © 2016 Vladimir Valter. All rights reserved.
//

import Foundation

class Photo {
    var name : String
    var filename : String
    var notes : String
    
    init(name: String, filename: String, notes: String) {
        self.name = name
        self.filename = filename
        self.notes = notes
    }

}