# -*- python -*-

# This file marks a workspace root for the Bazel build system. see
# http://bazel.io/ .

workspace(name = "dreal")

load("//tools:github.bzl", "github_archive")

github_archive(
    name = "io_kythe_dreal", # Apache-2.0
    repository = "dreal-deps/kythe",
    commit = "beea4d79aac45e6a50774052254f8b74c4fa1b9c",
    sha256 = "81b93528a95f7ee60b2711cf46de8387018ba9d87ea568e8d347d337f3a1eb7b",
)

github_archive(
    name = "google_styleguide", # GOOGLE
    repository = "google/styleguide",
    commit = "15f2836d9fea3835d541d4d327ccf053d4052822",
    sha256 = "448d528447e7e8c363b3757605ecfd6e8a779a6ff2dd4bb321e4739aa1a59981",
    build_file = "//tools:google_styleguide.BUILD",
)
github_archive(
    name = "gtest", # GOOGLE
    repository = "google/googletest",
    commit = "release-1.8.0",
    sha256 = "58a6f4277ca2bc8565222b3bbd58a177609e9c488e8a72649359ba51450db7d8",
    build_file = "//tools:gtest.BUILD",
)

load("//dreal:workspace.bzl", "dreal_workspace")
dreal_workspace()
