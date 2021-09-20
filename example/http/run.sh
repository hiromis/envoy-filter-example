#!/bin/bash

set -e

$(bazel info bazel-bin)/my-envoy -c envoy-demo.yaml