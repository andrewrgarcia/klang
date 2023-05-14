# klang

![](8-bit_crab__dall-e_generated.png)


<img src="DALLEcrab.svg" width="200" height="200">
  
  
  
A set of shell `.sh` programs to compile C++ files using the clang++ compiler

**klang.sh** - The standard C++ --> executable compiler script

**klangle.sh** - compiler script with OpenGL flags (graphics / rendering)

Andrew Garcia, 2022



### Setup

place in a folder i.e. `$HOME/my_folder/`
On Terminal inside this folder:

```
chmod +x klang.sh
chmod +x klangle.sh

```
#### To call scripts from anywhere:

On Terminal:

```
gedit .bashrc
```

On **.bashrc**:

```
alias klang=`$HOME/my_folder/klang.sh` 
alias klangle=`$HOME/my_folder/klangle.sh` 
```
On Terminal:
```
$source ~/.bashrc
```

### Usage:

```ruby
#single .cpp input
klang your_file.cpp

#multiple .cpp inputs (Usually the case for .cpp program with multiple .cpp dependencies)
klang main_file.cpp dependency1.cpp dependency2.cpp dependency3.cpp
```
Running compiled program:
```
./main_file.k
```

