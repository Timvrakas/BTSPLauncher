#!/bin/bash
cd "$( dirname "$0" )"
echo "Fetching Latest Minecraft"
wget http://s3.amazonaws.com/MinecraftDownload/minecraft.jar
echo "Enter New Version:"
read ver
java -Xmx200m -cp diff.jar ie.wombat.jbdiff.JBDiff minecraft.jar 1.2.5.jar latest.patch
java -Xmx200m -cp diff.jar ie.wombat.jbdiff.JBDiff 1.2.5.jar $ver.jar $ver.patch
