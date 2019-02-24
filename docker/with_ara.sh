#!/usr/bin/env bash

# Wrapper script to add Ara environment variables for any given commands

. <(python -m ara.setup.env)

"$@"
