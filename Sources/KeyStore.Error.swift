// Copyright © 2017-2018 roth.
//
// This file is part of roth. The full roth copyright notice, including
// terms governing use, modification, and redistribution, is contained in the
// file LICENSE at the root of the source code distribution tree.

import Foundation

extension KeyStore {
    public enum Error: Swift.Error, LocalizedError {
        case accountNotFound
        case invalidMnemonic
        case invalidKey

        public var errorDescription: String? {
            switch self {
            case .accountNotFound:
                return NSLocalizedString("Account not found", comment: "Error message when trying to access an account that does not exist")
            case .invalidMnemonic:
                return NSLocalizedString("Invalid mnemonic phrase", comment: "Error message when trying to import an invalid mnemonic phrase")
            case .invalidKey:
                return NSLocalizedString("Invalid private key", comment: "Error message when trying to import an invalid private key")
            }
        }
    }
}
