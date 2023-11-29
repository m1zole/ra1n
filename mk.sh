#!/bin/sh
xcodebuild clean build CODE_SIGNING_ALLOWED=NO ONLY_ACTIVE_ARCH=NO PRODUCT_BUNDLE_IDENTIFIER="com.m1zole.ra1n" -sdk iphoneos -scheme ra1n -configuration Debug -derivedDataPath build
rm -rf Payload
mv build/Build/Products/Debug-iphoneos ./Payload
ldid -Sent.xml ./Payload/ra1n.app/ra1n
zip -r ra1n.tipa ./Payload/
