//
//  IntMeta.swift
//  MessagePackCodable
//  
//  Copyright 2018 cherrywoods
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//  http://www.apache.org/licenses/LICENSE-2.0
// 
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
// 

import Foundation
import MetaSerialization

internal struct IntMeta: Meta {
    
    /// the value wrapped inside this meta
    let value: Int64
    
    /// Creates a new IntMeta converting the given SignedInteger to an Int64
    init<SI: SignedInteger>(_ unconverted: SI) {
        
        self.value = Int64(unconverted)
        
    }
    
    /// Tries to convert the stored Int64 value to type without loss. Returnes nil, if this is not possible.
    func convert<SI: SignedInteger>(to type: SI.Type) -> SI? {
        
        return SI(exactly: value)
        
    }
    
}

internal struct UIntMeta: Meta {
    
    /// the value wrapped inside this meta
    let value: UInt64
    
    /// Creates a new IntMeta converting the given UnsignedInteger to an UInt64
    init<UI: UnsignedInteger>(_ unconverted: UI) {
        
        self.value = UInt64(unconverted)
        
    }
    
    /// Tries to convert the stored Int64 value to type without loss. Returnes nil, if this is not possible.
    func convert<UI: UnsignedInteger>(to type: UI.Type) -> UI? {
        
        return UI(exactly: value)
        
    }
    
}
