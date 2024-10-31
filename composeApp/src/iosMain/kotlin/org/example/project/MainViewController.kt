package org.example.project

import androidx.compose.ui.window.ComposeUIViewController
import platform.UIKit.UIViewController

fun MainViewController(
    mapUIViewController: () -> UIViewController
) = ComposeUIViewController {
    mapViewController = mapUIViewController
    App()
}


lateinit var mapViewController: () -> UIViewController
