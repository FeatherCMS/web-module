//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 12. 19..
//

import Vapor
import Feather
import SwiftSitemap

final class WebSitemapTemplate: AbstractTemplate<WebSitemapContext> {

    private static let formatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "Y-MM-dd"
        return formatter
    }()
    
    override func render(_ req: Request) -> Tag {
        UrlSet {
            for item in context.items {
                Url {
                    Loc(req.feather.publicUrl + item.slug.safePath())
                    LastMod(Self.formatter.string(from: item.date))
                }
            }
        }
    }
}
