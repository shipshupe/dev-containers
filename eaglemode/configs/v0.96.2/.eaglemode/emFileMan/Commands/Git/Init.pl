#!/usr/bin/perl
#[[BEGIN PROPERTIES]]
# Type = Command
# Order = 1.0
# Interpreter = perl
# DefaultFor = directory
# Caption = Init
# Descr = Initialize a Git repository
# Descr =
# Descr =
# Descr =Selection details:
# Descr =
# Descr =  Source: Ignored.
# Descr =
# Descr =  Target: The directory to be used as the current working directory.
# Descr =          If a file is selected as the target, the parent directory
# Descr =          of that file is used.
# Icon = terminal.tga
# Hotkey = Ctrl+T
#[[END PROPERTIES]]

use strict;
use warnings;
BEGIN { require "$ENV{'EM_DIR'}/res/emFileMan/scripts/cmd-util.pl"; }

ErrorIfNotSingleTarget();
ErrorIfTargetsNotDirs();

my @tgt=GetTgt();
my $dir=$tgt[0];
# if (! -d $dir) {
# 	$dir=dirname($dir);
# }
ChDirOrError($dir);

my $e = TermRunAndSync('git', 'init');

SendUpdate();

TermEnd($e);
