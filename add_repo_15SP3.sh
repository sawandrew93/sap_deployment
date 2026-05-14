#!/bin/bash
# Add SLES 15 SP3 base product and modules repos from RMT mirror

BASE_URL="http://repo.vanguardmm.com/repo/SUSE"

# Base Product
zypper ar -f $BASE_URL/Products/SLE-Product-SLES/15-SP3/x86_64/product/ SLES15-SP3-Pool
zypper ar -f $BASE_URL/Updates/SLE-Product-SLES/15-SP3/x86_64/update/ SLES15-SP3-Updates

# Base Module
zypper ar -f $BASE_URL/Products/SLE-Module-Basesystem/15-SP3/x86_64/product/ SLE-Base-Pool
zypper ar -f $BASE_URL/Updates/SLE-Module-Basesystem/15-SP3/x86_64/update/ SLE-Base-Updates

# Desktop Applications
zypper ar -f $BASE_URL/Products/SLE-Module-Desktop-Applications/15-SP3/x86_64/product/ SLE-Desktop-Pool
zypper ar -f $BASE_URL/Updates/SLE-Module-Desktop-Applications/15-SP3/x86_64/update/ SLE-Desktop-Updates

# Development Tools
zypper ar -f $BASE_URL/Products/SLE-Module-Development-Tools/15-SP3/x86_64/product/ SLE-DevTools-Pool
zypper ar -f $BASE_URL/Updates/SLE-Module-Development-Tools/15-SP3/x86_64/update/ SLE-DevTools-Updates

# Legacy
zypper ar -f $BASE_URL/Products/SLE-Module-Legacy/15-SP3/x86_64/product/ SLE-Legacy-Pool
zypper ar -f $BASE_URL/Updates/SLE-Module-Legacy/15-SP3/x86_64/update/ SLE-Legacy-Updates

# Python 2
zypper ar -f $BASE_URL/Products/SLE-Module-Python2/15-SP3/x86_64/product/ SLE-Python2-Pool
zypper ar -f $BASE_URL/Updates/SLE-Module-Python2/15-SP3/x86_64/update/ SLE-Python2-Updates

# Server Applications
zypper ar -f $BASE_URL/Products/SLE-Module-Server-Applications/15-SP3/x86_64/product/ SLE-ServerApps-Pool
zypper ar -f $BASE_URL/Updates/SLE-Module-Server-Applications/15-SP3/x86_64/update/ SLE-ServerApps-Updates

# Web and Scripting
zypper ar -f $BASE_URL/Products/SLE-Module-Web-Scripting/15-SP3/x86_64/product/ SLE-WebScripting-Pool
zypper ar -f $BASE_URL/Updates/SLE-Module-Web-Scripting/15-SP3/x86_64/update/ SLE-WebScripting-Updates
