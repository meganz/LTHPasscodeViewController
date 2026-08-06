import MEGAAppPresentation

extension LTHPasscodeViewController {
    @objc func recreateKMTransferFile() {
        Task {
            try? await DIContainer.kmTransferUtils.recreateTransferFile()
        }
    }
}
