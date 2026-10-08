#!/bin/bash

set -e

# Create testuser if it does not already exist
if ! id "testuser" >/dev/null 2>&1; then
    sudo useradd testuser
fi

# Set password aging and expiration policy
sudo chage -m 7 -M 90 -E 2026-12-31 -d 2026-09-29 testuser
