This is the first part. It assumes familiarity with Plain English and the CAL-4700 development environment. Let me know how you do with it. Ask any questions that come to mind._ _


When developing a compiler and integrated development environment, we need to keep three "generations" in mind:_


The CAL-4700: The program we're using to do the development._


The CAL-4700's son: The program we're developing._


The CAL-4700's son's daughter: The program we hope to compile with our new program._


So let's get to it._


1. Start up the CAL-4700.exe._


2. Find the CAL-4700 directory, and use the Duplicate command to make a copy. When asked to name the copy, enter "CAL-4700's son" just like that, but without the quotes. This will keep the two directories next to each other in the Finder, and will be a constant reminder of the son's roots._


3. Open up the new "CAL-4700's son" directory, and delete the CAL-4700.exe._


4. Open up the six source files in the son's directory. The quick way is to just drag-select them all, and hit ENTER._


5. In the Desktop file, find this line..._


_Put the lightest gray color into the desktop color._


...and change it to read:_


_Put the lightest sky color into the desktop color._


6. Now it's time to geld our boy, so he can grow a new pair, bit by bit. In the Compiler file, use the Select All command followed by the Comment command to "comment out" the whole file. All the text will turn a delightful shade of blue._


The CAL's son will no longer compile or run because certain types and routines that are defined in the compiler file are referenced elsewhere in the program. So we have to put those things back. And while we're doing that, we're going to put most of the compiler's "infrastructure" and "testing" routines back as well._


You can use the usual "find" procedure (CTRL-HOME, CTRL-F, start typing) to locate the stuff we need to put back, drag down the left edge of the work area to select the text, then use the Uncomment command (or CTRL-U) to do the deed. You should read over everything we put back, and ask questions about anything that you don't understand._


Now let's do it._


7. We'll be needing our error handling stuff (one type and three routines), specifically:_


_An abort message is a string._


_To abort with a string:_
_If the compiler's abort flag is set, exit._
_Set the compiler's abort flag._
_Put the string into the compiler's abort message._


_To abort with a string and a byte pointer:_
_If the compiler's abort flag is set, exit._
_Set the compiler's abort flag._
_Put the string into the compiler's abort message._
_Find the compiler's abort path and the compiler's abort row# given the byte pointer._
_If the compiler's abort path is blank, exit._
_Extract a file name from the compiler's abort path._
_Prepend "Error in " then the file name then ". " to the compiler's abort message._


_To abort with a string and a rider:_
_If the rider's token is not blank, abort with the string and the rider's token's first; exit._
_Abort with the string and the rider's source's last._


8. We'll also be needing all of our timers. There are 15 of them, corresponding to the 15 time-consuming steps in the compiler process. They look like this..._


_The adding built-in memory routines timer is a timer._

_The adding built-in startup routine timer is a timer._

_The addressing timer is a timer._

_The calculating timer is a timer._

_The compiling routine bodies timer is a timer._

_The compiling routine headers timer is a timer._
_The indexing utilities timer is a timer._
_The linking timer is a timer._

_The offsetting timer is a timer._

_The loading timer is a timer._
_The resolving globals timer is a timer._

_The resolving types timer is a timer._
_The scanning timer is a timer._

_The transmogrifying timer is a timer._

_The writing timer is a timer._

 _

...and they're splattered all through the file, but you can easily put the first one back by typing CTRL-HOME, CTRL-F, "timer is a timer" (without the quotes), select and uncomment the line with END SHIFT-HOME CTRL-U. You can use CTRL-N followed by END SHIFT-HOME CTRL-U for the rest._


9. Find this type definition and put it back as well:_


_An address is a number._


10. These two routines below should also be put back. They're used to conveniently format the listing file._


_To advance a buffer:_
_Append the return byte to the buffer._
_Append the linefeed byte to the buffer._


_To advance a buffer (twice):_
_Advance the buffer._
_Advance the buffer._


11. The "append" routines below are also needed to format the listing file. There are of 10 them, but there are a handful of intervening "append" routines that are used for other purposes that we'll put back later._


_To append an entry to a buffer (with separator):_
_If the entry is nil, append "" to the buffer (with separator); exit._
_Append the entry's name to the buffer (with separator)._


_To append a flag to a buffer (with separator):_
_Convert the flag to a string._
_Append the string to the buffer (with separator)._

_To append a number to a buffer (as hex with separator):_
_Convert the number to a nibble string._
_Append the nibble string to the buffer (with separator)._


_To append a number to a buffer (with separator):_
_Convert the number to a string._
_Append the string to the buffer (with separator)._


_To append a ratio to a buffer (with separator):_
_Convert the ratio to a string._
_Append the string to the buffer (with separator)._


_To append a routine to a buffer (with separator):_
_If the routine is nil, append "" to the buffer (with separator); exit._
_Append the routine's moniker to the buffer (with separator)._

_To append a string to a buffer (with separator):_
_Append the string to the buffer._
_Append "/" to the buffer._


_To append a tag to a buffer (as a fragment tag string with separator):_
_If the tag is the break tag, append "break" to the buffer (with separator); exit._
_If the tag is the call external tag, append "call external" to the buffer (with separator); exit._
_If the tag is the call indirect tag, append "call indirect" to the buffer (with separator); exit._
_If the tag is the call internal tag, append "call internal" to the buffer (with separator); exit._
_If the tag is the dereference tag, append "dereference" to the buffer (with separator); exit._
_If the tag is the end if tag, append "end if" to the buffer (with separator); exit._
_If the tag is the epilog tag, append "epilog" to the buffer (with separator); exit._
_If the tag is the exit tag, append "exit" to the buffer (with separator); exit._
_If the tag is the finalize tag, append "finalize" to the buffer (with separator); exit._
_If the tag is the increment tag, append "increment" to the buffer (with separator); exit._
_If the tag is the intel tag, append "intel" to the buffer (with separator); exit._
_If the tag is the jump false tag, append "jump false" to the buffer (with separator); exit._
_If the tag is the load address tag, append "load address" to the buffer (with separator); exit._
_If the tag is the load eax tag, append "load eax" to the buffer (with separator); exit._
_If the tag is the loop tag, append "loop" to the buffer (with separator); exit._
_If the tag is the not tag, append "not" to the buffer (with separator); exit._
_If the tag is the prolog tag, append "prolog" to the buffer (with separator); exit._
_If the tag is the push address tag, append "push address" to the buffer (with separator); exit._
_If the tag is the push value tag, append "push value" to the buffer (with separator); exit._
_If the tag is the save eax tag, append "save eax" to the buffer (with separator); exit._
_If the tag is the repeat tag, append "repeat" to the buffer (with separator); exit._
_If the tag is the routine address tag, append "routine address" to the buffer (with separator); exit._
_Append "?" to the buffer (with separator)._


_To append a type to a buffer (with separator):_
_If the type is nil, append "" to the buffer (with separator); exit._
_Append the type's name to the buffer (with separator)._


_To append a variable to a buffer (with separator):_
_If the variable is nil, append "" to the buffer (with separator); exit._
_Append the variable's name to the buffer (with separator)._


12. Woohoo! Done with the "A"s. Now we need to put our tags back, which are splattered around like the timers. There are 22 of them. Look for "is a tag equal to" and use the same END SHIFT-HOME CTRL-U keyboard sequence to make quick work of putting them back. Don't forget the tag type, shown here at the top:_


_A tag is a number._


_The break tag is a tag equal to 1._

_The call external tag is a tag equal to 2._

_The call indirect tag is a tag equal to 3._

_The call internal tag is a tag equal to 4._
_The dereference tag is a tag equal to 5._

_The end if tag is a tag equal to 6._
_The epilog tag is a tag equal to 7._

_The exit tag is a tag equal to 8._
_The finalize tag is a tag equal to 9._
_The increment tag is a tag equal to 10._
_The intel tag is a tag equal to 11._
_The jump false tag is a tag equal to 12._
_The load address tag is a tag equal to 13._

_The load eax tag is a tag equal to 14._
_The loop tag is a tag equal to 15._
_The not tag is a tag equal to 16._
_The prolog tag is a tag equal to 17._
_The push address tag is a tag equal to 18._

_The push value tag is a tag equal to 19._
_The repeat tag is a tag equal to 21._
_The routine address tag is a tag equal to 22._
_The save eax tag is a tag equal to 20._


While you're doing that, think about this: those 22 tags define the only_ things the compiler generates machine code to do. Which means the whole CAL (and every program written with the CAL) runs on just 22 machine-code "instructions." Wouldn't it be great if Intel built CPUs with this (and Aunt Tilly) in mind? Fewer transistors, lower costs, and no cooling fans necessary!_


13. Done with the "B"s. And that brings us to the heart of the whole compiler:_


_To compile a directory:_
_Abort with "I'm not old enough to make babies.". _
_\Compile the directory (start)._
_\Compile the directory (load the source files)._
_\Compile the directory (scan the source files)._
_\Compile the directory (resolve the types)._
_\Compile the directory (resolve the globals)._
_\Compile the directory (compile the headers of the routines)._
_\Compile the directory (calculate lengths and offsets of types)._
_\Compile the directory (add the built-in memory routines)._
_\Compile the directory (index the routines for utility use)._
_\Compile the directory (compile the bodies of the routines)._
_\Compile the directory (add and compile the built-in startup routine)._
_\Compile the directory (offset parameters and variables)._
_\Compile the directory (address)._
_\Compile the directory (transmogrify)._
_\Compile the directory (link)._
_\Compile the directory (write the exe)._
_\Compile the directory (stop)._


In this case, don't uncomment the whole routine. Uncomment only the header, and add the "abort" line you see above. Note the two periods in the abort message, one inside and one outside the string. Leave the rest blue._


Isn't it handy to be able to see, at a glance, which parts of the program are commented, and which parts are not? Now that's _a proper use of color-coding._


14. Time to put back the compiler record:_


_The compiler has_
_a directory,_
_a timer,_
_an abort flag,_
_an abort message,_
_an abort path,_
_an abort row#,_
_a name count,_
_an exe buffer,_
_a listing buffer._


15. Then a couple of trivial "deciders":_


_To decide if a byte is any mark:_
_If the byte is the period byte, say yes._
_If the byte is the comma byte, say yes._
_If the byte is the semi-colon byte, say yes._
_If the byte is the colon byte, say yes._
_If the byte is the exclamation  byte, say yes._
_If the byte is the question-mark byte, say yes._
_Say no._


_To decide if a string is any flag literal:_
_If the string is "yes", say yes._
_If the string is "no", say yes._
_Say no._


16. Then the "entry" type:_


_An entry is a thing with_
_A name address,_
_A thunk address,_
_A name,_
_An address._


There's one "entry" for each DLL routine that we call._


17. Now we're up to the "F"s. Let's put back the finalize routine:_


_To finalize the compiler:_
_Destroy the utility index._
_Destroy the routine index._
_Destroy the literal index._
_Destroy the global index._
_Destroy the type index._
_Destroy the imports._
_Destroy the routines._
_Destroy the literals._
_Destroy the globals._
_Destroy the types._
_Destroy the source files._


18. And now, the "fragment" type, that makes use of all those tags we put back earlier:_


_A fragment is a thing with_
_A tag [break, call external, call indirect, call internal, dereference, end if, epilog, exit, finalize, increment, intel, jump false, load address, load eax, loop, not, prolog, push address, push value, save eax, repeat, routine address],_
_A variable (reference) [call indirect, dereference, increment, load address, load eax, pop, push address, push value, routine address, save eax],_
_Another variable (reference) [load address],_
_A routine (reference) [call internal, routine address],_
_An entry (reference) [call external],_
_A number [increment],_
_An address,_
_A hex string called code._


19. Next, the "global body" type. This is a substring that spans the part of a global variable definition in the source code that we're not ready to process until later:_


_A global body is a substring._


20. Time for more keyboarding fun. All our indexes need to be put back. There are only 5._


_The global index is an index._

_The literal index is an index._

_The routine index is an index._
_The type index is an index._
_The utility index is an index._


While you're putting those back, think about this: All a compiler really has to do, as it wades through source code, is to collect the information it needs to put GLOBALS, LITERALS, and ROUTINES in the right places in an EXE file. It uses TYPES to tell it how big things are, but types don't end up anywhere in the EXE. The rest is decoration. If you're wondering about the Utility Index, it's used to allow generic routines to operate on types that aren't formally specified in their headers. For example, the "number" type and the "pointer" type are distinct in our Noodle; but pointers are really just numbers, so routines like "To add a number to another number" ought to work on pointers as well as numbers. So, as you'll see later, we do a little type trickery, using the Utility Index, to allow that to happen._

_
_21. Now put back these three guys:__


_A global is a variable._


_A field is a variable._


_The globals are some globals._


The first two are types that say global variables and fields are a lot like any other variables. The third is a global variable itself: it's the list on which we hang all the global variables we find._


22. Moving along. Put these three things back:_


_An import header is a record with_
_An address called original first thunk,_
_A number called timestamp,_
_An address called forwarder chain,_
_An address called name memory address,_
_An address called first thunk memory address._


_An import is a thing with_
_A name address,_
_A header address,_
_A name,_
_An import header,_
_Some entries._


_The imports are some imports._


An "import" is a DLL. That's what Windows calls them. Ugly stuff._


23. Let's not forget this silly little guy..._


_To initialize the compiler:_


...who does nothing at all. We put it in, and left it in, just to make Desktop code up above symmetrical._


24. And now we put back the code we need for testing. Everything that starts with "To List..." except the file lines that list indexes (see below). Leave them out; we haven't created the indices yet, so they won't work and the thing will blow away. The listing stuff is all in a bunch; just find the first routine and drag down until you've got them all. But make sure you re-comment those five lines._


_To list:_
_Clear the compiler's listing._
_List the compiler's abort message in the compiler's listing._
_List the types under "TYPES:" in the compiler's listing._
_List the globals under "GLOBALS:" in the compiler's listing._
_List the literals under "LITERALS:" in the compiler's listing._
_List the routines under "ROUTINES:" in the compiler's listing. _
_\List the type index under "TYPE INDEX:" in the compiler's listing._
_\List the global index under "GLOBAL INDEX:" in the compiler's listing._
_\List the literal index under "LITERAL INDEX:" in the compiler's listing._
_\List the routine index under "ROUTINE INDEX:" in the compiler's listing._
_\List the utility index under "UTILITY INDEX:" in the compiler's listing. _
_List the imports under "IMPORTS:" in the compiler's listing._
_List the source files under "SOURCE FILES:" in the compiler's listing._
_List the timers under "TIMERS:" in the compiler's listing._
_Write the compiler's listing to the compiler's listing path._


_To list an abort message in a buffer:_
_If the abort message is blank, exit._
_Append "COMPILE ABORTED - LISTING INCOMPLETE" to the buffer._
_Advance the buffer (twice)._
_Append the abort message to the buffer._
_Advance the buffer (twice)._


_To list a bucket in a buffer:_
_If the bucket's refers are empty, exit._
_Append "/bucket" to the buffer (with separator)._
_Advance the buffer._
_List the bucket's refers in the buffer._
_Advance the buffer._


_To list some entries in a buffer:_
_Get an entry from the entries._
_If the entry is nil, exit._
_List the entry in the buffer._
_Repeat._


_To list an entry in a buffer:_
_If the entry is nil, exit._
_Append "/entry" to the buffer (with separator)._
_Append the entry's name to the buffer (with separator)._
_Append the entry's address to the buffer (as hex with separator)._
_Advance the buffer._


_To list a fragment in a buffer:_
_Append "/fragment" to the buffer (with separator)._
_Append the fragment's tag to the buffer (as a fragment tag string with separator)._
_Append the fragment's variable to the buffer (with separator)._
_Append the fragment's other variable to the buffer (with separator)._
_Append the fragment's routine to the buffer (with separator)._
_Append the fragment's entry to the buffer (with separator)._
_Append the fragment's number to the buffer (as hex with separator)._
_Append the fragment's address to the buffer (as hex with separator)._
_Convert the fragment's code to a nibble string._
_Append the nibble string to the buffer (with separator)._
_Advance the buffer._


_To list some fragments in a buffer:_
_Get a fragment from the fragments._
_If the fragment is nil, exit._
_List the fragment in the buffer._
_Repeat._


_To list an import in a buffer:_
_If the import is nil, exit._
_Append "/import" to the buffer (with separator)._
_Append the import's name to the buffer (with separator)._
_Advance the buffer._
_List the import's entries in the buffer._
_Advance the buffer._


_To list some imports in a buffer:_
_Get an import from the imports._
_If the import is nil, exit._
_List the import in the buffer._
_Repeat._


_To list some imports under a string in a buffer:_
_Append the string to the buffer._
_Advance the buffer (twice)._
_If the imports are empty, exit._
_List the imports in the buffer._


_To list an index in a buffer:_
_Append "/" then the index's used bucket count then " buckets" to the buffer (with separator)._
_Append the index's count then " refers" to the buffer (with separator)._
_Advance the buffer (twice)._
_Loop._
_Get a bucket given the index._
_If the bucket is nil, exit._
_List the bucket in the buffer._
_Repeat._


_To list an index under a string in a buffer:_
_Append the string to the buffer._
_Advance the buffer (twice)._
_If the index is empty, exit._
_List the index in the buffer._


_To list a refer in a buffer:_
_If the refer is nil, exit._
_Append "/refer" to the buffer (with separator)._
_Append the refer's string to the buffer._
_If the refer's pointer is nil, append "..." to the buffer._
_Append "/" to the buffer._
_Advance the buffer._


_To list some refers in a buffer:_
_Get a refer from the refers._
_If the refer is nil, exit._
_List the refer in the buffer._
_Repeat._


_To list a routine in a buffer:_
_If the routine is nil, exit._
_Append "/routine" to the buffer (with separator)._
_Append the routine's moniker to the buffer (with separator)._
_Append the routine's compiled flag to the buffer (with separator)._
_Append the routine's callback flag to the buffer (with separator)._
_Append the routine's decider flag to the buffer (with separator)._
_Append the routine's function flag to the buffer (with separator)._
_Append the routine's employs moniker to the buffer (with separator)._
_Append the routine's parameter size to the buffer (with separator)._
_Append the routine's local size to the buffer (with separator)._
_Append the routine's address to the buffer (as hex with separator)._
_Advance the buffer._
_List the routine's parameters in the buffer._
_List the routine's locals in the buffer._
_List the routine's fragments in the buffer._
_Advance the buffer._


_To list some routines in a buffer:_
_Get a routine from the routines._
_If the routine is nil, exit._
_List the routine in the buffer._
_Repeat._


_To list some routines under a string in a buffer:_
_Append the string to the buffer._
_Advance the buffer (twice)._
_If the routines are empty, exit._
_List the routines in the buffer._


_To list a source file in a buffer:_
_If the source file is nil, exit._
_Append "/source file" to the buffer (with separator)._
_Append the source file's path to the buffer (with separator)._
_Advance the buffer._


_To list some source files in a buffer:_
_Get a source file from the source files._
_If the source file is nil, exit._
_List the source file in the buffer._
_Repeat._


_To list some source files under a string in a buffer:_
_Append the string to the buffer._
_Advance the buffer (twice)._
_If the source files are empty, exit._
_List the source files in the buffer._
_Advance the buffer._


_To list a timer given a string in a buffer:_
_Append "/timer" to the buffer (with separator)._
_Append the string to the buffer (with separator)._
_Append the timer's string to the buffer (with separator)._
_Advance the buffer._


_To list the timers under a string in a buffer:_
_Append the string to the buffer._
_Advance the buffer (twice)._
_List the loading timer given "loading" in the buffer._
_List the scanning timer given "scanning" in the buffer._
_List the resolving types timer given "resolving types" in the buffer._
_List the resolving globals timer given "resolving globals" in the buffer._
_List the compiling routine headers timer given "compiling routine headers" in the buffer._
_List the calculating timer given "calculating" in the buffer._
_List the adding built-in memory routines timer given "adding built-in memory routines" in the buffer._
_List the indexing utilities timer given "indexing utilities" in the buffer._
_List the compiling routine bodies timer given "compiling routine bodies" in the buffer._
_List the adding built-in startup routine timer given "adding built-in startup routine" in the buffer._
_List the offsetting timer given "offsetting" in the buffer._
_List the addressing timer given "addressing" in the buffer._
_List the transmogrifying timer given "transmogrifying" in the buffer._
_List the linking timer given "linking" in the buffer._
_List the writing timer given "writing" in the buffer._
_List the compiler's timer given "total" in the buffer._
_Advance the buffer._


_To list a type in a buffer:_
_If the type is nil, exit._
_Append "/type" to the buffer (with separator)._
_Append the type's name to the buffer (with separator)._
_Append the type's plural name to the buffer (with separator)._
_Append the type's length to the buffer (as hex with separator)._
_Append the type's base name to the buffer (with separator)._
_Append the type's base type to the buffer (with separator)._
_Append the type's target name to the buffer (with separator)._
_Append the type's target type to the buffer (with separator)._
_Append the type's scale to the buffer (with separator)._
_Advance the buffer._
_List the type's fields in the buffer._
_Advance the buffer._


_To list some types in a buffer:_
_Get a type from the types._
_If the type is nil, exit._
_List the type in the buffer._
_Repeat._


_To list some types under a string in a buffer:_
_Append the string to the buffer._
_Advance the buffer (twice)._
_If the types are empty, exit._
_List the types in the buffer._


_To list a variable in a buffer:_
_If the variable is nil, exit._
_Append "/variable" to the buffer (with separator)._
_Append the variable's kind to the buffer (with separator)._
_Append the variable's compiled flag to the buffer (with separator)._
_Append the variable's name to the buffer (with separator)._
_Append the variable's nickname to the buffer (with separator)._
_Append the variable's type name to the buffer (with separator)._
_Append the variable's type to the buffer (with separator)._
_Append the variable's address [or offset] to the buffer (as hex with separator)._
_Append the variable's by-value flag to the buffer (with separator)._
_Append the variable's count to the buffer (with separator)._
_Append the variable's reference flag to the buffer (with separator)._
_Append the variable's redefinition target name to the buffer (with separator)._
_Append the variable's literal to the buffer (with separator)._
_Convert the variable's data to a nibble string._
_Append the nibble string to the buffer (with separator)._
_Advance the buffer._


_To list some variables in a buffer:_
_Get a variable from the variables._
_If the variable is nil, exit._
_List the variable in the buffer._
_Repeat._


_To list some variables under a string in a buffer:_
_Append the string to the buffer._
_Advance the buffer (twice)._
_If the variables are empty, exit._
_List the variables in the buffer._
_Advance the buffer._


25. Another type and an associated global list (we treat literals like global variables):_


A literal is a variable._


The literals are some literals._


26. A type for local variables:_


A local is a variable._


There's no global list of local variables because they hang on separate lists inside each routine record._


27. And here's a goodie:_


A locus is a byte pointer._


A "locus" points to the very spot in the source code where an error is discovered. That, plus a fully qualified path, lets the Desktop find and position the programmer on the offending line of code when an error is discovered._


28. Routines are internally known by their "monikers" which are made up of monikettes, where each monikette can be a word, a bunch of words, a type, or a variable. So we need this stuff put back:_


A moniker is a string._


A monikette is a thing with_
_a string,_
_a type (reference),_
_a variable (reference),_
_\ for bubbling_
_a current type (reference),_
_a current substring._


29. Along with this type definition:_


A nickname is a name._

_
_A "nickname" is the short name for a variable. "the left", for example, instead of "the left coordinate". It's typically the adjective that precedes the type name noun._


30. Now one more kind of variable:_


A parameter is a variable._


Again, there's no global list of parameters because they're kept on separate lists in each routine record._


31. And that brings us to a couple of "function-style routines" (routines that return a value and that can thus be used as expressions):_


To put the compiler's exe path into a path:_
_Extract a designator from the compiler's directory._
_Remove any trailing backslash from the designator._
_Put the compiler's directory then the designator then ".exe" into the path._


To put the compiler's listing path into a path:_
_Extract a designator from the compiler's directory._
_Remove any trailing backslash from the designator._
_Put the compiler's directory then the designator then ".lst" into the path._


These routines let us say "the compiler's exe path" and "the compiler's listing path" as if those two things were fields in the compiler record. Kind of like "derived data" or a "calculated field" in a database._


32. Now some routine stuff:_


A routine body is a substring._


A routine header is a substring._


The routine index is an index._


A routine is a thing with_
_A locus (reference),_
_A callback flag,_
_A decider flag,_
_A function flag,_
_A compiled flag,_
_A nickname index,_
_A moniker, some monikettes, some parameters, a parameter size,_
_An employs moniker,_
_Some locals, a local size,_
_A routine header, a header string,_
_A routine body, a body string,_
_Some fragments,_
_An address._


A routine reference is some monikettes._


The routines are some routines._


33. Almost there. Up to the "S"s. Let's not forget the source code! Put these back in:_


A source file is a thing with a path and a buffer._


The source files are some source files._


34. We need our type stuff, too:_


A type is a thing with_
_A locus (reference),_
_A name, a plural name,_
_A partial moniker,_
_A length,_
_A base name, a base type (reference),_
_A target name, a target type (reference) [pointers only],_
_A scale ratio,_
_Some fields [records only],_
_A cooking flag,_
_A optional info resolved flag._


A type name is a name._


The types are some types._


35. And last but not least, our multi-purpose variable record:_


A variable is a thing with_
_A locus (reference),_
_A kind [literal, global, local, parameter, scratch],_
_A compiled flag,_
_A name, a nickname, a type name,_
_A type (reference), \ actual type on literal, global, local; dereferenced type on parameters and scratches _
_An address [globals and literals only] or_
_An offset at the address [locals, parameters, and fields only],_
_A count [fields only],_
_A reference flag [fields only],_
_A redefinition target name [fields only],_
_A by-value flag [parameters only],_
_An global body [globals only],_
_An initializer string [globals only],_
_A literal (reference) [globals only - constant with which to initalize the global],_
_A hex string called data [literals only]._


And that's almost_ it for this time around. Let's test. _


36. Run the CAL-4700's son. Assuming it worked, congratulations are in order. It's a boy! And the blue desktop will serve to remind us which generation we're in. ALT-TAB back and forth a couple of times._


37. Now let's try to make a grand-baby. Working in the CAL-4700's son (blue desktop), find the CAL-4700's son directory and use the Duplicate command to make a copy. Call it "CAL-4700's son's daughter" too keep the family together in the Finder._


38. Now, still in the blue, open up the daughter and delete the CAL-4700's son.exe._


39. Still in the blue, open up the six source files in the daughter directory._


40. Change the line in the daughter's desktop that says..._


Put the lightest sky color into the desktop color._


...to say..._


_Put the lightest red color into the desktop color._


41. Now, still in the blue, try to compile or run or list the daughter. You should get this message:__


"I'm not old enough to make babies."_

Ta Da! End of Part 01._


 _



Here are the rest of the parts. A graphic or two may have gotten inadvertently deleted when I combined them; let me know if it looks like something important is missing._


So where were we? Ah, yes._


