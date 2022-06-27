# klang

A simple compiling script for C++ files using the clang++ compiler

Andrew Garcia, 2022

### Setup

place in a folder i.e. $HOME/my_folder/
On Terminal inside this folder:

```
chmod +x klang.sh
```
#### To call script from anywhere:

On Terminal:

```
gedit .bashrc
```

On **.bashrc**:

```
alias klang=`$HOME/my_folder/klang.sh` 
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

