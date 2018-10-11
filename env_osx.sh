#!/bin/sh


export MACOSX_DEPLOYMENT_TARGET=10.9
export CMAKE_OSX_DEPLOYMENT_TARGET=10.9
export QMAKE_MACOSX_DEPLOYMENT_TARGET=10.9

export CMAKE_CXX_FLAGS="-stdlib=libc++"
export CXXFLAGS="-stdlib=libc++"

export CC=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang
export CXX=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++
