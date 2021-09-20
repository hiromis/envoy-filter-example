
load(
    "@envoy//bazel:envoy_build_system.bzl",
    "envoy_cc_binary",
    "envoy_cc_library",
    "envoy_cc_test",
)


envoy_cc_library(
    name = "echo2_lib",
    srcs = ["echo2.cc"],
    hdrs = ["echo2.h"],
    repository = "@envoy",
    deps = [
        "@envoy//envoy/buffer:buffer_interface",
        "@envoy//envoy/network:connection_interface",
        "@envoy//envoy/network:filter_interface",
        "@envoy//source/common/common:assert_lib",
        "@envoy//source/common/common:logger_lib",
    ],
)

envoy_cc_library(
    name = "echo2_config",
    visibility = ["//visibility:public"],
    srcs = ["echo2_config.cc"],
    repository = "@envoy",
    deps = [
        ":echo2_lib",
        "@envoy//envoy/network:filter_interface",
        "@envoy//envoy/registry:registry",
        "@envoy//envoy/server:filter_config_interface",
    ],
)

envoy_cc_test(
    name = "echo2_integration_test",
    srcs = ["echo2_integration_test.cc"],
    data =  ["echo2_server.yaml"],
    repository = "@envoy",
    deps = [
        ":echo2_config",
        "@envoy//test/integration:integration_lib"
    ],
)