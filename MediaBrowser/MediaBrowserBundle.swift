//
//  MediaBrowserBundle.swift
//  MediaBrowser
//
//  Created by Alexander Yuzhin on 03.02.2026.
//

import Foundation

public enum MediaBrowserBundle {
    public static let bundle: Bundle = {
#if SWIFT_PACKAGE
        return .module                           // SPM
#else
        let candidates: [Bundle] = [
            Bundle(for: BundleToken.self),       // framework bundle
            Bundle.main
        ]

        for b in candidates {
            if let url = b.url(forResource: "MediaBrowser", withExtension: "bundle"),
               let rb = Bundle(url: url) {
                return rb
            }
        }

        return Bundle(for: BundleToken.self)
#endif
    }()
}

private final class BundleToken {}
