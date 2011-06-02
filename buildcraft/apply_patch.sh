if [ ! -f ../src_base ]; then
   cp -r ../src ../src_base
   patch -p0 < minecraft.patch
   cd ../src/minecraft_server/net/minecraft/src
   unix2dos *
   cd ../server
   unix2dos *
else
   echo "patch already applied - remove src and src_base and decompile again"
fi
