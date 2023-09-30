@echo OFF

set name=%1
echo Building %name%

set cpp2=src\%name%.cpp2
set cpp=build\%name%.cpp
set exe=build\%name%.exe
set obj=build\%name%.obj
set inc=cppfront\include

build\cppfront %cpp2% -o %cpp%
cl %cpp% -std:c++20 -EHsc /I%inc% /Fe%exe% /Fo%obj%
