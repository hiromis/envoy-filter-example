package(default_visibility = ["//visibility:public"])

load(
    "@envoy//bazel:envoy_build_system.bzl",
    "envoy_cc_binary",
    "envoy_cc_library",
    "envoy_cc_test",
)

envoy_cc_binary(
    name = "my-envoy",
    repository = "@envoy",
    deps = [
        "@envoy//source/exe:envoy_main_entry_lib",
        "//filters/network/echo2:echo2_config",
        "//filters/http/sample:http_filter_config",
    ],
)

sh_test(
    name = "envoy_binary_test",
    srcs = ["envoy_binary_test.sh"],
    data = [":envoy"],
)
