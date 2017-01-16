import PackageDescription

let package = Package(
    name: "CommonCrypto",
    targets: [
        Target(name: "CommonCrypto"),
    ],
    dependencies: [
    	.Package(url: "https://github.com/kmussel/ccommoncrypto.git", "0.0.1"),
    ]    
)