42. Close up the Son of CAL (if you haven't already) and get back to the tasteful and non-distracting gray of the CAL-4700. Then find the CAL-4700's son directory and open up the son's six source files._


43. Now find the "compile a directory" routine, move our temporary "abort" line down a notch, and uncomment the "Compile a directory (start)" step, like so:_


_To compile a directory:_
_Compile the directory (start)._
_Abort with "I'm not old enough to make babies.". _
_\Compile the directory (load the source files)._
_\Compile the directory (scan the source files)._
_\Compile the directory (resolve the types)._
_\Compile the directory (resolve the globals)._
_\Compile the directory (compile the headers of the routines)._
_\Compile the directory (calculate lengths and offsets of types)._
_\Compile the directory (add the built-in memory routines)._
_\Compile the directory (index the routines for utility use)._
_\Compile the directory (compile the bodies of the routines)._
_\Compile the directory (add and compile the built-in startup routine)._
_\Compile the directory (offset parameters and variables)._
_\Compile the directory (address)._
_\Compile the directory (transmogrify)._
_\Compile the directory (link)._
_\Compile the directory (write the exe)._
_\Compile the directory (stop)._


44. And put these guys back in:_


_To compile a directory (start):_
_Show status "Starting..."._
_Finalize the compiler._
_Start the compiler's timer._
_Initialize the compiler given the directory._
_Add the built-in types._


_A built-in type is a type._


We "Finalize the compiler" to clean up anything that might be hanging around from a previous compile._


45. As you can see, we're going to need this routine, too:_


_To initialize the compiler given a directory:_
_Put the directory into the compiler's directory._
_Put 0 into the compiler's name count._
_Clear the compiler's abort flag._
_Clear the compiler's abort message._
_Clear the compiler's abort path._
_Put 0 into the compiler's abort row#._
_Void the current routine._
_Create the type index with 4027 [buckets]._
_Create the global index with 4027 [buckets]._
_Create the literal index with 4027 [buckets]._
_Create the routine index with 7919 [buckets]._
_Create the utility index with 4027 [buckets]._


46. Now that we've got our indices created, we can uncomment those 5 blue lines in the List routine, as well:_


_To list:_
_Clear the compiler's listing._
_List the compiler's abort message in the compiler's listing._
_List the types under "TYPES:" in the compiler's listing._
_List the globals under "GLOBALS:" in the compiler's listing._
_List the literals under "LITERALS:" in the compiler's listing._
_List the routines under "ROUTINES:" in the compiler's listing._
_List the type index under "TYPE INDEX:" in the compiler's listing._
_List the global index under "GLOBAL INDEX:" in the compiler's listing._
_List the literal index under "LITERAL INDEX:" in the compiler's listing._
_List the routine index under "ROUTINE INDEX:" in the compiler's listing._
_List the utility index under "UTILITY INDEX:" in the compiler's listing._
_List the imports under "IMPORTS:" in the compiler's listing._
_List the source files under "SOURCE FILES:" in the compiler's listing._
_List the timers under "TIMERS:" in the compiler's listing._
_Write the compiler's listing to the compiler's listing path._


47. We're going to be needing this global variable:_


_The current routine is a routine._


48. And these two routines as well:_


_To add the built-in types:_
_Add a built-in type given "byte" and "bytes" and 1._
_Add another built-in type given "record" and "records" and 0._


_To add a built-in type given a name and a plural name and a length:_
_Add the built-in type to the types given the name and the plural name and the name._
_Put the length into the built-in type's length._
_Put the built-in type into the built-in type's base type._
_Index the built-in type._


Note that byte_ and record_ are the only types defined in the compiler itself; all the other "built-in" types (like number_ and string_ and ratio_, etc) are in the Noodle._


49. We add types in a number of places when we're compiling, and sometimes it's convenient to do it one way, sometimes another. So let's put back these 3 "add a type" helper routines as well:_


_To add a type to some types given a locus:_
_Create the type._
_Append the type to the types._
_Put the locus into the type's locus._


_To add a type to some types given a name and a plural name and a base name:_
_Add the type to the types given the name and the plural name and the base name and nil._


To add a type to some types given a name and a plural name and a base name and a locus:_
_Create the type._
_Append the type to the types._
_Put the locus into the type's locus._
_Put the name into the type's name._
_Put the plural name into the type's plural name._
_Put the base name into the type's base name._


50. We'll also need the routine below, that allocates and initializes a type record in the Heap:_


_To create a type:_
_Allocate memory for the type._
_Put 0/1 into the type's scale._
_Put -1 into the type's length._


51. And we'll need these two routines to index our types:_


_To index a type:_
_If the type is nil, exit._
_If the compiler's abort flag is set, exit._
_Index the type given the type's name._


_To index a type given a name:_
_If the type is nil, exit._
_If the compiler's abort flag is set, exit._
_Find an existing type given the name and the type index._
_If the existing type is nil, index the type given the name and the type index; exit._
_Put the type's locus into a locus._
_If the locus is nil, put the existing type's locus into the locus. \ point the error to a type in the source code, not a generated type_
_Abort with "I think I've seen this '" then the name then "' type somewhere before; it must be a duplicate." and the locus._


_52. This is a little premature, but the abort in the above routine calls another abort routine that needs a little help from the three guys below, so we need to put them back, too:_


_To find a path and a row# given a byte pointer:_
_Clear the path._
_Put 0 into the row#._
_Find a source file given the byte pointer._
_If the source file is nil, exit._
_Put the source file's path into the path._
_Find the row# given the source file and the byte pointer._


_To find a source file given a byte pointer:_
_If the byte pointer is nil, void the source file; exit._
_Loop._
_Get the source file from the source files._
_If the source file is nil, exit._
_If the byte pointer is less than the source file's buffer's first, repeat._
_If the byte pointer is greater than the source file's buffer's last, repeat._


_To find a row# given a source file and a byte pointer:_
_If the byte pointer is nil, put 0 into the row#; exit._
_Slap a substring on the source file's buffer._
_Put 1 into the row#._
_Loop._
_If the substring is blank, exit._
_If the substring's first is the byte pointer, exit._
_If the substring's first's target is the return byte, add 1 to the row#._
_Add 1 to the substring's first._
_Repeat._


53. And that's about it for this step. Let's run it as see what we've got. Press CTRL-R._


54. Now we're in the blue. Find and open the daughter's six files, then execute the List command (CTRL-L). The compile will still abort with our "_I'm not old enough to make babies_" message, but this time a listing file will be created._


55. On the far right tab, open up the daughter's directory, find the file with the ".lst" extension, and double-click it. You should see something like this at the top..._


_COMPILE ABORTED - LISTING INCOMPLETE_


_I'm not old enough to make babies._


_TYPES:_


_/type/byte/bytes/00000001/byte/byte///0/_


_/type/record/records/00000000/record/record///0/_


_GLOBALS:_


_LITERALS:_


_ROUTINES:_


_TYPE INDEX:_


_/2 buckets/2 refers/_


...which shows that our two built-in types got created and hung on the list properly, and that our type index is working, with 2 buckets used to hold 2 refers (one for each type)._


And after a bunch of other stuff that we don't have, at the bottom of the listing, you'll find our timers..._


_TIMERS:_


_/timer/loading/0/_
_/timer/scanning/0/_
_/timer/resolving types/0/_
_/timer/resolving globals/0/_
_/timer/compiling routine headers/0/_
_/timer/calculating/0/_
_/timer/adding built-in memory routines/0/_
_/timer/indexing utilities/0/_
_/timer/compiling routine bodies/0/_
_/timer/adding built-in startup routine/0/_
_/timer/offsetting/0/_
_/timer/addressing/0/_
_/timer/transmogrifying/0/_
_/timer/linking/0/_
_/timer/writing/0/_
_/timer/total/0/_


_...which tell us we don't have any performance bottlenecks yet. Sweet._


_Next time, we'll find and load up the source files... Stay tuned._


_---_


Alrighty, then. Time to load up our source files._


56. Close up the Son of CAL (if you haven't already) and get back to the CAL-4700. Then find the CAL-4700's son directory and open up the son's six source files (if they're not already open).__

 _

57. Now find the "compile a directory" routine, move our temporary "abort" line down another notch, and uncomment the "Compile a directory (load the source files)" step, like so:__

 _

_To compile a directory:_
_Compile the directory (start)._
_Compile the directory (load the source files)._
_Abort with "I'm not old enough to make babies."._ _
_\Compile the directory (scan the source files)._
_\Compile the directory (resolve the types)._
_\Compile the directory (resolve the globals)._
_\Compile the directory (compile the headers of the routines)._
_\Compile the directory (calculate lengths and offsets of types)._
_\Compile the directory (add the built-in memory routines)._
_\Compile the directory (index the routines for utility use)._
_\Compile the directory (compile the bodies of the routines)._
_\Compile the directory (add and compile the built-in startup routine)._
_\Compile the directory (offset parameters and variables)._
_\Compile the directory (address)._
_\Compile the directory (transmogrify)._
_\Compile the directory (link)._
_\Compile the directory (write the exe)._
_\Compile the directory (stop).__

 _

58. Then put these 3 routines back in:__

 _

_To compile a directory (load the source files):_
_If the compiler's abort flag is set, exit._
_Show status "Loading..."._
_Start the loading timer._
_Load the source files._
_Stop the loading timer.__

 _

_To load a source file:_
_If the source file is nil, exit._
_Load the source file's path into the source file's buffer._
_If the i/o error is not blank, abort with "Could not load the file named '" then the source file's path then "'."; exit.__

 _

_To load some source files:_
_Loop._
_If the compiler's abort flag is set, exit._
_Get an item from the compiler's directory._
_If the item is not found, break._
_If the item's kind is not "file", repeat._
_If the item's extension is not blank, repeat._
_If the item looks reamish, repeat._
_Add a source file to the source files given the item's path._
_Load the source file._
_Repeat.__

 _

As you know, the CAL expects a program's source code to be stored as one or more text files in a single directory. One of those files is usually a copy of the Noodle. It doesn't matter what order the files are in, and it doesn't matter what their names are, except that he will only attempt to compile files with no extension.__

 _

A diligent Plain English programmer, however, will typically use the CAL's Writer to author a user manual and other documentation for a program. Since it's convenient to keep such documentation in the same directory as the source code, and since such documentation files will not have an extension, we need the CAL to skip them when he's collecting source code to compile.__

 _

59. Internally, documents created with the CAL's writer are called "reams" (as in a "ream of paper"). And that's why, in the above routine, files that look "reamish" are passed over. Uncomment the decider routine shown below so the compiler will be able to recognize "reamish" files:__

 _

_To decide if an item looks reamish:_
_Load the item's path into a buffer._
_If the buffer starts with "ream cal", say yes._
_Say no._


60. We're also going to need these two routines:_


_To add a source file to some source files given a path:_
_Create the source file._
_Append the source file to the source files._
_Put the path into the source file's path._


_To create a source file:_
_Allocate memory for the source file._


61. And we're done with this step. Let's see what we've got. Run the Son of CAL and when you've got the blue desktop up, find the son's daughter and open up her source files. Then create an updated listing file with CTRL-L._


62. Still in the blue, find and open the daughter's listing on the far right tab. The top part of the listing will be the same as before, but at the bottom you'll see something like this:_


_SOURCE FILES:_


_/source file/c:\cal-4700's son's daughter\the compiler/_
_/source file/c:\cal-4700's son's daughter\the desktop/_
_/source file/c:\cal-4700's son's daughter\the editor/_
_/source file/c:\cal-4700's son's daughter\the finder/_
_/source file/c:\cal-4700's son's daughter\the noodle/_
_/source file/c:\cal-4700's son's daughter\the writer/_


_TIMERS:_


_/timer/loading/140/_
_/timer/scanning/0/_
_/timer/resolving types/0/_
_/timer/resolving globals/0/_
_/timer/compiling routine headers/0/_
_/timer/calculating/0/_
_/timer/adding built-in memory routines/0/_
_/timer/indexing utilities/0/_
_/timer/compiling routine bodies/0/_
_/timer/adding built-in startup routine/0/_
_/timer/offsetting/0/_
_/timer/addressing/0/_
_/timer/transmogrifying/0/_
_/timer/linking/0/_
_/timer/writing/0/_
_/timer/total/140/_

_ _
_TA DA! Now we're (finally) ready to teach our boy how to read._ - _


---_ - _


_ _

Now that we've got all our source files in memory, it's time to see what they have to say.__

 _

63. Close up the Son of CAL (if you haven't already) and get back to the CAL-4700. Then find the CAL-4700's son directory and open up the son's six source files (if they're not already open).__

 _

64. Now find the "compile a directory" routine, move our temporary "abort" line down another notch, and uncomment the "Compile a directory (scan the source files)" step, like so:__

 _

_To compile a directory:_
_Compile the directory (start)._
_Compile the directory (load the source files)._
_Compile the directory (scan the source files)._
_Abort with "I'm not old enough to make babies."._ - _
_\Compile the directory (resolve the types)._
_\Compile the directory (resolve the globals)._
_\Compile the directory (compile the headers of the routines)._
_\Compile the directory (calculate lengths and offsets of types)._
_\Compile the directory (add the built-in memory routines)._
_\Compile the directory (index the routines for utility use)._
_\Compile the directory (compile the bodies of the routines)._
_\Compile the directory (add and compile the built-in startup routine)._
_\Compile the directory (offset parameters and variables)._
_\Compile the directory (address)._
_\Compile the directory (transmogrify)._
_\Compile the directory (link)._
_\Compile the directory (write the exe)._
_\Compile the directory (stop).__

 _

65. We'll be needing this guy to get us going:__

 _

_To compile a directory (scan the source files):_
_If the compiler's abort flag is set, exit._
_Show status "Scanning..."._
_Start the scanning timer._
_Scan the source files._
_Stop the scanning timer.__

 _

And this little loop to make sure we scan all the source files in the project:__

 _

_To scan some source files:_
_If the compiler's abort flag is set, exit._
_Get a source file from the source files._
_If the source file is nil, exit._
_Scan the source file._
_Repeat._


_66. A Plain English program is a collection of TYPES, GLOBALS, and ROUTINES, in any order. This is the top-level scanner that goes looking for those things:_ - _


_To scan a source file:_
_If the source file is nil, exit._
_If the compiler's abort flag is set, exit._
_Slap a rider on the source file's buffer._
_Move the rider (compiler rules)._
_Loop._
_If the compiler's abort flag is set, exit._
_If the rider's token is blank, exit._
_If the rider's token is the start of any type, scan a type given the rider; repeat._
_If the rider's token is the start of any global, scan a global given the rider; repeat._
_If the rider's token is the start of any routine, scan a routine given the rider; repeat._
_Abort with "I was hoping for a definition but all I found was '" then the rider's token then "'." and the rider._
_Repeat._


_67. The routine above needs a lot of help, first, to move that rider around, and secondly, to do some detailed scanning once he's found a type, a global, or a routine to scan. Here's one of the "move a rider" routines that he needs:_ - _


_To move a rider (code rules - noise):_
_Bump the rider._
_If the rider's source is blank, exit._
_If the rider's source's first's target is noise, repeat._


That guy simply skips any "noise" in the source file. When he's done, what's left of the rider's source will start with the next non-noise byte in the file, and the noise that was sucked up will be spanned by the rider's token. Noise is defined in the Noodle (not the compiler) like this:_


_To decide if a byte is noise:_
_If the byte is less than or equal to the space byte, say yes._
_If the byte is the delete byte, say yes._
_If the byte is the non-breaking-space byte, say yes._
_If the byte is 129, say yes._
_If the byte is 141, say  yes._
_If the byte is 143, say yes._
_If the byte is 144, say yes._
_If the byte is 157, say yes._
_Say no._


68. Here's another "move a rider" routine we'll be needing:_


_To move a rider (code rules - comment):_
_Bump the rider._
_If the rider's source is blank, exit._
_If the rider's source's first's target is not the return byte, repeat._


This guy assumes we're sitting on the start of a comment (the backslash character) and simply sucks up bytes until he hits a return byte (the end of a line). When he's done, what's left of the rider's source will start with that return byte, and the rider's token will span the whole comment, including the backslash._


_69. We need a similar "move a rider" routine for remarks:_


_To move a rider (code rules - remark):_
_If the rider's source is blank, exit._
_If the rider's source's first's target is the return byte, break._
_If the rider's source's first's target is the left-bracket byte, add 1 to a count._
_If the rider's source's first's target is the right-bracket byte, subtract 1 from the count._
_Bump the rider._
_If the count is 0, break._
_Repeat.  _


This time we're starting on the start of a remark (a left-bracket "["), and we skip everything up to a return byte (the end of a line) or a closing right-bracket ("]"), allowing for the possibility that the programmer may have remarks inside his remarks. When this routine is done, what's left of the rider's source will start with either a return byte, or the first character after the closing right-bracket, and the rider's token will span the entire remark._


_70. We need a similar "move a rider" routine for qualifiers, which can also be "nested":_


_To move a rider (code rules - qualifier):_
_If the rider's source is blank, exit._
_If the rider's source's first's target is the return byte, break._
_If the rider's source's first's target is the left-paren byte, add 1 to a count._
_If the rider's source's first's target is the right-paren byte, subtract 1 from the count._
_Bump the rider._
_If the count is 0, break._
_Repeat._

 _

71. And another for strings, that may include doubled-up double-quotes to indicate imbedded double-quote marks:__

 _

_To move a rider (code rules - string):_
_Bump the rider._
_If the rider's source is blank, exit._
_If the rider's source's first's target is the return byte, exit._
_If the rider is on any nested double-quote, bump the rider; repeat._
_If the rider's source's first's target is the double-quote byte, bump the rider; exit._
_Repeat.__

 _

Handling nested double-quotes requires a little help from this guy, so you should put him back in, too:__

 _

_To decide if a rider is on any nested double-quote:_
_If the rider's source starts with """""", say yes._
_Say no._
_ _
_72. The "move a rider" routine that handles punctuation marks looks like this:_


To move a rider (code rules - mark):_
_Bump the rider._


_All this routine does is adjust the pointers in the rider so the rider's token spans the mark, and what's left of the rider's source starts just after the mark. All punctuation marks in Plain English are single characters._


_73. Symbols are non-letter and non-digit and non-punctuation mark characters that are not considered noise. This the the "move a rider" routine that we use to suck them up:_


To move a rider (code rules - symbol):_
_Bump the rider._


And this is the routine that decides if a byte is a symbol or not:_


To decide if a byte is any symbol:_
_If the byte is the caret byte, say yes._
_If the byte is the bar byte, say yes._
_If the byte is the asterisk byte, say yes._
_If the byte is the cross byte, say yes._
_If the byte is the dash byte, say yes._
_If the byte is the slash byte, say yes._
_If the byte is the left-alligator byte, say yes._
_If the byte is the right-alligator byte, say yes._
_If the byte is the left-brace byte, say yes._
_If the byte is the right-brace byte, say yes._
_If the byte is the equal-sign byte, say yes._
_If the byte is 128, say yes._
_If the byte is 130, say yes._
_If the byte is between 132 and 137, say yes._
_If the byte is 139, say yes._
_If the byte is between 145 and 153, say yes._
_If the byte is 155, say yes._
_If the byte is between 161 and 180, say yes._
_If the byte is between 183 and 191, say yes._
_If the byte is 215, say yes._
_If the byte is 247, say yes._
_Say no._


_74. Possessives come in two forms: with and without an "s" on the end. An example of the former is "Mary's house"; and example of the latter is "Jesus' Kingdom". This is the "move a rider" routine that deals with both of them:_


To move a rider (code rules - possessive):_
_Bump the rider._
_If the rider's source is blank, exit._
_If the rider's source starts with "s", bump the rider._


When this routine gets control, we're sitting on a an apostrophe, so we suck it up. If there's no more source, we're done, but if the next character is an "s", we suck that up too._


Simple enough, but we need the 3 deciders below, as well, to peek ahead in the source so we know when to use the above routine:_


_To decide if a rider is on any possessive:_
_If the rider's source is blank, say no._
_If the rider's source's first's target is not the single-quote byte, say no._
_If the rider is on any possessive (type 1 - single-quote, s, non-glom-byte), say yes._
_If the rider is on any possessive (type 2 - preceding s, single-quote, non-glom-byte), say yes._
_Say no._


_To decide if a rider is on any possessive (type 1 - single-quote, s, non-glom-byte):_
_If the rider's source does not start with "'s", say no._
_Privatize the rider._
_Add 2 to the rider's source's first._
_If the rider's source is blank, say yes._
_If the rider's source's first's target is not any glom byte, say yes._
_Say no._


_To decide if a rider is on any possessive (type 2 - preceding s, single-quote, non-glom-byte):_
_Privatize the rider._
_If the rider's source's first is the rider's original's first, say no._
_Subtract 1 from the rider's source's first._
_If the rider's source's first's target is not the little-s byte or the big-s byte, say no._
_Add 2 to the rider's source's first._
_If the rider's source is blank, say yes._
_If the rider's source's first's target is not any glom byte, say yes._
_Say no._


Note the "Privatize the rider" statements in the latter two routines. Recall that all parameters in Plain English are passed by reference, not value, so if we change them, they're actually changed. The privatize_ command makes a copy of the specified parameter so we can screw with it without breaking anything above us. It cleverly gives the copy the same name as the original parameter (in this case, "the rider"), while changing the original parameter's name to include the prefix "original" (as in, "the original rider")._


75. Anything else in the source code, at this level of detail, is considered a "glom", a collection of characters that we're not quite sure how to handle at this level. This is the "move a rider" routine that sucks up gloms:_


_To move a rider (code rules - glom):_
_Bump the rider._
_If the rider's source is blank, exit._
_If the rider is on any possessive, exit._
_If the rider's source's first's target is any glom byte, repeat._


It needs help from this decider:_


_To decide if a byte is any glom byte:_
_If the byte is any letter, say yes._
_If the byte is any digit, say yes._
_If the byte is the tilde byte, say yes._
_If the byte is the at-sign byte, say yes._
_If the byte is the number-sign byte, say yes._
_If the byte is the percent-sign byte, say yes._
_If the byte is the ampersand byte, say yes._
_If the byte is the underscore byte, say yes._
_If the byte is the single-quote byte, say yes._
_If the byte is the dash byte, say yes._
_If the byte is the cross byte, say yes._
_If the byte is the slash byte, say yes._
_Say no._


And that's it for the bottom-level "move a rider" routines._


76. All of those guys are called by this guy..._


_To move a rider (code rules):_
_Position the rider's token on the rider's source._
_If the rider's source is blank, exit._
_If the rider's source's first's target is noise, move the rider (code rules - noise); exit._
_If the rider's source's first's target is the backslash byte, move the rider (code rules - comment); exit._
_If the rider's source's first's target is the left-bracket byte, move the rider (code rules - remark); exit._
_If the rider's source's first's target is the double-quote byte, move the rider (code rules - string); exit._
_If the rider's source's first's target is the left-paren byte, move the rider (code rules - qualifier); exit._
_If the rider's source's first's target is any mark, move the rider (code rules - mark); exit._
_If the rider is on any possessive, move the rider (code rules - possessive); exit._
_Move the rider (code rules - glom)._


...who is not called directly, but who is called by this fellow:_


_To move a rider returning an error string (code rules):_
_Clear the error string._
_Move the rider (code rules)._
_If the rider's token is blank, exit._
_If the rider's token's first's target is the left-bracket byte, move the rider returning the error string (code rules - validate remark); exit._
_If the rider's token's first's target is the double-quote byte, move the rider returning the error string (code rules - validate string); exit._
_If the rider's token's first's target is the left-paren byte, move the rider returning the error string (code rules - validate qualifier); exit._


...and who, with a little help from these three..._


_To move a rider returning an error string (code rules - validate qualifier):_
_If the rider's token's length is less than 2, put "Qualifiers need to end with ')'." into the error string; exit._
_If the rider's token's last's target is not the right-paren byte, put "Qualifiers need to end with ')'." into the error string; exit._


_To move a rider returning an error string (code rules - validate remark):_
_If the rider's token's length is less than 2, put "Remarks need to end with ']'." into the error string; exit._
_If the rider's token's last's target is not the right-bracket byte, put "Remarks need to end with ']'." into the error string; exit._


_To move a rider returning an error string (code rules - validate string):_
_If the rider's token's length is less than 2, put "Strings need to end with '""'." into the error string; exit._
_If the rider's token's last's target is not the double-quote byte, put "Strings need to end with '""'." into the error string; exit._


...is able to weed out mal-formed remarks, strings, and qualifiers right out of the gate._


77. And that brings us to the last and top-level "move a rider" routine..._


_To move a rider (compiler rules):_
_If the compiler's abort flag is set, clear the rider's token; exit._
_Move the rider returning an error string (code rules)._
_If the error string is not blank, abort with the error string and the rider's token's first; exit._
_If the rider's token is blank, exit._
_If the rider's token's first's target is noise, repeat._
_If the rider's token's first's target is the backslash byte, repeat._
_If the rider's token's first's target is the left-bracket byte, repeat._


...who is the guy used by our scanners. We've discussed these "move a rider" routines from the bottom up, as it were, since they're mostly concerned with what impressive people call "lexical analysis" (making words out of letters). We'll be discussing our scanners from the top down since they're mostly concerned with what impressive people call "semantic analysis" (making sentences out of words)._


78. We've already put back in the top 2 scanners, the first ("to scan some source files") who just loops through the source files and passes them to the second ("to scan a source file") who simply dispatches the rest of the scanning process to his underlings once he knows what's coming up in the source. These are the deciders he needs to make a good decision:_


_To decide if a string is the start of any type:_
_If the string is "a", say yes._
_If the string is "an", say yes._
_If the string is "some", say yes._
_Say no._


_To decide if a string is the start of any global:_
_If the string is "the", say yes._
_Say no._


_To decide if a string is the start of any routine:_
_If the string is "to", say yes._
_Say no._


79. Now the first scanning "underling" is this one:_


_To scan a type given a rider:_
_If the compiler's abort flag is set, exit._
_Add the type to the types given the rider's token's first._
_Move the rider (compiler rules)._
_Scan the type's name given the rider._
_Put the type's name into the type's plural name._
_Pluralize the type's plural name._
_If the rider's token is "has" or "have", scan the type given the rider (has or have); exit._
_If the rider's token is not "is" or "are", abort with "I was expecting an 'is' or 'are', but I found '" then the rider's token then "'." and the rider; exit._
_Move the rider (compiler rules)._
_If the rider's token is any numeric literal, scan the type given the rider (unit of measure); exit._
_If the rider's token is not any indefinite article, abort with "I was expecting an indefinte article, but I found '" then the rider's token then "'." and the rider; exit._
_Move the rider (compiler rules)._
_Scan the type's base name given the rider._
_Scan any optional info for the type given the rider._
_If the rider's token is not the period byte, abort with "Types need to end with a period, I found '" then the rider's token then "'." and the rider; exit._
_Move the rider (compiler rules)._
_Index the type._


80. The guy above begins by adding a type to our type list. Then he gets the new type's name, using this general-purpose name-scanning routine:_

_ _

To scan a name given a rider:_
_Clear the name._
_If the compiler's abort flag is set, exit._
_If the rider's token is any name starter, extend the name with the rider's token; move the rider (compiler rules)._
_Loop._
_If the compiler's abort flag is set, exit._
_If the rider's token is any name ender, break._
_Extend the name with the rider's token._
_Move the rider (compiler rules)._
_Repeat._
_If the name is blank, abort with "I was kind of hoping for a name around here, but I found '" then the rider's token then "'." and the rider; exit._

81. Our name-scanning routine needs a little help from these 2 deciders:_


_To decide if a string is any name starter:_

_If the string is any mark, say no._
_If the string is any symbol, say no._
_If the string is any article, say no._
_If the string is any conjunction, say yes._
_If the string is any possessive, say no._
_If the string is any verb, say yes._
_If the string is any operator, say yes._
_If the string is any preposition, say yes._
_If the string is any qualifier, say no._
_If the string is any literal, say no._
_If the string is "called", say yes._
_If the string is "equal", say yes._
_If the string is blank, say no._
_Say yes._


_To decide if a string is any name ender:_

_If the string is any mark, say yes._
_If the string is any symbol, say yes._
_If the string is any article, say yes._
_If the string is any conjunction, say yes._
_If the string is any possessive, say yes._
_If the string is any verb, say yes._
_If the string is any operator, say yes._
_If the string is any preposition, say yes._
_If the string is any qualifier, say yes._
_If the string is any literal, say yes._
_If the string is "called", say yes._
_If the string is "equal", say yes._
_If the string is blank, say yes._

_Say no._


82. And those 2 guys need some help from these 14 deciders:__


_To decide if a string is any mark:_
_If the string's length is not 1, say no._
_If the string's first's target is any mark, say yes._
_Say no._


_To decide if a string is any symbol:_
_If the string's length is not 1, say no._
_If the string's first's target is any symbol, say yes._
_Say no._


_To decide if a string is any article:_
_If the string is any indefinite article, say yes._
_If the string is "the", say yes._
_Say no._


_To decide if a string is any indefinite article:_
_If the string is "a", say yes._
_If the string is "an", say yes._
_If the string is "another", say yes._
_If the string is "some", say yes._
_Say no._


_To decide if a string is any conjunction:_
_If the string is "and", say yes._
_If the string is "both", say yes._
_If the string is "but", say yes._
_If the string is "either", say yes._
_If the string is "neither", say yes._
_If the string is "nor", say yes._
_If the string is "or", say yes._
_Say no._


_To decide if a string is any possessive:_
_If the string is "'s", say yes._
_If the string is "'", say yes._
_Say no._


_To decide if a string is any verb:_
_If the string is "are", say yes._ \ are not \ aren't _
_If the string is "be", say yes. _

_If the string is "can", say yes. _\ cannot \ can't _
_If the string is "cannot", say yes._
_If the string is "could", say yes. _\ could not \ couldn't _
_If the string is "do", say yes. _\ do not \ don't _
_If the string is "does", say yes. _\ does not \ doesn't _
_If the string is "is", say yes. _\ is not \ isn't _
_If the string is "may", say yes. _\ may not \ mayn't _
_If the string is "should", say yes. _\ should not \ shouldn't _
_If the string is "was", say yes. _\ was not \ wasn't _
_If the string is "will", say yes. _\ will not \ won't _
_If the string is "would", say yes. _\ would not \ wouldn't _
_If the string is "has", say yes. _\ used in type definitions _
_If the string is "have", say yes. _\ used in type definitions _
_If the string ends with "n't", say yes. _
_\ trouble makers _
_If the string is "begins", say yes. _\ does not begin \ doesn't begin _
_If the string is "ends", say yes. _\ does not end \ doesn't end _
_If the string is "looks", say yes. _\ does not look \ doesn't look _
_If the string is "needs", say yes. _\ does not need \ doesn't need _
_If the string is "starts", say yes. _\ does not start \ doesn't start _
_Say no._


_To decide if a string is any operator:_
_If the string is "plus", say yes._
_If the string is "minus", say yes._
_If the string is "times", say yes._
_If the string is "divided", say yes._
_If the string is "then", say yes._
_Say no._


_To decide if a string is any preposition:_
_If the string is "about", say yes._
_If the string is "above", say yes._
_If the string is "across", say yes._
_If the string is "after", say yes._
_If the string is "against", say yes._
_If the string is "all", say yes._
_If the string is "alone", say yes._
_If the string is "along", say yes._
_If the string is "among", say yes._
_If the string is "any", say yes._
_If the string is "anywhere", say yes._
_If the string is "around", say yes._
_If the string is "as", say yes._
_If the string is "at", say yes._
_If the string is "away", say yes._
_If the string is "back", say yes._
_If the string is "backward", say yes._
_If the string is "backwards", say yes._
_If the string is "before", say yes._
_If the string is "beginning", say yes._
_If the string is "behind", say yes._
_If the string is "below", say yes._
_If the string is "beneath", say yes._
_If the string is "beside", say yes._
_If the string is "between", say yes._
_If the string is "beyond", say yes._
_If the string is "bigger", say yes._
_If the string is "by", say yes._
_If the string is "close", say yes._
_If the string is "deep", say yes._
_If the string is "diagonally", say yes._
_If the string is "down", say yes._
_If the string is "downward", say yes._
_If the string is "ending", say yes._
_If the string is "everywhere", say yes._
_If the string is "except", say yes._
_If the string is "finishing", say yes._
_If the string is "facing", say yes._
_If the string is "for", say yes._
_If the string is "forward", say yes._
_If the string is "from", say yes._
_If the string is "given", say yes._
_If the string is "giving", say yes._
_If the string is "high", say yes._
_If the string is "in", say yes._
_If the string is "inside", say yes._
_If the string is "into", say yes._
_If the string is "larger", say yes._
_If the string is "leaning", say yes._
_If the string is "left", say yes._
_If the string is "leftward", say yes._
_If the string is "leftways", say yes._
_If the string is "like", say yes._
_If the string is "limiting", say yes._
_If the string is "long", say yes._
_If the string is "near", say yes._
_If the string is "of", say yes._
_If the string is "off", say yes._
_If the string is "on", say yes._
_If the string is "only", say yes._
_If the string is "onto", say yes._
_If the string is "out", say yes._
_If the string is "outside", say yes._
_If the string is "over", say yes._
_If the string is "past", say yes._
_If the string is "pointing", say yes._
_If the string is "returning", say yes._
_If the string is "right", say yes._
_If the string is "rightward", say yes._
_If the string is "rightways", say yes._
_If the string is "shorter", say yes._
_If the string is "sideway", say yes._
_If the string is "sideways", say yes._
_If the string is "similar", say yes._
_If the string is "smaller", say yes._
_If the string is "somewhere", say yes._
_If the string is "slantwise", say yes._
_If the string is "slantway", say yes._
_If the string is "slantways", say yes._
_If the string is "starting", say yes._
_If the string is "tall", say yes._
_If the string is "taller", say yes._
_If the string is "thru", say yes._
_If the string is "through", say yes._
_If the string is "throughout", say yes._
_If the string is "to", say yes._
_If the string is "toward", say yes._
_If the string is "towards", say yes._
_If the string is "under", say yes._
_If the string is "underneath", say yes._
_If the string is "until", say yes._
_If the string is "unto", say yes._
_If the string is "up", say yes._
_If the string is "upward", say yes._
_If the string is "upon", say yes._
_If the string is "using", say yes._
_If the string is "via", say yes._
_If the string is "while", say yes._
_If the string is "wide", say yes._
_If the string is "with", say yes._
_If the string is "within", say yes._
_If the string is "without", say yes._
_Say no._


_To decide if a string is any qualifier:_
_If the string is blank, say no._
_If the string's first's target is the left-paren byte, say yes._
_Say no._


_To decide if a string is any literal:_
_If the string is any pointer literal, say yes._
_If the string is any numeric literal, say yes._
_If the string is any string literal, say yes._
_If the string is any flag literal, say yes._
_If the string is any hex literal, say yes._
_Say no._


_To decide if a string is any pointer literal:_
_If the string is "nil", say yes._
_Say no._


_To decide if a string is any string literal:_
_If the string is blank, say no._
_If the string's first's target is the double-quote byte, say yes._
_Say no._


_To decide if a string is any hex literal:_
_If the string is blank, say no._
_If the string's first's target is the dollar-sign byte, say yes._
_Say no._


And now you know why primitive programming languages don't allow spaces in names._ - _


_83. As we collect the words that make up a name, we're going to need the routine below, to put back the spaces that were lost in the tokenizing process:_ - _


_To extend a string with another string:_
_If the other string is blank, exit._
_If the string is not blank, append the space byte to the string._
_Append the other string to the string._


84. We also need these 3 guys, who figure out the plural version of a name:_ - _


_To pluralize a string: _\ nouns only _
_If the string is "alumnus", put "alumni" into the string; exit._
_If the string is "auto", put "autos" into the string; exit._
_If the string is "cello", put "cellos" into the string; exit._
_If the string is "dwarf", put "dwarfs" into the string; exit._
_If the string is "foot", put "feet" into the string; exit._
_If the string is "genus", put "genera" into the string; exit._
_If the string is "goose", put "geese" into the string; exit._
_If the string is "hippo", put "hippos" into the string; exit._
_If the string is "louse", put "lice" into the string; exit._
_If the string is "memo", put "memos" into the string; exit._
_If the string is "mouse", put "mice" into the string; exit._
_If the string is "ox", put "oxen" into the string; exit._
_If the string is "phenomenon", put "phenomena" into the string; exit._
_If the string is "photo", put "photos" into the string; exit._
_If the string is "phylum", put "phyla" into the string; exit._
_If the string is "piano", put "pianos" into the string; exit._
_If the string is "pimento", put "pimentos" into the string; exit._
_If the string is "pro", put "pros" into the string; exit._
_If the string is "proof", put "proofs" into the string; exit._
_If the string is "radius", put "radii" into the string; exit._
_If the string is "rhinoceros", put "rhinoceri" into the string; exit._
_If the string is "roof", put "roofs" into the string; exit._
_If the string is "solo", put "solos" into the string; exit._
_If the string is "soprano", put "sopranos" into the string; exit._
_If the string is "staff", put "staffs" into the string; exit._
_If the string is "tooth", put "teeth" into the string; exit._
_If the string is "torus", put "tori" into the string; exit._
_If the string is "turf", put "turfs" into the string; exit._
_If the string is "virus", put "viruses" into the string; exit._
_If the string ends with "sh", append "es" to the string; exit._
_If the string ends with "ch", append "es" to the string; exit._
_If the string ends with "man", remove the last two bytes from the string; append "en" to the string; exit._
_If the string ends with "child", append "ren" to the string; exit._
_If the string ends with "ex", remove the last two bytes from the string; append "ices" to the string; exit._ \ or add ES _
_If the string ends with "fe", remove the last two bytes from the string; append "ves" to the string; exit._
_If the string ends with "is", remove the last two bytes from the string; append "es" to the string; exit._
_If the string ends with "ix", remove the last two bytes from the string; append "ices" to the string; exit._ \ or add ES _
_If the string ends with "ma", append "ta" to the string; exit. _ - \ or add S _
_If the string ends with any consonant and "y", remove the last byte from the string; append "ies" to the string; exit._
_If the string ends with any vowel and "o", append "s" to the string; exit._
_If the string ends with any vowel and "y", append "s" to the string; exit._
_If the string ends with "f", remove the last byte from the string; append "ves" to the string; exit._
_If the string ends with "s", append "es" to the string; exit._
_If the string ends with "x", append "es" to the string; exit._
_If the string ends with "z", append "es" to the string; exit._
_Append "s" to the string._


_To decide if a string ends with any consonant and another string:_
_Slap a substring on the string._
_Subtract the other string's length from the substring's last._
_If the substring is blank, say no._
_If the substring's last's target is not any consonant, say no._
_If the string does not end with the other string, say no._
_Say yes._


