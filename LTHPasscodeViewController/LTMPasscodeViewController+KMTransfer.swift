import MEGAAppPresentation

extension LTHPasscodeViewController {
    private var isKMTransferEnabled: Bool {
        DIContainer.featureFlagProvider.isFeatureFlagEnabled(for: .kmTransfer)
    }

    @objc func recreateKMTransferFile() {
        guard isKMTransferEnabled else { return }
        Task {
            try? await DIContainer.kmTransferUtils.recreateTransferFile()
        }
    }
}
