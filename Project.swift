import ProjectDescription

let project = Project(
    name: "TestSample",
    targets: [
        .target(
            name: "TestSample",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.TestSample",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            sources: ["TestSample/Sources/**"],
            resources: ["TestSample/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "TestSampleTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TestSampleTests",
            infoPlist: .default,
            sources: ["TestSample/Tests/**"],
            resources: [],
            dependencies: [.target(name: "TestSample")]
        ),
    ]
)
