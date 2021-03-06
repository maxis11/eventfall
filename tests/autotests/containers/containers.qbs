import qbs

Project {
    Product {
        type: ["application", "autotest"]
        name: "Containers Tests"
        files: ["*.cpp","*.hpp"]
        consoleApplication: true

        Group {
            fileTagsFilter: product.type
            qbs.install: true
        }

        cpp.cxxLanguageVersion: "c++1z"

        Depends { name: "Containers" }
        Depends { name: "Utils" }
        Depends { name: "Qt"; submodules: ["core","test"] }
    }
}
