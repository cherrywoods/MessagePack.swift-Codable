//
//  Primitives.swift
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
import MessagePack
import MetaSerialization

internal protocol PrimitiveMarker: Meta {}

extension Bool: PrimitiveMarker {}

// Ints are handled by IntMeta

// handle float and double separatly because MessagePack.swift does so too
extension Float: PrimitiveMarker {}
extension Double: PrimitiveMarker {}

extension Data: PrimitiveMarker {}

extension String: PrimitiveMarker {}

extension MessagePackValue: PrimitiveMarker {}
