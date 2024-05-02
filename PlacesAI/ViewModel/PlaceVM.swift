//
//  PlaceVM.swift
//  PlacesAI
//
//  Created by User50 on 24/04/24.
//

import Foundation
import GoogleGenerativeAI
import FirebaseCore

@MainActor
class PlaceVM: ObservableObject {
    private var geminiModel: GenerativeModel?
    @Published var place: [Place] = []
    @Published var isReady: Bool = false
    
    init() {
//        self.geminiModel = GenerativeModel(name: "gemini-pro", apiKey: Constant.APIkey)
        configureGenerativeModel()
        
    }
    
    func configureGenerativeModel(){
        Task {
            do {
                let apikey: String = try await RemoteConfigService.shared.fetchConfig(forKey: .apiKey)
                geminiModel = GenerativeModel(name:"gemini-pro", apiKey: apikey)
                self.isReady = true
            } catch {
                print("Error configuring Generative Model: \(error)")
            }
        }
    }
    
    
    func getPlaces() async {
        let prompt = Constant.prompt
        
        guard let geminiModel = self.geminiModel else {
            print("Generative Model is not Configured")
            return
        }
        
        do {
            let response = try await geminiModel.generateContent(prompt)
            guard let text = response.text, let data  = text.data(using: .utf8) else {
                print ("😵😵‍💫 Unable to extract text or convert to data")
                return
            }
            place = try JSONDecoder().decode([Place].self,from:data)
            
        } catch {
            print("💩 ERROR fetching places: \(error.localizedDescription)")
        }
    }
}

