//
//  EncodingOptions.swift
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

public struct EncodingOptions: OptionSet {
    
    public let rawValue: Int
    
    /**
     Dictionarys are always encoded as message pack map.
     
     If this option isn't set, dictionarys encode as map if the keys are Strings or Ints or as array in all other cases. This is Dictionarys default encoding behavior. Setting this option overrides the default behavior and encodes all dictionarys as map.
     */
    public static let convertDictionarysToMaps =        EncodingOptions(rawValue: 1 << 0)
    
    /**
     Dictionarys with String, Int, Float or Double keys are encoded as message pack map with string keys.
     
     This is the same way as msgpack-java encodes java maps.
     */
    public static let convertDictionaryKeysToString =   EncodingOptions(rawValue: 1 << 1)
    
    /**
     `Data` and `[UInt8]` are encoded as array, the way they encode themselves by default.
     */
    public static let doNotEncodeDataAsBinary =         EncodingOptions(rawValue: 1 << 2)
    
}
