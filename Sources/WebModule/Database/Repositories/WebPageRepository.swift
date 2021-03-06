//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 03. 03..
//

import Vapor
import Feather

struct WebPageRepository: FeatherModelRepository {
    typealias DatabaseModel = WebPageModel

    public private(set) var req: Request
    
    init(_ req: Request) {
        self.req = req
    }
}
