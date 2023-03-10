// Copyright 2022 Google LLC. All rights reserved.
//
//
// Licensed under the Apache License, Version 2.0 (the "License"); you may not use this
// file except in compliance with the License. You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software distributed under
// the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
// ANY KIND, either express or implied. See the License for the specific language governing
// permissions and limitations under the License.

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

  var window: UIWindow?

  func scene(
    _ scene: UIScene, willConnectTo session: UISceneSession,
    options connectionOptions: UIScene.ConnectionOptions
  ) {
    guard let scene = scene as? UIWindowScene else { return }
    window = .init(windowScene: scene)

    // On iOS 15, continue to use opaque navigation bars like earlier iOS versions.
    if #available(iOS 15.0, *) {
      let navBarAppearance = UINavigationBarAppearance()
      navBarAppearance.configureWithOpaqueBackground()
      UINavigationBar.appearance().standardAppearance = navBarAppearance
      UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
    }

    let sampleListViewController = SampleListViewController()
    let navigationController = UINavigationController(rootViewController: sampleListViewController)
    window?.rootViewController = navigationController
    window?.makeKeyAndVisible()
  }
}
