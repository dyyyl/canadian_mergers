# How to Build a CLI Gem

1. Plan your gem, imagine interface
2. Start with project structure - google
3. Start with entry point - the file run
4. Force that to build CLI interface
5. Stub out interface
6. Start making things real
7. Discover objects
8. Program

- A command line interface for scraping concluded mergers in Canada

Behaviour: a user types `canadian_mergers`

Show list of mergers:
------

__Mergers concluded June 2017__
| Parties to the Transaction | Industry | Result |
| -------------------------- |:--------:| ------:|
| Acklands-Grainger Inc. / WFS Enterprises Ltd. | 4189 | NAL |
| AECOM Technology Corporation / URS Corporation | 5413 | NAL |


What is expected output?
------
1. Parties to transaction
2. North American Industry Classification System
3. Result code (ARC, NAL, CA, or JD)
