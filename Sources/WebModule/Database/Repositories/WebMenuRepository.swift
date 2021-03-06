//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2022. 03. 03..
//

import Vapor
import Feather

struct WebMenuRepository: FeatherModelRepository {
    typealias DatabaseModel = WebMenuModel

    public private(set) var req: Request
    
    init(_ req: Request) {
        self.req = req
    }
}
