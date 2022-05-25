//
//  File.swift
//  
//
//  Created by Арман Чархчян on 25.05.2022.
//

import Foundation
import ModelInterfaces

public protocol ChatModelProtocol: AnyObject {
    var friend: ProfileModelProtocol { get }
    var friendID: String { get }
    var typing: Bool { get set }
    var lastMessage: MessageModelProtocol? { get }
    var messages: [MessageModelProtocol] { get set }
    var newMessages: [MessageModelProtocol] { get set }
    var newMessagesCount: Int { get }
    var notSendedMessages: [MessageModelProtocol] { get set }
}

public protocol MessangerChatModelProtocol: AnyObject {
    var friend: ProfileModelProtocol { get }
    var friendID: String { get }
    var typing: Bool { get set }
    var messages: [MessageModelProtocol] { get set }
    var newMessages: [MessageModelProtocol] { get set }
    var notSendedMessages: [MessageModelProtocol] { get set }
    var notLookedMessages: [MessageModelProtocol] { get set }
}

public enum Status: String {
    case waiting
    case sended
    case looked
    case incoming
    case incomingNew
}

public enum MessageContentType {
    case text(content: String)
    case audio(url: String, duration: Float)
    case image(url: String, ratio: Double)
}

public protocol MessageModelProtocol: AnyObject {
    var senderID: String { get }
    var adressID: String  { get }
    var date: Date { get set }
    var id : String { get }
    var firstOfDate: Bool  { get set }
    var status: Status? { get set }
    var type: MessageContentType { get set }
}

public protocol RequestModelProtocol {
    var sender: ProfileModelProtocol { get }
    var senderID: String { get }
}
