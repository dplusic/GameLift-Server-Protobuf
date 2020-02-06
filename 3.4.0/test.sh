#!/usr/bin/env sh
set -e

rm -rf temp/

mkdir -p temp/cpp
mkdir -p temp/csharp

../protoc/protoc-3.3.0/bin/protoc sdk.proto --cpp_out=temp/cpp --csharp_out=temp/csharp

diff Cpp/sdk.pb.h temp/cpp/sdk.pb.h
diff Cpp/sdk.pb.cc temp/cpp/sdk.pb.cc

diff CSharp/Sdk.cs temp/csharp/Sdk.cs
