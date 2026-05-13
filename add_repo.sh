#!/bin/bash
# Add SLES 15 SP6 base product and modules repos from RMT mirror

BASE_URL="http://repo.vanguardmm.com/repo/SUSE"

# Base Product
zypper ar -f $BASE_URL/Products/SLE-Product-SLES/15-SP6/x86_64/product/ SLES15-SP6-Pool
zypper ar -f $BASE_URL/Updates/SLE-Product-SLES/15-SP6/x86_64/update/ SLES15-SP6-Updates

# Base Module
zypper ar -f $BASE_URL/Products/SLE-Module-Basesystem/15-SP6/x86_64/product/ SLE-Base-Pool
zypper ar -f $BASE_URL/Updates/SLE-Module-Basesystem/15-SP6/x86_64/update/ SLE-Base-Updates

# Desktop Applications
zypper ar -f $BASE_URL/Products/SLE-Module-Desktop-Applications/15-SP6/x86_64/product/ SLE-Desktop-Pool
zypper ar -f $BASE_URL/Updates/SLE-Module-Desktop-Applications/15-SP6/x86_64/update/ SLE-Desktop-Updates

# Development Tools
zypper ar -f $BASE_URL/Products/SLE-Module-Development-Tools/15-SP6/x86_64/product/ SLE-DevTools-Pool
zypper ar -f $BASE_URL/Updates/SLE-Module-Development-Tools/15-SP6/x86_64/update/ SLE-DevTools-Updates

# Legacy
zypper ar -f $BASE_URL/Products/SLE-Module-Legacy/15-SP6/x86_64/product/ SLE-Legacy-Pool
zypper ar -f $BASE_URL/Updates/SLE-Module-Legacy/15-SP6/x86_64/update/ SLE-Legacy-Updates

# Python 3
zypper ar -f $BASE_URL/Products/SLE-Module-Python3/15-SP6/x86_64/product/ SLE-Python3-Pool
zypper ar -f $BASE_URL/Updates/SLE-Module-Python3/15-SP6/x86_64/update/ SLE-Python3-Updates

# SAP Business One
zypper ar -f $BASE_URL/Products/SLE-Module-SAP-Business-One/15-SP6/x86_64/product/ SLE-SAPB1-Pool
zypper ar -f $BASE_URL/Updates/SLE-Module-SAP-Business-One/15-SP6/x86_64/update/ SLE-SAPB1-Updates

# Server Applications
zypper ar -f $BASE_URL/Products/SLE-Module-Server-Applications/15-SP6/x86_64/product/ SLE-ServerApps-Pool
zypper ar -f $BASE_URL/Updates/SLE-Module-Server-Applications/15-SP6/x86_64/update/ SLE-ServerApps-Updates
