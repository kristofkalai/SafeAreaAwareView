# SafeAreaAwareView
Safe area can be occupied! 💝

## Setup

Add the following to `Package.swift`:

```swift
.package(url: "https://github.com/stateman92/SafeAreaAwareView", exact: .init(0, 0, 1))
```

[Or add the package in Xcode.](https://developer.apple.com/documentation/xcode/adding_package_dependencies_to_your_app)

## Usage

```swift
SafeAreaAwareView(topSafeAreaContent: {
    Color.red.opacity(0.75)
}, bottomSafeAreaContent: {
    Color.white.opacity(0.75)
}, content: {
    Color.green.opacity(0.75)
})
```

For details see the Example app.

## Example

<p style="text-align:center;"><img src="https://github.com/stateman92/SafeAreaAwareView/blob/main/Resources/screenshot.png?raw=true" width="50%" alt="Example"></p>
