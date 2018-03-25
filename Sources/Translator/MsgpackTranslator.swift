//
//  MsgpackTranslator.swift
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

internal struct MsgpackTranslator: MetaSupplier {
    
    // meta types:
    //  nil (NilMeta)
    //  boolean (SimpleGenericMeta)
    //  integers (SimpleGenericMeta)
    //  float (SimpleGenericMeta)
    //  raw:
    //      string (MsgpackString)
    //      binary (MsgpackBinary)
    //  array (ArrayUnkeyedContainerMeta)
    //  map (MapMeta)
    //  extension (SimpleGenericMeta)
    
    func wrap<T>(for value: T, at codingPath: [CodingKey]) throws -> Meta? {
        
        // I tried to overload wrap itself, but it didn't work,
        // but worked with "own" function (not required)
        
        return try _wrap(value, at: codingPath)
        
    }
    
}