_To decide if a string ends with any vowel and another string:_
_Slap a substring on the string._
_Subtract the other string's length from the substring's last._
_If the substring is blank, say no._
_If the substring's last's target is not any vowel, say no._
_If the string does not end with the other string, say no._
_Say yes._


_85. And now that we've got our names straight, we can get back to scanning our types. Types come in different forms; simple types, like "An address is a number," are typically just subsets of other types. But types that have the word "has" or "have" after the type name, like "A button has a box and a name," are record types. To scan record types, we need this routine:_

_To scan a type given a rider (has or have):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_Put "record" into the type's base name._
_Scan the type's fields given the rider._
_If the rider's token is not the period byte, abort with "Types need to end with a period, I found '" then the rider's token then "'." and the rider; exit._
_Move the rider (compiler rules)._
_Index the type._


_86. Records have fields so we need some field-processing routines, too (keep in mind that fields behave like, and are treated like variables, in many places:_ - _


_To scan some fields given a rider:_
_If the compiler's abort flag is set, exit._
_Add a field to the fields given "field" and the rider's token's first._
_Scan the field given the rider._
_If the rider's token is not any pause, exit._
_Scan any pauses given the rider._
_Repeat._


_To add a variable to some variables given a kind and a locus:_
_Create the variable given the kind._
_Append the variable to the variables._
_Put the locus into the variable's locus._


_To scan a field given a rider:_
_If the compiler's abort flag is set, exit._
_Scan the field given the rider (type part)._
_Loop._
_If the compiler's abort flag is set, exit._
_If the rider's token is "called", scan the field given the rider (called part); repeat._
_If the rider's token is "at", scan the field given the rider (redefine part); repeat._
_If the rider's token is "(reference)", scan the field given the rider (reference part); repeat._


_87. As you can see from the routine above, each field in a record has a type of its own, and may have a variety of other special features. We handle those with these 6 scanners:_


To scan a field given a rider (type part):_
_If the compiler's abort flag is set, exit._
_If the rider's token is any numeric literal, scan the field given the rider (type part - byte array); exit._
_Scan the field given the rider (type part - normal)._


To scan a field given a rider (type part - normal):_
_If the compiler's abort flag is set, exit._
_If the rider's token is not any indefinite article, abort with "I was expecting an indefinite article, but found '" then the rider's token then "'." and the rider; exit._
_If the rider's token is "another", put "other" into the field's name._
_Move the rider (compiler rules)._
_Scan a name given the rider._
_Extend the field's name with the name._


To scan a field given a rider (called part):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_If the field's type name is blank, put the field's name into the field's type name. \ byte array type name already filled in _
_Scan the field's name given the rider._


To scan a field given a rider (redefine part):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_If the rider's token is not "the", abort with "I was expecting the word 'the', but found '" then the rider's token then "'." and the rider; exit._
_Move the rider (compiler rules)._
_Scan the field's redefinition target name given the rider._


To scan a field given a rider (reference part):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_Set the field's reference flag._

_
_To scan a field given a rider (type part - byte array):_
_If the compiler's abort flag is set, exit._
_Convert the rider's token to a ratio._
_Reduce the ratio._
_If the ratio's denominator is not 1, abort with "You have to specify a whole number of bytes for a byte array" and the rider; exit._
_Put the ratio's numerator into the field's count._
_Move the rider (compiler rules)._
_If the rider's token is not "byte" or "bytes", abort with "Nothing but the word 'bytes' is appropriate after a counted field designator." and the rider; exit._
_Move the rider (compiler rules)._
_Put "byte" into the field's type name._


_88. Since fields in a record can be separated by a variety of things (called pauses_), we need these 2 routines, too:_


To scan any pauses given a rider:_
_If the compiler's abort flag is set, exit._
_If the rider's token is not any pause, exit._
_Move the rider (compiler rules)._
_Repeat._

 _

_To decide if a string is any pause:_
_If the string is ",", say yes._
_If the string is ";", say yes._
_If the string is "and", say yes._
_If the string is "or", say yes._
_Say no.__



89. Some types, like "An inch is 1440 twips", are "unit of measure" types. The CAL uses such types to automatically convert units of measure at compile time. These types are scanned by this guy:_


To scan a type given a rider (unit of measure):_
_If the compiler's abort flag is set, exit._
_Convert the rider's token to the type's scale._
_If the type's scale is 0, abort with "Zero is an invalid scale." and the type's locus; exit._
_Move the rider (compiler rules)._
_Scan the type's base name given the rider._
_If the rider's token is not the period byte, abort with "Types need to end with a period, I found '" then the rider's token then "'." and the rider; exit._
_Move the rider (compiler rules)._
_Index the type._


90. The 4 routines below are used to scan any optional information that might appear at the end of a type definition (like the target type of a pointer type, or fields that extend another record type):_


To decide if a string is the start of any optional info:_
_If the string is "to", say yes._
_If the string is "with", say yes._
_Say no._


To scan any optional info for a type given a rider:_
_If the compiler's abort flag is set, exit._
_If the rider's token is "to", scan any optional info for the type given the rider (pointer); exit._
_If the rider's token is "with", scan any optional info for the type given the rider (record); exit._


To scan any optional info for a type given a rider (pointer):_
_Move the rider (compiler rules)._
_If the rider's token is not any indefinite article, abort with "The 'to' here needs to be followed by an indefinite article, not '" then the rider's token then "'." and the rider; exit._
_Move the rider (compiler rules)._
_Scan the type's target name given the rider._


To scan any optional info for a type given a rider (record):_
_Move the rider (compiler rules)._
_Scan the type's fields given the rider._


And that's it for scanning types._


91. Now we need some routines to scan our globals. This is the top-level guy and 3 of his helpers:_


To scan a global given a rider:_
_If the compiler's abort flag is set, exit._
_Add the global to the globals given "global" and the rider's token's first._
_Move the rider (compiler rules)._
_Scan the global's name given the rider._
_If the rider's token is "has" or "have", scan the global given the rider (has or have); exit._
_If the rider's token is not "is" or "are", abort with "Geez. I need an 'is' or an 'are' hereabouts, but all I found was '" then the rider's token then "'." and the rider; exit._
_Move the rider (compiler rules)._
_If the rider's token is not any indefinite article, scan the global given the rider (literal term); exit._
_Move the rider (compiler rules)._
_Scan the global's type name given the rider. _
_If the rider's token is the start of any optional info, scan the global given the rider (optional info); exit._
_If the rider's token is "equal", scan the global given the rider (data part); exit._
_If the rider's token is not the period byte, abort with "All global definitions must end with a period. Including this one." and the rider; exit._
_Move the rider (compiler rules)._
_Index the global._


To add a variable to some variables given a kind and a locus:_
_Create the variable given the kind._
_Append the variable to the variables._
_Put the locus into the variable's locus._


To create a variable given a kind:_
_Allocate memory for the variable._
_Put the kind into the variable's kind._
_Put 1 into the variable's count._


To index a global:_
_If the compiler's abort flag is set, exit._
_If the global is nil, exit._
_If the global's name is in the global index, abort with "'" then the global's name then "' is a duplicate global variable." and the global's locus; exit._
_Index the global given the global's name and the global index._



92. There's a bit of redundancy here because global variables can include implied, "inline" type defintions. So this guy should look somewhat familiar:_


To scan a global given a rider (has or have):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_Put "~inline " then the global's name then " type" into a name._
_Put the name then "s" into a plural name._
_Add a type to the types given the name and the plural name and "record" and the global's locus._
_Index the type._
_Put the type's name into the global's type name._
_Scan the type's fields given the rider._
_If the rider's token is not the period byte, abort with "Your punctuation is bad here." and the rider; exit._
_Move the rider (compiler rules)._
_Index the global._


93. And this guy should look familiar, too:_


To scan a global given a rider (optional info):_
_If the compiler's abort flag is set, exit._
_Put "~inline " then the global's name then " type" into a name._
_Put the name then "s" into a plural name._
_Add a type to the types given the name and the plural name and the global's type name and the global's locus._
_Index the type._
_Put the type's name into the global's type name._
_Scan any optional info for the type given the rider._
_If the rider's token is not the period byte, abort with "All global definitions must end with a period. Including this one." and the rider; exit._
_Move the rider (compiler rules)._
_Index the global._


_94. Some global variables have initial values, so we need this routine:_


To scan a global given a rider (data part):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_If the rider's token is not "to", abort with "I need the word 'to' after the word 'equal', not '" then the rider's token then "'." and the rider; exit._
_Move the rider (compiler rules)._
_Scan the global's global body given the rider._
_If the rider's token is not the period byte, abort with "All global definitions must end with a period. Including this one." and the rider; exit._
_Move the rider (compiler rules)._
_Index the global._


We're not quite ready to deal with those initial values, so we just suck up the "body" of the global definition and keep it for later. This is the routine that does that:_


To scan a global body given a rider:_
_If the compiler's abort flag is set, exit._
_If the rider's token is blank, exit._
_Put the rider's token's first into the global body's first._
_Put -1 into the global body's last._
_Loop._
_If the compiler's abort flag is set, exit._
_If the rider's token is blank, exit._
_If the rider's token is the colon byte, exit._
_If the rider's token is the period byte, exit._
_Put the rider's token's last into the global body's last._
_Move the rider (compiler rules)._
_Repeat._


A similar thing occurs here:_


To scan a global given a rider (literal term):_
_If the compiler's abort flag is set, exit._
_Scan the global's global body given the rider._
_If the rider's token is not the period byte, abort with "All global definitions must end with a period. Including this one." and the rider; exit._
_Move the rider (compiler rules)._
_Index the global._


And that's it for globals, for now._


95. This is our top-level routine scanner, with a couple of his trivial helpers:_


_To scan a routine given a rider:_
_If the compiler's abort flag is set, exit._
_Add the routine to the routines given the rider's token's first._
_Move the rider (compiler rules)._
_Scan the routine's routine header given the rider._
_If the rider's token is the semi-colon byte, scan the routine given the rider (alternate wording); exit._

_If the rider's token is not the colon byte, abort with "This routine header is improperly formulated." and the routine's locus; exit._
_Move the rider (compiler rules)._
_Scan the routine's routine body given the rider._


_To add a routine to some routines given a locus:_
_Create the routine._
_Append the routine to the routines._
_Put the locus into the routine's locus._


_To create a routine:_
_Allocate memory for the routine._


96. It's too soon to do much with routines, so we just collect each routine's header and body into a substring and save them for later:_


_To scan a routine header given a rider:_
_If the compiler's abort flag is set, exit._
_If the rider's token is blank, exit._
_Put the rider's token's first into the routine header's first._
_Put -1 into the routine header's last._
_Loop._
_If the compiler's abort flag is set, exit._
_If the rider's token is blank, exit._
_If the rider's token is the semi-colon byte, exit. _

_If the rider's token is the colon byte, exit._
_If the rider's token is the period byte, exit._
_Put the rider's token's last into the routine header's last._
_Move the rider (compiler rules)._
_Repeat._


_To scan a routine body given a rider:_
_If the compiler's abort flag is set, exit._
_If the rider's token is blank, exit._
_If the rider's token is the start of any definition, exit._
_Put the rider's token's first into the routine body's first._
_Loop._
_If the compiler's abort flag is set, exit._
_If the rider's token is blank, exit._
_Put the rider's token's last into the routine body's last._
_If the rider's token is the colon byte, abort with "You may have forgotten a period somewhere above this. You better check." and the rider; exit._
_If the rider's token is not the period byte, move the rider (compiler rules); repeat._
_Move the rider (compiler rules)._
_If the rider's token is the start of any definition, exit._
_Repeat._


97. There's some special treatment required for routines with alternate headers:_


_To scan a routine given a rider (alternate wording): _

_Privatize the rider._
_Move the rider (compiler rules)._
_If the rider's token is not "to", abort with "I think that there semi-colon is misplaced." and the original rider; exit._
_Put the original rider's token's first into the routine's routine body's first._
_Put the original rider's token's last into the routine's routine body's last._
_Move the original rider (compiler rules)._


98. And we need this little guy so we can find the end of a routine body. Routine bodies end with the start of the next type, global or routine definition:_


_To decide if a string is the start of any definition:_
_If the string is "to", say yes._
_If the string is "a", say yes._
_If the string is "an", say yes._
_If the string is "the", say yes._
_If the string is "some", say yes._
_Say no._


99. And now we should be able to run. CTRL-R. Do it. When you're in the blue, find the "CAL-4700's son's daughter" directory, open it, open the source files, and do a list (CTRL-L)._


100. Still in the blue, on a free tab, open the daughter's ".lst" file. Now we've got something to look at -- almost 12,000 lines, in fact. Let's examine just a few._


You'll notice that almost all the types, except for "byte" and "record", have -1 (hex FFFFFFFF) in their length field, like this one:_


_/type/abort message/abort messages/FFFFFFFF/string////0/_


That's because we haven't yet calculated those lengths._


You'll also notice that "implied" types have a tilde on the front of their names, like this:_


_/type/~inline compiler type/~inline compiler types/FFFFFFFF/record////0/_


Thirdly, you'll notice that record types have their fields listed as variables, like so:_


_/type/entry/entries/FFFFFFFF/thing////0/_
_/variable/field/no/name address////00000000/no/1/no////_
_/variable/field/no/thunk address////00000000/no/1/no////_
_/variable/field/no/name////00000000/no/1/no////_
_/variable/field/no/address////00000000/no/1/no////_


If you skip down to the next section of the listing (just find "GLOBALS:" with no quotes and a colon on the end), you'll see lots of globals, with their types filled in, but with zeros in their addresses, like this:_


_/variable/global/no/adding built-in memory routines timer//timer//00000000/no/1/no////_
_/variable/global/no/adding built-in startup routine timer//timer//00000000/no/1/no////_
_/variable/global/no/addressing timer//timer//00000000/no/1/no////_
_/variable/global/no/break tag//tag//00000000/no/1/no////_
_/variable/global/no/calculating timer//timer//00000000/no/1/no////_


In the "LITERALS:" section, you'll find nothing at all, because we haven't done anything with literals yet (except save them in global and routine body substrings)._


In the "ROUTINES:" section, you'll see we've got a lot of routines hanging on the list, but that we know almost nothing about them at this point. That's because all we did was squirrel away their headers and bodies in substrings for later._


Further down you can see that our "TYPE INDEX:" is now getting some use, with some entries sharing buckets:_


_TYPE INDEX:_


_/367 buckets/405 refers/_


Our "GLOBAL INDEX:" is also getting some use:_


_GLOBAL INDEX:_


_/558 buckets/729 refers/_

 _

_Our other indexes are empty:_


_LITERAL INDEX:_


_ROUTINE INDEX:_


_UTILITY INDEX:_


Our "IMPORTS:" section is also empty, since we haven't compiled any references to DLLs yet:_


_IMPORTS:_


Finally, at the very bottom, you'll see that we've got all six source files properly loaded (as before)..._


_SOURCE FILES:_


_/source file/c:\cal-4700's son's daughter\the compiler/_
_/source file/c:\cal-4700's son's daughter\the desktop/_
_/source file/c:\cal-4700's son's daughter\the editor/_
_/source file/c:\cal-4700's son's daughter\the finder/_
_/source file/c:\cal-4700's son's daughter\the noodle/_
_/source file/c:\cal-4700's son's daughter\the writer/_


...and that scanning now accounts for the bulk of our compile time:_


_TIMERS:_


_/timer/loading/0/_
_/timer/scanning/437/_
_/timer/resolving types/0/_
_/timer/resolving globals/0/_
_/timer/compiling routine headers/0/_
_/timer/calculating/0/_
_/timer/adding built-in memory routines/0/_
_/timer/indexing utilities/0/_
_/timer/compiling routine bodies/0/_
_/timer/adding built-in startup routine/0/_
_/timer/offsetting/0/_
_/timer/addressing/0/_
_/timer/transmogrifying/0/_
_/timer/linking/0/_
_/timer/writing/0/_
_/timer/total/562/_


So far, so good. Next up, resolution of our types._


---_


_ _

Okay, you know the drill.__


101. In the gray, open the Son of CAL's compiler, move our temporary abort line down a notch, and uncomment the "resolve the types" step:_ - _


_To compile a directory:_
_Compile the directory (start)._
_Compile the directory (load the source files)._
_Compile the directory (scan the source files)._
_Compile the directory (resolve the types)._
_Abort with "I'm not old enough to make babies.". _
_\Compile the directory (resolve the globals)._
_\Compile the directory (compile the headers of the routines)._
_\Compile the directory (calculate lengths and offsets of types)._
_\Compile the directory (add the built-in memory routines)._
_\Compile the directory (index the routines for utility use)._
_\Compile the directory (compile the bodies of the routines)._
_\Compile the directory (add and compile the built-in startup routine)._
_\Compile the directory (offset parameters and variables)._
_\Compile the directory (address)._
_\Compile the directory (transmogrify)._
_\Compile the directory (link)._
_\Compile the directory (write the exe)._
_\Compile the directory (stop).__


102. In this step we're going to whip through all of our types four times, looking for different things on each pass:_

_To compile a directory (resolve the types):_
_If the compiler's abort flag is set, exit._
_Show status "Resolving..."._
_Start the resolving types timer._
_Resolve the types (expand things)._
_Resolve the types (index plurals)._
_Resolve the types (base types)._
_Resolve the types (optional info)._
_Stop the resolving types timer._


103: First Pass: (a) make a new record type with previous and next pointers on the front for every type defined as a "thing"; make the original type look like a pointer to the new record type; and add the implied types needed for easy list making as well:__


_To resolve some types (expand things):_
_If the compiler's abort flag is set, exit._
_Get a type from the types._
_If the type is nil, exit._
_Resolve the type (expand thing)._
_Repeat._


_To resolve a type (expand thing):_ \ type's base type is not resolved yet _
_If the compiler's abort flag is set, exit._
_If the type is nil, exit._
_If the type's base type is not nil, exit._
_If the type's name is "thing", exit._
_If the type cannot be reduced to "thing" using the base name, exit._
_Find a base type given the type's base name and the type index. _
_\  add thing record _
_Put the type's name then " record" into a name._
_Put the type's name then " records" into a plural name._
_Put the base type's name then " record" into a base name._
_Add a record type to the types given the name and the plural name and the base name._
_Add a field to the record type's fields given "next " then the type's name and "next" and the type's name and yes._
_Add another field to the record type's fields given "previous " then the type's name and "previous" and the type's name and yes._
_If the type's fields are not empty, append the type's fields to the record type's fields._
_Index the record type. _
_\ fix up original type to look like a pointer _
_Put the record type's name into the type's target name. _
_\ add chain type _
_Add a chain type to the types given the type's plural name and "" and the base type's plural name._
_Add a third field to the chain type's fields given "first " then the type's name and "first" and the type's name and yes._
_Add a fourth field to the chain type's fields given "last " then the type's name and "last" and the type's name and yes._
_Index the chain type._


104. We're going to need this decider to do all that:_


_To decide if a type can be reduced to a string using the base name:_
_If the type is nil, say no._
_If the type's name is the string, say yes._
_If the type's cooking flag is set, say no._
_Set the type's cooking flag._
_Find a base type given the type's base name and the type index._
_If the base type is nil, clear the type's cooking flag; say no._
_If the base type can be reduced to the string using the base name, clear the type's cooking flag; say yes._
_Clear the type's cooking flag._
_Say no._


105. And we're going to need this little helper as well:_


_To add a field to some fields given a name and a nickname and a type name and a reference flag:_
_Add the field to the fields given "field" and nil._
_Put the name into the field's name._
_Put the nickname into the field's nickname._
_Put the type name into the field's type name._
_Put the reference flag into the field's reference flag._


106: Second Pass: Make sure all the as-yet unindexed plural names make it into the type index:_


_To resolve some types (index plurals):_
_If the compiler's abort flag is set, exit._
_Get a type from the types._
_If the type is nil, exit._
_Resolve the type (index plural)._
_Repeat._


_To resolve a type (index plural):_
_If the compiler's abort flag is set, exit._
_If the type is nil, exit._
_If the type's plural name is blank, exit._
_If the type can be reduced to "thing" using the base name, exit._
_Index the type given the type's plural name._


107: Third Pass: Make sure the base types for all higher-level types are solid:_


_To resolve some types (base types):_
_If the compiler's abort flag is set, exit._
_Get a type from the types._
_If the type is nil, exit._
_Resolve the type (base type)._
_Repeat._


_To resolve a type (base type):_
_If the compiler's abort flag is set, exit._
_If the type is nil, exit._
_If the type's base type is not nil, exit._
_Find the type's base type given the type's base name and the type index._
_If the type's base type is nil, abort with "Invalid base type '" then the type's base name then "'." and the type's locus; exit._
_Set the type's cooking flag._
_If the type's base type's cooking flag is set, abort with "Recursive definition with '" then the type's base name then "'." and the type's locus; exit._
_Resolve the type's base type (base type)._
_Clear the type's cooking flag._


_We use the "cooking flag" to make sure we don't run into ourselves when we're chasing down types. It's okay, for example, to have a nickname_ be a name_ and a name_ be a string_, but you can't have a nickname_ be a name_ and a name_ be a nickname_._


_108. Fourth Pass: See what we can do with all the optional information our types might have tacked on to them:_


_To resolve some types (optional info):_
_If the compiler's abort flag is set, exit._
_Get a type from the types._
_If the type is nil, exit._
_Resolve the type (optional info)._
_Repeat._


_To resolve a type (optional info):_
_If the compiler's abort flag is set, exit._
_If the type is nil, exit._
_If the type's optional info resolved flag is set, exit._
_If the type's base type is the type, exit._ \ for built in types _
_Check for invalid optional info on the type._
_Set the type's cooking flag._
_Resolve the type's base type (optional info)._
_If the type can be reduced to "pointer", resolve the type (optional info - pointer)._
_If the type can be reduced to "record", resolve the type (optional info - record)._
_If the type can be reduced to "number", resolve the type (optional info - scale)._
_Clear the type's cooking flag._
_Set the type's optional info resolved flag._


_109. At this point, we need lots of helpers; these, for starters:_


_To check for invalid optional info on a type:_
_If the compiler's abort flag is set, exit._
_If the type is nil, exit._
_If the type's target name is not blank, check for invalid optional info on the type (target)._
_If the type's fields are not empty, check for invalid optional info on the type (fields)._
_If the type's scale is not 0, check for invalid optional info on the type (scale)._


_To check for invalid optional info on a type (fields):_
_If the compiler's abort flag is set, exit._
_If the type cannot be reduced to "record", abort with "Optional 'with' info is only allowed on record types." and the type's locus; exit._


_To check for invalid optional info on a type (scale):_
_If the compiler's abort flag is set, exit._
_If the type cannot be reduced to "number", abort with "Scales are only allowed on number types." and the type's locus; exit._


_To check for invalid optional info on a type (target):_
_If the compiler's abort flag is set, exit._
_If the type cannot be reduced to "pointer", abort with "Optional 'to' info is only allowed on pointer types." and the type's locus; exit._
_ _
_110: These helpers are needed too:_


_To resolve a type (optional info - pointer):_
_If the compiler's abort flag is set, exit._
_If the type's target type is not nil, exit._
_If the type's target name is blank, put the type's base type's target type into the type's target type; exit._
_Find the type's target type given the type's target name and the type index._
_If the type's target type is nil, abort with "I can't quite see what you're pointing at. Please clarify." and the type's locus; exit._


_To resolve a type (optional info - record):_
_If the compiler's abort flag is set, exit._
_If the type's fields are empty, copy the type's base type's fields into the type's fields; exit._
_Loop._
_If the compiler's abort flag is set, exit._
_Get a field from the type's fields (backwards)._
_If the field is nil, break._
_If the field is duplicated in the type's fields, abort with "The '" then the field's name then "' field is defined more than once." and the field's locus; exit._
_Resolve the field._
_If the compiler's abort flag is set, exit._
_If the field's type's cooking flag is set, abort with "Recursive definition with '" then the field's type's name then "'." and the field's locus; exit._
_Resolve the field's type (optional info)._
_If the field's reference flag is not set, repeat._
_If the field's type cannot be reduced to "pointer", abort with "Exactly what do you mean by '(reference)' here on this '" then the field's name then "'?" and the field's locus; exit._
_Repeat._
_Eliminate duplicate nicknames from the type's fields._
_If the type cannot be reduced to "thing record", exit._
_If the type's fields' count is greater than 2, exit._
_Copy the type's base type's fields into the type's fields (data fields only)._


_To resolve a type (optional info - scale):_
_If the compiler's abort flag is set, exit._
_Put the type's base type into a base type._
_If the type's scale is 0, put the type's base type's scale into the type's scale; exit._
_If the base type's scale is 0, exit._
_Multiply the type's scale by the base type's scale._
_Put the base type's base type into the type's base type._


_111. And these two deciders should be put back in:_


_To decide if a type can be reduced to a type name:_
_If the type is nil, say no._
_Privatize the type._
_Loop._
_If the type is nil, say no._
_If the type's name is the type name, say yes._
_If the type's base type is the type, say no._
_Put the type's base type into the type._
_Repeat._


_To decide if a variable is duplicated in some variables:_
_Get another variable from the variables._
_If the other variable is nil, say no._
_If the other variable's name is blank, repeat._
_If the other variable is the variable, repeat._
_If the other variable's name is the variable's name, say yes._
_Repeat._


That last decider is used to eliminate duplicate fields in records (recall that fields are considered variables)._


_112. When a record type is extended, we need to duplicate fields, so we're going to need these guys, too:_


_To copy a field into another field:_
_If the field is nil, void the other field; exit._
_Allocate memory for the other field._
_Put the field's locus into the other field's locus._
_Put the field's name into the other field's name._
_Put the field's nickname into the other field's nickname._
_Put the field's type name into the other field's type name._
_Put the field's type into the other field's type._
_Put the field's count into the other field's count._
_Put the field's redefinition target name into the other field's redefinition target name._
_Put the field's reference flag into the other field's reference flag._
_Put the field's offset into the other field's offset._


_To copy some fields into some other fields:_
_Get a field from the fields._
_If the field is nil, exit._
_Copy the field into another field._
_Append the other field to the other fields._
_Repeat._


_To copy some fields into some other fields (data fields only):_
_If the fields' first is nil, exit._
_If the fields' first's next is nil, exit._
_Put the fields' first's next's next into a field._
_Loop._
_If the field is nil, exit._
_Copy the field into another field._
_Append the other field to the other fields._
_Get the field from the fields._
_Repeat._


113. We resolve our global_ variables later, but we resolve our "field variables" on this pass through the types:_


_To resolve a field:_
_If the compiler's abort flag is set, exit._
_If the field is nil, exit._
_Resolve the field as a variable._
_If the field's nickname is not any valid field name, clear the field's nickname._
_If the field's name is not any valid field name, abort with "'" then the field's name then "' is not a valid field name." and the field's locus; exit._


_To resolve a variable:_
_If the compiler's abort flag is set, exit._
_If the variable is nil, exit._
_If the variable's type is not nil, exit._
_If the variable's type name is not blank, resolve the variable (explicit type name); exit._
_Find the variable's type and the variable's nickname given the variable's name._
_If the variable's type is not nil, put the variable's type's name into the variable's type name; exit._
_Abort with "I can't find the '" then the variable's name then "' type." and the variable's locus._


_To resolve a variable (explicit type name):_
_Find the variable's type given the variable's type name and the type index._
_If the variable's type is nil, abort with "I can't find the '" then the variable's type name then "' type." and the variable's locus; exit._


114. Perhaps you noticed various calls to "find" routines in the stuff above. These are the ones we should put back now:_


_To find a type and a nickname given a name:_
_Void the type._
_Clear the nickname._
_Slap a substring on the name._
_Loop._
_If the substring is blank, exit._
_Find the type given the substring and the type index._
_If the type is not nil, break._
_Skip to the next word in the substring._
_Repeat._
_Put the name's first into another substring's first._
_Put the substring's first minus 2 into the other substring's last._
_If the other substring is not blank, put the other substring into the nickname._
_If the other substring is blank, put the substring into the nickname._


_To find a variable given a name:_
_If the current routine is nil, void the variable; exit._
_Find the variable given the name and the current routine's locals._
_If the variable is not nil, exit._
_Find the variable given the name and the current routine's parameters._
_If the variable is not nil, exit._
_Find the variable given the name and the global index._
_If the variable is not nil, exit._
_Find the variable given the name and the literal index._


_To find a variable given a name and some variables:_
_Void the variable._
_Loop._
_Get the variable from the variables._
_If the variable is nil, exit._
_If the variable's name is the name, exit._
_If the variable's nickname is the name, exit._
_Repeat._

_ _
_115. We're going to need this little guy to help us with nickname processing:_


_To skip to the next word in a substring:_
_If the substring is blank, exit._
_If the substring's first's target is noise, break._
_Add 1 to the substring's first._
_Repeat._
_Skip any leading noise in the substring._


116. Plus this guy, to make sure the programmer doesn't misuse our three reserved field names:_


_To decide if a name is any valid field name:_
_If the name is "magnitude", say no._
_If the name is "target", say no._
_If the name is "whereabouts", say no._
_Say yes._


117. And these 3 guys to help us eliminate duplicate nicknames:_


_To eliminate duplicate nicknames from some variables:_
_Create an index given 101._
_Eliminate duplicate nicknames from the variables given the index._
_Destroy the index._


_To eliminate duplicate nicknames from some variables given an index:_
_If the index is nil, exit._
_Loop._
_Get a variable from the variables._
_If the variable is nil, exit._
_Eliminate duplicate nicknames given the variable and the index._
_Repeat._


_To eliminate duplicate nicknames given a variable and an index:_
_If the variable is nil, exit._
_If the index is nil, exit._
_Find another variable given the variable's nickname and the index._
_If the other variable is nil, find the other variable given the variable's name and the index._
_If the other variable is nil, index the variable given the variable's nickname and the index; exit._
_Clear the other variable's nickname._
_Clear the variable's nickname._


118. And that's it; types resolved. You know the drill. Run it; when you're in the blue, open the daughter and list it. Our types won't be complete yet, but will be a bit more robust and error-free._


Here's a notable example. In the Noodle, a wyrd is defined as a record like this:_


A wyrd has a low byte and a high byte._


And a number is defined as a record like this:_


_A number has_
_a first byte,_
_a second byte,_
_a third byte,_
_a fourth byte,_
_a low wyrd at the first byte,_
_a high wyrd at the third byte._


We define wyrds and numbers in this way so we can easily get to their pieces._


You probably remember that in the compiler we have this type:_


_A tag is a number._


And now that our types have been resolved, you can see in the listing that all the fields in the number type have been copied into the tag type (remember that fields are treated like variables):_


_/type/tag/tags/FFFFFFFF/number/number///0/_
_/variable//no/first byte/first/byte/byte/00000000/no/1/no////_
_/variable//no/second byte/second/byte/byte/00000000/no/1/no////_
_/variable//no/third byte/third/byte/byte/00000000/no/1/no////_
_/variable//no/fourth byte/fourth/byte/byte/00000000/no/1/no////_
_/variable//no/low wyrd/low/wyrd/wyrd/00000000/no/1/no/first byte///_
_/variable//no/high wyrd/high/wyrd/wyrd/00000000/no/1/no/third byte///_


And here's another notable example. In the compiler we define a "source file" like this:_


_A source file is a thing with a path and a buffer._


But now that our types have been resolved, that definition has been modified and expanded to include (a) a "source file" type that is nothing but a pointer to a "source file record"; (b) a "source file record" that has "next source file" and "previous source file" pointers on the front for easy chaining; and (c) a compiler-generated type, "source files" (plural) with "first source file" and "last source file" fields that can be used as the anchor for a list. Here they are in the listing:_


/_ - type/source file/source files/FFFFFFFF/thing/thing/source file record/source file record/0/_
_/variable//no///byte/byte/00000000/no/4/no////_


_/type/source file record/source file records/FFFFFFFF/thing record/thing record///0/_
_/variable/field/no/next source file/next/source file/source file/00000000/no/1/yes////_
_/variable/field/no/previous source file/previous/source file/source file/00000000/no/1/yes////_
_/variable/field/no/path/path/path/path/00000000/no/1/no////_
_/variable/field/no/buffer/buffer/buffer/buffer/00000000/no/1/no////_


_/type/source files//FFFFFFFF/things/things///0/_
_/variable/field/no/first source file/first/source file/source file/00000000/no/1/yes////_
_/variable/field/no/last source file/last/source file/source file/00000000/no/1/yes////_


A third notable example is the "foot" unit-of-measure type, which was defined like this:_


A foot is 12 inches._


Which refers to this definition of an inch:_

 _

An inch is 1440 twips._


Which refers to this definition of a twip:_


A twip is a number._


Now that our types have been resolved, we find that the "foot" type looks like this:_


_/type/foot/feet/FFFFFFFF/inches/twip///17280/_
_/variable//no/first byte/first/byte/byte/00000000/no/1/no////_
_/variable//no/second byte/second/byte/byte/00000000/no/1/no////_
_/variable//no/third byte/third/byte/byte/00000000/no/1/no////_
_/variable//no/fourth byte/fourth/byte/byte/00000000/no/1/no////_
_/variable//no/low wyrd/low/wyrd/wyrd/00000000/no/1/no/first byte///_
_/variable//no/high wyrd/high/wyrd/wyrd/00000000/no/1/no/third byte///_


Note that the "foot" type not only has an appropriate plural form ("feet"), but that it also has all the fields that any other number has, and that the "scale factor" (last item on the first line above) is 17280, which is 12 times 1440, or the number of twips in an foot. The "scale factor" is used, at compile time, to convert literals in routine calls that have a specified unit of measure to units expected by the called routine. When, for example, in the Cal Monet we said:_


_Resize the picture to 5-1/2 inches by 5-1/2 inches._


The CAL automatically passed 7920 to the resize routine (who was expecting twips, not inches). And had we made the picture just a little bigger by saying..._


_Resize the picture to 1/2 foot by 1/2 foot._


The CAL would have passed 8640 to the resize routine (8640 is the number of twips in 6 inches, or 1/2 foot)._

_
_Looking further in our listing, we ca see that our type index is a little busier:_


_TYPE INDEX:_


_/840 buckets/1001 refers/_


And that all that resolving of types took almost no time at all:_


_TIMERS:_


_/timer/loading/62/_
_/timer/scanning/453/_
_/timer/resolving types/47/_
_/timer/resolving globals/0/_
_/timer/compiling routine headers/0/_
_/timer/calculating/0/_
_/timer/adding built-in memory routines/0/_
_/timer/indexing utilities/0/_
_/timer/compiling routine bodies/0/_
_/timer/adding built-in startup routine/0/_
_/timer/offsetting/0/_
_/timer/addressing/0/_
_/timer/transmogrifying/0/_
_/timer/linking/0/_
_/timer/writing/0/_
_/timer/total/719/_


Next up: Resolving global variables._

_ _

---_


119. Moving on. Back in the gray, adjust the "compile a directory" routine to look like this:_


_To compile a directory:_
_Compile the directory (start)._
_Compile the directory (load the source files)._
_Compile the directory (scan the source files)._
_Compile the directory (resolve the types)._
_Compile the directory (resolve the globals)._
_Abort with "I'm not old enough to make babies.". _
_\Compile the directory (compile the headers of the routines)._
_\Compile the directory (calculate lengths and offsets of types)._
_\Compile the directory (add the built-in memory routines)._
_\Compile the directory (index the routines for utility use)._
_\Compile the directory (compile the bodies of the routines)._
_\Compile the directory (add and compile the built-in startup routine)._
_\Compile the directory (offset parameters and variables)._
_\Compile the directory (address)._
_\Compile the directory (transmogrify)._
_\Compile the directory (link)._
_\Compile the directory (write the exe)._
_\Compile the directory (stop)._


120. Here are the top-level routines for this step:_


_To compile a directory (resolve the globals):_
_If the compiler's abort flag is set, exit._
_Show status "Resolving..."._
_Start the resolving globals timer._
_Resolve the globals._
_Stop the resolving globals timer._


_To resolve some globals:_
_If the compiler's abort flag is set, exit._
_Get a global from the globals._
_If the global is nil, exit._
_Resolve the global._
_Repeat._


121. And here's the gist of it:_


_To resolve a global:_
_If the global is nil, exit._
_If the compiler's abort flag is set, exit._
_If the global's global body is not blank, resolve the global (compile body)._
_If the global's type name is blank, abort with "Invalid global '" then the global's name then "'." and the global's locus; exit._
_Resolve the global as a variable._


_To resolve a global (compile body):_
_If the global is nil, exit._
_If the compiler's abort flag is set, exit._
_Slap a rider on the global's global body._
_Move the rider (compiler rules)._
_If the rider's token is not any literal, abort with "I need a literal here, but I found '" then the rider's token then "'." and the rider; exit._
_Compile a literal given the rider._
_If the compiler's abort flag is set, exit._
_If the rider's token is not blank, abort with "Is a period missing around here?" and the rider; exit._
_If the global's type name is blank, put the literal's type's name into the global's type name._
_Put the literal into the global's literal._
_Index the literal._


122. We use the word "compile" here (instead of just "scan" or "resolve") since we're actually getting to the place where we are formatting some of the information in the source code exactly as it will appear in the executable file. Specifically, literals used to initialize global variables:_


_To compile a literal given a rider:_
_If the compiler's abort flag is set, exit._
_Add the literal to the literals given the rider's token's first._
_If the rider's token is any flag literal, compile the literal given the rider (flag); exit._
_If the rider's token is any hex literal, compile the literal given the rider (hex); exit._
_If the rider's token is any numeric literal, compile the literal given the rider (numeric); exit._
_If the rider's token is any pointer literal, compile the literal given the rider (pointer); exit._
_If the rider's token is any string literal, compile the literal given the rider (string); exit._
_Abort with "Internal error - compile a term given a rider (literal)" and the rider._


_123. Literals don't have names, but we give them names anyway to make them easier to use and to spot (not to mention, chase around) in the listing file. Since the names are generated by the compiler, we put a tilde as the first character:_


_To generate a name given a string:_
_Put the string into the name._
_Add 1 to the compiler's name count._
_Convert the compiler's name count to another string._
_Append the other string to the name._

_To add a literal to some variables given a locus:_
_Add the literal as a variable to the variables given "literal" and the locus._
_Generate the literal's name given "~L"._


_124. Several types of literals have to be converted to "executable ready" format:_


_To compile a literal given a rider (flag):_
_If the compiler's abort flag is set, exit._
_Convert the rider's token to a flag._
_Convert the flag to the literal's data._
_Move the rider (compiler rules)._
_Put "flag" into the literal's type name._
_Resolve the literal._


_To compile a literal given a rider (hex):_
_If the compiler's abort flag is set, exit._
_Put the rider's token into a nibble substring._
_Add 1 to the nibble substring's first._
_Convert the nibble substring to the literal's data._
_Move the rider (compiler rules)._
_Put "hex string" into the literal's type name._
_Resolve the literal._


_To compile a literal given a rider (numeric - integer):_
_If the compiler's abort flag is set, exit._
_Convert the rider's token to a number._
_Convert the number to the literal's data._
_Move the rider (compiler rules)._
_Put "number" into the literal's type name._
_Resolve the literal._


_To compile a literal given a rider (numeric - ratio):_
_If the compiler's abort flag is set, exit._
_Convert the rider's token to a ratio._
_Convert the ratio to the literal's data._
_Move the rider (compiler rules)._
_Put "ratio" into the literal's type name._
_Resolve the literal._


_To compile a literal given a rider (numeric):_
_If the compiler's abort flag is set, exit._
_If the rider is followed by any unit of measure, compile the literal given the rider (numeric - with unit of measure); exit._
_If the rider's token is any integer literal, compile the literal given the rider (numeric - integer); exit._
_If the rider's token is any ratio literal, compile the literal given the rider (numeric - ratio); exit._
_If the rider's token is any mixed literal, compile the literal given the rider (numeric - ratio); exit._


_To compile a literal given a rider (numeric - with unit of measure):_
_If the compiler's abort flag is set, exit._
_Convert the rider's token to a ratio._
_Move the rider (compiler rules)._
_Scan a name given the rider._
_Find a type given the name and the type index._
_If the type is nil, abort with "'" then the name then "' is an invalid unit of measure." and the literal's locus; exit._
_If the type cannot be reduced to "number", abort with "'" then the name then "' is an invalid unit of measure." and the literal's locus; exit._
_Put the type's scale into a final ratio._
_If the type's scale is 0, put 1/1 into the final ratio._
_Multiply the final ratio by the ratio._
_Reduce the final ratio._
_If the final ratio's denominator is 0, abort with "We seem to have an invalid unit of measure here." and the literal's locus._
_Put the final ratio's numerator divided by the final ratio's denominator into a number._
_Put the type's name into the literal's type name._
_Convert the number to the literal's data._
_Resolve the literal._


_To compile a literal given a rider (pointer):_
_If the compiler's abort flag is set, exit._
_Convert nil to the literal's data._
_Move the rider (compiler rules)._
_Put "pointer" into the literal's type name._
_Resolve the literal._


_To compile a literal given a rider (string):_
_If the compiler's abort flag is set, exit._
_Put the rider's token into the literal's data._
_Unquote the literal's data._
_Move the rider (compiler rules)._
_Put "string" into the literal's type name._
_Resolve the literal._


125. We'll be needing this decider to peek ahead a little so we can spot units-of-measure that follow numeric literals (like the "inches" part of "3 inches":_


_To decide if a rider is followed by any unit of measure:_
_Privatize the rider._
_Move the rider (compiler rules)._
_If the rider's token is not any name starter, say no._
_Scan a name given the rider._
_Find a type given the name and the type index._
_If the type is nil, say no._
_If the name is not "times", say yes._ \ special because times is an infix operator and a unit of measure _
_If the rider's token is the start of any expression, say no._
_Say yes._


126. The decider above is also used when we're parsing expressions (later on), so we need this guy to go with him:_

_ _

_To decide if a string is the start of any expression:_
_If the string is any sign, say yes._
_If the string is any indefinite article, say yes._
_If the string is "the", say yes._
_If the string is any literal, say yes._
_Say no._


_127. We index our literals so we can find them, quickly, later when they're needed:_


_To index a literal:_
_If the compiler's abort flag is set, exit._
_If the literal is nil, exit._
_If the literal's name is in the literal index, abort with "Internal error - index a literal" and the literal's locus; exit._
_Index the literal given the literal's name and the literal index._


128. The various literal conversion routines are generally useful, so we keep them in the Noodle. In one case, however, we need an "alternate wording" for the conversion routine, just to make sure calls get dispatched to the right place:_


_To convert a nibble substring to a string: employ convert a nibble string to a hex string._


129. And that's it for resolving globals! Time to see what all that does to the listing. Run it. In the blue, open up the daughter's source files and list. The open up the updated listing file. Jump to the "GLOBALS:" Section and you'll see that initialized globals are now associated with named literals, like so:_


_GLOBALS:_


_/variable/global/no/adding built-in memory routines timer//timer/timer/00000000/no/1/no////_
_/variable/global/no/adding built-in startup routine timer//timer/timer/00000000/no/1/no////_
_/variable/global/no/addressing timer//timer/timer/00000000/no/1/no////_
_/variable/global/no/break tag//tag/tag/00000000/no/1/no//~L1//_
_/variable/global/no/calculating timer//timer/timer/00000000/no/1/no////_
_/variable/global/no/call external tag//tag/tag/00000000/no/1/no//~L2//_
_/variable/global/no/call indirect tag//tag/tag/00000000/no/1/no//~L3//_
_/variable/global/no/call internal tag//tag/tag/00000000/no/1/no//~L4//_


_Note the "~L1" and "~L2" and similar literal names near the end of the tag globals above. Now jump to the "LITERALS:" Section and you'll see those very literals with their values, backways, ready for inclusion in our executable file:_


_LITERALS:_


_/variable/literal/no/~L1//number/number/00000000/no/1/no///01000000/_
_/variable/literal/no/~L2//number/number/00000000/no/1/no///02000000/_
_/variable/literal/no/~L3//number/number/00000000/no/1/no///03000000/_
_/variable/literal/no/~L4//number/number/00000000/no/1/no///04000000/_


If you look for "~L113" you'll find a very long line in the listing that starts like this:_


_/variable/literal/no/~L113//hex string/hex string/00000000/no/1/no///524946463A020..._


_The source for that literal is in the Noodle as part of the definition of our "cluck" sound global variable:_


_The cluck sound is a wave equal to $524946463A020..._


Later we'll see how the compiler generates code to copy literal values like these into the corresponding global variables just before he calls the programmer's "run" routine._


More literals, and the code to copy them into the right places, will be added later as we stumble on literals in routine bodies._


Let's check our timers and call it a day:_


_TIMERS:_


_/timer/loading/94/_
_/timer/scanning/437/_
_/timer/resolving types/31/_
_/timer/resolving globals/94/_
_/timer/compiling routine headers/0/_
_/timer/calculating/0/_
_/timer/adding built-in memory routines/0/_
_/timer/indexing utilities/0/_
_/timer/compiling routine bodies/0/_
_/timer/adding built-in startup routine/0/_
_/timer/offsetting/0/_
_/timer/addressing/0/_
_/timer/transmogrifying/0/_
_/timer/linking/0/_
_/timer/writing/0/_
_/timer/total/937/_


Looks like manipulating all those huge hex literals in the Noodle cost us a few milliseconds. The cluck sound is only one of them; the Osmosian font is another, and it's almost 72,000 nibbles long. I thnk we can live with 94 milliseconds in any case._


---_


130. Onward. In the gray, move our temporary abort line down, and uncomment the next step._ - _


_To compile a directory:_
_Compile the directory (start)._
_Compile the directory (load the source files)._
_Compile the directory (scan the source files)._
_Compile the directory (resolve the types)._
_Compile the directory (resolve the globals)._
_Compile the directory (compile the headers of the routines)._
_Abort with "I'm not old enough to make babies.". _
_\Compile the directory (calculate lengths and offsets of types)._
_\Compile the directory (add the built-in memory routines)._
_\Compile the directory (index the routines for utility use)._
_\Compile the directory (compile the bodies of the routines)._
_\Compile the directory (add and compile the built-in startup routine)._
_\Compile the directory (offset parameters and variables)._
_\Compile the directory (address)._
_\Compile the directory (transmogrify)._
_\Compile the directory (link)._
_\Compile the directory (write the exe)._
_\Compile the directory (stop).__


131. Our goal in this step is to gather enough information so we can formulate a convenient "moniker" for each routine. Let's begin by putting back the definition of a moniker (and a partial moniker, while we're at it):_ - _


