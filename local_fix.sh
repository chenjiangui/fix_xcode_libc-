sudo cp -r -f iPhone-Device/. /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk/usr/lib/
sudo cp -r -f iPhone-Simulator-tbd/. /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator.sdk/usr/lib/
#xcode10
oldXcodePath='/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/CoreSimulator/Profiles/Runtimes/iOS.simruntime/Contents/Resources/RuntimeRoot/usr/lib/'
if [ -d $oldXcodePath ]; then
sudo cp -r -f iPhone-Simulator-dyib/. $oldXcodePath
fi

#xcode11及以后
newXcodePath='/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Library/Developer/CoreSimulator/Profiles/Runtimes/iOS.simruntime/Contents/Resources/RuntimeRoot/usr/lib'

if [ -d $newXcodePath ]; then
sudo cp -r -f iPhone-Simulator-dyib/. $newXcodePath
fi

echo '请重启Xcode'