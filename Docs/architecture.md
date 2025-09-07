# Architecture overview

- App: FocusTimer (SwiftUI, Swift Concurrency)
- Pattern: MVVM-lite
- Modules:
  - Features/Timer: View (SwiftUI), ViewModel (business logic), Models (data)
  - Persistence: SwiftData (later)
- Testing:
  - Unit tests for ViewModel (XCTest)
  - One smoke UI test per feature (XCUITest)
- File layout:
  FocusTimer/FocusTimer/
    App/
    Features/Timer/
    Persistence/
    Resources/