_A moniker is a string._

_A partial moniker is a moniker._

Then let's consider an example from the Cal Monet. The moniker for this routine..._ - _


_To create a work given a URL:_


... looks like this:__


_create [work] from/given/with/using [url]_


It consists of 4 "monikettes": the string "create", the parameter type "[work]", the string "from/given/with/using", and the parameter type "[url]"._ - _


132. We should uncomment the monikette thing now...__


_A monikette is a thing with_
_a string,_
_a type (reference),_
_a variable (reference),_
_\ for bubbling_
_a current type (reference),_
_a current substring._


A monikette's string_ is used to hold string-type monikettes (like "create" or "from/given/with/using"), while a monikette's type_ points to the type definition of a parameter. A monikette's variable_ isn't used until later, when we parse expressions.__


A routine record has a list of monikettes and a list of parameters in it. As we compile a routine header, we hang the routine's parameters on the parameter list, and the monikettes (both string and parameter types) on the monikette list.__


133. We should put back these 3 helpers at this time:__


_To create a monikette:_
_Allocate memory for the monikette._


_To add a monikette to some monikettes given a string:_
_Create the monikette._
_Append the monikette to the monikettes. _
_\ from/given/with/using _
_If the string is "from", put "from/given/with/using" into the monikette's string; exit._
_If the string is "given", put "from/given/with/using" into the monikette's string; exit._
_If the string is "with", put "from/given/with/using" into the monikette's string; exit._
_If the string is "using", put "from/given/with/using" into the monikette's string; exit. _
_\ in/into/to _
_If the string is "in", put "in/into/to" into the monikette's string; exit._
_If the string is "into", put "in/into/to" into the monikette's string; exit._
_If the string is "to", put "in/into/to" into the monikette's string; exit._
_\ is/are_
_If the string is "are", put "is/are" into the monikette's string; exit._
_If the string is "is", put "is/are" into the monikette's string; exit. _
_\ aren't/isn't _
_If the string is "isn't", put "is/aren't" into the monikette's string; exit._
_If the string is "aren't", put "is/aren't" into the monikette's string; exit._
_\ backward/backwards/counterclockwise/counter-clockwise/anticlockwise/anti-clockwise_
_If the string is "backward", put "backward" into the monikette's string; exit._
_If the string is "backwards", put "backward" into the monikette's string; exit._
_If the string is "counterclockwise", put "backward" into the monikette's string; exit._
_If the string is "counter-clockwise", put "backward" into the monikette's string; exit._
_If the string is "anticlockwise", put "backward" into the monikette's string; exit._
_If the string is "anti-clockwise", put "backward" into the monikette's string; exit. _
_\ at/on _
_If the string is "at", put "at/on" into the monikette's string; exit._
_If the string is "on", put "at/on" into the monikette's string; exit. _
_\ other _
_Put the string into the monikette's string._


_To add a monikette to some monikettes given a type:_
_Create the monikette._
_Append the monikette to the monikettes._
_Put the type into the monikette's type._


134. We convert them into a moniker, using the routines below. The conversion routine is in two parts in case we don't want to convert the whole monikette list at one time._


_To convert some monikettes to a moniker:_
_Convert the monikettes to the moniker given the monikettes' last._


_To convert some monikettes to a moniker given a monikette:_
_Clear the moniker._
_Loop._
_Get a current monikette from the monikettes._
_If the current monikette is nil, exit._
_Append the current monikette to the moniker._
_If the current monikette is the monikette, exit._
_Repeat._

_To append a monikette to a moniker:_
_If the monikette is nil, exit._
_If the moniker is not blank, append the space byte to the moniker._
_If the monikette's type is not nil, append "[" and the monikette's type's name and "]" to the moniker (fast); exit._
_If the monikette's string is not blank, append the monikette's string to the moniker; exit._


135. Now that we've got all that out of the way, let's compile some headers. These are the top-level routines:_


_To compile a directory (compile the headers of the routines):_
_If the compiler's abort flag is set, exit._
_Show status "Compiling..."._
_Start the compiling routine headers timer._
_Compile the headers of the routines._
_Stop the compiling routine headers  timer._

_To compile the headers of some routines:_
_If the compiler's abort flag is set, exit._
_Get a routine from the routines._
_If the routine is nil, exit._
_Compile the header of the routine._
_Repeat._


_To compile the header of a routine:_
_If the routine is nil, exit._
_If the compiler's abort flag is set, exit._
_Slap a rider on the routine's routine header._
_Move the rider (compiler rules)._
_If the rider's token is "decide", compile the header of the routine given the rider (decider); exit._
_If the rider is the start of any function, compile the header of the routine given the rider (function); exit._
_If the rider's token is "compatibly", compile the header of the routine given the rider (callback); exit._
_Compile the header of the routine given the rider (procedure)._


136. And these are the helpers, for each kind of routine (decider, function (the tricky one), callback, and procedure):_


_To decide if a rider is the start of any function:_
_If the compiler's abort flag is set, say no._
_If the rider's token is not "put", say no._
_Privatize the rider._
_Move the rider (compiler rules)._
_If the rider's token is not any article, say no._
_Move the rider (compiler rules)._
_Scan a name given the rider._
_If the rider's token is any possessive, say yes.  _


_To compile some monikettes given a rider:_
_If the compiler's abort flag is set, exit._
_If the rider's token is any monikette string, add a monikette to the monikettes given the rider's token; move the rider (compiler rules); repeat._
_If the rider's token is not the start of any expression, exit._
_Compile an expression given the rider._
_If the compiler's abort flag is set, exit._
_Add another monikette to the monikettes given the expression._
_Repeat._


_To compile the header of a routine given a rider (decider):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_If the rider's token is not "if", abort with "It's 'Decide IF.' We always say, 'Decide IF'. Got it?" and the rider; exit._
_Move the rider (compiler rules)._
_Set the routine's decider flag._
_Compile the routine's monikettes and the routine's parameters given the rider._
_If any of the routine's monikettes are negative words, abort with "It's a bad idea to use negatives in decider names." and the rider; exit._
_Convert the routine's monikettes to the routine's moniker._
_If the routine's moniker is in the routine index, abort with "I already know how to '" then the routine's moniker then "'." and the routine's locus; exit._
_Index the routine given the routine's monikettes and the routine index._


_To compile the header of a routine given a rider (function):_
_If the compiler's abort flag is set, exit._
_Set the routine's function flag._
_Add a monikette to the routine's monikettes given "put"._
_Move the rider (compiler rules)._
_If the rider's token is any indefinite article, set a flag._
_If the flag is set, compile the routine's monikettes and the routine's parameters given the rider (indefinite article)._
_If the flag is not set, compile the routine's monikettes and the routine's parameters given the rider (definite article)._
_If the rider's token is not any possessive, abort with "An 's is missing or misplaced here." and the rider; exit._
_Move the rider (compiler rules)._
_Scan a name given the rider._
_Add another monikette to the routine's monikettes given "'s " then the name._
_If the rider's token is not "into", abort with "I was expecting the word 'into', but found '" then the rider's token then "'." and the rider; exit._
_Add a third monikette to the routine's monikettes given "into"._
_Convert the routine's monikettes to a moniker._
_If the moniker is in the routine index, abort with "I already know how to '" then the moniker then "'." and the routine's locus; exit._
_Index the routine given the routine's monikettes and the routine index._
_Move the rider (compiler rules)._
_If the rider's token is not any indefinite article, abort with "I was expecting an indefinite article, but found '" then the rider's token then "'." and the rider; exit._
_Compile the routine's monikettes and the routine's parameters given the rider (indefinite article)._
_If the rider's token is not blank, abort with "There's extra stuff on the end of this function." and the rider; exit._
_Convert the routine's monikettes to the routine's moniker._
_Index the routine given the routine's monikettes and the routine index._ - \ for employs_

_To compile the header of a routine given a rider (callback):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_Set the routine's callback flag._
_Compile the routine's monikettes and the routine's parameters given the rider._
_Convert the routine's monikettes to the routine's moniker._
_If the routine's moniker is in the routine index, abort with "I already know how to '" then the routine's moniker then "'." and the routine's locus; exit._
_Index the routine given the routine's monikettes and the routine index._


_To compile the header of a routine given a rider (procedure):_
_If the compiler's abort flag is set, exit._
_Compile the routine's monikettes and the routine's parameters given the rider._
_Convert the routine's monikettes to the routine's moniker._
_If the routine's moniker is in the routine index, abort with "I already know how to '" then the routine's moniker then "'." and the routine's locus; exit._
_Index the routine given the routine's monikettes and the routine index._


137. And these are the guys that separate the parameters from the rest of the "blah, blah, blah" in a routine header:_


_To decide if a string is any monikette string:_
_If the string is blank, say no._
_If the string is "the", say no._
_If the string is any indefinite article, say no._
_If the string is any possessive, say no._
_If the string is any literal, say no._
_If the string is any mark, say no._
_If the string is any symbol, say no._
_Say yes._


_To compile some monikettes and some parameters given a rider:_
_If the compiler's abort flag is set, exit._
_If the rider's token is blank, exit._
_If the rider's token is "the", compile the monikettes and the parameters given the rider (definite article); repeat._
_If the rider's token is any indefinite article, compile the monikettes and the parameters given the rider (indefinite article); repeat._
_If the rider's token is any monikette string, compile the monikettes and the parameters given the rider (monikette string); repeat._
_Abort with "'" then the rider's token then "' is not valid in a routine header." and the rider._

_To compile some monikettes and some parameters given a rider (definite article):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_Scan a name given the rider._
_If the compiler's abort flag is set, exit._
_Prepend "the " to the name._
_Add a monikette to the monikettes given the name._


_To compile some monikettes and some parameters given a rider (indefinite article):_
_If the compiler's abort flag is set, exit._
_Add a parameter to the parameters given "parameter" and the rider's token's first._
_If the rider's token is "another", put "other" into the parameter's name._
_Move the rider (compiler rules)._
_Scan a name given the rider._
_Extend the parameter's name with the name._
_If the rider's token is "called", compile the call'd part given the rider and the parameter._
_Resolve the parameter._
_If the parameter is duplicated in the parameters, abort with "Dude, you already have a parameter called '" then the parameter's name then "'." and the parameter's locus; exit._
_Add a monikette to the monikettes given the parameter's type._


_To compile some monikettes and some parameters given a rider (monikette string):_
_If the compiler's abort flag is set, exit._
_Add a monikette to the monikettes given the rider's token._
_Move the rider (compiler rules)._


138. This special guy handles "renamed parameters" in a routine header (like "a number called x"):_


_To compile the call'd part given a rider and a variable:_
_If the compiler's abort flag is set, exit._
_If the variable is nil, exit._
_Put the variable's name into the variable's type name._
_Move the rider (compiler rules)._
_Scan the variable's name given the rider._
_ _
_139. And these three little guys are used to spot "negative words" in decider headers:_


_To decide if any of some monikettes are negative words:_
_Get a monikette from the monikettes._
_If the monikette is nil, say no._
_If the monikette's string is any negative word, say yes._
_Repeat._

_To decide if a string is any monikette string:_
_If the string is blank, say no._
_If the string is "the", say no._
_If the string is any indefinite article, say no._
_If the string is any possessive, say no._
_If the string is any literal, say no._
_If the string is any mark, say no._
_If the string is any symbol, say no._
_Say yes._


_To decide if a string is any negative word:_
_If the string is "not", say yes._
_If the string is "cannot", say yes._
_If the string is "nothing", say yes._
_If the string ends with "n't", say yes._
_Say no._


When a decider is written with a "positive" header, the CAL will understand both the positive and negative forms. For example, "To decide if a string is blank" will automatically serve as "to decide if a string is not_ blank"._


140. Since there's a lot of string concatenation required in monikette-to-moniker conversions, and since we do those a lot, we added in this helper to make those concatenations faster than usual:_


To append a string and another string and a third string to a fourth string (fast):_
_Put the fourth string's length into a length._
_Add the string's length to the length._
_Add the other string's length to the length._
_Add the third string's length to the length._
_Reassign a pointer given the length._
_Put the pointer into a byte pointer._
_Copy bytes from the fourth string's first to the byte pointer for the fourth string's length._
_Add the fourth string's length to the byte pointer._
_Copy bytes from the string's first to the byte pointer for the string's length._
_Add the string's length to the byte pointer._
_Copy bytes from the other string's first to the byte pointer for the other string's length._
_Add the other string's length to the byte pointer._
_Copy bytes from the third string's first to the byte pointer for the third string's length._
_Unassign the fourth string's first._
_Put the pointer into the fourth string's first._
_Put the pointer plus the length minus 1 into the fourth string's last._


141. And these are the routines we use to index routines:_


To index a routine given some monikettes and an index:_
_If the routine is nil, exit._
_Clear a partial moniker._
_Loop._
_Get a monikette from the monikettes._
_If the monikette is nil, exit._
_Append the monikette to the partial moniker._
_If the monikette is the monikettes' last, break._
_Index the partial moniker given the index (special)._
_Repeat._
_Index the routine given the partial moniker as a moniker and the index (special)._


To index a routine given a moniker and an index (special):_
_Find a refer given the moniker and the index._
_If the refer is not nil, put the routine into the refer's pointer; exit._
_Index the routine given the moniker and the index._


To index a partial moniker given an index (special):_
_Find a refer given the partial moniker and the index._
_If the refer is not nil, exit._
_Index the partial moniker in the index._


To decide if a moniker is in an index:_
_Find a refer given the moniker and the index._
_If the refer is nil, say no._
_If the refer's pointer is nil, say no._
_Say yes._


142. Ready to run. Do it. In the blue, open up and list the daughter. Then open up the listing. Nice work! Now we've got monikers and parameter lists for each and every routine; here's a sampling:_


ROUTINES:_


/routine/abort from/given/with/using [string]/no/no/no/no//0/0/00000000/_
_/variable/parameter/no/string/string/string/string/00000000/no/1/no////_


/routine/abort from/given/with/using [string] and [byte pointer]/no/no/no/no//0/0/00000000/_
_/variable/parameter/no/string/string/string/string/00000000/no/1/no////_
_/variable/parameter/no/byte pointer/byte pointer/byte pointer/byte pointer/00000000/no/1/no////_


_/routine/abort from/given/with/using [string] and [rider]/no/no/no/no//0/0/00000000/_
_/variable/parameter/no/string/string/string/string/00000000/no/1/no////_
_/variable/parameter/no/rider/rider/rider/rider/00000000/no/1/no////_


And you can see our "ROUTINE INDEX:" is getting a workout, too:_


ROUTINE INDEX:_


/4881 buckets/7862 refers/_


/bucket/_

/refer/make [ratio pair] from/given/with/using.../_


And that it was somewhat expensive, time-wise, to do all that:_


TIMERS:_


/timer/loading/78/_
_/timer/scanning/422/_
_/timer/resolving types/32/_
_/timer/resolving globals/109/_
_/timer/compiling routine headers/266/_
_/timer/calculating/0/_
_/timer/adding built-in memory routines/0/_
_/timer/indexing utilities/0/_
_/timer/compiling routine bodies/0/_
_/timer/adding built-in startup routine/0/_
_/timer/offsetting/0/_
_/timer/addressing/0/_
_/timer/transmogrifying/0/_
_/timer/linking/0/_
_/timer/writing/0/_
_/timer/total/1328/_


Time to move on._


---_


143. Time for an easy step. In the gray, move our temporary abort line down another notch and uncomment the line above it:_


_To compile a directory:_
_Compile the directory (start)._
_Compile the directory (load the source files)._
_Compile the directory (scan the source files)._
_Compile the directory (resolve the types)._
_Compile the directory (resolve the globals)._
_Compile the directory (compile the headers of the routines)._
_Compile the directory (calculate lengths and offsets of types)._
_Abort with "I'm not old enough to make babies.". _
_\Compile the directory (add the built-in memory routines)._
_\Compile the directory (index the routines for utility use)._
_\Compile the directory (compile the bodies of the routines)._
_\Compile the directory (add and compile the built-in startup routine)._
_\Compile the directory (offset parameters and variables)._
_\Compile the directory (address)._
_\Compile the directory (transmogrify)._
_\Compile the directory (link)._
_\Compile the directory (write the exe)._
_\Compile the directory (stop)._


144. Here's the top-level routine:_


_To compile a directory (calculate lengths and offsets of types):_
_If the compiler's abort flag is set, exit._
_Show status "Calculating..."._
_Start the calculating timer._
_Calculate the lengths of the types._
_Calculate the offsets in the types._
_Calculate the redefinition offsets in the types._
_Stop the calculating timer._


145. And here are the first couple helpers:_


_To calculate the lengths of some types:_
_If the compiler's abort flag is set, exit._
_Get a type from the types._
_If the type is nil, exit._
_Calculate the length of the type._
_Repeat.__

 _

_To calculate the length of a type:_
_If the type is nil, exit._
_If the type's length is not -1, exit._
_Calculate the length of the type's base type._
_If the type's fields are empty, put the type's base type's length into the type's length; exit._
_Put 0 into the type's length._
_Loop._
_If the compiler's abort flag is set, exit._
_Get a field from the type's fields._
_If the field is nil, exit._
_If the field's redefinition target name is not blank, repeat._
_Calculate the length of the field's type._
_Add the field's type's length times the field's count to the type's length._
_Repeat.__

_ _

146. And here are some more helpers:__


_To calculate the offsets in a type:_
_If the type is nil, exit._
_Put 0 into an offset._
_Loop._
_If the compiler's abort flag is set, exit._
_Get a field from the type's fields._
_If the field is nil, exit._
_If the field's redefinition target name is not blank, repeat._
_Put the offset into the field's offset._
_Add the field's type's length times the field's count to the offset._
_Repeat._


_To calculate the offsets in some types:_
_If the compiler's abort flag is set, exit._
_Get a type from the types._
_If the type is nil, exit._
_Calculate the offsets in the type._
_Repeat._


147. And here are even more helpers:__


_To calculate the redefinition offsets in a type:_
_If the type is nil, exit._
_Loop._
_If the compiler's abort flag is set, exit._
_Get a field from the type's fields._
_If the field is nil, exit._
_If the field's redefinition target name is blank, repeat._
_Find another field given the field's redefinition target name and the type's fields._
_If the other field is nil, abort with "Invalid redefine. I can't find the '" then the field's redefinition target name then "' field." and the field's locus; exit._
_Put the other field's offset into the field's offset._
_Repeat._


_To calculate the redefinition offsets in some types:_
_If the compiler's abort flag is set, exit._
_Get a type from the types._
_If the type is nil, exit._
_Calculate the redefinition offsets in the type._
_Repeat._


148. Done! Run it. In the blue, open up and list the daughter. Then open the updated listing and consider the first few types._ - _


You can see that bytes are still 1 byte long:__


_/type/byte/bytes/00000001/byte/byte///0/_


And that our prototype record is still 0 bytes long.__


_/type/record/records/00000000/record/record///0/_


But our abort message, which is a string, is now 8 bytes long, with a first byte pointer at offset 0, and a last byte pointer at offset 4:__

 _

_/type/abort message/abort messages/00000008/string/string///0/_
_/variable//no/first byte pointer/first/byte pointer/byte pointer/00000000/no/1/no////_
_/variable//no/last byte pointer/last/byte pointer/byte pointer/00000004/no/1/no////_


