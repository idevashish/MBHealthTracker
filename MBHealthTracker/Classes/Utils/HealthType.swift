//
//  HealthType.swift
//  MBHealthTracker
//
//  Created by matybrennan on 23/4/18.
//

import Foundation
import HealthKit

public protocol SharableType {
    var sharable: HKSampleType { get }
}

public protocol ReadableType {
    var readable: HKObjectType { get }
}

public typealias SharableReadableType = SharableType & ReadableType

/// Has both read and sharing capabilities
public enum MBObjectType: SharableType, ReadableType {

    case stepCount
    case heartRate
    case workout
    case activeEnergy
    
    /// Nutrition
    
    /// Macronutrients
    case energyConsumed
    case carbohydrates
    case fiber
    case sugar
    case fatTotal
    case fatMono
    case fatPoly
    case fatSaturated
    case cholesterol
    case protein
    /// Vitamins
    case vitaminA
    case thiamin
    case riboflavin
    case niacin
    case pathothenicAcid
    case vitaminB6
    case biotin
    case vitaminB12
    case vitaminC
    case vitaminD
    case vitaminE
    case vitaminK
    case folate
    /// Minerals
    case calcium
    case chloride
    case iron
    case magnesium
    case phosphorus
    case potassium
    case sodium
    case zinc
    /// Ultratrace Minerals
    case chromium
    case copper
    case iodine
    case manganese
    case molybdenum
    case selenium
    /// Hydration
    case water
    /// Caffeine
    case caffeine
    
    
    /// Sleep
    case sleep
    
    public var sharable: HKSampleType {
        switch self {
        case .stepCount: return HKQuantityType.quantityType(forIdentifier: .stepCount)!
        case .heartRate: return HKQuantityType.quantityType(forIdentifier: .heartRate)!
        case .workout: return HKWorkoutType.workoutType()
        case .activeEnergy: return HKQuantityType.quantityType(forIdentifier: .activeEnergyBurned)!
        
            
        /// Nutrition
            
        /// Macronutrients
        case .energyConsumed: return HKQuantityType.quantityType(forIdentifier: .dietaryEnergyConsumed)!
        case .carbohydrates: return HKQuantityType.quantityType(forIdentifier: .dietaryCarbohydrates)!
        case .fiber: return HKQuantityType.quantityType(forIdentifier: .dietaryFiber)!
        case .sugar: return HKQuantityType.quantityType(forIdentifier: .dietarySugar)!
        case .fatTotal: return HKQuantityType.quantityType(forIdentifier: .dietaryFatTotal)!
        case .fatMono: return HKQuantityType.quantityType(forIdentifier: .dietaryFatMonounsaturated)!
        case .fatPoly: return HKQuantityType.quantityType(forIdentifier: .dietaryFatPolyunsaturated)!
        case .fatSaturated: return HKQuantityType.quantityType(forIdentifier: .dietaryFatSaturated)!
        case .cholesterol: return HKQuantityType.quantityType(forIdentifier: .dietaryCholesterol)!
        case .protein: return HKQuantityType.quantityType(forIdentifier: .dietaryProtein)!
            
        /// Vitamins
        case .vitaminA: return HKQuantityType.quantityType(forIdentifier: .dietaryVitaminA)!
        case .thiamin: return HKQuantityType.quantityType(forIdentifier: .dietaryThiamin)!
        case .riboflavin: return HKQuantityType.quantityType(forIdentifier: .dietaryRiboflavin)!
        case .niacin: return HKQuantityType.quantityType(forIdentifier: .dietaryNiacin)!
        case .pathothenicAcid: return HKQuantityType.quantityType(forIdentifier: .dietaryPantothenicAcid)!
        case .vitaminB6: return HKQuantityType.quantityType(forIdentifier: .dietaryVitaminB6)!
        case .biotin: return HKQuantityType.quantityType(forIdentifier: .dietaryBiotin)!
        case .vitaminB12: return HKQuantityType.quantityType(forIdentifier: .dietaryVitaminB12)!
        case .vitaminC: return HKQuantityType.quantityType(forIdentifier: .dietaryVitaminC)!
        case .vitaminD: return HKQuantityType.quantityType(forIdentifier: .dietaryVitaminD)!
        case .vitaminE: return HKQuantityType.quantityType(forIdentifier: .dietaryVitaminE)!
        case .vitaminK: return HKQuantityType.quantityType(forIdentifier: .dietaryVitaminK)!
        case .folate: return HKQuantityType.quantityType(forIdentifier: .dietaryFolate)!
            
        /// Minerals
        case .calcium: return HKQuantityType.quantityType(forIdentifier: .dietaryCalcium)!
        case .chloride: return HKQuantityType.quantityType(forIdentifier: .dietaryChloride)!
        case .iron: return HKQuantityType.quantityType(forIdentifier: .dietaryIron)!
        case .magnesium: return HKQuantityType.quantityType(forIdentifier: .dietaryMagnesium)!
        case .phosphorus: return HKQuantityType.quantityType(forIdentifier: .dietaryPhosphorus)!
        case .potassium: return HKQuantityType.quantityType(forIdentifier: .dietaryPotassium)!
        case .sodium: return HKQuantityType.quantityType(forIdentifier: .dietarySodium)!
        case .zinc: return HKQuantityType.quantityType(forIdentifier: .dietaryZinc)!
        
        /// Ultratrace Minerals
        case .chromium: return HKQuantityType.quantityType(forIdentifier: .dietaryChromium)!
        case .copper: return HKQuantityType.quantityType(forIdentifier: .dietaryCopper)!
        case .iodine: return HKQuantityType.quantityType(forIdentifier: .dietaryIodine)!
        case .manganese: return HKQuantityType.quantityType(forIdentifier: .dietaryManganese)!
        case .molybdenum: return HKQuantityType.quantityType(forIdentifier: .dietaryMolybdenum)!
        case .selenium: return HKQuantityType.quantityType(forIdentifier: .dietarySelenium)!
            
        /// Hydration
        case .water: return HKQuantityType.quantityType(forIdentifier: .dietaryWater)!
            
        /// Caffeine
        case .caffeine: return HKQuantityType.quantityType(forIdentifier: .dietaryCaffeine)!
            
        /// Sleep
        case .sleep: return HKCategoryType.categoryType(forIdentifier: .sleepAnalysis)!
            
        }
    }
    
