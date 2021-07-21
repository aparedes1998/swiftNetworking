//
//  Routers.swift
//  podsTest
//
//  Created by Administrador on 7/20/21.
//

import Foundation
import Alamofire

enum todoRoutes : APIRoute {
    case getTodos
    case getTodo(id: Int)
    
    var method: HTTPMethod { return .get }
    
    var sessionPolicy: APIRouteSessionPolicy  { return .publicDomain }
    
    func asURLRequest() throws -> URLRequest {
        let path: String
        let params: [String: Any]
        switch self {
            case .getTodos:
                path = "todos"
                params = [:]
            case .getTodo(let id):
                path = "todos/\(id)"
                params = [:]
                
        }
        return try self.encoded(path: path, params: params)
        
    }
    
   
}
