#!/bin/bash

set -e

$(bazel info bazel-bin)/my-envoy -c echo2_server.yaml