backup database Lexicon
to disk = 'C:\backupTest\lexicon_backup.bak'

drop database Lexicon

restore database Lexicon from disk = 'C:\backupTest\lexicon_backup.bak'