You can also see that our "address" type has some redefinitions in it:_ - _


_/type/address/addresses/00000004/number/number///0/_
_/variable//no/first byte/first/byte/byte/00000000/no/1/no////_
_/variable//no/second byte/second/byte/byte/00000001/no/1/no////_
_/variable//no/third byte/third/byte/byte/00000002/no/1/no////_
_/variable//no/fourth byte/fourth/byte/byte/00000003/no/1/no////_
_/variable//no/low wyrd/low/wyrd/wyrd/00000000/no/1/no/first byte///_
_/variable//no/high wyrd/high/wyrd/wyrd/00000002/no/1/no/third byte///_


An address is a number, 4 bytes in length overall. The low wyrd redefines the first two bytes and is thus at the same offset as the first byte; the high wyrd redefines the last two bytes, and is thus at the same offset as the third byte._


Finally, a glance at our timers shows that this step, important as it is, took almost no time at all:_


TIMERS:_


/timer/loading/109/_
_/timer/scanning/453/_
_/timer/resolving types/16/_
_/timer/resolving globals/109/_
_/timer/compiling routine headers/266/_
_/timer/calculating/15/_
_/timer/adding built-in memory routines/0/_
_/timer/indexing utilities/0/_
_/timer/compiling routine bodies/0/_
_/timer/adding built-in startup routine/0/_
_/timer/offsetting/0/_
_/timer/addressing/0/_
_/timer/transmogrifying/0/_
_/timer/linking/0/_
_/timer/writing/0/_
_/timer/total/1390/_


Sweet!_


---_


149. Onward. In the gray, set things up to "add the built-in memory routines":_


_To compile a directory:_
_Compile the directory (start)._
_Compile the directory (load the source files)._
_Compile the directory (scan the source files)._
_Compile the directory (resolve the types)._
_Compile the directory (resolve the globals)._
_Compile the directory (compile the headers of the routines)._
_Compile the directory (calculate lengths and offsets of types)._
_Compile the directory (add the built-in memory routines)._
_Abort with "I'm not old enough to make babies.". _
_\Compile the directory (index the routines for utility use)._
_\Compile the directory (compile the bodies of the routines)._
_\Compile the directory (add and compile the built-in startup routine)._
_\Compile the directory (offset parameters and variables)._
_\Compile the directory (address)._
_\Compile the directory (transmogrify)._
_\Compile the directory (link)._
_\Compile the directory (write the exe)._
_\Compile the directory (stop)._


We saw earlier (in the "resolve the types" step) that when a programmer defines a dynamic record type using the "is a thing" syntax, the CAL does a little behind-the-scenes type-creation and type-manipulation to keep "things" simple at the programmer's level. Case in point. This type definition..._


_A source file is a thing with a path and a buffer._


...is modified and expanded to include (a) a "source file" type that is nothing but a pointer to a "source file record"; (b) a "source file record" that has the same fields as the programmer specified plus "next source file" and "previous source file" pointers on the front for easy chaining; and (c) a compiler-generated type, "source files" (plural) with "first source file" and "last source file" fields that can be used as the anchor for a list. Here they are in the listing:_ _


/_ - type/source file/source files/FFFFFFFF/thing/thing/source file record/source file record/0/_
_/variable//no///byte/byte/00000000/no/4/no////_


_/type/source file record/source file records/FFFFFFFF/thing record/thing record///0/_
_/variable/field/no/next source file/next/source file/source file/00000000/no/1/yes////_
_/variable/field/no/previous source file/previous/source file/source file/00000000/no/1/yes////_
_/variable/field/no/path/path/path/path/00000000/no/1/no////_
_/variable/field/no/buffer/buffer/buffer/buffer/00000000/no/1/no////_


_/type/source files//FFFFFFFF/things/things///0/_
_/variable/field/no/first source file/first/source file/source file/00000000/no/1/yes////_
_/variable/field/no/last source file/last/source file/source file/00000000/no/1/yes////_


Now we also want the programmer to be able to program as if_ he took the time to write routines with these headers:_


_To allocate memory for a source file:_


_To destroy a source file:_


_To destroy some source files:_


So we have the compiler add those routines as if_ they were in the programmer's source code, in this step._


150. These are the upper-level routines that make that happen:_


_To compile a directory (add the built-in memory routines):_
_If the compiler's abort flag is set, exit._
_Show status "Adding..."._
_Start the adding built-in memory routines timer._
_Add the allocate and deallocate and finalize and destroy routines._
_Stop the adding built-in memory routines timer._


_To add the allocate and deallocate and finalize and destroy routines:_
_If the compiler's abort flag is set, exit._
_Get a type from the types._
_If the type is nil, exit._
_Add the finalize routine for the type._
_Add the allocate routine for the type._
_Add the deallocate routine for the type._
_Add the destroy routine for the type._
_Repeat._


151. We begin with the "finalize" routines, that the programmer never sees. These are used to clean up any string memory that may have been automatically allocated on the Heap. And these are the routines that add those routines to the routine list (as if we had found them in the source code):_


_To add the finalize routine for a type:_
_If the type is nil, exit._
_If the compiler's abort flag is set, exit._
_If the type should not be finalized, exit._
_If the type's name is "string", add the finalize routine for the type (string); exit._
_If the type can be reduced to "string", exit. _ - \ prevents generation of finalizer for derived string types _
_Add the finalize routine for the type (record)._


_To add the finalize routine for a type (string):_
_If the type is nil, exit._
_If the compiler's abort flag is set, exit._
_Add a routine to the routines given nil._
_Append "~finalize a " then the type's name to the routine's header string._
_Append "intel $50. " to the routine's body string. \ push eax_
_Append "unassign the string's first. " to the routine's body string._
_Append "intel $58." to the routine's body string. \ pop eax_
_Slap the routine's routine header on the routine's header string._
_Slap the routine's routine body on the routine's body string._
_Compile the header of the routine._


_To add the finalize routine for a type (record):_
_If the type is nil, exit._
_If the compiler's abort flag is set, exit._
_Add a routine to the routines given nil._
_Append "~finalize a " then the type's name to the routine's header string._
_Append "intel $50. " to the routine's body string. \ push eax_
_Loop._
_Get a field from the type's fields._
_If the field is nil, break._
_If the field's type should not be finalized, repeat._
_Append "~finalize the " then the type's name then "'s " then the field's name then ". " to the routine's body string._
_Repeat._
_Append "intel $58." to the routine's body string. \ pop eax_
_Slap the routine's routine header on the routine's header string._
_Slap the routine's routine body on the routine's body string._
_Compile the header of the routine._


Note the tildes ("~") in the routine names; we don't expect the programmer will ever call these routines directly._


152. And these are the deciders we need to help us do that:_


_To decide if a type should be finalized:_
_If the type is nil, say no._
_If the type can be reduced to "substring", say no._
_If the type can be reduced to "string", say yes._
_If the type's fields should be finalized, say yes._
_Say no._


_To decide if some fields should be finalized:_
_Get a field from the fields._
_If the field is nil, say no._
_If the field's type should be finalized, say yes._
_Repeat._


153. This is how we similarly add the allocate routine for a type:_


_To add the allocate routine for a type:_
_If the type is nil, exit._
_If the compiler's abort flag is set, exit._
_If the type cannot be reduced to "pointer", exit._
_If the type's target type is nil, exit._
_Add a routine to the routines given nil._
_Append "allocate memory for a " then the type's name to the routine's header string._
_Append "assign the " then the type's name then " given " to the routine's body string._
_Append the type's target type's length then "." to the routine's body string._
_Slap the routine's routine header on the routine's header string._
_Slap the routine's routine body on the routine's body string._
_Compile the header of the routine._


Note that there is no tilde in the routine name; we do_ expect the programmer to call these routines directly._


154. This is the routine that adds deallocate routines for dynamic types:_


_To add the deallocate routine for a type:_
_If the type is nil, exit._
_If the compiler's abort flag is set, exit._
_If the type cannot be reduced to "pointer", exit._
_If the type's target type is nil, exit._
_Add a routine to the routines given nil._
_Append "deallocate a " then the type's name to the routine's header string._
_Append "if the " then the type's name then " is nil, exit. " to the routine's body string._
_If the type's target type should be finalized, append "~finalize the " then the type's name then "'s target. " to the routine's body string._
_Append "unassign the " then the type's name then "." to the routine's body string._
_Slap the routine's routine header on the routine's header string._
_Slap the routine's routine body on the routine's body string._
_Compile the header of the routine._


Again, no tilde in the routine name since a programmer may want to call these routines directly._ - _


155. And these are the routines that add the destroy routines for each dynamic type:_ - _


_To add the destroy routine for a type:_
_If the type is nil, exit._
_If the compiler's abort flag is set, exit._
_If the type should not be forgotten, exit._
_If the type can be reduced to "things", add the destroy routine for the type (things); exit._
_If the type can be reduced to "pointer", add the destroy routine for the type (pointer); exit._


_To add the destroy routine for a type (things):_
_If the type is nil, exit._
_If the compiler's abort flag is set, exit._
_If the type's fields' first is nil, abort with "Internal error - add the forget routine for a type (things)"; exit._
_If the type's fields' first's type is nil, abort with "Internal error 2 - add the forget routine for a type (things)"; exit._
_Put "destroy [" then the type's name then "]" into a moniker._
_If the moniker is in the routine index, exit._
_Add a routine to the routines given nil._
_Append "destroy a " then the type's name to the routine's header string._
_Append "if the " then the type's name then "'s first is nil, exit. " to the routine's body string._
_Put the type's fields' first's type's name into a name._
_Append "put the " then the type's name then "'s first into a " then the name then ". " to the routine's body string._
_Append "remove the " then the name then " from the " then the type's name then ". " to the routine's body string._
_Append "destroy the " then the name then ". " to the routine's body string._
_Append "repeat. " to the routine's body string._
_Slap the routine's routine header on the routine's header string._
_Slap the routine's routine body on the routine's body string._
_Compile the header of the routine._


_To add the destroy routine for a type (pointer):_
_If the type is nil, exit._
_If the compiler's abort flag is set, exit._
_Put "destroy [" then the type's name then "]" into a moniker._
_If the moniker is in the routine index, exit._
_Add a routine to the routines given nil._
_Append "destroy a " then the type's name to the routine's header string._
_Append "if the " then the type's name then " is nil, exit. " to the routine's body string._
_If the type's target type can be reduced to "pointer", append "destroy the " then the type's name then "'s target. " to the routine's body string._
_If the type's target type can be reduced to "things", append "destroy the " then the type's name then "'s target. " to the routine's body string._
_Loop._
_Get a field from the type's target type's fields._
_If the field is nil, break._
_If the field's reference flag is set, repeat._
_If the field's type should not be forgotten, repeat._
_Append "destroy the " then the type's name then "'s " then the field's name then ". " to the routine's body string._
_Repeat._
_Append "deallocate the " then the type's name then ". " to the routine's body string._
_Slap the routine's routine header on the routine's header string._
_Slap the routine's routine body on the routine's body string._
_Compile the header of the routine._


Note that we expect the programmer to call these routines directly._ - _


Note also that they "go deep" -- if anything attached to a record that is being destroyed needs to be destroyed, these routines let the programmer simply "forget" about those attached things. This spares the programmer a lot of repetative coding.__


156. Finally, we need this routine to decide if a type can be forgotten by the programmer:_ - _


_To decide if a type should be forgotten:_
_If the type is nil, say no._
_If the type's name is "thing", say no._
_If the type's name is "things", say no._
_If the type can be reduced to "things", say yes._
_If the type can not be reduced to "pointer", say no._
_If the type's target type is nil, say no._
_If the type's target type cannot be reduced to "pointer", say yes._
_If the type's target type should not be forgotten, say no._
_Say yes._


157. And that's it for this step. Let's run it. Then, in the blue, load up the daughter and list her. Then look in the listing. The first "~finalize" routine in the list is this one..._ - _


_/routine/~finalize [~inline compiler type]/no/no/no/no//0/0/00000000/_
_/variable/parameter/no/~inline compiler type/~inline compiler type/~inline compiler type/~inline compiler type/00000000/no/1/no////_


...which is needed because the "~inline compiler type" has lots of strings in it, as you can see from the type definition (earlier in the listing):_ - _


_/type/~inline compiler type/~inline compiler types/00000040/record/record///0/_
_/variable/field/no/directory/directory/directory/directory/00000000/no/1/no////_
_/variable/field/no/timer/timer/timer/timer/00000008/no/1/no////_
_/variable/field/no/abort flag//flag/flag/00000014/no/1/no////_
_/variable/field/no/abort message/abort message/abort message/abort message/00000018/no/1/no////_
_/variable/field/no/abort path//path/path/00000020/no/1/no////_
_/variable/field/no/abort row#//row#/row#/00000028/no/1/no////_
_/variable/field/no/name count/name/count/count/0000002C/no/1/no////_
_/variable/field/no/exe buffer/exe/buffer/buffer/00000030/no/1/no////_
_/variable/field/no/listing buffer/listing/buffer/buffer/00000038/no/1/no////_


Recall that a directory is a path and a path is a string, and that buffer is also a string._ - _


And the first generated "allocate" routine in the listing is this one..._ - _


_/routine/allocate memory for [entry]/no/no/no/no//0/0/00000000/_
_/variable/parameter/no/entry/entry/entry/entry/00000000/no/1/no////_


Followed by the associated "deallocate" and "destroy" routines:_ - _


_/routine/deallocate [entry]/no/no/no/no//0/0/00000000/_
_/variable/parameter/no/entry/entry/entry/entry/00000000/no/1/no////_

_/routine/destroy [entry]/no/no/no/no//0/0/00000000/_
_/variable/parameter/no/entry/entry/entry/entry/00000000/no/1/no////_
_ _
_158. Extra credit exercise: You probably noticed that the generated routines above have no meat in them. That's because we don't list routine bodies until later when they've been compiled. But let's take a peek. In the gray, get into the son's compiler, find the "list a routine" routine, and add this line (including the comment at the end)..._

_If the routine's moniker starts with "~", append the routine's body string to the buffer; advance the buffer. _\*** testing only_ - _


...just before the "Advance the buffer" line at the end of that routine._ - _


Now run the son, open and list the daughter, and examine the listing. The finalize routine for our "~inline compiler type" now looks like this (without the word-wrap):__


_/routine/~finalize [~inline compiler type]/no/no/no/no//0/0/00000000/_
_/variable/parameter/no/~inline compiler type/~inline compiler type/~inline compiler type/~inline compiler type/00000000/no/1/no////_
_intel $50. ~finalize the ~inline compiler type's directory. ~finalize the ~inline compiler type's abort message. ~finalize the ~inline compiler type's abort path. ~finalize the ~inline compiler type's exe buffer. ~finalize the ~inline compiler type's listing buffer. intel $58._


Those sentences will get compiled later with the rest of the programmer's (and our generated) code. Since directories, abort messages, abort paths, and buffers are all just strings, each of those sentences will eventually resolve into a call to this finalizer..._

_/routine/~finalize [string]/no/no/no/no//0/0/00000000/_
_/variable/parameter/no/string/string/string/string/00000000/no/1/no////_
_intel $50. unassign the string's first. intel $58._


...who gives the string's memory back to Windows by calling this Noodle routine:_ - _


_To unassign a pointer:_
_If the pointer is nil, exit._
_Call "kernel32.dll" "HeapFree" with the heap pointer and 0 [no options] and the pointer returning a number._
_If the number is 0, exit._
_Void the pointer._
_Subtract 1 from the heap count._


And that's the way we manage string memory for the programmer, and help him conveniently deal with the rest of his dynamically-allocated data._ - _


159. Now delete that temporary "\*** testing only" line in the son's compiler._

_ _

---_


Matching a statement (in the body of a routine) with the routine (that should be called to do the work) is mostly a matter of (a) breaking down the statement into a series of monikettes, and then (b) finding a routine header with the same monikettes. We do this in the next step after this one. In this step, we increase our chances of success by re-indexing some of our routine headers using "reduced type" monikettes. For example, this routine..._


_To divide a number by a number giving a quotient and a remainder:_


...which at this point is indexed as..._


_divide [number] by [number] giving [quotient] and [remainder]_


...will be re-indexed as..._


_divide [number] by [number] giving [number] and [number]__

 _

...since both "quotient" and "remainder" are elsewhere defined as numbers._

 _

So let's get to work._

 _

160. In the gray, open up the CAL's son and adjust the "compile a directory" routine to look like this:_

 _

_To compile a directory:_
_Compile the directory (start)._
_Compile the directory (load the source files)._
_Compile the directory (scan the source files)._
_Compile the directory (resolve the types)._
_Compile the directory (resolve the globals)._
_Compile the directory (compile the headers of the routines)._
_Compile the directory (calculate lengths and offsets of types)._
_Compile the directory (add the built-in memory routines)._
_Compile the directory (index the routines for utility use)._
_Abort with "I'm not old enough to make babies.". _
_\Compile the directory (compile the bodies of the routines)._
_\Compile the directory (add and compile the built-in startup routine)._
_\Compile the directory (offset parameters and variables)._
_\Compile the directory (address)._
_\Compile the directory (transmogrify)._
_\Compile the directory (link)._
_\Compile the directory (write the exe)._
_\Compile the directory (stop).__

 _

161. Then add these three guys back in:_

 _

_To compile a directory (index the routines for utility use):_
_If the compiler's abort flag is set, exit._
_Show status "Utilitizing..."._
_Start the indexing utilities timer._
_Index the routines for utility use._
_Scrub the utility index._
_Reindex the utility index._
_Stop the indexing utilities timer.__


_To index some routines for utility use:_
_If the compiler's abort flag is set, exit._
_Get a routine from the routines._
_If the routine is nil, exit._
_Index the routine for utility use._
_Repeat._


_To index a routine for utility use:_
_If the compiler's abort flag is set, exit._
_If the routine is nil, exit._
_If the routine's function flag is set, exit._
_If the routine's parameters' count is 0, exit._
_Copy the routine's monikettes into some monikettes._
_Reduce the monikettes for utility use._
_Convert the monikettes to a moniker._
_Destroy the monikettes._
_If the moniker is in the routine index, exit._
_Find a refer given the moniker and the utility index._
_If the refer is not nil, put nil into the refer's pointer; exit._
_Index the routine given the moniker and the utility index._


Note that if the reduced moniker is the same as an existing routine's moniker, we don't put it in the Utility Index._

 _

Note also that if two or more routines reduce to the same moniker, we mark the first one as invalid by putting nil into the first routine's refer's pointer (in the Utility Index), so we'll know to remove it later. We don't want to remove it now, because then we wouldn't catch any other routines that ambiguously reduce to the same moniker._

 _

162. So far, so good. Now we need the helper routines, starting with these two:_

 _

_To copy some monikettes into some other monikettes:_
_Destroy the other monikettes._
_Loop._
_Get a monikette from the monikettes._
_If the monikette is nil, exit._
_Copy the monikette into another monikette._
_Append the other monikette to the other monikettes._
_Repeat.__

 _

_To copy a monikette into another monikette:_
_If the monikette is nil, void the other monikette; exit._
_Allocate memory for the other monikette._
_Put the monikette's string into the other monikette's string._
_Put the monikette's type into the other monikette's type._
_Put the monikette's variable into the other monikette's variable. _
_\ don't copy substring _
_Put the monikette's current type into the other monikette's current type._



163. And this little looper..._


_To reduce some monikettes for utility use:_
_Get a monikette from the monikettes._
_If the monikette is nil, exit._
_If the monikette's type is nil, repeat._
_Reduce the monikette's type to a type for utility use._
_If the type is not nil, put the type into the monikette's type._
_Repeat._


164. ...who calls the routine below, who keeps reducing the type's type until he hits a fundamental type (or can't go any further):_


_To reduce a type to another type for utility use:_
_Put the type into the other type._
_Loop._
_If the other type is nil, exit._
_If the other type's name is "hex string", exit._
_If the other type's name is "string", exit._
_If the other type's name is "number", exit._
_If the other type's name is "pointer", exit._
_If the other type's name is "thing", void the other type; exit._
_If the other type's base type is the other type, void the other type; exit._
_Put the other type's base type into the other type._
_Repeat._


165. These are the routines we use to get those ambiguous monikers out of the Utility Index:_


_To scrub an index:_
_Get a bucket given the index._
_If the bucket is nil, exit._
_If the bucket's refers are empty, repeat._
_Scrub the bucket's refers._
_Repeat._


_To scrub some refers:_
_Swap the refers with some other refers._
_Loop._
_Put the other refers' first into a refer._
_If the refer is nil, exit._
_Remove the refer from the other refers._
_If the refer's pointer is nil, destroy the refer; repeat._
_Append the refer to the refers._
_Repeat._


166. And these are the routines we use to add an additional Routine Index entry for each routine that unambiguously reduced to something more fundamental:_


_To reindex the utility index:_
_If the compiler's abort flag is set, exit._
_Get a bucket given the utility index._
_If the bucket is nil, exit._
_If the bucket's refers are empty, repeat._
_Reindex the utility index given the bucket's refers._
_Repeat._


_To reindex the utility index given some refers:_
_Get a refer from the refers._
_If the refer is nil, exit._
_Put the refer's pointer into a routine._
_If the routine is nil, abort with "Internal error - index the untility routines given some refers"; exit._
_Copy the routine's monikettes into some monikettes._
_Reduce the monikettes for utility use._
_Index the routine given the monikettes and the routine index._
_Destroy the monikettes._
_Repeat._


The Utility Index is not used again, since the Routine Index now includes both the original and the reduced header (if any) for each routine. We keep the Utility Index around, however, as a debugging aid._


167. Run it. In the blue, open up the son's daughter and list her. The open up her listing file and find "utility index:" (with the colon, but without the quotes). At the top of that section you should see something like this:_


_UTILITY INDEX:_


_/658 buckets/717 refers/_


_/bucket/_
_/refer/divide [number] by [number] giving [number] and [number]/_


168. And at the bottom we can see that all this reducing and scrubbing and reindexing doesn't take much time at all:_


_TIMERS:_


_/timer/loading/125/_
_/timer/scanning/469/_
_/timer/resolving types/31/_
_/timer/resolving globals/110/_
_/timer/compiling routine headers/281/_
_/timer/calculating/0/_
_/timer/adding built-in memory routines/62/_
_/timer/indexing utilities/78/_
_/timer/compiling routine bodies/0/_
_/timer/adding built-in startup routine/0/_
_/timer/offsetting/0/_
_/timer/addressing/0/_
_/timer/transmogrifying/0/_
_/timer/linking/0/_
_/timer/writing/0/_
_/timer/total/1641/_


See you next time!_


---_


This is the big one. Let's take a moment to review._


At this point, the compiler has cataloged the vocabulary_ and grammar_ that the programmer wants to use (as defined by the types_, the global variables_, the literals_, and the routine headers_ that the Compiler found in his source). For quick and easy access, the Type Index has an entry pointing to each type_ definition, the Global Index has an entry pointing to each global variable_ definition, and the Literal Index has an entry pointing to the definition of each literal_. The Routine Index is a little more robust, and has multiple entries for each routine header, _one monikette at a time, from left-to-right. For example, this routine..._


_To add a number to another number:_


...is cataloged in the Routine Index like so:_


_add..._

_add [number]..._

_add [number] in/into/to....__

_add [number] in/into/to [number]__

 _

This arrangement makes it easier to match each sentence in the body of each routine with a corresponding routine. Once we know who to call, all we have to do is make a list of the logical machine-code fragments_ that will be needed to push the correct parameters and actually make the call. Each routine we call will have a body of it's own, of course, and may, in turn, call other routines, etc, etc. At the very bottom, however, we will find routines that have bodies containing only machine code, like this one..._


_To bump a rider:_
_Intel $8B9D08000000. _\ mov ebx,[ebp+8] \ the rider _
_Intel $FF8314000000. _\ inc [ebx+20] \ the rider's token's last _
_Intel $FF8308000000. \_ inc [ebx+8] \ the rider's source's first_


...or a call to a Windows function, like this one:_


_To buzz:_
_Call "kernel32.dll" "Beep" with 220 and 200._


Simple enough. Unfortunately, the whole affair is complicated by sentences that require additional processing and/or more than one call to properly execute. This sentence, for example..._


_Put the box's height divided by 2 into a center offset._


...requires fragments for on-the-fly allocation of a scratch_ variable (to calculate and hold the address of the "height" field in the box record), with more fragments for on-the-fly allocation of an intermediate_ variable (to hold the result we get when we secretly call the Noodle's "divide a number by another number" routine to divide the box's height by 2), with even more fragments for on-the-fly allocation of the local_ "center offset" target variable that will be passed to the Noodle's bottom-level "put a number into another number" routine to fill in._


So let's get to it._


169. In the gray, move our abort line down and uncomment the next step:_


_To compile a directory:_
_Compile the directory (start)._
_Compile the directory (load the source files)._
_Compile the directory (scan the source files)._
_Compile the directory (resolve the types)._
_Compile the directory (resolve the globals)._
_Compile the directory (compile the headers of the routines)._
_Compile the directory (calculate lengths and offsets of types)._
_Compile the directory (add the built-in memory routines)._
_Compile the directory (index the routines for utility use)._
_Compile the directory (compile the bodies of the routines)._
_Abort with "I'm not old enough to make babies.". _
_\Compile the directory (add and compile the built-in startup routine)._
_\Compile the directory (offset parameters and variables)._
_\Compile the directory (address)._
_\Compile the directory (transmogrify)._
_\Compile the directory (link)._
_\Compile the directory (write the exe)._
_\Compile the directory (stop)._


170. Then add in these three guys:_


_To compile a directory (compile the bodies of the routines):_
_If the compiler's abort flag is set, exit._
_Show status "Compiling..."._
_Start the compiling routine bodies timer._
_Compile the bodies of the routines._
_Stop the compiling routine bodies timer._


_To compile the bodies of the routines:_
_Compile the body of the routine called "initialize before run"._
_Compile the body of the routine called "run"._
_Compile the body of the routine called "finalize after run"._


_To compile the body of the routine called a string:_
_If the compiler's abort flag is set, exit._
_Find a routine given the string and the routine index._
_If the routine is nil, abort with "I need a routine to '" then the string then "'."; exit._
_Compile the body of the routine._


Note that we're not just looping thorough the routines in the order we found them; rather, we're starting with the Noodle's "initialize before run" routine (and anyone he calls), then we move on to the programmer's "run" routine (and whomever he calls), and lastly we compile the Noodle's "finalize after run" routine (and his helpers, if any). This is how we avoid compiling the bodies of routines that never get called._


171. This is the top-level routine-body compiler:_


_To compile the body of a routine:_
_If the routine is nil, exit._
_If the compiler's abort flag is set, exit._
_If the routine's compiled flag is set, exit._
_Set the routine's compiled flag._
_Slap a rider on the routine's routine body._
_Move the rider (compiler rules)._
_If the rider's token is the semi-colon byte, compile the body of the routine given the rider (alternate wording); exit._

_If the rider's token is "employ", compile the body of the routine given the rider (employ); exit._
_Put the current routine into a saved routine._
_Put the routine into the current routine._
_Create the routine's nickname index given 101._
_Eliminate duplicate nicknames from the routine's parameters given the routine's nickname index._
_Compile the body of the routine (prolog)._
_Loop._
_If the compiler's abort flag is set, exit._
_If the rider's token is blank, break._
_Compile the next statement given the rider._
_Repeat._
_Compile the body of the routine (epilog)._
_Put the saved routine into the current routine._


After dealing with possible special cases ("alternate wordings" and "employs"), this guy creates a nickname index for the routine's parameters, and then compiles the routine's prolog_, body proper_, and epilog_._


172. This is the guy we need to handle "alternate wordings" (implicit replacement routines):_


_To compile the body of a routine given a rider (alternate wording):_

_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._

_Put the routine's next into a target routine._
_If the target routine is nil, abort with "You've defined an alternate wording here, but I'm not sure what you're rewording." and the rider; exit._
_Put the target routine's moniker into the routine's employs moniker._
_Compile the body of the target routine._


173. And this is the helper we need to handle "employs" (explicit replacement routines):_


_To compile the body of a routine given a rider (employ):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_Compile a routine reference given the rider._
_Convert the routine reference to the routine's employs moniker._
_Destroy the routine reference._
_If the rider's token is not ".", abort with "Employ statments should end with a period not '" then the rider's token then "'." and the rider; exit._
_Move the rider (compiler rules)._
_If the rider's token is not blank, abort with "Once an employ, only an employ" and the rider; exit._
_Find another routine given the routine's employs moniker and the routine index._
_If the other routine is nil, abort with "I can't find the '" then the routine's employs moniker then "' routine you're trying to employ." and the routine's locus; exit._
_Compile the body of the other routine._


174. We're going to need some additional types, mostly to deal with mathematical expressions, from here on. May as well put them all in now:_


_A phrase is a string._

__
_A term has a variable and a phrase._


_A field term has_
_a dereference flag,_
_a field (reference),_
_a function routine (reference),_
_a push flag._


_An expression is a term._


_An intermediate is a local._


_A scratch is a local._


_A nibble substring is a substring._


_A prototype string has a first byte pointer and a last byte pointer._


A term_ is either a literal_, a new local variable_, or a reference to a previously defined variable_. A numeric term may have a minus or plus sign in front of it. We call these "negated" and "posigated" terms, respectively. A record term may be followed by any number of possessives indicating fields within the record (like "box's left" or "rider's token's first")._


An expression_ is two or more terms separated by the infix operators plus_, minus_, times_, divided by_ and then_. We say that "an expression is a term" because the result of an expression (after execution) is really just another term._


175. This is the top-level expression compiler:_


_To compile an expression given a rider:_
_If the compiler's abort flag is set, exit._
_Compile a term given the rider._
_Put the term into the expression._
_Loop._
_If the compiler's abort flag is set, exit._
_If the rider's token is not any operator, exit._
_If the rider's token is "divided", compile the expression given the rider (divided); repeat._
_If the rider's token is "minus", compile the expression given the rider (minus); repeat._
_If the rider's token is "plus", compile the expression given the rider (plus); repeat._
_If the rider's token is "then", compile the expression given the rider (then); repeat._
_If the rider's token is "times", compile the expression given the rider (times); repeat._


176. This is the top-level term compiler, together with one of his trivial helpers:_

_
_To compile a term given a rider:_
_Clear the term._
_If the compiler's abort flag is set, exit._
_Compile the term given the rider (common part)._
_If the rider is on any simile, exit. __

_If the rider's token is "AS", compile the term given the rider (as part)._
_If the rider's token is "/", compile the term given the rider (runtime ratio).__

 _

_To clear a term:_
_Void the term's variable._
_Clear the term's phrase.__


177. And this is the guy who compiles the part that all terms have:_ - _


_To compile a term given a rider (common part):_
_If the compiler's abort flag is set, exit._
_If the rider's token is the dash byte, compile the term given the rider (negated term); exit._
_If the rider's token is the cross byte, compile the term given the rider (posigated term); exit._
_If the rider's token is the start of any variable, compile the term given the rider (variable); exit._
_If the rider's token is the start of any new local, compile the term given the rider (new local); exit._
_If the rider's token is any literal, compile the term given the rider (literal); exit._
_Abort with "I expected a term hereabouts but all I found was '" then the rider's token then "'." and the rider.__


178. This guy deals with terms that have a minus sign in front of them:_ - _


_To compile a term given a rider (negated term):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_Compile another term given the rider._
_If the compiler's abort flag is set, exit._
_If the other term's variable is nil, abort with "Invalid negate, I don't understand the variable '" then the other term's phrase then "'." and the rider; exit._
_Add an intermediate given the other term's type name and the rider's token's first._
_Add several fragments given "put" and the other term's variable and "into" and the intermediate and the other term's locus._
_Add two fragments given "negate" and the intermediate and the rider's token's first._
_Put the intermediate into the term's variable._
_Clear the term's phrase._


179. These three routines are general-purpose helpers:__


_To add an intermediate given a type name and a locus:_
_If the current routine is nil, void the intermediate; exit._
_Add the intermediate to the current routine's locals given "local" and the locus._
_Generate the intermediate's name given "~I"._
_Put the type name into the intermediate's type name._
_Resolve the intermediate._


_To add several fragments given a string and a variable and another string and another variable and a locus:_
_Add a fragment given the push address tag and the other variable._
_Add another fragment given the push address tag and the variable._
_Add a monikette to some monikettes given the string._
_Add another monikette to the monikettes given the variable's type._
_Add a third monikette to the monikettes given the other string._
_Add a fourth monikette to the monikettes given the other variable's type._
_Find a routine given the monikettes._
_If the routine is nil, convert the monikettes to a moniker._
_Destroy the monikettes._
_If the routine is nil, abort with "I don't know how to '" then the moniker then "'." and the locus; exit._
_Add a third fragment given the call internal tag and the routine._


