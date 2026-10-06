#!/bin/bash

# Create user if it doesn't exist
sudo useradd testuser 2>/dev/null || true

# Set the password aging and expiration policy
sudo chage -m 7 -M 90 -E 2026-12-31 -d 2026-09-29 testuser
