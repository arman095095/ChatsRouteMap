//
//  RouteMap.swift
//  
//
//  Created by Арман Чархчян on 08.05.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import Module
import ModelInterfaces

public protocol ChatsModuleInput: AnyObject { }

public protocol ChatsModuleOutput: AnyObject { }

public typealias ChatsModule = Module<ChatsModuleInput, ChatsModuleOutput>

public protocol ChatsRouteMap: AnyObject {
    func chatsAndRequestsModule() -> ChatsModule
    func messangerModule(with model: MessangerChatModelProtocol) -> ChatsModule
}
