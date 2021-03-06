// Copyright 2018-Present Shin Yamamoto. All rights reserved. MIT license.

import Foundation

enum UseCase: Int, CaseIterable {
    case trackingTableView
    case trackingTextView
    case showDetail
    case showModal
    case showPanelModal
    case showMultiPanelModal
    case showPanelInSheetModal
    case showTabBar
    case showPageView
    case showPageContentView
    case showNestedScrollView
    case showRemovablePanel
    case showIntrinsicView
    case showContentInset
    case showContainerMargins
    case showNavigationController
    case showTopPositionedPanel
    case showAdaptivePanel
    case showAdaptivePanelWithCustomGuide
    case showCustomStatePanel

    var name: String {
        switch self {
        case .trackingTableView: return "Scroll tracking(TableView)"
        case .trackingTextView: return "Scroll tracking(TextView)"
        case .showDetail: return "Show Detail Panel"
        case .showModal: return "Show Modal"
        case .showPanelModal: return "Show Panel Modal"
        case .showMultiPanelModal: return "Show Multi Panel Modal"
        case .showPanelInSheetModal: return "Show Panel in Sheet Modal"
        case .showTabBar: return "Show Tab Bar"
        case .showPageView: return "Show Page View"
        case .showPageContentView: return "Show Page Content View"
        case .showNestedScrollView: return "Show Nested ScrollView"
        case .showRemovablePanel: return "Show Removable Panel"
        case .showIntrinsicView: return "Show Intrinsic View"
        case .showContentInset: return "Show with ContentInset"
        case .showContainerMargins: return "Show with ContainerMargins"
        case .showNavigationController: return "Show Navigation Controller"
        case .showTopPositionedPanel: return "Show Top Positioned Panel"
        case .showAdaptivePanel: return "Show Adaptive Panel"
        case .showAdaptivePanelWithCustomGuide: return "Show Adaptive Panel (Custom Layout Guide)"
        case .showCustomStatePanel: return "Show Panel with Custom state"
        }
    }

    var storyboardID: String? {
        switch self {
        case .trackingTableView: return nil
        case .trackingTextView: return "ConsoleViewController" // Storyboard only
        case .showDetail: return String(describing: DetailViewController.self)
        case .showModal: return String(describing: ModalViewController.self)
        case .showMultiPanelModal: return nil
        case .showPanelInSheetModal: return nil
        case .showPanelModal: return nil
        case .showTabBar: return String(describing: TabBarViewController.self)
        case .showPageView: return nil
        case .showPageContentView: return nil
        case .showNestedScrollView: return String(describing: NestedScrollViewController.self)
        case .showRemovablePanel: return String(describing: DetailViewController.self)
        case .showIntrinsicView: return "IntrinsicViewController" // Storyboard only
        case .showContentInset: return nil
        case .showContainerMargins: return nil
        case .showNavigationController: return "RootNavigationController" // Storyboard only
        case .showTopPositionedPanel: return nil
        case .showAdaptivePanel,
             .showAdaptivePanelWithCustomGuide:
            return String(describing: ImageViewController.self)
        case .showCustomStatePanel:
            return nil
        }
    }
}