_To add a fragment given a tag and a variable:_
_If the current routine is nil, void the fragment; exit._
_Create the fragment given the tag._
_Append the fragment to the current routine's fragments._
_Put the variable into the fragment's variable._
_Set the compiled flag in the variable._

 _

180. And this is a special helper:__

_ _

_To set the compiled flag in a variable:_
_If the variable is nil, exit._
_If the variable's compiled flag is set, exit._
_Set the variable's compiled flag._
_If the variable's kind is not "global", exit._
_If the variable's literal is nil, exit._
_Find a routine given "put" and the variable's literal's type and "into" and the variable's type._
_If the routine is nil, find the routine given "convert" and the variable's literal's type and "to" and the variable's type; set a flag._
_If the routine is nil, abort with "The type of this global and the type of its literal are not compatible." and the variable's locus; exit._
_Compile the body of the routine._
_If the flag is set, put "convert the " then the variable's literal's name then " to the " then the variable's name then ". " into the variable's initializer string._
_If the flag is not set, put "put the " then the variable's literal's name then " into the " then the variable's name then ". " into the variable's initializer string._


If the variable is a global, and the programmer wants us to initialize it with a literal value, we're going to need a "put" or "convert" routine to actually fill it in at run time, so we make sure we've got such a routine now. If we find one, we take a moment to compile its body, and then we fill in the variable's "initializer string" with the Plain English sentence that will do the initializing. "Global initializer" sentences are compiled in the next step.__


181. Here are the seven helpers we need to find the right routines to call:_ - _



_To find a routine given a string and a type and another string and another type:_
_Add a monikette to some monikettes given the string._
_Add another monikette to the monikettes given the type._
_Add a third monikette to the monikettes given the other string._
_Add a fourth monikette to the monikettes given the other type._
_Find the routine given the monikettes._
_Destroy the monikettes._


_To find a routine given some monikettes:_
_Void the routine._
_Find the routine given a moniker and the monikettes' first and the routine index._


_To find a routine given a moniker and a monikette and an index:_
_If the monikette is nil, exit._
_Void the routine._
_Privatize the moniker._
_Put the monikette's type into the monikette's current type._
_Slap the monikette's current substring on the monikette's string._
_Loop._
_Append the monikette to the moniker (while bubbling)._
_Find a refer given the moniker and the index._
_If the refer is not nil, put the refer's pointer into the routine._
_If the refer is not nil, find the routine given the moniker and the monikette's next and the index._
_If the routine is not nil, break._
_Bubble the monikette._
_If the monikette is bubbled out, break._
_Put the original moniker into the moniker._
_Repeat._


_To append a monikette to a moniker (while bubbling):_
_If the monikette is nil, exit._
_If the moniker is not blank, append the space byte to the moniker._
_If the monikette's current substring is not blank, append the monikette's current substring to the moniker; exit._
_If the monikette's current type is not nil, append "[" and the monikette's current type's name and "]" to the moniker (fast); exit._


_To bubble a monikette:_
_If the monikette is nil, exit._
_If the monikette's current substring is not blank, clear the monikette's current substring; exit._
_If the monikette's current type is nil, exit._
_If the monikette's current type is any built-in type, put nil into the monikette's current type; exit._
_Put the monikette's current type's base type into the monikette's current type._


_To decide if a type is any built-in type:_
_If the type is nil, say no._
_If the type is the type's base type, say yes._
_Say no._


_To decide if a monikette is bubbled out:_
_If the monikette is nil, say yes._
_If the monikette's current type is not nil, say no._
_If the monikette's current substring is not blank, say no._
_Say yes._


182. And here are two more routines we need to help us manage our fragments:_


_To create a fragment given a tag:_
_Allocate memory for the fragment._
_Put the tag into the fragment's tag._

_To add a fragment given a tag and a routine:_
_If the current routine is nil, void the fragment; exit._
_Create the fragment given the tag._
_Append the fragment to the current routine's fragments._
_Put the routine into the fragment's routine._
_Compile the body of the routine._


_To add two fragments given a string and a variable and a locus:_
_Add a fragment given the push address tag and the variable._
_Add a monikette to some monikettes given the string._
_Add another monikette to the monikettes given the variable's type._
_Find a routine given the monikettes._
_If the routine is nil, convert the monikettes to a moniker._
_Destroy the monikettes._
_If the routine is nil, abort with "I don't know how to '" then the moniker then "'." and the locus; exit._
_Add another fragment given the call internal tag and the routine._


183. And now we're ready to compile "posigated" terms:_ - _


_To compile a term given a rider (posigated term):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_Compile the term given the rider._
_If the term's variable is nil, abort with "Invalid posigate, I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_Clear the term's phrase._


184. And "variable" terms, including those followed by possessives:_ - _


_To decide if a string is the start of any variable:_
_If the string is "the", say yes._
_Say no._


_To compile a term given a rider (variable):_
_If the compiler's abort flag is set, exit._
_If the current routine is nil, abort with "I don't know what you're trying to pull here." and the rider; exit._
_Move the rider (compiler rules)._
_Scan a name given the rider._
_Find a variable given the name._
_Put the variable into the term's variable._
_Put "the " into the term's phrase._
_Append the name to the term's phrase._
_Compile the term given the rider (possessives)._



_To compile a term given a rider (possessives):_
_If the compiler's abort flag is set, exit._
_If the rider's token is not any possessive, exit._
_Compile the term given the rider (possessive)._
_Repeat.  _


_To compile a term given a rider (possessive):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_Scan a name given the rider._
_If the compiler's abort flag is set, exit._
_If the name is "magnitude", compile the term given the rider (possessive - magnitude); exit._
_If the name is "target", compile the term given the rider (possessive - target); exit._
_If the name is "whereabouts", compile the term given the rider (possessive - whereabouts); exit._
_Compile the term given the rider and the name (possessive - field)._


185. Some possessives reference compiler-defined metadata. A term's magnitude_, for example, is it's length in bytes; a term's target_ is the type of data a pointer points to; and a term's whereabouts_ is its address in memory._ - _


_To compile a term given a rider (possessive - magnitude):_
_If the compiler's abort flag is set, exit._
_If the term's variable is nil, abort with "Invalid use of magnitude, I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_Add a literal to the literals given the rider's token's first._
_Convert the term's type's length to the literal's data._
_Put "number" into the literal's type name._
_Resolve the literal._
_Put the literal into the term's variable._
_Clear the term's phrase._


_To compile a term given a rider (possessive - target):_
_If the compiler's abort flag is set, exit._
_If the term's variable is nil, abort with "Invalid use of target, I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_If the term's type cannot be reduced to "pointer", abort with "You can only get the target of pointer types." and the rider; exit._
_Compile the term given the rider (dereference)._


_To compile a term given a rider (possessive - whereabouts):_
_If the compiler's abort flag is set, exit._
_If the term's variable is nil, abort with "Invalid use of whereabouts, I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_Add an intermediate given "pointer" and the rider's token's first._
_Add a fragment given the load address tag and the term's variable and the intermediate._
_Put the intermediate into the term's variable._
_Clear the term's phrase._


186. Some terms need to be "dereferenced" to be used. If, for example, we're passed the address of the address of something, we need to get past that first address to get to the thing we're actually interested in._


_To compile a term given a rider (dereference):_
_If the compiler's abort flag is set, exit._
_If the term's variable is nil, abort with "Invalid dereference, I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_If the term's type's target type is nil, abort with "I'm unable to determine the type of this target." and the rider; exit._
_If the term's kind is "scratch", compile the term given the rider (dereference - in place); exit._
_Add a scratch given the term's type's target type's name and the rider's token's first._
_Add a fragment given the load address tag and the term's variable and the scratch._
_Add another fragment given the dereference tag and the scratch._
_Put the scratch into the term's variable._
_Clear the term's phrase._


_To compile a term given a rider (dereference - in place):_
_If the term's variable is nil, abort with "Internal error - compile a term given a rider (dereference - in place)" and the rider; exit._
_Put the term's type's target type's name into the term's type name._
_Put the term's type's target type into the term's type._
_Add a fragment given the dereference tag and the term's variable._
_Clear the term's phrase._


_187. Here are a couple more general-purpose helpers we need:_


_To add a scratch given a type name and a locus:_
_If the current routine is nil, void the scratch; exit._
_Add the scratch to the current routine's locals given "scratch" and the locus._
_Generate the scratch's name given "~S"._
_Put the type name into the scratch's type name._
_Resolve the scratch._


_To add a fragment given a tag and a variable and another variable:_
_If the current routine is nil, void the fragment; exit._
_Create the fragment given the tag._
_Append the fragment to the current routine's fragments._
_Put the variable into the fragment's variable._
_Put the other variable into the fragment's other variable._
_Set the compiled flag in the variable._
_Set the compiled flag in the other variable._


188. And these are the four guys we need to handle references to fields in records:_ - _


_To compile a term given a rider and a name (possessive - field):_
_If the compiler's abort flag is set, exit._
_If the term's variable is not nil, put the term's type into a type._
_Find a field term given the term's phrase and the type and the name._
_If the field term is not empty, compile the term given the rider and the field term; exit._
_If the term's variable is nil, abort with "I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_If the type can be reduced to "pointer", put the type's target type into the type._
_If the type is nil, abort with "There's no '" then the name then "' field in a '" then the term's type's name then "'." and the rider; exit._
_Loop._
_If the compiler's abort flag is set, exit._
_Get a field from the type's fields._
_If the field is nil, abort with "There's no '" then the name then "' field in a '" then the term's type's name then "'." and the rider; exit._
_Find a deep field term given "" and the field's type and the name._
_If the deep field term is empty, repeat._
_Put the field into a first field term's field._
_If the term's type can be reduced to "pointer", set the first field term's dereference flag._
_Compile the term given the rider and the first field term._
_Compile the term given the rider and the deep field term._


_To find a field term given a phrase and a type and a name:_
_Clear the field term._
_Find the field term given the type and the name._
_If the field term's field is not nil, exit._
_If the phrase is not blank, find a routine given "put" and the phrase and "'s " then the name and "into"._
_If the routine is not nil, put the routine into the field term's function; exit._
_If the type is nil, exit._
_Find the routine given "put" and the type and "'s " then the name and "into"._
_If the routine is not nil, set the field term's push flag; put the routine into the field term's function; exit._


_Make sure you leave the last three double-commented lines of the above routine (not shown here) out._


_To find a field term given a type and a name:_
_If the type is nil, exit._
_Find a field given the name and the type's fields._
_If the field is not nil, put the field into the field term's field; exit._
_If the type's target type is not nil, find the field given the name and the type's target type's fields._
_If the field is not nil, set the field term's dereference flag; put the field into the field term's field; exit._


_To clear a field term:_
_Fill bytes with the null byte starting at the field term's whereabouts for the field term's magnitude._


_189. These are just another three general-purpose helpers we need:_


_To find a routine given a string and another string and a third string and a fourth string:_
_Add a monikette to some monikettes given the string._
_Add another monikette to the monikettes given the other string._
_Add a third monikette to the monikettes given the third string._
_Add a fourth monikette to the monikettes given the fourth string._
_Find the routine given the monikettes._
_Destroy the monikettes._


_To find a routine given a string and a type and another string and a third string:_
_Add a monikette to some monikettes given the string._
_Add another monikette to the monikettes given the type._
_Add a third monikette to the monikettes given the other string._
_Add a fourth monikette to the monikettes given the third string._
_Find the routine given the monikettes._
_Destroy the monikettes._


_To find a routine given a string and a type and another string and a third string and a fourth string and a fifth string:_
_Add a monikette to some monikettes given the string._
_Add another monikette to the monikettes given the type._
_Add a third monikette to the monikettes given the other string._
_Add a fourth monikette to the monikettes given the third string._
_Add a fifth monikette to the monikettes given the fourth string._
_Add a sixth monikette to the monikettes given the fifth string._
_Find the routine given the monikettes._
_Destroy the monikettes._


_190. And these are six additional helpers we need to compile fields within records:_


_To decide if a field term is empty:_
_If the field term's field is not nil, say no._
_If the field term's function is not nil, say no._
_Say yes._


_To compile a term given a rider and a field term:_
_If the compiler's abort flag is set, exit._
_If the field term's dereference flag is set, compile the term given the rider (dereference). _
_If the field term's function is not nil, compile the term given the rider and the field term (function); exit._
_If the term's kind is "scratch", compile the term given the rider and the field term (in place); exit._
_Put the field term's field into a field._
_Add a scratch given the field's type's name and the rider's token's first._
_Add a fragment given the load address tag and the term's variable and the scratch._
_If the field's offset is not 0, add a third fragment given the increment tag and the scratch and the field's offset._
_Put the scratch into the term's variable._
_Clear the term's phrase._


_To compile a term given a rider and a field term (function):_
_If the compiler's abort flag is set, exit._
_Put the field term's function into a routine._
_Put the routine's parameters' last into a parameter._
_If the parameter is nil, abort with "Internal error - compile a term given a rider and an field term (function)." and the rider; exit._
_If the parameter's type is nil, abort with "Internal error 2 - compile a term given a rider and an field term (function)." and the rider; exit._
_Add an intermediate given the parameter's type's name and the rider's token's first._
_Add a fragment given the push address tag and the intermediate._
_If the field term's push flag is set, add another fragment given the push address tag and the term's variable._
_Add a third fragment given the call internal tag and the routine._
_Put the intermediate into the term's variable._
_Clear the term's phrase._


_To compile a term given a rider and a field term (in place):_
_If the compiler's abort flag is set, exit._
_Put the field term's field into a field._
_Put the field's type's name into the term's type name._
_Put the field's type into the term's type._
_If the field's offset is not 0, add a third fragment given the increment tag and the term's variable and the field's offset._
_Clear the term's phrase._


_To add a fragment given a tag and a variable and a number:_
_If the current routine is nil, void the fragment; exit._
_Create the fragment given the tag._
_Append the fragment to the current routine's fragments._
_Put the variable into the fragment's variable._
_Put the number into the fragment's number._
_Set the compiled flag in the variable._


_To decide if a string is the start of any new local:_
_If the string is any indefinite article, say yes._
_Say no._

 _

191. This is the guy who deals with new local variables:__


_To compile a term given a rider (new local):_
_If the compiler's abort flag is set, exit._
_If the current routine is nil, abort with "I don't know what you're trying to pull here." and the rider; exit._
_Add a local to the current routine's locals given "local" and the rider's token's first._
_If the rider's token is "another", put "other" into the local's name._
_Move the rider (compiler rules)._
_Scan a name given the rider._
_Extend the local's name with the name._
_If the rider's token is "called", compile the call'd part given the rider and the local._
_Resolve the local._
_If the local is duplicated in the current routine's parameters, abort with "'" then the local's name then "' is already in use as a parameter." and the local's locus; exit._
_If the local is duplicated in the current routine's locals,abort with "'" then the local's name then "' is already in use as a local variable." and the local's locus; exit._
_Eliminate duplicate nicknames given the local and the current routine's nickname index._
_Put the local into the term's variable._
_Clear the term's phrase._
_Compile the term given the rider (possessives)._


192. And this is the guy who deals with literal terms:__


_To compile a term given a rider (literal):_
_If the compiler's abort flag is set, exit._
_Compile a literal given the rider._
_Put the literal into the term's variable._
_Clear the term's phrase._
_Compile the term given the rider (possessives)._


Note that literals can have possessives; for example..._


_"abcde"'s magnitude._


_...which is 5 (the length of the string)._


193. This is a little guy who helps us deal with similes:_


_To decide if a rider is on any simile: _

_Privatize the rider._
_If the rider's token is "LIKE", say yes._
_If the rider's token is not "AS", say no._
_Move the rider (compiler rules)._
_If the rider's token is any indefinite article, say no._
_Say yes._


194. And this is the guy who deals with "type overrides" (as in "put 0 as a pointer into the other pointer", which coerces the number zero to a pointer type literal):_


_To compile a term given a rider (as part):_
_If the compiler's abort flag is set, exit._
_If the term's variable is nil, abort with "Invalid 'as', I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_Move the rider (compiler rules)._
_If the rider's token is not any indefinite article, abort with "I was hoping for an indefinite article after AS, but I found '" then the rider's token then "'." and the rider; exit._
_Move the rider (compiler rules)._
_Scan a type name given the rider._
_Find a type given the type name and the type index._
_If the type is nil, abort with "I can't find the '" then the type name then "' type." and the rider; exit._
_Add a scratch given the type's name and the rider's token's first._
_Add a fragment given the load address tag and the term's variable and the scratch._
_Put the scratch into the term's variable._
_Clear the term's phrase._


_195. Most ratios in Plain English programs are defined as literals at compile-time (like "1/2" or "1/3"). But sometimes a programmer might define a ratio at run-time, using other variables (like "Put the percent / 100 into a fraction.") Keep in mind that our Compiler agrees with the great mathematician Leopold Kronecker that  "The dear God created the whole numbers; all else is menschenwerk." So when somebody says something like 0.333333333..., we think, "What he's really trying to say is simply 1/3, 1 part out of 3." In any case, this is the guy who compiles "run-time ratios":_


_To compile a term given a rider (runtime ratio):_
_If the compiler's abort flag is set, exit._
_If the term's variable is nil, abort with "Invalid use of /, I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_Move the rider (compiler rules)._
_Compile another term given the rider._
_If the compiler's abort flag is set, exit._
_If the other term's variable is nil, abort with "Invalid use of /, I don't understand the variable '" then the other term's phrase then "'." and the rider; exit._
_Add an intermediate given "ratio" and the rider's token's first._
_Add several fragments given "put" and the term's variable and "and" and the other term's variable and "into" and the intermediate and the rider's token's first._
_Put the intermediate into the term's variable._
_Clear the term's phrase._


_196. And this is another handy-dandy helper we need: _


_To add several fragments given a string and a variable and another string and another variable and a third string and a third variable and a byte pointer:_
_Add a fragment given the push address tag and the third variable._
_Add another fragment given the push address tag and the other variable._
_Add a third fragment given the push address tag and the variable._
_Add a monikette to some monikettes given the string._
_Add another monikette to the monikettes given the variable's type._
_Add a third monikette to the monikettes given the other string._
_Add a fourth monikette to the monikettes given the other variable's type._
_Add a fifth monikette to the monikettes given the third string._
_Add a sixth monikette to the monikettes given the third variable's type._
_Find a routine given the monikettes._
_If the routine is nil, convert the monikettes to a moniker._
_Destroy the monikettes._
_If the routine is nil, abort with "I don't know how to '" then the moniker then "'." and the byte pointer; exit._
_Add a fourth fragment given the call internal tag and the routine._

_To put a term into another term:_
_Put the term's variable into the other term's variable._
_Put the term's phrase into the other term's phrase._


197. And these are the six guys who handle infix expressions (subordinate clauses) in Plain English sentences: __



_To compile an expression given a rider (divided):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_If the rider's token is not "by", abort with "I really prefer the phrase 'divided BY'." and the rider; exit._
_If the expression's variable is nil, abort with "Invalid 'divided by', I don't understand the variable '" then the expression's phrase then "'." and the rider; exit._
_Move the rider (compiler rules)._
_Compile a term given the rider._
_If the compiler's abort flag is set, exit._
_If the term's variable is nil, abort with "Invalid 'divided by', I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_Add an intermediate given the expression's type name and the rider's token's first._
_Add several fragments given "put" and the expression's variable and "into" and the intermediate and the rider's token's first._
_Add several fragments given "divide" and the intermediate and "by" and the term's variable and the rider's token's first._
_Put the intermediate into the expression's variable._
_Clear the expression's phrase._


_To compile an expression given a rider (minus):_
_If the compiler's abort flag is set, exit._
_If the expression's variable is nil, abort with "Invalid 'minus', I don't understand the variable '" then the expression's phrase then "'." and the rider; exit._
_Move the rider (compiler rules)._
_Compile a term given the rider._
_If the compiler's abort flag is set, exit._
_If the term's variable is nil, abort with "Invalid 'minus', I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_Add an intermediate given the expression's type name and the rider's token's first._
_Add several fragments given "put" and the expression's variable and "into" and the intermediate and the rider's token's first._
_Add several fragments given "subtract" and the term's variable and "from" and the intermediate and the rider's token's first._
_Put the intermediate into the expression's variable._
_Clear the expression's phrase._


_To compile an expression given a rider (plus):_
_If the compiler's abort flag is set, exit._
_If the expression's variable is nil, abort with "Invalid 'plus', I don't understand the variable '" then the expression's phrase then "'." and the rider; exit._
_Move the rider (compiler rules)._
_Compile a term given the rider._
_If the compiler's abort flag is set, exit._
_If the term's variable is nil, abort with "Invalid 'plus', I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_Add an intermediate given the expression's type name and the rider's token's first._
_Add several fragments given "put" and the expression's variable and "into" and the intermediate and the rider's token's first._
_Add several fragments given "add" and the term's variable and "to" and the intermediate and the rider's token's first._
_Put the intermediate into the expression's variable._
_Clear the expression's phrase._


_To compile an expression given a rider (then):_
_If the compiler's abort flag is set, exit._
_If the expression's variable is nil, abort with "Invalid 'then', I don't understand the variable '" then the expression's phrase then "'." and the rider; exit._
_Move the rider (compiler rules)._
_Compile a term given the rider._
_If the compiler's abort flag is set, exit._
_If the term's variable is nil, abort with "Invalid 'then', I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_Add an intermediate given "string" and the rider's token's first._
_Add the put or convert fragments given the expression's variable and the intermediate and the rider's token's first._
_Convert the term for concatenation given the rider._
_Add several fragments given "append" and the term's variable and "to" and the intermediate and the rider's token's first._
_Put the intermediate into the expression's variable._
_Clear the expression's phrase._


_To compile an expression given a rider (times):_
_If the compiler's abort flag is set, exit._
_If the expression's variable is nil, abort with "Invalid 'times', I don't understand the variable '" then the expression's phrase then "'." and the rider; exit._
_Move the rider (compiler rules)._
_Compile a term given the rider._
_If the compiler's abort flag is set, exit._
_If the term's variable is nil, abort with "Invalid 'times', I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_Add an intermediate given the expression's type name and the rider's token's first._
_Add several fragments given "put" and the expression's variable and "into" and the intermediate and the rider's token's first._
_Add several fragments given "multiply" and the intermediate and "by" and the term's variable and the rider's token's first._
_Put the intermediate into the expression's variable._
_Clear the expression's phrase._


_To add the put or convert fragments given a variable and another variable and a locus:_
_Add a fragment given the push address tag and the other variable._
_Add another fragment given the push address tag and the variable._
_Find a routine given "put" and the variable's type and "into" and the other variable's type._
_If the routine is nil, find the routine given "convert" and the variable's type and "to" and the other variable's type._
_If the routine is not nil, add a third fragment given the call internal tag and the routine; exit. _
_\ error message _
_Add a monikette to some monikettes given "put/convert"._
_Add another monikette to the monikettes given the variable's type._
_Add a third monikette to the monikettes given "into/to"._
_Add a fourth monikette to the monikettes given the other variable's type._
_Convert the monikettes to a moniker._
_Destroy the monikettes._
_Abort with "I don't know how to '" then the moniker then "'." and the locus._


_198. We need this guy for help with expressions involving "then":_


_To convert a term for concatenation given a rider: _\ used for right-side THEN operand _
_If the term's variable is nil, abort with "I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_If the term's type can be reduced to "string", exit._
_Add an intermediate given "string" and the rider's token's first._
_Add the put or convert fragments given the term's variable and the intermediate and the rider's token's first._
_Put the intermediate into the term's variable._
_Clear the term's phrase._


_199. And this is just another general-purpose helper:_


_To add a monikette to some monikettes given an expression:_
_Create the monikette._
_Append the monikette to the monikettes._
_Put the expression's phrase into the monikette's string._
_Put the expression's variable into the monikette's variable._
_If the expression's variable is not nil, put the expression's type into the monikette's type._


200. This is the guy who adds a prolog fragment to every routine, together with his little helper:__



_To compile the body of a routine (prolog):_
_If the routine is nil, exit._
_If the compiler's abort flag is set, exit._
_Add a fragment given the prolog tag._
_Add another fragment given the loop tag._


_To add a fragment given a tag:_
_If the current routine is nil, void the fragment; exit._
_Create the fragment given the tag._
_Append the fragment to the current routine's fragments._


  _

_201. Some sentences start with a Plain English keyword (like "if" or "loop"); others don't:_


_To compile the next statement given a rider:_
_If the compiler's abort flag is set, exit._
_If the rider's token is "if", compile the next statement given the rider (if); exit._
_If the rider's token is "loop", compile the next statement given the rider (loop); exit._
_If the rider's token is "privatize", compile the next statement given the rider (privatize); exit._
_If the rider's token is not the start of any statement, abort with "I was expecting a statement here, but I found '" then the rider's token then "'." and the rider; exit._
_Compile the next statement given the rider (other)._
_If the rider's token is not the period byte, abort with "You seem to have forgotten a period around here." and the rider; exit._
_Move the rider (compiler rules)._


_202. This is the guy who compiles IF statements, together with his two helpers:_


_To compile the next statement given a rider (if):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_Compile some monikettes given the rider._
_Remove any negatives from the monikettes returning a flag._
_Find a routine given the monikettes._
_If the routine is not nil, add push fragments given the monikettes._
_If the routine is nil, convert the monikettes to a moniker._
_Destroy the monikettes._
_If the routine is nil, abort with "I need a decider with the words '" then the moniker then "'." and the rider; exit._
_If the routine's decider flag is not set, abort with "Yeah, I'm going to need a decider here, ok?" and the rider; exit._
_If the rider's token is not the comma byte, abort with "I expected a comma around here, but I found '" then the rider's token then "'." and the rider; exit._
_Add a fragment given the call internal tag and the routine._
_If the flag is set, add another fragment given the not tag._
_Add a third fragment given the jump false tag._
_Move the rider (compiler rules)._
_Loop._
_Compile the next statement given the rider (other)._
_If the compiler's abort flag is set, exit._
_If the rider's token is the semi-colon byte, move the rider (compiler rules); repeat._
_If the rider's token is not the period byte, abort with "I'm thinking period, but you've got '" then the rider's token then "'." and the rider; exit._
_Move the rider (compiler rules)._
_Add a fourth fragment given the end if tag._


_To remove any negatives from some monikettes returning a flag:_
_Clear the flag._
_Swap the monikettes with some other monikettes._
_Loop._
_Put the other monikettes' first into a monikette._
_If the monikette is nil, exit._
_Remove the monikette from the other monikettes._
_If the monikette's string is "not", reverse the flag; destroy the monikette; repeat._
_Append the monikette to the monikettes._
_If the monikette's string is "can't", reverse the flag; put "can" into the monikette's string; repeat._
_If the monikette's string is "cannot", reverse the flag; put "can" into the monikette's string; repeat._
_If the monikette's string is "nothing", reverse the flag; put "something" into the monikette's string; repeat._
_If the monikette's string is "won't", reverse the flag; put "will" into the monikette's string; repeat._
_If the monikette's string ends with "n't", reverse the flag; remove trailing bytes from the monikette's string given 3; repeat._
_Repeat._


_To add push fragments given some monikettes:_
_If the current routine is nil, exit._
_Loop._
_Get a monikette from the monikettes (backwards)._
_If the monikette is nil, exit._
_If the monikette's variable is nil, repeat._
_If the monikette's current substring is not blank, repeat._
_If the monikette's current type is nil, repeat._
_Add a fragment given the push address tag and the monikette's variable._
_Repeat._


203. This is the guy who compiles other (ie, normal, programmer-created sentences):_ - _


_To compile the next statement given a rider (other):_
_If the compiler's abort flag is set, exit._
_If the rider's token is blank, exit._
_If the rider's token is "exit", compile the next statement given the rider (exit); exit._
_If the rider's token is "repeat", compile the next statement given the rider (repeat); exit._
_If the rider's token is "break", compile the next statement given the rider (break); exit._
_If the rider's token is "say", compile the next statement given the rider (say); exit._
_If the rider's token is "intel", compile the next statement given the rider (intel); exit._
_If the rider's token is "push", compile the next statement given the rider (push); exit._
_If the rider's token is "call", compile the next statement given the rider (call); exit._
_If the rider's token is "point", compile the next statement given the rider (point); exit._
_If the rider's token is "if", abort with "Nested 'if' statements are a sure sign of unclear thinking. Think again." and the rider; exit._
_If the rider's token is "privatize", abort with "The 'privatize' statement cannot be used here." and the rider; exit._
_If the rider's token is "loop", abort with "Looping inside an 'if' statement is a good way to lose your lunch." and the rider; exit._
_If the rider's token is "employ", abort with "'Employ' must be the first and only imperative in a routine." and the rider; exit._
_Compile the next statement given the rider (call - internal)._


204. These are the four guys who compile EXIT and BREAK and SAY statements:_


_To compile the next statement given a rider (exit):_
_If the current routine's decider flag is set, abort with "What does 'exit' mean here? Yes? No? Maybe?" and the rider; exit._
_Add a fragment given the exit tag._
_Move the rider (compiler rules)._


_To compile the next statement given a rider (repeat):_
_Add a fragment given the repeat tag._
_Move the rider (compiler rules)._


_To compile the next statement given a rider (break):_
_Add a fragment given the break tag._
_Move the rider (compiler rules)._


_To compile the next statement given a rider (say):_
_If the current routine's decider flag is not set, compile the next statement given the rider (call - internal); exit._
_Move the rider (compiler rules)._
_Compile an expression given the rider._
_If the compiler's abort flag is set, exit._
_If the expression's variable is nil, abort with "Invalid 'say', I don't understand the variable '" then the expression's phrase then "'." and the rider; exit._
_If the expression's type cannot be reduced to "flag", abort with "I need a definite 'yes' or 'no' here." and the rider; exit._
_Add a fragment given the load eax tag and the expression's variable._
_Add another fragment given the exit tag._


205. This is the guy who handles normal calls (that is, calls from one Plain English routine to another):_


_To compile the next statement given a rider (call - internal):_
_Compile some monikettes given the rider._
_Find a routine given the monikettes._
_If the routine is not nil, add push fragments given the monikettes._
_If the routine is not nil, destroy the monikettes; add a fragment given the call internal tag and the routine; exit._
_Convert the monikettes to a moniker._
_Destroy the monikettes._
_Abort with "I don't know how to '" then the moniker then "'." and the rider._



206. This is the guy who handles inline machine code:_


_To compile the next statement given a rider (intel):_
_Move the rider (compiler rules)._
_If the rider's token is not any hex literal, abort with "I need some machine code here, I found '" then the rider's token then "'." and the rider; exit._
_Add a fragment given the intel tag._
_Put the rider's token into a nibble substring._
_Add 1 to the nibble substring's first._
_Convert the nibble substring to the fragment's code._
_Move the rider (compiler rules)._


