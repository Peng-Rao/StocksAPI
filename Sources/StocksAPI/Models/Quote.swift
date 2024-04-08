//
//  File.swift
//  
//
//  Created by raopend on 2024/4/3.
//

import Foundation

public struct Quote: Decodable, Identifiable, Hashable {
    
    public let id = UUID()
    
    public let symbol: String

    public let currency: String?
    public let marketState: String?
    
    public let fullExchangeName: String?
    public let displayName: String?
    
    public let regularMarketPrice: Double?
    public let regularMarketChange: Double?
    public let regularMarketChangePercent: Double?
    public let regularMarketChangePreviousClose: Double?
    public let regularMarketTime: Date?
    
    public let postMarketPrice: Double?
    public let postMarketChange: Double?
    
    public let regularMarketOpen: Double?
    public let regularMarketDayHigh: Double?
    public let regularMarketDayLow: Double?
    
    public let regularMarketVolume: Double?
    public let trailingPE: Double?
    public let marketCap: Double?
    
    public let fiftyTwoWeekLow: Double?
    public let fiftyTwoWeekHigh: Double?
    public let averageDailyVolume3Month: Double?
    
    public let trailingAnnualDividendYield: Double?
    public let epsTrailingTwelveMonths: Double?
    
    public init(symbol: String, currency: String? = nil, marketState: String? = nil, fullExchangeName: String? = nil, displayName: String? = nil, regularMarketPrice: Double? = nil, regularMarketChange: Double? = nil, regularMarketChangePercent: Double? = nil, regularMarketChangePreviousClose: Double? = nil, regularMarketTime: Date? = nil, postMarketPrice: Double? = nil, postMarketChange: Double? = nil, regularMarketOpen: Double? = nil, regularMarketDayHigh: Double? = nil, regularMarketDayLow: Double? = nil, regularMarketVolume: Double? = nil, trailingPE: Double? = nil, marketCap: Double? = nil, fiftyTwoWeekLow: Double? = nil, fiftyTwoWeekHigh: Double? = nil, averageDailyVolume3Month: Double? = nil, trailingAnnualDividendYield: Double? = nil, epsTrailingTwelveMonths: Double? = nil) {
        self.symbol = symbol
        self.currency = currency
        self.marketState = marketState
        self.fullExchangeName = fullExchangeName
        self.displayName = displayName
        self.regularMarketPrice = regularMarketPrice
        self.regularMarketChange = regularMarketChange
        self.regularMarketChangePercent = regularMarketChangePercent
        self.regularMarketChangePreviousClose = regularMarketChangePreviousClose
        self.regularMarketTime = regularMarketTime
        self.postMarketPrice = postMarketPrice
        self.postMarketChange = postMarketChange
        self.regularMarketOpen = regularMarketOpen
        self.regularMarketDayHigh = regularMarketDayHigh
        self.regularMarketDayLow = regularMarketDayLow
        self.regularMarketVolume = regularMarketVolume
        self.trailingPE = trailingPE
        self.marketCap = marketCap
        self.fiftyTwoWeekLow = fiftyTwoWeekLow
        self.fiftyTwoWeekHigh = fiftyTwoWeekHigh
        self.averageDailyVolume3Month = averageDailyVolume3Month
        self.trailingAnnualDividendYield = trailingAnnualDividendYield
        self.epsTrailingTwelveMonths = epsTrailingTwelveMonths
    }
    
}

public struct QuoteResponse: Decodable {
    
    var quotes: [Quote] = []
    
    enum CodingKeys: CodingKey {
        case quotes
    }
    
    public init(from decoder: any Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        quotes = try values.decode([Quote].self, forKey: .quotes)
    }
}
