#!/bin/bash
grep "Failed password" /var/log/secure 2>/dev/null | wc -l
