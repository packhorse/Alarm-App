//
//  Alarm.swift
//  AlarmAssignment
//
//  Created by Porter Frazier on 9/3/18.
//  Copyright © 2018 BULB. All rights reserved.
//

import Foundation


class Alarm: Equatable, Codable {
    
    //Equatable 
    static func ==(lhs: Alarm, rhs: Alarm) -> Bool {
        return lhs.uuid == rhs.uuid
    }
    
    //Properties
    var name: String
    var enabled: Bool
    let uuid: String
    var fireDate: Date
    
    
    init(fireDate: Date, name: String, enabled: Bool = true, uuid: String = UUID().uuidString) {
        
        //Not sure why we use the uuidString and not just the normal (uuid)?
        
        self.fireDate = fireDate
        self.name = name
        self.enabled = enabled
        self.uuid = uuid
    }
    
    var fireTimeAsString: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter.string(from: fireDate)
    }
}




