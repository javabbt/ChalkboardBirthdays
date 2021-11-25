//
//  JSONResults.swift
//  ChalkboardBirthdays
//
//  Created by Rob on 25/11/2021.
//

import Foundation

class Results: ObservableObject {
    @Published var responseResults: [BirthdaysData] = []

    @MainActor
    func getData() async {
        var results: [BirthdaysData] = []

        guard let url = URL(string: "https://randomuser.me/api/?results=1000&seed=chalkboard&inc=name,dob") else {
            print("Invalid URL")
            return
        }

        let (data, _) = try! await URLSession.shared.data(from: url)

        do {
            let decodedResponse = try JSONDecoder().decode(Response.self, from: data)

            //Print to log to check for response
            print(decodedResponse)

            results = decodedResponse.results
        } catch {
            print(error)
        }

        responseResults = results
    }
}