207. These two guys handle the PUSH statement, which is rarely used (except when you're writing a Plain English compiler from scratch):_


_To compile the next statement given a rider (push):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_Compile an expression given the rider._
_If the compiler's abort flag is set, exit._
_If the expression's variable is nil, abort with "Invalid 'push', I don't understand the variable '" then the expression's phrase then "'." and the rider; exit._
_If the expression's type is not value pushable, abort with "Values of type '" then the expression's type's name then "' can't be pushed." and the rider; exit._
_Add a fragment given the push value tag and the expression's variable._


_To decide if a type is value pushable:_
_If the type is nil, say no._
_If the type is nil, say no._
_If the type's length is 4, say yes._
_If the type's length is 2, say yes._
_If the type's length is 1, say yes._
_Say no._


208. These two guys handle abnormal calls (that is, calls to Windows functions):_


_To compile the next statement given a rider (call):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_If the rider's token is any string literal, compile the next statement given the rider (call - external); exit._
_Compile the next statement given the rider (call - indirect).  _



_To compile the next statement given a rider (call - external):_
_Put the rider's token into a string._
_Unquote the string._
_Move the rider (compiler rules)._
_If the rider's token is not any string literal, abort with "Gee, I was expecting a quoted entry name, but I found '" then the rider's token then "'." and the rider; exit._
_Put the rider's token into another string._
_Unquote the other string._
_Move the rider (compiler rules)._
_Add an entry to the imports given the string and the other string._
_If the rider's token is "with", compile the next statement given the rider (call - with clause)._
_If the rider's token is "returning", compile the next statement given the rider returning a term (call - returning part)._
_Add a fragment given the call external tag and the entry._
_If the term is empty, exit._
_If the term's variable is nil, abort with "I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_Add another fragment given the save eax tag and the term's variable._



209. A Dynamic Link Library (DLL) is a chunk of executable code that can be linked up with a program at run-time. All the Windows functions we use live in DLLs. Each DLL has to be "imported" at run-time. We have to keep track of all the DLLs (imports), and all the functions in those DLLs (entries), that a program calls. For example, this sentence..._


_Call "kernel32.dll" "Beep" with 220 and 200._


...refers to the "Beep" entry point in the "kernel32.dll". These five routines help us keep track of things like that:_


_To add an entry to some imports given an import name and an entry name:_
_Find an import given the import name._
_If the import is nil, add the import to the imports given the import name._
_Find the entry given the entry name and the import's entries._
_If the entry is not nil, exit._
_Create the entry._
_Append the entry to the import's entries._
_Put the entry name into the entry's name._


_To find an import given a string:_
_Void the import._
_Loop._
_Get the import from the imports._
_If the import is nil, exit._
_If the import's name is the string, exit._
_Repeat._


_To add an import to some imports given an import name:_
_Create the import._
_Append the import to the imports._
_Put the import name into the import's name._


_To create an import:_
_Allocate memory for the import._


_To find an entry given a string and some entries:_
_Void the entry._
_Loop._
_Get the entry from the entries._
_If the entry is nil, exit._
_If the entry's name is the string, exit._
_Repeat._


_To create an entry:_
_Allocate memory for the entry._


_210. For compatibility with Windows, we had to allow for certain ugly clauses in CALL statements. The WITH clause, for example, indicates parameters that are to be passed as values instead of addresses; and the RETURNING clause indicates where Windows should but the value he wants to return to us. These two routines deal with those clauses:_


_To compile the next statement given a rider (call - with clause): _ - \ this guy is recursive so parameters get passed right to left _
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_Compile an expression given the rider._
_If the compiler's abort flag is set, exit._
_If the expression's variable is nil, abort with "I don't understand the variable '" then the expression's phrase then "'." and the rider; exit._
_If the expression's type is not value pushable, abort with "'" then the expression's type's name then "' can't be passed properly." and the rider; exit._
_If the rider's token is "and", compile the next statement given the rider (call - with clause)._
_Add a fragment given the push value tag and the expression's variable._


_To compile the next statement given a rider returning a term (call - returning part):_
_Move the rider (compiler rules)._
_Compile the term given the rider._
_If the compiler's abort flag is set, exit._
_If the term's variable is nil, abort with "I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_If the term's type is not value pushable, abort with "A simple 1, 2, or 4-byte variable is required in the 'returning' clause." and the rider._



_211. And these are just two more helpers:_


_To add a fragment given a tag and an entry:_
_If the current routine is nil, void the fragment; exit._
_Create the fragment given the tag._
_Append the fragment to the current routine's fragments._
_Put the entry into the fragment's entry._


_To decide if a term is empty:_
_If the term's variable is not nil, say no._
_If the term's phrase is not blank, say no._
_Say yes._


_212. Sometimes Windows forces us to call a routine that is dynamically linked in a non-standard way, the address of the address of the routine being available to us only at run-time. This is the guy who handles that situation:_


_To compile the next statement given a rider (call - indirect):_
_Compile an expression given the rider._
_If the compiler's abort flag is set, exit._
_If the expression's variable is nil, abort with "I don't understand the variable '" then the expression's phrase then "'." and the rider; exit._
_If the expression's type cannot be reduced to "pointer", abort with "I really need a pointer type in this CALL statement." and the rider; exit._
_If the rider's token is "with", compile the next statement given the rider (call - with clause)._
_If the rider's token is "returning", compile the next statement given the rider returning a term (call - returning part)._
_Add a fragment given the call indirect tag and the expression's variable._
_If the term is empty, exit._
_If the term's variable is nil, abort with "I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_Add another fragment given the save eax tag and the term's variable._


_213. Sometimes Windows wants a pointer to one of our routines so he can call us in a non-standard and annoying way. For that, we need a special POINT command and this guy to compile it: _


_To compile the next statement given a rider (point):_
_Move the rider (compiler rules)._
_Compile a term given the rider._
_If the compiler's abort flag is set, exit._
_If the term's variable is nil, abort with "I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_If the term's kind is "literal", abort with "You've got the wrong kind of variable here." and the rider._
_If the term's type's length is not 4, abort with "You've got the wrong kind of variable here." and the rider._
_If the rider's token is not "to", abort with "I was expecting the word 'to', but found '" then the rider's token then "'." and the rider; exit._
_Move the rider (compiler rules)._
_If the rider's token is not "routine", abort with "I was expecting the word 'routine' but found '" then the rider's token then "'." and the rider; exit._
_Move the rider (compiler rules)._
_Compile a routine reference given the rider._
_Convert the routine reference to a moniker._
_Destroy the routine reference._
_Find a routine given the moniker and the routine index._
_If the routine is nil, abort with "I can't find the '" then the moniker then "' routine to which you are trying to point." and the rider; exit._
_Add a fragment given the routine address tag and the routine._
_Put the term's variable into the fragment's variable._


214. This is the guy who compiles LOOP statements:_


_To compile the next statement given a rider (loop):_
_If the compiler's abort flag is set, exit._
_Add a fragment given the loop tag._
_Move the rider (compiler rules)._
_If the rider's token is not the period byte, abort with "You seem to have forgotten a period around here." and the rider; exit._
_Move the rider (compiler rules)._


215. And this is the guy who compiles PRIVATIZE statements:_


_To compile the next statement given a rider (privatize):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_Compile a term given the rider._
_If the compiler's abort flag is set, exit._
_If the term's variable is nil, abort with "Invalid 'privatize', I don't understand the variable '" then the term's phrase then "'." and the rider; exit._
_If the term's kind is not "parameter", abort with "You can only privatize parameters." and the rider; exit._
_Add a local to the current routine's locals given "local" and the rider's token's first._
_Put the term's name into the local's name._
_Put the term's nickname into the local's nickname._
_Put the term's type name into the local's type name._
_Resolve the local._
_Prepend "original " to the term's name._
_If the term's nickname is not blank, prepend "original " to the term's nickname._
_Add several fragments given "put" and the term's variable and "into" and the local and the rider's token's first._
_If the rider's token is not the period byte, abort with "You seem to have forgotten a period around here." and the rider; exit._
_Move the rider (compiler rules)._


216. This is just another general-purpose helper:__


_To decide if a string is the start of any statement:_
_If the string is the start of any definition, say no._
_If the string is any literal, say no._
_If the string is any mark, say no._
_If the string is blank, say no._
_Say yes._


217. And these are the two guys we need to put an EPILOG into every routine (to clean up the stack, restore registers, and dump any Heap memory that is no longer needed):_


_To compile the body of a routine (epilog):_
_If the routine is nil, exit._
_If the compiler's abort flag is set, exit._
_Add a fragment given the finalize tag._
_Loop._
_Get a variable from the routine's locals._
_If the variable is nil, break._
_If the variable's kind is "scratch", repeat._
_If the variable's type should not be finalized, repeat._
_Add another fragment given the push address tag and the variable._
_Find another routine given "~finalize" and the variable's type._
_If the other routine is nil, abort with "Internal error - compile the body of a routine (epilog)"; exit._
_Add a third fragment given the call internal tag and the other routine._
_Repeat._
_Add a fourth fragment given the epilog tag._


_To find a routine given a string and a type:_
_Add a monikette to some monikettes given the string._
_Add another monikette to the monikettes given the type._
_Find the routine given the monikettes._
_Destroy the monikettes. _
__
_218. EMPLOY and POINT statements explicitly refer to other routines, and some terms implicitly refer to other routines (like "a box's center" which is an implicit reference to the function-routine "To put a box's center into a spot.") A routine reference_ is a list of monikettes that refers to such a routine, and these are the routines we use to compile them:__


_To compile a routine reference given a rider:_
_If the rider's token is "to", move the rider (compiler rules)._
_If the rider is the start of any function, compile the routine reference given the rider (function); exit._
_If the rider's token is "decide", compile the routine reference given the rider (decide)._
_Loop._
_If the compiler's abort flag is set, exit._
_If the rider's token is blank, exit._
_If the rider's token is ".", exit._
_If the rider's token is "the", compile the routine reference given the rider (definite article); repeat._
_If the rider's token is any indefinite article, compile the routine reference given the rider (indefinite article); repeat._
_If the rider's token is any monikette string, compile the routine reference given the rider (monikette string); repeat._
_Abort with "'" then the rider's token then "' is not valid in an employ statement." and the rider._


_To compile a routine reference given a rider (decide):_
_Move the rider (compiler rules)._
_If the rider's token is not "if", abort with "We always say DECIDE IF, not DECIDE and then '" then the rider's token then "'." and the rider; exit._
_Move the rider (compiler rules)._


_To compile a routine reference given a rider (definite article):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_Scan a name given the rider._
_Prepend "the " to the name._
_Add a monikette to the routine reference given the name._


_To compile a routine reference given a rider (function):_
_If the compiler's abort flag is set, exit._
_Add a monikette to the routine reference given "put"._
_Move the rider (compiler rules)._
_If the rider's token is any indefinite article, set a flag._
_If the flag is set, compile the routine reference given the rider (indefinite article)._
_If the flag is not set, compile the routine reference given the rider (definite article)._
_If the rider's token is not any possessive, abort with "I was expecting an 's, but found '" then the rider's token then "'." and the rider; exit._
_Move the rider (compiler rules)._
_Scan a name given the rider._
_Add another monikette to the routine reference given "'s " then the name._
_If the rider's token is not "into", abort with "I was expecting the word 'into', but found '" then the rider's token then "'." and the rider; exit._
_Add a third monikette to the routine reference given "into"._
_Move the rider (compiler rules)._
_If the rider's token is not any indefinite article, abort with "I was expecting an indefinite article, but found '" then the rider's token then "'." and the rider; exit._
_Compile the routine reference given the rider (indefinite article)._


_To compile a routine reference given a rider (indefinite article):_
_If the compiler's abort flag is set, exit._
_Move the rider (compiler rules)._
_Scan a name given the rider._
_Find a type and a nickname given the name._
_If the type is nil, abort with "Invalid employ statement, I don't understand '" then the name then "'." and the rider; exit._
_Add a monikette to the routine reference given the type._


_To compile a routine reference given a rider (monikette string):_
_If the compiler's abort flag is set, exit._
_Add a monikette to the routine reference given the rider's token._
_Move the rider (compiler rules). _
__
_219. Whew! Made it. Run it, open the daughter in the blue, and List her. Then open the listing, find "ROUTINES:" (no quotes) and you'll see a lot of scratches, intermediates, and fragments hanging on our routines. I've inserted some source lines in the listing below, in blue, to make the fragments easier to understand (the fragments generated by each statement appear below the source):__


_ROUTINES:_


To abort with a string:_ _
_/routine/abort from/given/with/using [string]/yes/no/no/no//0/0/00000000/_
_/variable/parameter/yes/string/string/string/string/00000000/no/1/no////_
_/variable/scratch/yes/~S7063//flag/flag/00000000/no/1/no////_
_/variable/scratch/yes/~S7064//flag/flag/00000000/no/1/no////_
_/variable/scratch/yes/~S7065//abort message/abort message/00000000/no/1/no////_
_/fragment/prolog/////00000000/00000000//_
_/fragment/loop/////00000000/00000000//_

If the compiler's abort flag is set, exit._ _
_/fragment/load address/compiler/~S7063///00000000/00000000//_
_/fragment/increment/~S7063////00000014/00000000//_
_/fragment/push address/~S7063////00000000/00000000//_
_/fragment/call internal///[flag] is/are set//00000000/00000000//_
_/fragment/jump false/////00000000/00000000//_
_/fragment/exit/////00000000/00000000//_
_/fragment/end if/////00000000/00000000//_

Set the compiler's abort flag._ _
_/fragment/load address/compiler/~S7064///00000000/00000000//_
_/fragment/increment/~S7064////00000014/00000000//_
_/fragment/push address/~S7064////00000000/00000000//_
_/fragment/call internal///set [flag]//00000000/00000000//_

Put the string into the compiler's abort message._ _
_/fragment/load address/compiler/~S7065///00000000/00000000//_
_/fragment/increment/~S7065////00000018/00000000//_
_/fragment/push address/~S7065////00000000/00000000//_
_/fragment/push address/string////00000000/00000000//_
_/fragment/call internal///put [string] in/into/to [string]//00000000/00000000//_
_/fragment/finalize/////00000000/00000000//_
_/fragment/epilog/////00000000/00000000//_


_At the bottom of the listing you'll see that this is the part of compiling that really eats up the time:_


_TIMERS:_


_/timer/loading/0/_
_/timer/scanning/515/_
_/timer/resolving types/32/_
_/timer/resolving globals/109/_
_/timer/compiling routine headers/281/_
_/timer/calculating/16/_
_/timer/adding built-in memory routines/47/_
_/timer/indexing utilities/94/_
_/timer/compiling routine bodies/1468/_
_/timer/adding built-in startup routine/0/_
_/timer/offsetting/0/_
_/timer/addressing/0/_
_/timer/transmogrifying/0/_
_/timer/linking/0/_
_/timer/writing/0/_
_/timer/total/5187/_


_Almost home now. The rest may be tedious, but it's easy stuff._

_---_


Now that we know everything in the source checks out, it's time to add one more routine of our own.__


220. Move our abort line down a notch and activate the next step:_ - _


_To compile a directory:_
_Compile the directory (start)._
_Compile the directory (load the source files)._
_Compile the directory (scan the source files)._
_Compile the directory (resolve the types)._
_Compile the directory (resolve the globals)._
_Compile the directory (compile the headers of the routines)._
_Compile the directory (calculate lengths and offsets of types)._
_Compile the directory (add the built-in memory routines)._
_Compile the directory (index the routines for utility use)._
_Compile the directory (compile the bodies of the routines)._
_Compile the directory (add and compile the built-in startup routine)._
_Abort with "I'm not old enough to make babies.". _
_\Compile the directory (offset parameters and variables)._
_\Compile the directory (address)._
_\Compile the directory (transmogrify)._
_\Compile the directory (link)._
_\Compile the directory (write the exe)._
_\Compile the directory (stop).__


221. Then add this guy back in:__


_To compile a directory (add and compile the built-in startup routine):_
_If the compiler's abort flag is set, exit._
_Show status "Adding..."._
_Start the adding built-in startup routine timer._
_Add and compile the initialize before run and run and finalize after run routine._
_Stop the adding built-in startup routine timer._


222. And this guy, who creates the routine that will be the first routine to get control when the programmer's program is run:__


_To add and compile the initialize before run and run and finalize after run routine:_
_If the compiler's abort flag is set, exit._
_Add a routine to the routines given nil._
_Append "~initialize before run and run and finalize after run" to the routine's header string._
_Append "initialize before run. " to the routine's body string._
_Append the global initializers to the routine's body string._
_Append "run. " to the routine's body string._
_Append the global finalizers to the routine's body string._
_Append "finalize after run. " to the routine's body string._
_Append "call ""kernel32.dll"" ""ExitProcess"" with 0. " to the routine's body string._
_Slap the routine's routine header on the routine's header string._
_Slap the routine's routine body on the routine's body string._
_Compile the header of the routine._
_Compile the body of the routine._


223. Then uncomment these two guys, who add initializer and finalizer code for global variables to our start-up routine:__


_To append the global initializers to a string:_
_Get a global from the globals._
_If the global is nil, exit._
_If the global's literal is nil, repeat._
_If the global's compiled flag is not set, repeat._
_Clear a flag._
_Append the global's initializer string to the string._
_Repeat._


_To append the global finalizers to a string:_
_Get a global from the globals._
_If the global is nil, exit._
_If the global's compiled flag is not set, repeat._
_If the global's type should not be finalized, repeat._
_Append "~finalize the " then the global's name then ". " to the string._
_Repeat._


_224. And that's it for this step. Run it. In the blue, open the daughter and list her. Then open the listing and look for "run and run" (without the quotes); that will take you to the routine we just added, which should look like this (it's a biggie, so I've added some comments in blue and cut out a lot of repetitive lines):__


_/routine/~initialize before run and run and finalize after run/yes/no/no/no//0/0/00000000/_
_/fragment/prolog/////00000000/00000000//_
_/fragment/loop/////00000000/00000000//_

_/fragment/call internal///initialize before run//00000000/00000000// _
_\ global initializers start here _
_/fragment/push address/break tag////00000000/00000000//_
_/fragment/push address/~L1////00000000/00000000//_
_/fragment/call internal///put [number] in/into/to [number]//00000000/00000000//_
_/fragment/push address/call external tag////00000000/00000000//_
_/fragment/push address/~L2////00000000/00000000//_
_/fragment/call internal///put [number] in/into/to [number]//00000000/00000000// _
_\ blah, blah, blah__

_/fragment/push address/document version////00000000/00000000//_
_/fragment/push address/~L397////00000000/00000000//_
_/fragment/call internal///put [string] in/into/to [string]//00000000/00000000//_
_/fragment/push address/edge height////00000000/00000000//_

_\ global initializers end here__
_/fragment/call internal///run//00000000/00000000//_

_\ global finalizers start here__
_/fragment/push address/compiler////00000000/00000000//_
_/fragment/call internal///~finalize [~inline compiler type]//00000000/00000000//_
_/fragment/push address/answer////00000000/00000000//_
_/fragment/call internal///~finalize [string]//00000000/00000000//_

_\ blah, blah, blah__
_/fragment/push address/temp path////00000000/00000000//_
_/fragment/call internal///~finalize [string]//00000000/00000000//_
_/fragment/push address/document version////00000000/00000000//_
_/fragment/call internal///~finalize [string]//00000000/00000000//_

_/fragment/push address/remembered picture path////00000000/00000000//_
_/fragment/call internal///~finalize [string]//00000000/00000000// _
_\ global finalizers end here__
_/fragment/call internal///finalize after run//00000000/00000000//_
_/fragment/push value/~L12694////00000000/00000000//_
_/fragment/call external////ExitProcess/00000000/00000000//_
_/fragment/finalize/////00000000/00000000//_
_/fragment/epilog/////00000000/00000000//_

_ _


Next time, we'll calculate the offsets for our parameters and local variables._


---_


225. Time to calculate some offsets. Let's get right to it. Move our abort line down and reinstate the next step:_


_To compile a directory:_
_Compile the directory (start)._
_Compile the directory (load the source files)._
_Compile the directory (scan the source files)._
_Compile the directory (resolve the types)._
_Compile the directory (resolve the globals)._
_Compile the directory (compile the headers of the routines)._
_Compile the directory (calculate lengths and offsets of types)._
_Compile the directory (add the built-in memory routines)._
_Compile the directory (index the routines for utility use)._
_Compile the directory (compile the bodies of the routines)._
_Compile the directory (add and compile the built-in startup routine)._
_Compile the directory (offset parameters and variables)._
_Abort with "I'm not old enough to make babies.". _
_\Compile the directory (address)._
_\Compile the directory (transmogrify)._
_\Compile the directory (link)._
_\Compile the directory (write the exe)._
_\Compile the directory (stop)._


226. Then put this guy back:_


_To compile a directory (offset parameters and variables):_
_If the compiler's abort flag is set, exit._
_Show status "Offsetting..."._
_Start the offsetting timer._
_Offset the parameters in the routines._
_Offset the locals in the routines._
_Stop the offsetting timer._


227. Now these two guys go back in:_


_To offset the parameters in some routines:_
_If the compiler's abort flag is set, exit._
_Get a routine from the routines._
_If the routine is nil, exit._
_Offset the parameters in the routine._
_Repeat._



_To offset the parameters in a routine:_
_If the routine is nil, exit._
_If the routine's compiled flag is not set, exit._
_Clear the routine's parameter size._
_Loop._
_If the compiler's abort flag is set, exit._
_Get a parameter from the routine's parameters._
_If the parameter is nil, exit._
_If the routine's callback flag is set, set the parameter's by-value flag._
_If the parameter's previous is nil, put 8 into the parameter's offset._ - \ skip the return address and saved ebp _
_If the parameter's previous is not nil, put the parameter's previous' offset plus 4 into the parameter's offset. _\ all parameters are 4 bytes long_ - _

_Add 4 to the routine's parameter size._
_Repeat._


228. And finally these two guys:_


_To offset the locals in some routines:_
_If the compiler's abort flag is set, exit._
_Get a routine from the routines._
_If the routine is nil, exit._
_Offset the locals in the routine._
_Repeat.__

 _

_To offset the locals in a routine:_
_If the routine is nil, exit._
_If the routine's compiled flag is not set, exit._
_Clear the routine's local size._
_Loop._
_If the compiler's abort flag is set, exit._
_Get a local from the routine's locals._
_If the local is nil, exit._
_If the local's previous is not nil, put the local's previous' offset into the local's offset._
_Put the local's type's length into a length._
_If the local's kind is "scratch", put a pointer's magnitude into the length._
_Round the length up to the nearest multiple of 4._
_Subtract the length from the local's offset._
_Add the length to the routine's local size._
_Repeat._


229. Now run it. In the blue, open up the daughter and list her. Then get into the listing and look for "routines:" (with the colon, no quotes). You should see something that starts like this:_


_ROUTINES:_


_/routine/abort from/given/with/using [string]/yes/no/no/no//4/12/00000000/_
_/variable/parameter/yes/string/string/string/string/00000008/no/1/no////_
_/variable/scratch/yes/~S7063//flag/flag/FFFFFFFC/no/1/no////_
_/variable/scratch/yes/~S7064//flag/flag/FFFFFFF8/no/1/no////_
_/variable/scratch/yes/~S7065//abort message/abort message/FFFFFFF4/no/1/no////_

_/fragment/prolog/////00000000/00000000//_


Now recall that the stack, in general, is arranged like this:_


_


Note the offset_ on our parameter: 00000008. That means 8 bytes past wherever the EBP register is pointing._


Note also the offsets on the local scratch_ variables: FFFFFFFC, FFFFFFF8, FFFFFFF4. That's -4, -8, and -12 in regular notation, which means 4, 8, and 12 bytes to the other side of where the EBP register is pointing._


And that's it for this step. Next time, we'll give everyone (who needs one) a permanent address._



---_


230. Time to hand out addresses. Move the abort line down and activate the next step:_


_To compile a directory:_
_Compile the directory (start)._
_Compile the directory (load the source files)._
_Compile the directory (scan the source files)._
_Compile the directory (resolve the types)._
_Compile the directory (resolve the globals)._
_Compile the directory (compile the headers of the routines)._
_Compile the directory (calculate lengths and offsets of types)._
_Compile the directory (add the built-in memory routines)._
_Compile the directory (index the routines for utility use)._
_Compile the directory (compile the bodies of the routines)._
_Compile the directory (add and compile the built-in startup routine)._
_Compile the directory (offset parameters and variables)._
_Compile the directory (address)._
_Abort with "I'm not old enough to make babies.". _
_\Compile the directory (transmogrify)._
_\Compile the directory (link)._
_\Compile the directory (write the exe)._
_\Compile the directory (stop)._


231. Then put this guy back in:_


To compile a directory (address):_
_If the compiler's abort flag is set, exit._
_Show status "Addressing..."._
_Start the addressing timer._
_Put 4096 into an address._
_Put the address into the import borough's base._
_Address the imports given the address._
_Put the address minus the import borough's base into the import borough's length._
_Round the address up to the nearest multiple of 4096._
_Put the address into the data borough's base._
_Address the globals given the address._
_Address the literals given the address._
_Put the address minus the data borough's base into the data borough's length._
_Round the address up to the nearest multiple of 4096._
_Put the address into the code borough's base._
_Address the routines given the address._
_Put the address minus the code borough's base into the code borough's length._
_Stop the addressing timer._



232. You hopefully recall that we only need five of the many possible sections that a Windows Portable Executable might have: The DOS Header, the PE Header, the Import Section, the Data Section, and the Code Section. We'll deal with the two Headers later. In the meantime, we didn't want to waste a good word like "section" on Windows' crap, so we decided to call those latter three sections "boroughs." (A borough_ is an administrative division of a large city.) Here are the types we'll be needing in this step; put them back in:_


_A borough has a base address, a length and a size._

_The import borough is a borough._


_The data borough is a borough._

_The code borough is a borough._


The size_ of a borough is its actual length_ rounded up to the nearest multiple of 4096 (the virtual page size used by x86 architecture CPUs)._


233. We'll also be needing a few globals to keep track of where we are; put these back in too:_


_The current header address is an address._


_The current name address is an address._


_The current thunk address is an address._


_The image base is an address equal to 4194304 [$00400000]._



234. The Import Borough comes just after the headers in our executable, so we address our imports first:_


_To address some imports given an address:_
_Put the address into the current header address._
_Put the imports' count into a count._
_Add 1 to the count._
_Multiply the count by an import header's magnitude._
_Put the address plus the count into the current thunk address._
_Get another count given the imports (all entries plus markers)._
_Multiply the other count by 4._
_Put the current thunk address plus the other count into the current name address._
_Loop._
_Get an import from the imports._
_If the import is nil, break._
_Address the import._
_Repeat._
_Put the current name address minus the address into a number._
_Add the number to the address._


235. The routine above needs a little help from this guy:_


_To get a count given some imports (all entries plus markers):_
_Put 0 into the count._
_Loop._
_Get an import from the imports._
_If the import is nil, exit._
_Add the import's entries' count to the count._
_Add 1 to the count._
_Repeat._


236. And some more help from this routine:_


_To address an import:_
_Put the current name address into the import's name address._
_Put the current header address into the import's header address._
_Put the current name address into the import's import header's name memory address._
_Put the import's name's length plus 1 into a number._
_Round the number up to the nearest multiple of 2._
_Add the number to the current name address._
_Add an import header's magnitude to the current header address._
_Put the current thunk address into the import's import header's first thunk memory address._
_Address the import's entries._
_Add 4 to the current thunk address._


_237. it's not enough, of course, to just address our imports (the DLLs we'll be calling); we need to address each of the functions (entries) within those DLLs that we want to call. So we need these two guys:_


_To address some entries:_
_Get an entry from the entries._
_If the entry is nil, exit._
_Address the entry._
_Repeat._


_To address an entry:_
_Put the current name address into the entry's name address._
_Put the entry's name's length plus 3 into a number._
_Round the number up to the nearest multiple of 2._
_Add the number to the current name address._
_Put the current thunk address into the entry's thunk address._
_Put the image base plus the current thunk address into the entry's address._
_Add 4 to the current thunk address._


_238. And that's it for the DLL stuff. Now we assign addresses to our global variables and our literals, both using these two guys:_


_To address some variables given an address:_
_If the compiler's abort flag is set, exit._
_Get a variable from the variables._
_If the variable is nil, exit._
_Address the variable given the address._
_Repeat._



_To address a variable given an address:_
_If the compiler's abort flag is set, exit._
_If the variable is nil, exit._
_If the variable's compiled flag is not set, exit._
_Put the image base plus the address into the variable's address._
_Add the variable's type's length to the address._
_If the variable's type can be reduced to "string", add the variable's data's length plus 1 to the address._
_Round the address up to the nearest multiple of 4._


_239. Lastly, we assign addresses to each of our routines:_


_To address some routines given an address:_
_If the compiler's abort flag is set, exit._
_Get a routine from the routines._
_If the routine is nil, break._
_Address the routine given the address._
_Repeat._



_To address a routine given an address:_
_If the compiler's abort flag is set, exit._
_If the routine is nil, exit._
_If the routine's employs moniker is not blank, exit. \ employs are addressed later_
_If the routine's compiled flag is not set, exit._
_Put the routine into the current routine._
_Put the image base plus the address into the routine's address._
_Address the routine's fragments given the address._
_Round the address up to the nearest multiple of 4._


_240. it's not enough, of course, to just give an address to a routine's entry point; we need to know where to put each fragment of code, as well. So we need these two guys:_


_To address some fragments given an address:_
_If the compiler's abort flag is set, exit._
_Get a fragment from the fragments._
_If the fragment is nil, exit._
_Address the fragment given the address._
_Repeat._


_To address a fragment given an address:_
_If the compiler's abort flag is set, exit._
_If the fragment is nil, exit._
_Put the image base plus the address into the fragment's address._
_If the fragment's tag is the push address tag, add 7 to the address; exit._
_If the fragment's tag is the call internal tag, add 5 to the address; exit._
_If the fragment's tag is the load address tag, add 12 to the address; exit._
_If the fragment's tag is the increment tag, add 10 to the address; exit._
_If the fragment's tag is the dereference tag, add 14 to the address; exit._
_If the fragment's tag is the jump false tag, add 9 to the address; exit._
_If the fragment's tag is the not tag, add 3 to the address; exit._
_If the fragment's tag is the exit tag, add 5 to the address; exit._
_If the fragment's tag is the repeat tag, add 5 to the address; exit._
_If the fragment's tag is the break tag, add 5 to the address; exit._
_If the fragment's tag is the prolog tag, address the fragment given the address (prolog); exit._
_If the fragment's tag is the epilog tag, address the fragment given the address (epilog); exit._
_If the fragment's tag is the intel tag, add the fragment's code's length to the address; exit._
_If the fragment's tag is the push value tag, address the fragment given the address (push value); exit._
_If the fragment's tag is the call external tag, add 6 to the address; exit._
_If the fragment's tag is the load eax tag, add 8 to the address; exit._
_If the fragment's tag is the save eax tag, address the fragment given the address (save eax); exit._
_If the fragment's tag is the call indirect tag, add 8 to the address; exit._
_If the fragment's tag is the routine address tag, add 12 to the address; exit._


_241. Some fragments have fixed machine-code lengths; some don't. The fixed-length ones are handled above; the others are handled by the four routines below:_


_To address a fragment given an address (epilog):_
_If the current routine's callback flag is set, add 3 to the address._
_Add 6 to the address._


_To address a fragment given an address (prolog):_
_Add 3 to the address._
_If the current routine's local size is not 0, add 10 to the address._
_If the current routine's callback flag is set, add 3 to the address._


_To address a fragment given an address (push value):_
_Add 6 to the address._
_If the fragment's variable is nil, abort with "Internal error - address a fragment given an address (push value)"; exit._
_If the fragment's variable's type is nil, abort with "Internal error 2 - address a fragment given an address (push value)"; exit._
_Put the fragment's variable's type's length into a length._
_If the length is 4, add 2 to the address; exit._
_If the length is 2, add 3 to the address; exit._
_If the length is 1, add 4 to the address; exit._
_Abort with "Internal error 3 - address a fragment given an address (push value)"._


_To address a fragment given an address (save eax):_
_Add 6 to the address._
_If the fragment's variable is nil, abort with "Internal error - address a fragment given an address (push value)"; exit._
_If the fragment's variable's type is nil, abort with "Internal error 2 - address a fragment given an address (push value)"; exit._
_Put the fragment's variable's type's length into a length._
_If the length is 4, add 2 to the address; exit._
_If the length is 2, add 3 to the address; exit._
_If the length is 1, add 2 to the address; exit._
_Abort with "Internal error 3 - address a fragment given an address (push value)"._


_242. And that's it for this step. Run it. In the blue, open up the daughter and list her. Then open up the listing and check out the addresses we've given our globals:_


_GLOBALS:_


_/variable/global/yes/adding built-in memory routines timer//timer/timer/00402000/no/1/no////_
_/variable/global/yes/adding built-in startup routine timer//timer/timer/0040200C/no/1/no////_
_/variable/global/yes/addressing timer//timer/timer/00402018/no/1/no////_


_Then jump to the literals and check out their addresses:_


_LITERALS:_


_/variable/literal/yes/~L1//number/number/004030AC/no/1/no///01000000/_
_/variable/literal/yes/~L2//number/number/004030B0/no/1/no///02000000/_
_/variable/literal/yes/~L3//number/number/004030B4/no/1/no///03000000/_


_Then jump to the routines and check out both the entry addresses, and the fragment addresses:_


_ROUTINES:_


_/routine/abort from/given/with/using [string]/yes/no/no/no//4/12/00419000/_
_/variable/parameter/yes/string/string/string/string/00000008/no/1/no////_
_/variable/scratch/yes/~S7063//flag/flag/FFFFFFFC/no/1/no////_
_/variable/scratch/yes/~S7064//flag/flag/FFFFFFF8/no/1/no////_
_/variable/scratch/yes/~S7065//abort message/abort message/FFFFFFF4/no/1/no////_
_/fragment/prolog/////00000000/00419000//_
_/fragment/loop/////00000000/0041900D//_
_/fragment/load address/compiler/~S7063///00000000/0041900D//_
_/fragment/increment/~S7063////00000014/00419019//_
_/fragment/push address/~S7063////00000000/00419023//_
_/fragment/call internal///[flag] is/are set//00000000/0041902A//_
_/fragment/jump false/////00000000/0041902F//_
_/fragment/exit/////00000000/00419038//_
_/fragment/end if/////00000000/0041903D//_
_/fragment/load address/compiler/~S7064///00000000/0041903D//_
_/fragment/increment/~S7064////00000014/00419049//_
_/fragment/push address/~S7064////00000000/00419053//_
_/fragment/call internal///set [flag]//00000000/0041905A//_
_/fragment/load address/compiler/~S7065///00000000/0041905F//_
_/fragment/increment/~S7065////00000018/0041906B//_
_/fragment/push address/~S7065////00000000/00419075//_
_/fragment/push address/string////00000000/0041907C//_
_/fragment/call internal///put [string] in/into/to [string]//00000000/00419083//_
_/fragment/finalize/////00000000/00419088//_
_/fragment/epilog/////00000000/00419088//_


