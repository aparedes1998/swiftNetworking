//
//  Routers.swift
//  podsTest
//
//  Created by Administrador on 7/20/21.
//

import Foundation
import Alamofire

enum Routes : APIRoute {
    case GetTodos(String)
    
    var method: HTTPMethod { return .get }
    
    var sessionPolicy: APIRouteSessionPolicy  { return .publicDomain }
    
    func asURLRequest() throws -> URLRequest {
        
        switch self {
            case .GetTodos:
                    let path = "users/1/"
                return try self.encoded(path: path, params: [:])
            }
        
    }
    
   
}