    public var readable: HKObjectType {
        switch self {
        case .stepCount: return HKQuantityType.quantityType(forIdentifier: .stepCount)!
        case .heartRate: return HKQuantityType.quantityType(forIdentifier: .heartRate)!
        case .workout: return HKWorkoutType.workoutType()
        case .activeEnergy: return HKQuantityType.quantityType(forIdentifier: .activeEnergyBurned)!
        
        /// Nutrition
            
        /// Macronutrients
        case .energyConsumed: return HKQuantityType.quantityType(forIdentifier: .dietaryEnergyConsumed)!
        case .carbohydrates: return HKQuantityType.quantityType(forIdentifier: .dietaryCarbohydrates)!
        case .fiber: return HKQuantityType.quantityType(forIdentifier: .dietaryFiber)!
        case .sugar: return HKQuantityType.quantityType(forIdentifier: .dietarySugar)!
        case .fatTotal: return HKQuantityType.quantityType(forIdentifier: .dietaryFatTotal)!
        case .fatMono: return HKQuantityType.quantityType(forIdentifier: .dietaryFatMonounsaturated)!
        case .fatPoly: return HKQuantityType.quantityType(forIdentifier: .dietaryFatPolyunsaturated)!
        case .fatSaturated: return HKQuantityType.quantityType(forIdentifier: .dietaryFatSaturated)!
        case .cholesterol: return HKQuantityType.quantityType(forIdentifier: .dietaryCholesterol)!
        case .protein: return HKQuantityType.quantityType(forIdentifier: .dietaryProtein)!
            
        /// Vitamins
        case .vitaminA: return HKQuantityType.quantityType(forIdentifier: .dietaryVitaminA)!
        case .thiamin: return HKQuantityType.quantityType(forIdentifier: .dietaryThiamin)!
        case .riboflavin: return HKQuantityType.quantityType(forIdentifier: .dietaryRiboflavin)!
        case .niacin: return HKQuantityType.quantityType(forIdentifier: .dietaryNiacin)!
        case .pathothenicAcid: return HKQuantityType.quantityType(forIdentifier: .dietaryPantothenicAcid)!
        case .vitaminB6: return HKQuantityType.quantityType(forIdentifier: .dietaryVitaminB6)!
        case .biotin: return HKQuantityType.quantityType(forIdentifier: .dietaryBiotin)!
        case .vitaminB12: return HKQuantityType.quantityType(forIdentifier: .dietaryVitaminB12)!
        case .vitaminC: return HKQuantityType.quantityType(forIdentifier: .dietaryVitaminC)!
        case .vitaminD: return HKQuantityType.quantityType(forIdentifier: .dietaryVitaminD)!
        case .vitaminE: return HKQuantityType.quantityType(forIdentifier: .dietaryVitaminE)!
        case .vitaminK: return HKQuantityType.quantityType(forIdentifier: .dietaryVitaminK)!
        case .folate: return HKQuantityType.quantityType(forIdentifier: .dietaryFolate)!
            
        /// Minerals
        case .calcium: return HKQuantityType.quantityType(forIdentifier: .dietaryCalcium)!
        case .chloride: return HKQuantityType.quantityType(forIdentifier: .dietaryChloride)!
        case .iron: return HKQuantityType.quantityType(forIdentifier: .dietaryIron)!
        case .magnesium: return HKQuantityType.quantityType(forIdentifier: .dietaryMagnesium)!
        case .phosphorus: return HKQuantityType.quantityType(forIdentifier: .dietaryPhosphorus)!
        case .potassium: return HKQuantityType.quantityType(forIdentifier: .dietaryPotassium)!
        case .sodium: return HKQuantityType.quantityType(forIdentifier: .dietarySodium)!
        case .zinc: return HKQuantityType.quantityType(forIdentifier: .dietaryZinc)!
            
        /// Ultratrace Minerals
        case .chromium: return HKQuantityType.quantityType(forIdentifier: .dietaryChromium)!
        case .copper: return HKQuantityType.quantityType(forIdentifier: .dietaryCopper)!
        case .iodine: return HKQuantityType.quantityType(forIdentifier: .dietaryIodine)!
        case .manganese: return HKQuantityType.quantityType(forIdentifier: .dietaryManganese)!
        case .molybdenum: return HKQuantityType.quantityType(forIdentifier: .dietaryMolybdenum)!
        case .selenium: return HKQuantityType.quantityType(forIdentifier: .dietarySelenium)!
        
        /// Hydration
        case .water: return HKQuantityType.quantityType(forIdentifier: .dietaryWater)!
            
        /// Caffeine
        case .caffeine: return HKQuantityType.quantityType(forIdentifier: .dietaryCaffeine)!
            
        /// Sleep
        case .sleep: return HKCategoryType.categoryType(forIdentifier: .sleepAnalysis)!
            
        }
    }
}

