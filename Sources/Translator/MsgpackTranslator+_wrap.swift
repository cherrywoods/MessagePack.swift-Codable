//
//  MsgpackTranslator+_wrap.swift
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

extension MsgpackTranslator {
    
    func _wrap<T>(_ value: T, at: [CodingKey]) throws -> Meta? where T: PrimitiveMarker {
        
        // this handles Bool, String, Float, Double, Data and MessagePackValue
        return value
        
    }
    
    func _wrap<T>(_ value: T, at: [CodingKey]) throws -> Meta? where T: SignedInteger {
        
        // handles Int8, Int16, Int32, Int64 and Int
        return IntMeta(value)
        
    }
    
    func _wrap<T>(_ value: T, at: [CodingKey]) throws -> Meta? where T: UnsignedInteger {
        
        // handles UInt8, UInt16, UInt32, UInt64 and UInt
        return UIntMeta(value)
        
    }
    
    func _wrap(value: Dictionary<AnyHashable, Any>, at: [CodingKey]) throws -> Meta? {
        
        // TODO: in swift 5, consider just using a marker protocol and extending dictionary where Key: Marker, Value: Marker
        
        // TODO: implement
        return nil
        
    }
    
    func _wrap<T>(_ value: T, at: [CodingKey]) throws -> Meta? {
        
        // return nil for other unknown types
        return nil
        
    }
    
}
