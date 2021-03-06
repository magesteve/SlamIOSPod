//
//  Slam.swift
//  SlamIOSPod
//
//  Created by Steve Sheets on 4/15/19.
//  Copyright (c) 2019 Steve Sheets. All rights reserved.
//

import UIKit

// MARK: Class

/// Abstract class with version information for Library
///
/// This class is also used as a name space to define various type definitions.
public class Slam {
    
    // MARK: Typealias
    
    /// Array of String
    public typealias StringArray = [String]

    /// Simpliest of Closure, used for a simple action
    public typealias ActionClosure = () -> Void
    
    /// Closure type that is passed nothing, and returns string.
    public typealias LabelClosure = () -> String
    
    /// Closure type that is passed nothing, and returns Boolean flag.
    public typealias FlagClosure = () -> Bool
    
    /// Closure type that is passed nothing, and returns Double.
    public typealias DoubleClosure = () -> Double
    
    /// Closure type that is passed nothing, and returns Integer.
    public typealias IntClosure = () -> Int
    
    /// Closure type that is passed nothing, and returns Optional Integer.
    public typealias OptionalIntClosure = () -> Int?
    
    /// Closure type that is passed nothing, and returns Array of Strings.
    public typealias StringArrayClosure = () -> StringArray
    
    /// Closure type that is passed Integer, and returns Integer.
    public typealias SlamIntForIntClosure = (Int) -> Int
    
    /// Closure type that is passed Integer, and returns Optional Integer.
    public typealias SlamOptionalIntForIntClosure = (Int) -> Int?
    
    /// Closure type that is passed Integer, and returns String.
    public typealias SlamStringForIntClosure = (Int) -> String
    
    /// Closure pass a string and returns nothing (usually event)
    public typealias StringEventClosure = (String) -> Void

    // MARK: Static Properties
    
    /// Main Storyboard (lazy loaded)
    public static var mainStoryboad = UIStoryboard(name: "Main", bundle: nil)
    
    // MARK: Static Methods
    
    /// Version Number of Library
    class public func versionNumber() -> Int {
        return 1
    }
    
    /// Version Number of Library
    class public func version() -> String {
        return "1.0.0"
    }
    
    /// Launch URL in default browser
    class public func launch(address: String) {
        if !address.isEmpty {
            if let link = URL(string: address) {
                UIApplication.shared.open(link)
            }
        }
    }
    
}
