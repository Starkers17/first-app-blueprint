//
//  TimerViewModelTests.swift
//  FocusTimer
//
//  Created by Sean Stark on 7/9/2025.
//
import XCTest
@testable import FocusTimer

final class TimerViewModelTests: XCTestCase {
    func testStartAndReset() {
        let vm = TimerViewModel()
        vm.start(seconds: 3)

        XCTAssertTrue(vm.isRunning)
        XCTAssertEqual(vm.remainingSeconds, 3)

        vm.reset()
        XCTAssertFalse(vm.isRunning)
        XCTAssertEqual(vm.remainingSeconds, 0)
    }
}

