//
//  RouteMap.swift
//  
//
//  Created by Арман Чархчян on 08.05.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import Module

public protocol ChatsModuleInput: AnyObject { }

public protocol ChatsModuleOutput: AnyObject { }

public typealias ChatsModule = Module<ChatsModuleInput, ChatsModuleOutput>

public protocol ChatsRouteMap: AnyObject {
    func rootModule() -> ChatsModule
}
