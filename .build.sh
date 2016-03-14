#!/bin/bash

set -o errexit -o nounset

gitbook install
gitbook build
