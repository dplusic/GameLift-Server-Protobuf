#!/usr/bin/env sh
set -e

rm -rf temp/

mkdir -p temp/csharp

../protoc/protoc-3.3.0/bin/protoc sdk.proto --csharp_out=temp/csharp

diff CSharp/Sdk.cs temp/csharp/Sdk.cs
