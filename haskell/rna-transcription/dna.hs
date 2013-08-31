module DNA where

toRNA sequence = map transcribe sequence
                  where transcribe 'T' = 'U'
                        transcribe x   = x

