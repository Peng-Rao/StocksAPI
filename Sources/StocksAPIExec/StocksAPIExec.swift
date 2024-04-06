//
//  File.swift
//  
//
//  Created by raopend on 2024/4/1.
//

import Foundation
import StocksAPI

@main
struct StocksAPIExec {
    
    static let stocksAPI = StocksAPI()
    
    static func main() async {
        do {
//            let quotes = try await stocksAPI.fetchQuotes(symbols: "AAPL,TSLA,GOOG,MSFT")
//            print(quotes)
//            let tickers = try await stocksAPI.searchTickers(query: "tesla")
//            print(tickers)
            if let chart = try await stocksAPI.fetchChartData(tickerSymbol: "AAPL", range: .oneDay) {
                print(chart)
            }
        } catch {
            print("ERROR")
        }
    }
}
