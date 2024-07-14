//
//  ConigManger.swift
//  CICD_WorkShop
//
//  Created by Abdallah ismail on 14/07/2024.
//

import Foundation
final class ConfigManager {
    enum configkeys: String {
        case buildNumber = "CFBundleVersion"
        case versionNumber = "CFBundleShortVersionString"
        case environmentKey = "ENVIRONMENT_KEY"
        case appName = "CFBundleName"
        case baseURL = "BASE_URL"
        case googleAPIKey = "GOOGLE_API_KEY"
        case appbundleId = "CFBundleIdentifier"
    }
    static func getValueFor (key:configkeys)-> String{
        let value = Bundle.main.object(forInfoDictionaryKey: key.rawValue) as? String ?? "N/A"
        return value
    }
}

