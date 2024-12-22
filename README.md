# Uncommon Error in Swift Asynchronous Network Request Simulation

This repository demonstrates an uncommon error that can occur in Swift code when simulating asynchronous network requests.  The error is non-deterministic, making it difficult to debug. The problem lies in the random error simulation, which can lead to unexpected behavior in applications relying on the data fetched by this function.

The `bug.swift` file contains the buggy code, and `bugSolution.swift` provides a solution that addresses the issue while retaining the core functionality.

## Problem Description
The `fetchData` function simulates a network request.  There's a 1/10 chance that the request will fail and return an error.  This probabilistic failure makes it tricky to reproduce and diagnose the error consistently.

## Solution
The solution in `bugSolution.swift` improves the error handling and simulation by adding error logging.