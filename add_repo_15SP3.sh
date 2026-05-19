#!/bin/bash
# Add SLES 15 SP3 base product and modules repos from RMT mirror

SUSEConnect --url http://repo.vanguardmm.com

SUSEConnect -p sle-module-development-tools/15.3/x86_64
SUSEConnect -p sle-module-legacy/15.3/x86_64
SUSEConnect -p sle-module-transactional-server/15.3/x86_64
SUSEConnect -p sle-module-python2/15.3/x86_64
SUSEConnect -p sle-module-web-scripting/15.3/x86_64

