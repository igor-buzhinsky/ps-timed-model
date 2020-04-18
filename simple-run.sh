# BMC (can only prove that a formula is false)
nuXmv -coi -dynamic -df -int -time -source timed-bmc.cmd -pre cpp ps-0-failures.smv
nuXmv -coi -dynamic -df -int -time -source timed-bmc.cmd -pre cpp ps-1-failure.smv

# IC3 (can prove both true and false but typically works up to 15 minutes or even does not terminate or consumes too much memory)
#nuXmv -coi -dynamic -df -int -time -source timed-ic3.cmd -pre cpp ps-0-failures.smv
#nuXmv -coi -dynamic -df -int -time -source timed-ic3.cmd -pre cpp ps-1-failure.smv

