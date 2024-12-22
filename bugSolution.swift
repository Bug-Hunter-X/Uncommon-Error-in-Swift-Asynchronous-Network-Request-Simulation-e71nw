func fetchData(completion: @escaping (Result<[String], Error>) -> Void) {
    // Simulate network request
    DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
        let data = ["apple", "banana", "orange"]
        // Simulate an error with a small probability
        if arc4random_uniform(10) == 0 {
            let error = NSError(domain: "fetchDataError", code: 1, userInfo: [NSLocalizedDescriptionKey: "Simulated network error"])
            print("Error fetching data: ", error)
            completion(.failure(error))
        } else {
            completion(.success(data))
        }
    }
}