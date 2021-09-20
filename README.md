# Envoy filter example

This project demonstrates the linking of additional filters with the Envoy binary.

- Network filter example `echo2`, see [echo2](filters/network/echo2)
- HTTP filter example `sample`, see [here](filters/http/sample).

## Building

To build the Envoy static binary:

1. `git submodule update --init`
2. `bazel build //:my-envoy`

## Testing

To run all the filter tests:
`bazel test //filters/... `

To run the regular Envoy tests from this project:

`bazel test @envoy//test/...`

## How it works

The [Envoy repository](https://github.com/envoyproxy/envoy/) is provided as a submodule.
The [`WORKSPACE`](WORKSPACE) file maps the `@envoy` repository to this local path.

The [`BUILD`](BUILD) file introduces a new Envoy static binary target, `my-envoy`,
that links together the new filter and `@envoy//source/exe:envoy_main_entry_lib`. The
`echo2` network filter and `sample` http filter register themself during the static initialization phase of the
Envoy binary as a new filter.


