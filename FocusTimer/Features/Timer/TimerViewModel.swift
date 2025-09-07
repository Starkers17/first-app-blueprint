//
//  TimerViewModel.swift
//  FocusTimer
//
//  Created by Sean Stark on 7/9/2025.
//
import Foundation

@MainActor
final class TimerViewModel: ObservableObject {
    @Published var isRunning = false
    @Published var remainingSeconds: Int = 0

    private var timer: Timer?

    func start(seconds: Int) {
        guard !isRunning else { return }
        isRunning = true
        remainingSeconds = seconds

        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            guard let self = self else { return }
            if self.remainingSeconds > 0 {
                self.remainingSeconds -= 1
            } else {
                self.reset()
            }
        }
    }

    func reset() {
        isRunning = false
        remainingSeconds = 0
        timer?.invalidate()
        timer = nil
    }
}