_Finally, jump to "IMPORTS:" (no quotes) and take a peek at both the import and entry addresses we assigned:_


_IMPORTS:_


_/import/user32.dll/_
_/entry/DisableProcessWindowsGhosting/004010DC/_
_/entry/GetSystemMetrics/004010E0/_
_/entry/PostMessageA/004010E4/_


Sweet. And all that addressing took only... let me see..._


_TIMERS:_


_/timer/loading/16/_
_/timer/scanning/437/_
_/timer/resolving types/15/_
_/timer/resolving globals/110/_
_/timer/compiling routine headers/281/_
_/timer/calculating/0/_
_/timer/adding built-in memory routines/62/_
_/timer/indexing utilities/79/_
_/timer/compiling routine bodies/1437/_
_/timer/adding built-in startup routine/31/_
_/timer/offsetting/0/_
_/timer/addressing/32/_
_/timer/transmogrifying/0/_
_/timer/linking/0/_
_/timer/writing/0/_

_/timer/total/5078/_


...32 milliseconds. Zippy!_


_Next up: TRANSMOGRIFICATION! Mwa-hah-hah-hah (evil laugh)._


---_


243. The dictionary says transmogrify_ means "to change completely the nature or appearance of," and that's exactly what we're about to do to each and every one of our fragments. So let's do it. Move the abort line down, reactivate the next step:__


_To compile a directory:_
_Compile the directory (start)._
_Compile the directory (load the source files)._
_Compile the directory (scan the source files)._
_Compile the directory (resolve the types)._
_Compile the directory (resolve the globals)._
_Compile the directory (compile the headers of the routines)._
_Compile the directory (calculate lengths and offsets of types)._
_Compile the directory (add the built-in memory routines)._
_Compile the directory (index the routines for utility use)._
_Compile the directory (compile the bodies of the routines)._
_Compile the directory (add and compile the built-in startup routine)._
_Compile the directory (offset parameters and variables)._
_Compile the directory (address)._
_Compile the directory (transmogrify)._
_Abort with "I'm not old enough to make babies.". _
_\Compile the directory (link)._
_\Compile the directory (write the exe)._
_\Compile the directory (stop).__


244. Then add in these three guys:__


_To compile a directory (transmogrify):_
_If the compiler's abort flag is set, exit._
_Show status "Mogrifying..."._
_Start the transmogrifying timer._
_Transmogrify the routines._
_Stop the transmogrifying timer._


_To transmogrify some routines:_
_If the compiler's abort flag is set, exit._
_Get a routine from the routines._
_If the routine is nil, break._
_Transmogrify the routine._
_Repeat._


_To transmogrify a routine:_
_If the compiler's abort flag is set, exit._
_If the routine is nil, exit._
_If the routine's employs moniker is not blank, exit._
_If the routine's compiled flag is not set, exit._
_Put the routine into the current routine._
_Transmogrify the routine's fragments.__


245. These two routines are the top-level helpers we need:_

 _

_To transmogrify some fragments:_
_If the compiler's abort flag is set, exit._
_Get a fragment from the fragments._
_If the fragment is nil, exit._
_Transmogrify the fragment._
_Repeat._

 _

_To transmogrify a fragment:_
_If the compiler's abort flag is set, exit._
_If the fragment is nil, exit._
_If the fragment's tag is the push address tag, transmogrify the fragment (push address); exit._
_If the fragment's tag is the call internal tag, transmogrify the fragment (call internal); exit._
_If the fragment's tag is the load address tag, transmogrify the fragment (load address); exit._
_If the fragment's tag is the increment tag, transmogrify the fragment (increment); exit._
_If the fragment's tag is the dereference tag, transmogrify the fragment (dereference); exit._
_If the fragment's tag is the jump false tag, transmogrify the fragment (jump false); exit._
_If the fragment's tag is the not tag, transmogrify the fragment (not); exit._
_If the fragment's tag is the exit tag, transmogrify the fragment (exit); exit._
_If the fragment's tag is the repeat tag, transmogrify the fragment (repeat); exit._
_If the fragment's tag is the break tag, transmogrify the fragment (break); exit._
_If the fragment's tag is the prolog tag, transmogrify the fragment (prolog); exit._
_If the fragment's tag is the epilog tag, transmogrify the fragment (epilog); exit._
_If the fragment's tag is the push value tag, transmogrify the fragment (push value); exit._
_If the fragment's tag is the call external tag, transmogrify the fragment (call external); exit._
_If the fragment's tag is the load eax tag, transmogrify the fragment (load eax); exit._
_If the fragment's tag is the save eax tag, transmogrify the fragment (save eax); exit._
_If the fragment's tag is the call indirect tag, transmogrify the fragment (call indirect); exit._
_If the fragment's tag is the routine address tag, transmogrify the fragment (routine address); exit.__

 _

246. And these 18 guys are the low-level helpers who actually do the transmogrification:_

 _

_To transmogrify a fragment (break):_
_Put the repeat tag into a tag._
_Find another fragment given the fragment and the tag._
_If the other fragment is nil, put the finalize tag into the tag. _ - \ for break without a loop or after a loop _
_Find a third fragment given the current routine's fragments' last and the tag (backwards)._
_If the third fragment is nil, abort with "Internal error - transmogrify a fragment (break)"; exit._
_If the third fragment's next is nil, abort with "Internal error 2 - transmogrify a fragment (break)"; exit._
_Attach $E9 and the third fragment's next's address to the fragment. _ - \ jmp the destination's address__

 _

_To transmogrify a fragment (call external):_
_Attach $FF15 and the fragment's entry's address to the fragment's code. _ - \ call [the fragment's entry's address]__

 _

_To transmogrify a fragment (call indirect):_
_Attach address loading code to the fragment's code given the fragment's variable. _ - \ put address into edx _
_Attach $FF12 to the fragment's code. _\ call [edx]__

 _

_To transmogrify a fragment (call internal):_
_Get an address given the fragment's routine._
_Attach $E8 and the address to the fragment. \_ call the fragment's routine's address__

 _

_To transmogrify a fragment (dereference):_
_Attach $8B95 and the fragment's variable's offset to the fragment's code. _ - \ mov edx,[ebp+the fragment's variable's offset] _
_Attach $8B12 to the fragment's code. _\ mov edx,[edx] _
_Attach $8995 and the fragment's variable's offset to the fragment's code. _ - \ mov [ebp+the fragment's variable's offset],edx__

 _

_To transmogrify a fragment (epilog):_
_If the current routine's callback flag is set, attach $5F5E5B to the fragment's code. _ - \ pop edi, esi, ebx _
_Attach $8BE5 to the fragment's code. _\ mov esp,ebp _
_Attach $5D to the fragment's code. _\ pop ebp _
_Attach $C2 and the current routine's parameter size to the fragment's code. _ - \ ret the current routine's parameter size__

 _

_To transmogrify a fragment (exit):_
_Find another fragment given the fragment and the finalize tag._
_If the other fragment is nil, abort with "Internal error - transmogrify a fragment (exit)"; exit._
_Attach $E9 and the other fragment's address to the fragment. _ - \ jmp the destination's address__

 _

_To transmogrify a fragment (increment):_
_If the fragment's variable is nil, abort with "Internal error - transmogrify a fragment (increment)"; exit._
_If the fragment's variable's kind is not "scratch", abort with "Internal error 2 - transmogrify a fragment (increment)"; exit._
_Attach $8185 and the fragment's variable's offset and the fragment's number to the fragment's code. _\ add [ebp+the fragment's variable's offset],the fragment's number__

 _

_To transmogrify a fragment (jump false):_
_Find another fragment given the fragment and the end if tag._
_If the other fragment is nil, abort with "Internal error - transmogrify a fragment (jump false)"; exit._
_Attach $83F800 to the fragment's code. _\ cmp eax,0 _
_Attach $0F84 and the other fragment's address to the fragment. _ - \ je the destination's address__

 _

_To transmogrify a fragment (load address):_
_Attach address loading code to the fragment's code given the fragment's variable. _ - \ put address into edx _
_Attach $8995 and the fragment's other variable's offset to the fragment's code. _ - \ mov [ebp+the fragment's variable's offset],edx__

 _

_To transmogrify a fragment (load eax):_
_Attach address loading code to the fragment's code given the fragment's variable. _ - \ put address into edx _
_If the fragment's variable is nil, abort with "Internal error - transmogrify a fragment (load eax)"; exit._
_If the fragment's variable's type is nil, abort with "Internal error 2 - transmogrify a fragment (load eax)"; exit._
_If the fragment's variable's type's length is not 4, abort with "Internal error 3 - transmogrify a fragment (load eax)"; exit._
_Attach $8B02 to the fragment's code. _\ mov eax,[edx]__

 _

_To transmogrify a fragment (not):_
_Attach $83F001 to the fragment's code. _\ xor eax,1_

 _

_To transmogrify a fragment (prolog):_
_Attach $55 to the fragment's code. \ push ebp_
_Attach $8BEC to the fragment's code. \ mov ebp,esp_
_Put the current routine's local size divided by 4 into a number._
_If the number is not 0, attach $B9 and the number and $6A004975FB to the fragment's code. _\ mov ecx,number; loop: push 0; dec ecx; jnz loop _
_If the current routine's callback flag is set, attach $535657 to the fragment's code. _ - \ push ebx, esi, edi__

 _

_To transmogrify a fragment (push address):_
_Attach address loading code to the fragment's code given the fragment's variable. _ - \ put address into edx _
_Attach $52 to the fragment's code. _\ push edx__

 _

_To transmogrify a fragment (push value):_
_Attach address loading code to the fragment's code given the fragment's variable. _ - \ put address into edx _
_If the fragment's variable is nil, abort with "Internal error - transmogrify a fragment (push value)"; exit._
_If the fragment's variable's type is nil, abort with "Internal error 2 - transmogrify a fragment (push value)"; exit._
_Put the fragment's variable's type's length into a length._
_If the length is 4, attach $FF32 to the fragment's code; exit. _ - \ push [edx] _
_If the length is 2, attach $66FF32 to the fragment's code; exit. _ - \ push word ptr [edx] _
_If the length is 1, attach $0FB61252 to the fragment's code; exit. _ - \ movzxb edx,[edx]; push edx _
_Abort with "Internal error 3 - transmogrify a fragment (push value)"._

 _

_To transmogrify a fragment (repeat):_
_Find another fragment given the fragment and the loop tag (backwards)._
_If the other fragment is nil, abort with "Internal error - transmogrify a fragment (repeat)"; exit._
_Attach $E9 and the other fragment's address to the fragment. _ - \ jmp the destination's address__

 _

_To transmogrify a fragment (routine address):_
_Attach address loading code to the fragment's code given the fragment's variable. _ - \ put address into edx _
_If the fragment's routine is nil, abort with "Internal error - transmogrify a fragment (routine address)"; exit._
_Get an address given the fragment's routine._
_Attach $C702 and the address to the fragment's code. _\ mov [edx],the address_

 _

_To transmogrify a fragment (save eax):_
_Attach address loading code to the fragment's code given the fragment's variable. _ - \ put address into edx _
_If the fragment's variable is nil, abort with "Internal error - transmogrify a fragment (save eax)"; exit._
_If the fragment's variable's type is nil, abort with "Internal error 2 - transmogrify a fragment (save eax)"; exit._
_Put the fragment's variable's type's length into a length._
_If the length is 4, attach $8902 to the fragment's code; exit. _ - \ mov [edx],eax _
_If the length is 2, attach $668902 to the fragment's code; exit. _ - \ mov [edx],ax _
_If the length is 1, attach $8802 to the fragment's code; exit. _ - \ mov [edx],al _
_Abort with "Internal error 3 - transmogrify a fragment (save eax)"._

 _

If you're wondering why we only need 18 fragment transmogrifiers when we have 21 fragment types, it's because 3 of those fragment types don't require transmogrification. The END IF, LOOP, and FINALIZE tags are just labels that we stick in there (and address) so we have places to jump to._

 _

247. Some of the transmogrifiers need a little help from this guy..._

 _

_To attach address loading code to a hex string given a variable: \ loads into edx_
_If the variable is nil, attach $C7C200000000 to the hex string; exit. \ mov edx,0_
_If the variable's kind is "global", attach $C7C2 and the variable's address to the hex string; exit. \ mov edx,the variable's address_
_If the variable's kind is "literal", attach $C7C2 and the variable's address to the hex string; exit. \ mov edx,the variable's address_
_If the variable's kind is "local", attach $8D95 and the variable's offset to the hex string; exit. \ lea edx,[ebp+the variable's offset]_
_If the variable's kind is "scratch", attach $8B95 and the variable's offset to the hex string; exit. \ mov edx,[ebp+the variable's offset]_
_If the variable's kind is not "parameter", abort with "Internal error - attach address loading code to a hex string given a variable"; exit._
_If the variable's by-value flag is set, attach $8D95 and the variable's offset to the hex string; exit. \ lea edx,[ebp+the variable's offset]_
_Attach $8B95 and the variable's offset to the hex string. \ mov edx,[ebp+the variable's offset]_


248. ...and from these five general-purpose helpers:_


_To attach an hex string and an address to a fragment: \ call or jump_
_Put the address into a number._
_Subtract the fragment's address from the number._
_Subtract the fragment's code's length from the number._
_Subtract the hex string's length from the number._
_Subtract 4 from the number._
_Attach the hex string and the number to the fragment's code._


_To attach a hex string and a number and another hex string to a third hex string:_
_Append the hex string to the third hex string._
_Convert the number to a fourth hex string._
_Append the fourth hex string to the third hex string._
_Append the other hex string to the third hex string._


_To attach a hex string and a number and another number to another hex string:_
_Append the hex string to the other hex string._
_Convert the number to a third hex string._
_Append the third hex string to the other hex string._
_Convert the other number to a fourth hex string._
_Append the fourth hex string to the other hex string._


_To attach a hex string and a number to another hex string:_
_Append the hex string to the other hex string._
_Convert the number to a third hex string._
_Append the third hex string to the other hex string._


_To attach a hex string to another hex string: employ append a string to another string._


249. Getting a routine's address isn't as simple as it sounds since each routine's header can be worded in different ways, and since a routine may explicitly employ a different routine to do its work. So this helper is needed to deal with all that:_


_To get an address given a routine:_
_If the routine's address is not 0, put the routine's address into the address; exit._
_Put -1 into the routine's address._
_Find another routine given the routine's employs moniker and the routine index._
_If the other routine is nil, abort with "I can't find the '" then the routine's employs moniker then "' routine you're trying to employ." and the routine's locus; exit._
_If the other routine's address is -1, abort with "Recursive reference in employ clause." and the routine's locus; exit._
_Get the address given the other routine._
_Put the address into the routine's address._


250. We also need these two guys to help us find where to jump to (in various cases):_

_ _

_To find a fragment given another fragment and a tag:_
_Put the other fragment into the fragment._
_Loop._
_If the fragment is nil, exit._
_If the fragment's tag is the tag, exit._
_Put the fragment's next into the fragment._
_Repeat._


_To find a fragment given another fragment and a tag (backwards):_
_Put the other fragment into the fragment._
_Loop._
_If the fragment is nil, exit._
_If the fragment's tag is the tag, exit._
_Put the fragment's previous into the fragment._
_Repeat._
_ _
_251. And that's it. Transmogrification complete. Run it. In the blue, open the daughter and list her. Then open the listing and jump to the "ROUTINES:" section. This is what you should see there:_


_ROUTINES:_


_/routine/abort from/given/with/using [string]/yes/no/no/no//4/12/00419000/_
_/variable/parameter/yes/string/string/string/string/00000008/no/1/no////_
_/variable/scratch/yes/~S7063//flag/flag/FFFFFFFC/no/1/no////_
_/variable/scratch/yes/~S7064//flag/flag/FFFFFFF8/no/1/no////_
_/variable/scratch/yes/~S7065//abort message/abort message/FFFFFFF4/no/1/no////_
_/fragment/prolog/////00000000/00419000/558BECB9030000006A004975FB/_
_/fragment/loop/////00000000/0041900D//_
_/fragment/load address/compiler/~S7063///00000000/0041900D/C7C2402040008995FCFFFFFF/_
_/fragment/increment/~S7063////00000014/00419019/8185FCFFFFFF14000000/_
_/fragment/push address/~S7063////00000000/00419023/8B95FCFFFFFF52/_
_/fragment/call internal///[flag] is/are set//00000000/0041902A/E899160300/_
_/fragment/jump false/////00000000/0041902F/83F8000F8405000000/_
_/fragment/exit/////00000000/00419038/E94B000000/_
_/fragment/end if/////00000000/0041903D//_
_/fragment/load address/compiler/~S7064///00000000/0041903D/C7C2402040008995F8FFFFFF/_
_/fragment/increment/~S7064////00000014/00419049/8185F8FFFFFF14000000/_
_/fragment/push address/~S7064////00000000/00419053/8B95F8FFFFFF52/_
_/fragment/call internal///set [flag]//00000000/0041905A/E8117B0500/_
_/fragment/load address/compiler/~S7065///00000000/0041905F/C7C2402040008995F4FFFFFF/_
_/fragment/increment/~S7065////00000018/0041906B/8185F4FFFFFF18000000/_
_/fragment/push address/~S7065////00000000/00419075/8B95F4FFFFFF52/_
_/fragment/push address/string////00000000/0041907C/8B950800000052/_
_/fragment/call internal///put [string] in/into/to [string]//00000000/00419083/E8F8130500/_
_/fragment/finalize/////00000000/00419088//_
_/fragment/epilog/////00000000/00419088/8BE55DC204000000/_


Look at all that lovely machine code on the end of each fragment line! (Except for the LOOP, END IF, and FINALIZE lines, of course)._


Next time, we cram everything we've got into a Portable Executable._


---_


Coming down the home stretch now. Time to cram everything into a Portable Executable file and finish up.__

 _

252. Let's begin by grabbing the three ugly types we need for Windows:__

 _

_A dos header is a record with_
_A wyrd called signature,_
_A wyrd called numberofbytesonlastpage,_
_A wyrd called numberofpages,_
_A wyrd called relocuss,_
_A wyrd called sizeofheaderinparagraphs,_
_A wyrd called minimumextraparagraphs,_
_A wyrd called maximumextraparagraphs,_
_A wyrd called initialrelativess,_
_A wyrd called initialsp,_
_A wyrd called initialchecksum,_
_A wyrd called initialip,_
_A wyrd called initialirelativecs,_
_A wyrd called addressofrelocationtableinfile,_
_A wyrd called overlynumber,_
_8 bytes called resveredbytes,_
_A wyrd called oemidentifier,_
_A wyrd called oeminfo,_
_20 bytes called reservedwords, _
_A number called addressofpeheaderinfile.__

 _

_A pe header is a record with_
_A number called signature,_
_A wyrd called machinetype,_
_A wyrd called numberofsections,_
_A number called timestamp,_
_A number called pointertosymboltable,_
_A number called numberofsymbols,_
_A wyrd called sizeofoptionalheaderinbytes,_
_A wyrd called characteristics,_
_\ optional header_
_A wyrd called magicnumber,_
_A byte called majorlinkerversion,_
_A byte called minorlinkerversion,_
_A number called sizeofcodeinfile,_
_A number called sizeofinitializeddatainfile,_
_A number called sizeofuninitializeddatainfile,_
_A number called addressofentrypointinmemory,_
_A number called addressofcodeinmemory,_
_A number called addressofinitializeddatainmemory,_
_A number called imagebase,_
_A number called memoryalignment,_
_A number called filealignment,_
_A wyrd called osmajorversion,_
_A wyrd called osminorversion,_
_A wyrd called usermajorversion,_
_A wyrd called userminorversion,_
_A wyrd called subsystemmajorversion,_
_A wyrd called subsystemminorversion,_
_A number called reserved,_
_A number called sizeofimageinmemory,_
_A number called sizeofallheadersinfile,_
_A number called checksum,_
_A wyrd called subsystem,_
_A wyrd called dllcharacteristics,_
_A number called maxstack,_
_A number called minstack,_
_A number called maxheap,_
_A number called minheap,_
_A number called loaderflags,_
_\ directories (16 address and size pairs)_
_A number called numberofdirectories,_
_8 bytes called directory0,_
_A number called imagedirectoryentryimportaddress,_
_A number called imagedirectoryentryimportsize,_
_112 bytes called directories2-15,_
_A pe section header called idata section,_
_A pe section header called data section,_
_A pe section header called code section.__

 _

_A pe section header is a record with_
_8 bytes called name,_
_A number called sizeinbytes,_
_A number called addressinmemory,_
_A number called sizeinfile,_
_A number called addressinfile,_
_12 bytes called reserved,_
_A number called characteristics.__


253. Then let's delete the abort line altogether, and activate the the three remaining steps:_


_To compile a directory:_
_Compile the directory (start)._
_Compile the directory (load the source files)._
_Compile the directory (scan the source files)._
_Compile the directory (resolve the types)._
_Compile the directory (resolve the globals)._
_Compile the directory (compile the headers of the routines)._
_Compile the directory (calculate lengths and offsets of types)._
_Compile the directory (add the built-in memory routines)._
_Compile the directory (index the routines for utility use)._
_Compile the directory (compile the bodies of the routines)._
_Compile the directory (add and compile the built-in startup routine)._
_Compile the directory (offset parameters and variables)._
_Compile the directory (address)._
_Compile the directory (transmogrify)._
_Compile the directory (link)._
_Compile the directory (write the exe)._
_Compile the directory (stop)._


254. Then let's add this guy back in:_


_To compile a directory (link):_
_If the compiler's abort flag is set, exit._
_Show status "Linking..."._
_Start the linking timer._
_Link._
_Stop the linking timer._


255. And this guy:_


_To link:_
_Round up borough sizes._
_Initialize a dos header._
_Initialize a pe header._
_Fill the compiler's exe with the null byte given the compiler's exe size._
_Blurt the dos header into the compiler's exe._
_Blurt the pe header into the compiler's exe._
_Blurt the imports into the compiler's exe._
_Blurt the globals into the compiler's exe._
_Blurt the literals into the compiler's exe._
_Blurt the routines into the compiler's exe._


256. Now some helpers, starting with this routine:_


_To round up borough sizes:_
_Put the import borough's length into the import borough's size._
_Round the import borough's size up to the nearest multiple of 4096._
_Put the data borough's length into the data borough's size._
_Round the data borough's size up to the nearest multiple of 4096._
_Put the code borough's length into the code borough's size._
_Round the code borough's size up to the nearest multiple of 4096._


_257. And let's try not to barf as we add these 9 guys back in:_


_To initialize a dos header:_
_Put 23117 [$5A4D] into the dos header's signature._
_Put 64 [$0040] into the dos header's addressofrelocationtableinfile._
_Put 256 [$00000100] into the dos header's addressofpeheaderinfile._


_To initialize a pe header:_
_Initialize the pe header (standard header)._
_Initialize the pe header (optional header)._
_Initialize the pe header (version information)._
_Initialize the pe header (directories)._
_Initialize the pe header (import section)._
_Initialize the pe header (data section)._
_Initialize the pe header (code section)._


_To initialize a pe header (code section):_
_Copy bytes from "code  "'s first to the pe header's code section's name's whereabouts for 6._
_Put the code borough's length into the pe header's code section's sizeinbytes._
_Put the code borough's base into the pe header's code section's addressinmemory._
_Put the code borough's length into the pe header's code section's sizeinfile._
_Put the code borough's base into the pe header's code section's addressinfile._
_Put -536870880 [$E0000020] into the pe header's code section's characteristics. \ executable, readable, writable, code object_


_To initialize a pe header (data section):_
_Copy bytes from "data  "'s first to the pe header's data section's name's whereabouts for 6._
_Put the data borough's length into the pe header's data section's sizeinbytes._
_Put the data borough's base into the pe header's data section's addressinmemory._
_Put the data borough's length into the pe header's data section's sizeinfile._
_Put the data borough's base into the pe header's data section's addressinfile._
_Put -1073741760 [$C0000040] into the pe header's data section's characteristics. \ initialized, readable, writable_


_To initialize a pe header (directories):_
_Put 16 [$00000010] into the pe header's numberofdirectories._
_Put the import borough's base into the pe header's imagedirectoryentryimportaddress._
_Put the import borough's length into the pe header's imagedirectoryentryimportsize._


_To initialize a pe header (import section):_
_Copy bytes from "idata "'s first to the pe header's idata section's name's whereabouts for 6._
_Put the import borough's length into the pe header's idata section's sizeinbytes._
_Put the import borough's base into the pe header's idata section's addressinmemory._
_Put the import borough's length into the pe header's idata section's sizeinfile._
_Put the import borough's base into the pe header's idata section's addressinfile._
_Put -1073741760 [$C0000040] into the pe header's idata section's characteristics. \ initialized, readable, writable_


_To initialize a pe header (optional header):_
_Put 267 [$010B] into the pe header's magicnumber._
_Put the code borough's length into the pe header's sizeofcodeinfile._
_Put the data borough's length into the pe header's sizeofinitializeddatainfile._
_Put 0 into the pe header's sizeofuninitializeddatainfile._
_Find a routine given "~initialize before run and run and finalize after run" and the routine index._
_If the routine is nil, abort with "Internal error: could not find the startup routine"; exit._
_Put the routine's address minus the image base into the pe header's addressofentrypointinmemory._
_Put the code borough's base into the pe header's addressofcodeinmemory._
_Put the data borough's base into the pe header's addressofinitializeddatainmemory._
_Put the image base into the pe header's imagebase._
_Put 4096 [$00001000] into the pe header's memoryalignment._
_Put 4096 [$00001000] into the pe header's filealignment._
_Put 0 into the pe header's reserved._
_Put the compiler's exe size into the pe header's sizeofimageinmemory._
_Put 4096 [section base] into the pe header's sizeofallheadersinfile._
_Put 0 into the pe header's checksum._
_Put 0 into the pe header's dllcharacteristics._
_Put 1048576 [$00100000] into the pe header's maxstack._
_Put 16384 [$00004000] into the pe header's minstack._
_Put 1048576 [$00100000] into the pe header's maxheap._
_Put 16384 [$00004000] into the pe header's minheap._
_Put 0 into the pe header's loaderflags._


_To initialize a pe header (standard header):_
_Put 17744 [$00004550] into the pe header's signature._
_Put 332 [$014C] into the pe header's machinetype._
_Put 3 [$0003] into the pe header's numberofsections._
_Put 0 into the pe header's timestamp._
_Put 0 into the pe header's pointertosymboltable._
_Put 0 into the pe header's numberofsymbols._
_Put 224 [$00E0] into the pe header's sizeofoptionalheaderinbytes._
_Put 33166 [$818E] into the pe header's characteristics._


_To initialize a pe header (version information):_
_Put 0 into the pe header's majorlinkerversion._
_Put 0 into the pe header's minorlinkerversion._
_Put 4 [$0004] into the pe header's osmajorversion._
_Put 0 [$0000] into the pe header's osminorversion._
_Put 0 into the pe header's usermajorversion._
_Put 0 into the pe header's userminorversion._
_Put 4 [$0004] into the pe header's subsystemmajorversion._
_Put 0 [$0000] into the pe header's subsystemminorversion._
_Put 2 [$0002] into the pe header's subsystem._


258. We'll also be needing this little function-style routine:_


_To put the compiler's exe size into a size:_
_Put 4096 [section base] into the size._
_Add the import borough's size to the size._
_Add the data borough's size to the size._
_Add the code borough's size to the size._


259. And we'll be needing all 15 of our "blurt" routines, that mostly just copy bytes (quickly) from our various lists to the right spots in our pre-allocated executable buffer in memory._


_To blurt bytes given a pointer and a length and a buffer and an offset:_
_Put the buffer's first plus the offset into another pointer._
_Copy bytes from the pointer to the other pointer for the length._


_To blurt a dos header into a buffer:_
_Blurt bytes given the dos header's whereabouts and the dos header's magnitude and the buffer and 0._


_To blurt some entries into a buffer:_
_Get an entry from the entries._
_If the entry is nil, exit._
_Blurt the entry into the buffer._
_Repeat._


_To blurt an entry into a buffer:_
_Blurt bytes given the entry's name address's whereabouts and 4 and the buffer and the entry's thunk address._
_Put the entry's name address plus 2 into an address._
_Blurt the entry's name into the buffer at the address._


_To blurt a fragment into a buffer:_
_If the fragment's code is blank, exit._
_Put the fragment's address minus the image base into an address._
_Blurt the fragment's code into the buffer at the address._


_To blurt some fragments into a buffer:_
_Get a fragment from the fragments._
_If the fragment is nil, exit._
_Blurt the fragment into the buffer._
_Repeat._


_To blurt an import into a buffer:_
_Blurt bytes given the import's import header's whereabouts and the import's import header's magnitude and the buffer and the import's header address._
_Blurt the import's name into the buffer at the import's name address._
_Blurt the import's entries into the buffer._


_To blurt some imports into a buffer:_
_Get an import from the imports._
_If the import is nil, exit._
_Blurt the import into the buffer._
_Repeat._


_To blurt a pe header into a buffer:_
_Blurt bytes given the pe header's whereabouts and the pe header's magnitude and the buffer and 256._


_To blurt a routine into a buffer:_
_If the routine's compiled flag is not set, exit._
_Blurt the routine's fragments into the buffer._


_To blurt some routines into a buffer:_
_Get a routine from the routines._
_If the routine is nil, exit._
_Blurt the routine into the buffer._
_Repeat._


_To blurt a string into a buffer at an address:_
_Blurt bytes given the string's first and the string's length and the buffer and the address._


_To blurt a variable into a buffer:_
_If the variable's compiled flag is not set, exit._
_If the variable's type can be reduced to "string", blurt the variable into the buffer (as a string); exit._
_Put the variable's address minus the image base into an address._
_Blurt the variable's data into the buffer at the address._


_To blurt a variable into a buffer (as a string):_
_Put the variable's address minus the image base into an address._
_Put the variable's data's length into a length._
_Put the address into another address._
_Add a prototype string's magnitude to the other address._
_Add the image base to the other address._
_Put 0 into the prototype string's first._
_Put -1 into the prototype string's last._
_If the length is not 0, put the other address into the prototype string's first._
_If the length is not 0, put the prototype string's first plus the length minus 1 into the prototype string's last._
_Blurt bytes given the prototype string's whereabouts and the prototype string's magnitude and the buffer and the address._
_Add the prototype string's magnitude to the address._
_Blurt the variable's data into the buffer at the address._


_To blurt some variables into a buffer:_
_Get a variable from the variables._
_If the variable is nil, exit._
_Blurt the variable into the buffer._
_Repeat._


At this point we've got a complete executable sitting in our buffer in memory, and we're done with the "link" step._


260. On to the next step; add this guy back in:_


_To compile a directory (write the exe):_
_If the compiler's abort flag is set, exit._
_Show status "Writing..."._
_Start the writing timer._
_Write the compiler's exe to the compiler's exe path._
_If the i/o error is not blank, abort with the i/o error._
_Stop the writing timer._


261. And finally, this guy:_


_To compile a directory (stop):_
_Stop the compiler's timer._
_Show status ""._


262. almost there; just one little clean-up: At the top of the file there are two comments that got double-commented when we commented out the whole file way back when. Change those double-backslashes to just single ones._


TA DA! We did it! A complete Plain English compiler written entirely in Plain English._


263. Run it. In the blue, open the SON's directory up, and copy his now-complete compiler file to the clipboard (select the file, then hit CTRL-C). Then open the daughter's directory and paste (CTRL-V) to overwrite the genetically defective compiler file she's got now, so she'll also be able to reproduce in the future. Then open up and find this line in the daughter's Desktop file..._


_Put the lightest sky color into the desktop color._


...and change it to read:_


_Put the pink color into the desktop color._


Run it. Congratulations! It's a girl! And you now have three healthy generations of the CAL running. ALT-TAB to see them all in a bunch._


If you want to see the third-generation Portable Executable we just generated, open the daughter's directory, find the ".exe" in there, and open it (as a dump). There she is (a real "binary beauty") starting with the lovely DOS header:_


00000000  4D 5A 00 00 00 00 00 00 00 00 00 00 00 00 00 00  MZ.............._
_00000010  00 00 00 00 00 00 00 00 40 00 00 00 00 00 00 00  ........@......._
_00000020  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................_
_00000030  00 00 00 00 00 00 00 00 00 00 00 00 00 01 00 00  ................_
_00000040  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................_
_00000050  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................_
_00000060  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................_
_00000070  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................_
_00000080  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................_
_00000090  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................_
_000000A0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................_
_000000B0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................_
_000000C0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................_
_000000D0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................_
_000000E0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................_
_000000F0  00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................_


And that's all I have to say about that. Questions?_


Gerry_