/// Just has read capabilities
public enum MBReadType: ReadableType {
    
    case dob
    
    public var readable: HKObjectType {
        switch self {
        case .dob:
            return HKCharacteristicType.characteristicType(forIdentifier: .dateOfBirth)!
        }
    }
}

/// Just has share capabilities
public enum MBShareType: SharableType {
    
    public var sharable: HKSampleType {
        switch self {
            //
        }
    }
}


//public enum MBReadType { // HKObjectType
//
//    case stepCount
//    case heartRate
//    case workout
//
//    public var type: HKObjectType {
//        switch self {
//        case .stepCount:
//            return HKQuantityType.quantityType(forIdentifier: .stepCount)!
//        case .heartRate:
//            return HKQuantityType.quantityType(forIdentifier: .heartRate)!
//        case .workout:
//            return HKWorkoutType.workoutType()
//        }
//    }
//
//}

//public enum MBShareType { // HKSampleType
//
//    case stepCount
//    case heartRate
//    case workout
//
//    public var type: HKSampleType {
//        switch self {
//        case .stepCount:
//            return HKQuantityType.quantityType(forIdentifier: .stepCount)!
//        case .heartRate:
//            return HKQuantityType.quantityType(forIdentifier: .heartRate)!
//        case .workout:
//            return HKWorkoutType.workoutType()
//        }
//    }
//}



public struct MBHealthType {
    
//    public static func shareTypes(_ types: [MBShareType]) -> Set<HKSampleType>? {
//        let res = types.map { $0.type }
//        return Set(res)
//    }
//
//    public static func readTypes(_ types: [MBReadType]) -> Set<HKObjectType>? {
//        let res = types.map {$0.type }
//        return Set(res)
//    }
    
    static func shareTypes(_ types: [SharableType]) -> Set<HKSampleType>? {
        let res = types.map { $0.sharable }
        return Set(res)
    }
    
    static func readTypes(_ types: [ReadableType]) -> Set<HKObjectType>? {
        let res = types.map { $0.readable }
        return Set(res)
    }
}
