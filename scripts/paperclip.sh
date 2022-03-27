#!/usr/bin/env bash

# Copied from https://github.com/PaperMC/Paper/blob/d54ce6c17fb7a35238d6b9f734d30a4289886773/scripts/paperclip.sh
# License from Paper applies to this file

(
set -e
basedir="$(cd "$1" && pwd -P)"
workdir="$basedir/Dionysus/Paper/work"
localworkdir="$basedir/Dionysus/work"
mcver=$(cat "$workdir/BuildData/info.json" | grep minecraftVersion | cut -d '"' -f 4)
paperjar="$basedir/NeonPaper-Server/target/neonpaper-$mcver.jar"
vanillajar="$workdir/Minecraft/$mcver/$mcver.jar"

(
    cd "$localworkdir/Paperclip"
    mvn clean package "-Dmcver=$mcver" "-Dpaperjar=$paperjar" "-Dvanillajar=$vanillajar"
)
cp "$localworkdir/Paperclip/assembly/target/paperclip-${mcver}.jar" "$basedir/neonpaper-paperclip.jar"

echo ""
echo "Build success!"
echo "Copied final jar to $(cd "$basedir" && pwd -P)/neonpaper-paperclip.jar"
) || exit 1
