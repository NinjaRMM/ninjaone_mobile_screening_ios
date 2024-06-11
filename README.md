# README #

Welcome to the NinjaOne candidate application. There are 5 tasks that need to be completed. Each task has its own folder and contains a view and view model. Each task is isolated to its own folder.

# Tasks: #

#### Debug: ####
In the DebugTask folder, there are several functions that have bugs.
- Test each function with different sample data sets and fix the potential issues.
- Display the results in the view.

####  Documentation and Testing: ####
In the DocumentationUnitTestingTask folder, you will see a view that allows the user to enter values for side 1, 2, and optionally 3. You should:
- Complete a method to return square footage (if only side 1 and side 2 are provided) or cubic volume (if side 3 is also provided). If needed, write helper functions.
- In NinjaCandidateTests.swift, write unit test(s) for this function. Make sure to think about various scenarios and edge cases.
- Add markdown documentation for this method, including descriptions of parameters and return values.

#### Errors and Validation: ####
In the ErrorsValidationTask folder, you will see a view that allows the user to enter an e-mail, phone, and MFA code. You should:
- Validate these three items using a custom Error type, and expose the validation result to the view. 
   - See ErrorsValidationViewModel for details about the defintion of "valid".
- Show the user an error message for any invalid item.
   - Show the user a success message if all the items are valid.

#### Networking: ####
 In the NetworkingTask folder, write a custom networking client and make a request to a public api of your choice.
- Add these headers (app-version, iOS-os-version, build-number) to the request.
- Use async / await and core networking, no frameworks like AlamoFire.

#### Custom: ####
In the CustomTask folder, write and design a custom feature.
- Use SwiftUI.
- Build a view model and show some data your choice (Bonus for using a public API).
- Display the data as you choose.
