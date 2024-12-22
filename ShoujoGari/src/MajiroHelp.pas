  // todo: make a neat ASCII graphics class and replace this with the calls to it.

  Help :=
    '                         -------------------------------                        ' +
    '                            Majiro toolkit basic help                           ' +
    '                         -------------------------------                        ' +
    F_EOLN +
    '  This program supports Majiro archives of versions 1 and 2 and' + F_EOLN +
    'Majiro object files of both X and V versions.' + F_EOLN +
    F_EOLN +
    '  The interface is optimized for use in a drag-and-drop fasion.' + F_EOLN +
    '  For a detailed info on invokation syntax, all available tasks, options, etc.' + F_EOLN +
    'run this program like this:' + F_EOLN +
    '    majiro.exe h' + F_EOLN +
    F_EOLN +
    'Drag-and-drop way of using' + F_EOLN +
    '  You can drag and drop a specific file onto this program''s EXE icon to' + F_EOLN +       
    'execute some action appropriate for this file. Below is what happens exactly.' + F_EOLN +          
    F_EOLN +
    '  If you dropped a file with an extension <ext> the tool will...' + F_EOLN +
    '  <arc>'#9 +   'Extract a Majiro archive (v1 or v2) into the directory where it resides.' +
    '  (dir)'#9 +   'Export texts from all <mjo>s in this directory.' + F_EOLN + 
    '  <mjo>'#9 +   'Added this <mjo> to an archive which is searched in:' + F_EOLN +
    '       '#9 +   '  .\scenario1.arc'#9    +'("." = the <mjo>''s directory)' + F_EOLN +
    '       '#9 +   '  .\scenario.arc' + F_EOLN +
    '       '#9 +   '  ..\scenario1.arc'#9   +'(".." = its parent directory)' + F_EOLN +
    '       '#9 +   '  ..\scenario.arc' + F_EOLN +
    '  <utf>'#9 +   'Import texts in the file with the same name but <mjo> extension.' + F_EOLN +
     F_EOLN +
     'The program itself (majiro.exe) can be located anywhere, even on your desktop.' + F_EOLN +
     F_EOLN +
     '  In translated lines all leading and trailing spaces (only ANSI) are stripped.' + F_EOLN +
     'Texts will be auto word wrapped, see --line-length option to change the length.' + F_EOLN +
     'Each 3rd line will have pause inserted after it (game textbox is 3 lines tall).' + F_EOLN +
     F_EOLN +
     '  Note that in translated lines you can use "|" to force line break there.' + F_EOLN +
     'Example ("TL" and "text" will be on different lines):' + F_EOLN +
     '  <0000> Original text...=TL|text' + F_EOLN +
     'As an alternative, you can use "\n" in place of "|" or mix both in one line.' + F_EOLN +
     F_EOLN +
     '  Also, you can use one dash (-) for the translation part and that line will' + F_EOLN +
     'be replaced with one full-width Japanese space (U+3000). Example:' + F_EOLN +
     '  <0000> Original text...=-  OR (with spaces)  <0000> Original...= -'
     ;

                                 

  HelpDetails :=
    F_EOLN + F_EOLN +
    '                       -----------------------------------                      ' +
    '                          Majiro toolkit  detailed help                         ' +
    '                       -----------------------------------                      ' +
    F_EOLN +
    'Usage:' + F_EOLN +
    '  majiro.exe [--option --...] <task> [<arg> <ume> <nts> ...]' + F_EOLN +
    F_EOLN + F_EOLN +
    'General tasks:' + F_EOLN +
    '  (no)'#9+'Shows basic help' + F_EOLN +
    '  h'#9     +   'Shows full help' + F_EOLN +
    '  v'#9     +   'Outputs a version string' + F_EOLN +
    F_EOLN +
    'Majiro archive tasks:' + F_EOLN +
    '  l'#9     +   'Lists contents' + F_EOLN +
    '  xa'#9    +   'Extracts contents into .\archive_parent_dir_name\' + F_EOLN +
    '  aa'#9    +   'Adds (or updates) a file' + F_EOLN +
    '    '#9    +   'Note that it currently can only update existing files, not adding new' + F_EOLN +
    F_EOLN +
    'Majiro object (scripts) tasks:' + F_EOLN +        
    '  ?s'#9    +   'Outputs some technical info' + F_EOLN +
    '  xs'#9    +   'Exports texts' + F_EOLN +
    '  is'#9    +   'Imports (updates) texts' + F_EOLN +
    '  cs'#9    +   'Converts objects between MjObjX (encrypted) <=> MjObjV (plain) types' + F_EOLN + 
    F_EOLN +
    'Misc - jump indexes:' + F_EOLN +
    '  ji?'#9   +   'Show technical info about a jump index table' + F_EOLN +
    '  jig'#9   +   'Generate jump index table for a Majiro object' + F_EOLN +
    F_EOLN +
    '  Note that normally you won''t need to use these commands; jump indexes are' + F_EOLN +
    'created automatically when you first import texts into an object.' + F_EOLN +
    '  Jump indexes are files with a <.jix> extension and "JIxT" magic-signature.' + F_EOLN +
    F_EOLN + F_EOLN +
    'Options (the former suppresses the latter):' + F_EOLN +
    '--no-wait & --wait & --wait-on-error (default)' + F_EOLN +
        #9'Dis/Enables waiting for Enter pressing before the program exits.' + F_EOLN +
    '--hex-offsets (default) & --decimal-offsets' + F_EOLN +
        #9'In the exported texts file, <offsets> can have two forms:' + F_EOLN +
        #9'* <12345678>'#9 + 'when --decimal-offsets is on' + F_EOLN +
        #9'* <$BC614E>'#9  + 'when --hex-offsets is on (usually used for compactness' + F_EOLN +
    '--line-length=60' + #9'Longest line length for auto word wrapping. Default 60.' + F_EOLN +
    F_EOLN + F_EOLN +
    'Arguments...' + F_EOLN +
    '  should be passed in the following order (omitting if one is unnecessary):' + F_EOLN +
    '  1. <arc> - a Majiro archive;' + F_EOLN +
    '  2. <mjo> - a Majiro object (script);' + F_EOLN +
    '  3. <utf> - an exported texts file;' + F_EOLN +
    '  4. Enerything else.' + F_EOLN +
    F_EOLN +
    '  If there are several arguments of the same type, pass them all in group. For example:' + F_EOLN +
    '    yosuga.arc 001.mjo 002.mjo 003.mjo 001.utf 002.utf 003.utf' + F_EOLN +
    '  Don''t mix different types with each other.' + F_EOLN +
    F_EOLN +
    '  Here''s which arguments and how are accepted by each command:' + F_EOLN +
    '  l'#9      +  '1 or more <arc>' + F_EOLN +
    '  xa'#9     +  '1 <arc> + 0 (= all) or more <any> files-to-extract (masks)' + F_EOLN +
    '  aa'#9     +  '1 <arc> + 1 or more <any> files-to-add' + F_EOLN +
    '  ?s'#9     +  '0 (= all) or more <mjo>' + F_EOLN +
    '  xs'#9     +  '0 (= all) or more <mjo>-to-export' + F_EOLN +
    '  is'#9     +  '0 (= all) or more <mjo>-to-import-into' + F_EOLN +
    '  cs'#9     +  '0 (= all) or more <mjo>-to-convert' + F_EOLN +
    '  ji?'#9    +  '1 or more <jix>-to-show-info-of' + F_EOLN +
    '  jig'#9    +  '1 or more <mjo>-to-generate-jump-index-for' + F_EOLN +
    F_EOLN + F_EOLN +
    'Some notes:' + F_EOLN +
    '  * those numbers (1 and "more") are masks; thus, you can use a mask and turn' + F_EOLN +
    '    "1" into "many" (see the examples below) and "many" into even more...' + F_EOLN +
    '  * masks are like standard Windows'' file masks, supporting * and ? wildcards.' + F_EOLN +
    '  * if a mask is relative or have no path it''s expanded with the current dir.' + F_EOLN +
    '  * masks cannot be used within path: "a\b\c*" is correct but "a*\b\c" is not.' + F_EOLN +
    '  * a directory + path delim. at the end (but without a file name part) in any' + F_EOLN +
    '    argument equals to "that_argument\*" mask (= all files in that folder).' + F_EOLN +
    '  * any error during one operation will drop all other and terminate the app.' + F_EOLN +
    F_EOLN + F_EOLN +
    '                      -------------------------------------                     ' +
    '                        Majiro toolkit  invoking examples                       ' +
    '                      -------------------------------------                     ' +     
    F_EOLN +
    '  majiro scenario1.arc             Extract all files from scenario1.arc' + F_EOLN +
    '  majiro ?i uosuga\002[...].mjo    Outputs some info about 002[...].mjo file' + F_EOLN +
    '  majiro xs                        Export texts from all <mjo> files' + F_EOLN +
    F_EOLN +
    'Now let''s take a look on some more kicking examples...' + F_EOLN +
    '  majiro is 00*.mjo                Import texts into all <00*.mjo> files matching' + F_EOLN +
    '  majiro aa sc* akat*\00*' + F_EOLN +
    '    If you''ve got lazy this command will add all files starting with <00*>' + F_EOLN +
    '    that reside in <akat*> directory into the archive named <sc*> (note that' + F_EOLN +
    '    since you haven''t specified any extension, eg. <sc*.arc>, it will add those' + F_EOLN +
    '    files to EVERY file starting with "sc"' + F_EOLN +
    '  majiro xa yos* 00*.mjo start*' + F_EOLN +
    '    Extract files matching two masks: <00*.mjo> and <start*> from ALL archives' + F_EOLN +
    '    matching <yos*> mask.';