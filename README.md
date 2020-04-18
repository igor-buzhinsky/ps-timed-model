## Timed formal model of a reactor protection system

Details regarding the reactor protection (PS) system can be found in [Buzhinsky I., Pakonen A. Model-checking detailed fault-tolerant nuclear power plant safety functions. IEEE Access, vol. 7, 2019, pp. 162139–162156. DOI: 10.1109/ACCESS.2019.2951938](https://ieeexplore.ieee.org/document/8892461/).

In the model available from this repository, the communication within this system is modeled in the nuXmv model checker, with timed automata. You need to have [nuXmv 2.0.0](https://nuxmv.fbk.eu/) installed.
Note that failure/validity signal processing has been simplified compared to the versions reported in the article above and the submitted manuscript, so that we could publish this model.

The actual model files are [ps-0-failures.smv](ps-0-failures.smv) and [ps-1-failure.smv](ps-1-failure.smv). They differ by only one line of code that specifies whether APU 2 is correct (0 failures) or failing (1 failure). Examples of running the model are given in [simple-run.sh](simple-run.sh), assuming that nuXmv is available from the command line. In particular, this file shows how to run BMC and IC3 verification. By default, all temporal specifications (LTLSPEC) are commented out except for one (you can change the uncommented property manually). The reason for this is that verification proceeds until a proof/counterexample is found, which may result in long or infinite (BMC) execution times for some temporal specifications, meaning that such executions will block verification of other temporal properties.
