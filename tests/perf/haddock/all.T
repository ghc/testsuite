
test('haddock.base',
     [unless_in_tree_compiler(skip)
     ,if_wordsize(64,
          stats_num_field('peak_megabytes_allocated', 243,
                                                      245))
                                        # 2012-08-14: 244 (amd64/Linux)
     ,if_wordsize(32,
          stats_num_field('peak_megabytes_allocated', 142,
                                                      143))
                                        # 2012-08-14: 144 (x86/OSX)
     ,if_wordsize(64,
          stats_range_field('max_bytes_used', 87973376, 1))
                                # 2012-08-14: 87973376 (amd64/Linux)
     ,if_wordsize(32,
          stats_range_field('max_bytes_used', 45574928, 1))
                                # 2012-08-14: 45574928 (x86/OSX)
     ,if_wordsize(64,
          stats_range_field('bytes allocated', 6008206104, 1))
                                 # 2012-08-14: 6008206104 (amd64/Linux)
     ,if_wordsize(32,
          stats_range_field('bytes allocated', 3046487920, 1))
                                 # 2012-08-14: 3046487920 (x86/OSX)
      ],
     stats,
     ['../../../../libraries/base/dist-install/doc/html/base/base.haddock.t'])

test('haddock.Cabal',
     [unless_in_tree_compiler(skip)
     ,if_wordsize(64,
          stats_num_field('peak_megabytes_allocated', 203,
                                                      205))
                                        # 2012-08-14: 204 (amd64/Linux)
     ,if_wordsize(32,
          stats_num_field('peak_megabytes_allocated', 112,
                                                      117))
                                        # 2012-08-14: 116 (x86/OSX)
                                        # 2112-08-15: 113 (x86/Linux)
     ,if_wordsize(64,
          stats_range_field('max_bytes_used', 74901488, 1))
                                # 2012-08-14: 74901488 (amd64/Linux)
     ,if_wordsize(32,
          stats_range_field('max_bytes_used', 47461532, 1))
                                # 2012-08-14: 47461532 (x86/OSX)
     ,if_wordsize(64,
          stats_range_field('bytes allocated', 3243985728, 1))
                                 # 2012-08-14: 3243985728 (amd64/Linux)
     ,if_wordsize(32,
          stats_range_field('bytes allocated', 1648610180, 1))
                                 # 2012-08-14: 1648610180 (x86/OSX)
      ],
     stats,
     ['../../../../libraries/Cabal/Cabal/dist-install/doc/html/Cabal/Cabal.haddock.t'])

test('haddock.compiler',
     [unless_in_tree_compiler(skip)
     ,if_wordsize(64,
          stats_num_field('peak_megabytes_allocated', 1197,
                                                      1199))
                                        # 2012-08-14: 1198 (amd64/Linux)
     ,if_wordsize(32,
          stats_num_field('peak_megabytes_allocated', 625,
                                                      632))
                                        # 2012-08-14: 631 (x86/OSX)
                                        # 2012-08-15: 628 (x86/Linux)
     ,if_wordsize(64,
          stats_range_field('max_bytes_used', 427111776, 1))
                                # 2012-08-14: 427111776 (amd64/Linux)
     ,if_wordsize(32,
          stats_range_field('max_bytes_used', 231064920, 1))
                                # 2012-08-14: 231064920 (x86/OSX)
     ,if_wordsize(64,
          stats_range_field('bytes allocated', 25870942672, 1))
                                 # 2012-08-14: 25870942672 (amd64/Linux)
     ,if_wordsize(32,
          stats_range_field('bytes allocated', 13471797488, 5))
                                 # 2012-08-14: 13471797488 (x86/OSX)
                                 # 2012-08-15: 12982397712 (x86/Linux)
      ],
     stats,
     ['../../../../compiler/stage2/doc/html/ghc/ghc.haddock.t'])

