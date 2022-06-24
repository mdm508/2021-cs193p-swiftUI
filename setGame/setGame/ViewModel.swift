////
////  ViewModel.swift
////  setGame
////
////  Created by wonderland on 6/21/22.
////
//
import Foundation
import SwiftUI




/*
 - Bind view to model so changes in model cause view to react and be rebuilt
 - interpreter
 - gatekeeper (only access to model appropriately)
 - view model gets data from model via VM proxy.
 - doesn't store data
 - looks for changes in the model
 - process intent from view
 
 */

//enum Shading: Int, CaseIterable {
//    case solid
//    case stripe
//    case outline
//}
//enum Color: Int, CaseIterable {
//    case color1
//    case color2
//    case color3
//}
//enum Shape: Int, CaseIterable {
//    case roundy
//    case boxy
//    case pointy
//}
//enum Number: Int, CaseIterable {
//    case one=1
//    case two
//    case three
//}
//public private(set) var number: Number
//public private(set) var shape: Shape
//public private(set) var color: Color
//public private(set) var shading: Shading
//private var numberRaw: Int {number.rawValue}
//private var shapeRaw: Int {shape.rawValue}
//private var colorRaw: Int {color.rawValue}
//private var shadingRaw: Int {shading.rawValue}
//static let properties : [KeyPath<Card, Int>] = [\Card.numberRaw, \Card.shapeRaw, \Card.colorRaw, \Card.shapeRaw]
