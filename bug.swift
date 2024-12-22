func fetchData(completion: @escaping (Result<[String], Error>) -> Void) {
    // Simulate network request
    DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
        let data = ["apple", "banana", "orange"]
        // Simulate an error with a small probability
        if arc4random_uniform(10) == 0 {
            completion(.failure(NSError(domain: "fetchDataError", code: 1, userInfo: nil)))
        } else {
            completion(.success(data))
        }
    }
}