//
//  Protocols.swift
//  Spike
//
//  Created by Alexander Suprun on 13.07.2023.
//

import Foundation
import Combine


public protocol Publisher {
    associatedtype Output
    associatedtype Failure : Error
    func receive<S>(subscriber : S) where S : Subscriber,
                                          Self.Failure == S.Failure,
                                          Self.Output == S.Input
}


public protocol Subscriber : CustomCombineIdentifierConvertible{
    associatedtype Input
    associatedtype Failure : Error
    
    func receive(subscription : Subscription)
    func receive(_ input : Self.Input) -> Subscribers.Demand
    func receive(completion : Subscribers.Completion<Self.Failure>)
}
