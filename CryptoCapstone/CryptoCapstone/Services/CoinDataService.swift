//
//  NetworkManager.swift
//  CryptoCapstone
//
//  Created by Consultant on 8/18/23.
//

import Foundation
import Combine

class CoinDataService {
    
    @Published var allCoins: [CoinModel] = []
    
    var coinSubscription: AnyCancellable?
    
    init() {
        getCoinsFromAPI()
    }
    
    func getCoinsFromAPI(){
        //gets coin data
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&ord=market_cap_desc&per_page=250&page=1&sparkling=true&price_change_percentage=24h") else {return}
        
        coinSubscription = NetworkManager.download(url: url)
            .decode(type: [CoinModel].self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkManager.handleCompletion, receiveValue:  { [weak self] (returnedCoins) in
                self?.allCoins = returnedCoins
                self?.coinSubscription?.cancel()
            })
            
    }
}
