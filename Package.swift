// swift-tools-version:5.5

import PackageDescription

let package = Package(name: "AlamofireObjectMapper",
                      platforms: [.macOS(.v12),
                                  .iOS(.v13),
                                  .tvOS(.v9),
                                  .watchOS(.v2)],
                      products: [.library(name: "AlamofireObjectMapper",
                                          targets: ["AlamofireObjectMapper"])],
		      dependencies: [
        		  .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.0.0"),
			  .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", from: "3.5.1")
    		      ],
                      targets: [.target(name: "AlamofireObjectMapper",
                                        path: "AlamofireObjectMapper"),
                                .testTarget(name: "AlamofireObjectMapperTests",
                                            dependencies: ["AlamofireObjectMapper"],
                                            path: "Tests")],
                      swiftLanguageVersions: [.v5])
