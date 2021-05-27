gws
glo
fg
make -C build -j9
nvim /tmp/scop/src/main.c 
fg
make -C build -j9
ls
gws
ls
gws
glo
nvim /tmp/scop/src/main.c 
fg
nvim /tmp/scop/src/main.c 
fg
nvim lib/media_discoverer.c 
fg
nvim /tmp/scop/shader.frag 
fg
git grep WaitOnAddress
nvim src/win32/thread.c
fg
make -C build -j9
clear
gws
gti stash
git stash 
git checkout upnp_server 
gws
ls
glo
gri 
glo
gri origin/master
nvim src/interface/interface.c 
git add -p
gws
git commit --amend
nvim /tmp/scop/shader.frag 
fg
nvim /tmp/scop/shader.frag 
gws
gw
gws
gc
git push -f fork
git branch
gws
grc
git push -f fork
git checkout feat/sout-hls 
gw
gws
git stash pop
nvim /tmp/scop/shader.vert 
fg
;s
ls
git stash
git checkout upnp_server 
nvim modules/services_discovery/Makefile.am 
gws
glo
git add -p
gc
git push -f fork
git checkout feat/sout-hls 
gti stash pop
git stash pop
fg
nvim modules/access/file.c 
nvim modules/stream_filter/cache_read.c 
fg
nvim modules/mux/mpeg/ts.c 
fg
nvim lib/media_discoverer.c 
gws
git stash
git checkout upnp_server 
make -C build -j9
cd build
nvim custom_config.sh 
make -j9
./custom_config.sh 
make -j9
./vlc -I upnp
./vlc -H |grep upnp
./vlc --no-upnp-server-warnings
./vlc
cd ..
nvim lib/libvlc.sy
nvim lib/libvlc.sym 
nvim lib/libvlc.sym
nvim build/config.log 
ls
cd ..
ls
cd -
ls
cd contrib/
s
ls
cd src
ls
cd ..
cd build
s
ls
make -j9
make medialibrary library
cd ..
ls
cd ..
ls
find . -name "*.sym"
nvim src/libvlccore.sym 
git grep vlc_ml_entry_point_list_release
ls
glo
cd ..
ls
cd -
cd contrib/build
ls
make -h
make help
make mostlyclean
make install -j9
make clean
make install -j9
cd ..
ls
cd ..
ls
cd build
ls
cd build
ls
./custom_config.sh 
cd ..
s
ls
make -C build
make -C build -j9
make V=1 -C build
ls
cp build/custom_config.sh .
ls
rm -rf build build2
git branch
git rebase origin/master
mkdi build
mkdir build
cd build
ls
cp ../custom_config.sh .
ls
nvim custom_config.sh 
./custom_config.sh 
make -j9
ls
cd ..
ls
cd von
cd contrib/
ls
make 
cd build
ls
make distclean
ls
ls ..
make install -j9
ls
;s
ls
../bootstrap -h
../bootstrap 
make lis
make list
nvim 
ls
cat disables.txt 
../bootstrap --disable-a52 --disable-aribb24 --disable-bitstream --disable-faad2 --disable-gettext --disable-glslang --disable-gme --disable-goom --disable-libebur128 --disable-live555 --disable-medialibrary --disable-mpcdec --disable-mysofa --disable-nfs --disable-nvcodec --disable-protobuf --disable-rav1e --disable-rnnoise --disable-sidplay2 --disable-smb2 --enable-medialibrary --enable-upnp
nvim disables.txt 
cat disables.txt 
../bootstrap --disable-a52 --disable-aribb24 --disable-bitstream --disable-faad2 --disable-gettext --disable-glslang --disable-gme --disable-goom --disable-libebur128 --disable-live555 --disable-mpcdec --disable-mysofa --disable-nfs --disable-nvcodec --disable-protobuf --disable-rav1e --disable-rnnoise --disable-sidplay2 --disable-smb2 --enable-medialibrary --enable-upnp
make list
make install -j9
cd ..
ls
cd ..
cd build
ls
./custom_config.sh 
make -j9
make V=1
glo
nvim ../modules/misc/Makefile.am 
nvim ../contrib/x86_64-redhat-linux/lib/pkgconfig/medialibrary.pc 
make -j9
make V=1
la
./custom_config.sh 
make -j9
ls
nvim ../contrib/x86_64-redhat-linux/lib/pkgconfig/medialibrary.pc 
nvim custom_config.sh 
ls
./custom_config.sh 
fg
nvim custom_config.sh 
./custom_config.sh 
make -j9
fg
nvim custom_config.sh 
ls
nvim config.log 
git fetch origin/master
git fetch origin
git rebase origin
git rebase origin/master
glo
ls
./custom_config.sh 
cd .
cd ..
ls
cd contrib/
ls
cd build
make mostlyclean
make -j9
ls
cd ../build
ls
cd ..
ls
cd ..
ls
cd build
ls
./custom_config.sh 
make -j9
tig
tig ../contrib
ls
tig ../contrib
nvim ./custom_config.sh 
nvim config.log 
make V=1
l
ls
nvim config.log 
nvim custom_config.sh 
./custom_config.sh 
make -j9
nvim custom_config.sh 
./custom_config.sh 
make -j9
sudo dnf update
nvim config.log 
sudo dnf update -y
nvim ../contrib/x86_64-redhat-linux/lib/pkgconfig/medialibrary.pc 
nvim ../contrib/src/medialibrary/rules.mak 
nvim ./custom_config.sh 
ls
./custom_config.sh 
nvim custom_config.sh 
./custom_config.sh 
fg
ls $ABC
ABC=/tmp ls $ABC
ABC="/tmp" ls $ABC
nvim custom_config.sh 
./custom_config.sh 
fg
./custom_config.sh 
make -j9
toolbox enter dev
ls
cd
cd workspaces/dev/
ls
cd vulkano-
cd vulkano-init/
ls
nvim src/main.rs 
nvim Cargo.toml
ls
fg
nvim Cargo.toml 
nvim Cargo.
nvim Cargo.toml 
man 3 fstat
fg
cargo build
fg
nvim src/main.rs 
fg
cargo build
fg
nvim Cargo.toml 
ls
cargo build
fg
cargo build
fg
ls
cd /tno
cd /tmp
ls
rustc test.rs
clear; rustc test.rs
flatpak update
rpm-ostree status
rpm-ostree update
ls
reboot
ls
gcc -c lib.c -pthread -o lib.o
ar rc lib.o -o libtg.a
ar rc libtg.a lib.o
ls
nm libtg.a 
gcc main.c -L . -ltg -o tg
gcc main.c -L . -ltg -pthread -o tg
gcc main.c -pthread -L . -ltg -o tg
ls
./tg
echo $?
ip a
d
ls
cd ../
ls
cd ..
ls
git clone git@code.videolan.org:videolan/medialibrary.git
cd medialibrary/
ls
nvim meson.build 
ls
nvim meson_options.txt 
meson -h
meson help
git grep static
ls
meson --default-library static build
meson --default-library static -Dlibvlc=disabled
meson --default-library static -Dlibvlc=disabled build
meson --default-library static -Dlibvlc=disabled build --reconfigure
cd build
meson compile
ls
ls src/
nvim test.cpp
ls
cd ../
s
ls
cd src/
ls
cd ..
ls
cd medialibrary/
ls
cd test/samples/
ls
clang++ -pthread main.cpp -L ../../build/src/ -lmedialibrary
fg
dnf search rapidjson
sudo dnf install rapidjson-devel
y
sudo dnf install rapidjson-devel -y
clang++ -pthread main.cpp -L ../../build/src/ -lmedialibrary
ls
cd ..
clang++ -pthread samples/main.cpp -L ../../build/src/ -lmedialibrary
clang++ -pthread samples/main.cpp -L ../../build/src/ -lmedialibrary -I.
clang++ -pthread samples/main.cpp -L ../../build/src/ -lmedialibrary -I. -I ../
ls ..
find --name="Charsets.h"
find --name="Charsets.h" .
find -name="Charsets.h" .
find -name "Charsets.h" 
find -name="Charsets.h"
find ../ -name="Charsets.h"
ls
ls ../src/utils/
clang++ -pthread samples/main.cpp -L ../../build/src/ -lmedialibrary -I. -I ../src/
clang++ -pthread samples/main.cpp -L ../../build/src/ -lmedialibrary -I. -I ../src/ -I ../include/
fg
ls
cd 
ls
cd workspaces/vlc
ls
git clone git@code.videolan.org:videolan/vlc-3.0.git
cd vlc-3.0/
ls
nvim modules/services_discovery/upnp.cpp 
ls
tig  modules/services_discovery/upnp.cpp 
fg
rpm-ostree install VirtualBox.x86_64
poweroff
ls
toolbox enter vlc
rpm-ostree update
ls
reboot
cd workspaces/vlc/vlc/
l
ls
cd build
ls
nvim custom_config.sh 
make
cd ../contrib/build/medialibrary/
ls
nvin ../../src/medialibrary/rules.mak 
nvim ../../src/medialibrary/rules.mak 
tig  ../../src/medialibrary/
git checkout master
git reset origin/master
git reset origin/master --hard
git branch
cd ../..
ls
cd ..
cd build
ls
nvim custom_config.sh 
./custom_config.sh 
make -j9
git status
nvim ../contrib/src/fribidi/meson_no_bins.patch
rm ../contrib/src/fribidi/meson_no_bins.patch
l
ls
cd ../contrib/
l
ls
cd build
make mostlyclean
make -j9
cd ../build
ls
cd ..
ls
cd ..
ls
cd build/
l
ls
make -j9
./custom_config.sh 
make -j9
nvim ../contrib/x86_64-redhat-linux/lib/pkgconfig/medialibrary.pc 
cd ..
ls
cd contrib/
ls
cd build
maks mostlyclean
make mostlyclean
ls
make fetch
ls
cd ../..
ls
cd ..
ls
git clone git@code.videolan.org:videolan/vlc.git
git clone git@code.videolan.org:videolan/vlc.git vlc2
cd vlc2/
ls
./bootstrap 
mkdir build
cd build
ls
readelf -h
readelf -h /bin/ls
fg
ls
cp ../../vlc/build/custom_config.sh 
ls
cp ../../vlc/build/custom_config.sh .
ls
cd ..
ls
cd contrib/
ls
mkdir build
cd build
../bootstrap 
../bootstrap --disable-a52 --disable-aribb24 --disable-bitstream --disable-faad2 --disable-gettext --disable-glslang --disable-gme --disable-goom --disable-libebur128 --disable-live555 --disable-mpcdec --disable-mysofa --disable-nfs --disable-nvcodec --disable-protobuf --disable-rav1e --disable-rnnoise --disable-sidplay2 --disable-smb2 --enable-medialibrary --enable-upnp
make -j9
cd ../
ls
cd ...
cd ..
ls
cd build
nvim custom_config.sh 
ls /var/home/asenat/workspaces/vlc/vlc2/contrib/x86_64-redhat-linux/
pwd
fg
ls
./custom_config.sh 
make -j9
dnf search pthread
sudo dnf install compat-libpthread-nonshared.x86_64
make -j9
nvim config.log 
nvim custom_config.sh 
./custom_config.sh 
make -j9
make V=1
g++  -fPIC -DPIC -shared -nostdlib /usr/lib/gcc/x86_64-redhat-linux/11/../../../../lib64/crti.o /usr/lib/gcc/x86_64-redhat-linux/11/crtbeginS.o  misc/medialibrary/.libs/libmedialibrary_plugin_la-medialibrary.o misc/medialibrary/.libs/libmedialibrary_plugin_la-MetadataExtractor.o misc/medialibrary/.libs/libmedialibrary_plugin_la-entities.o misc/medialibrary/.libs/libmedialibrary_plugin_la-Thumbnailer.o misc/medialibrary/fs/.libs/libmedialibrary_plugin_la-device.o misc/medialibrary/fs/.libs/libmedialibrary_plugin_la-directory.o misc/medialibrary/fs/.libs/libmedialibrary_plugin_la-file.o misc/medialibrary/fs/.libs/libmedialibrary_plugin_la-fs.o misc/medialibrary/fs/.libs/libmedialibrary_plugin_la-devicelister.o misc/medialibrary/fs/.libs/libmedialibrary_plugin_la-util.o   -Wl,-rpath -Wl,/var/home/asenat/workspaces/vlc/vlc2/build/src/.libs -Wl,-rpath -Wl,/usr/local/lib ../compat/.libs/libcompat.a -L/var/home/asenat/workspaces/vlc/vlc2/contrib/x86_64-redhat-linux/lib ../src/.libs/libvlccore.so -lidn -ldl -ldbus-1 -lmedialibrary -lsqlite3 -L/usr/lib/gcc/x86_64-redhat-linux/11 -L/usr/lib/gcc/x86_64-redhat-linux/11/../../../../lib64 -L/lib/../lib64 -L/usr/lib/../lib64 -L/usr/lib/gcc/x86_64-redhat-linux/11/../../.. -lstdc++ -lm -lc -lgcc_s /usr/lib/gcc/x86_64-redhat-linux/11/crtendS.o /usr/lib/gcc/x86_64-redhat-linux/11/../../../../lib64/crtn.o  -pthread -g -O2 -fstack-protector-strong -Wl,-z -Wl,defs -pthread   -pthread -Wl,-soname -Wl,libmedialibrary_plugin.so -Wl,-retain-symbols-file -Wl,.libs/libmedialibrary_plugin.exp -o .libs/libmedialibrary_plugin.so
mv -f ".libs/libmedialibrary_plugin.expT" ".libs/libmedialibrary_plugin.exp"; g++  -fPIC -DPIC -shared -nostdlib /usr/lib/gcc/x86_64-redhat-linux/11/../../../../lib64/crti.o /usr/lib/gcc/x86_64-redhat-linux/11/crtbeginS.o  misc/medialibrary/.libs/libmedialibrary_plugin_la-medialibrary.o misc/medialibrary/.libs/libmedialibrary_plugin_la-MetadataExtractor.o misc/medialibrary/.libs/libmedialibrary_plugin_la-entities.o misc/medialibrary/.libs/libmedialibrary_plugin_la-Thumbnailer.o misc/medialibrary/fs/.libs/libmedialibrary_plugin_la-device.o misc/medialibrary/fs/.libs/libmedialibrary_plugin_la-directory.o misc/medialibrary/fs/.libs/libmedialibrary_plugin_la-file.o misc/medialibrary/fs/.libs/libmedialibrary_plugin_la-fs.o misc/medialibrary/fs/.libs/libmedialibrary_plugin_la-devicelister.o misc/medialibrary/fs/.libs/libmedialibrary_plugin_la-util.o   -Wl,-rpath -Wl,/var/home/asenat/workspaces/vlc/vlc2/build/src/.libs -Wl,-rpath -Wl,/usr/local/lib ../compat/.libs/libcompat.a -L/var/home/asenat/workspaces/vlc/vlc2/contrib/x86_64-redhat-linux/lib ../src/.libs/libvlccore.so -lidn -ldl -ldbus-1 -lmedialibrary -lsqlite3 -L/usr/lib/gcc/x86_64-redhat-linux/11 -L/usr/lib/gcc/x86_64-redhat-linux/11/../../../../lib64 -L/lib/../lib64 -L/usr/lib/../lib64 -L/usr/lib/gcc/x86_64-redhat-linux/11/../../.. -lstdc++ -lm -lc -lgcc_s /usr/lib/gcc/x86_64-redhat-linux/11/crtendS.o /usr/lib/gcc/x86_64-redhat-linux/11/../../../../lib64/crtn.o  -pthread -g -O2 -fstack-protector-strong -Wl,-z -Wl,defs -pthread   -pthread -Wl,-soname -Wl,libmedialibrary_plugin.so -Wl,-retain-symbols-file -Wl,.libs/libmedialibrary_plugin.exp -o .libs/libmedialibrary_plugin.so
mv -f ".libs/libmedialibrary_plugin.expT" ".libs/libmedialibrary_plugin.exp"; g++  -fPIC -DPIC -shared -nostdlib /usr/lib/gcc/x86_64-redhat-linux/11/../../../../lib64/crti.o /usr/lib/gcc/x86_64-redhat-linux/11/crtbeginS.o  misc/medialibrary/.libs/libmedialibrary_plugin_la-medialibrary.o misc/medialibrary/.libs/libmedialibrary_plugin_la-MetadataExtractor.o misc/medialibrary/.libs/libmedialibrary_plugin_la-entities.o misc/medialibrary/.libs/libmedialibrary_plugin_la-Thumbnailer.o misc/medialibrary/fs/.libs/libmedialibrary_plugin_la-device.o misc/medialibrary/fs/.libs/libmedialibrary_plugin_la-directory.o misc/medialibrary/fs/.libs/libmedialibrary_plugin_la-file.o misc/medialibrary/fs/.libs/libmedialibrary_plugin_la-fs.o misc/medialibrary/fs/.libs/libmedialibrary_plugin_la-devicelister.o misc/medialibrary/fs/.libs/libmedialibrary_plugin_la-util.o   -Wl,-rpath -Wl,/var/home/asenat/workspaces/vlc/vlc2/build/src/.libs -Wl,-rpath -Wl,/usr/local/lib ../compat/.libs/libcompat.a -L/var/home/asenat/workspaces/vlc/vlc2/contrib/x86_64-redhat-linux/lib ../src/.libs/libvlccore.so -lidn -ldl -ldbus-1 -lmedialibrary -lsqlite3 -L/usr/lib/gcc/x86_64-redhat-linux/11 -L/usr/lib/gcc/x86_64-redhat-linux/11/../../../../lib64 -L/lib/../lib64 -L/usr/lib/../lib64 -L/usr/lib/gcc/x86_64-redhat-linux/11/../../.. -lstdc++ -lm -lc -lgcc_s /usr/lib/gcc/x86_64-redhat-linux/11/crtendS.o /usr/lib/gcc/x86_64-redhat-linux/11/../../../../lib64/crtn.o  -pthread -g -O2 -fstack-protector-strong -Wl,-z -Wl,defs -pthread   -pthread -Wl,-soname -Wl,libmedialibrary_plugin.so -Wl,-retain-symbols-file -Wl,.libs/libmedialibrary_plugin.exp -o .libs/libmedialibrary_plugin.soclear
clear
make V=1
ls
nvim test.sh
chmod u+x test.sh
ls
./test.sh 
nvim test.sh 
ls ..
fg
./test
./test.sh
fg
nvim test.sh 
./test.sh
nvim test.sh 
./test.sh
fg
ls
./test.sh 
tig ../contrib/src/medialibrary/
fg
nvim test.sh 
ls
./test.sh 
fg
./test.sh 
fg
nvim test.sh 
./test.sh
nvim test.sh 
cd /tmp
ls
mkdir tg
cd tg
ls
nvim lib.c
ls
cd -
cd ~/workspaces/vlc/vlc2/build
ls
./test.sh 
nvim test.sh 
ls
./test.sh 
make V=1
nvim test.sh
./test.sh
gws
cd ..
ls
git remote add ls
git remote add git@code.videolan.org:asenat/vlc.git
git remote add fork git@code.videolan.org:asenat/vlc.git
ls
l
ls
git checkout -b build
ls
git add build/custom_config.sh 
git add build/custom_config.sh -f
cd build
ls
nvim custom_config.sh 
ls
fg
ls
./custom_config.sh 
fg
nvim custom_config.sh 
./custom_config.sh 
ls
git add custom_config.sh 
git add custom_config.sh  -f
gws
glo
gc
gws
git push fork
ls
make
ls
nvim ../contrib/src/medialibrary/rules.mak 
git grep MESON
cd ..
git grep MESON
fg
nvim ../contrib/src/medialibrary/rules.mak 
ls
nvim contrib/src/medialibrary/rules.mak 
ls
gws
git log
gws
ls
clear
ls
git branch
cd ..
ls
cd vlc
ls
git branch
git checkout upnp_server 
ls
cd bbuil
cd build
ls
cd ..
cd contrib/build
ls
make -j9
ls
cd ..
nvim x86_64-redhat-linux/lib/pkgconfig/medialibrary.pc 
ls
cd ..
ls
cd build
ls
nvim ./custom_config.sh 
./custom_config.sh 
ls
make -j9
nvim ../../vlc2/build/test.sh 
ls
./vlc -I upnp
./vlc --no-upnp-server-warnings
./vlc -I upnp --no-upnp-server-warnings
ls
cd ~/Videos/
ls
for i in {1..29}; do cp Walking\ The\ Most\ Dangerous\ Path\ In\ Britain.mp4 "copy $i.mp4"; done
ls
cd -
./vlc
./vlc -I upnp --no-upnp-server-warnings
cd -
ls
mv copy\ 12.mp4 tom.mp4
ls
cd -
./vlc
./vlc -I upnp --no-upnp-server-warnings
ls
cd -
ls
mv tom.mp4 Tron.mp4
cd -
./vlc
./vlc -I upnp --no-upnp-server-warnings
ls
cd ..
nvim modules/services_discovery/upnp.cpp 
nvim lib/media_discoverer.c 
fg
git grep services_discovery_item_added
fg
git grep libvlc_media_new_from_input_item
fg
git grep "struct libvlc_media_t
git grep "struct libvlc_media_t"
fg
ls
gws
git checkout feat/sout-hls 
git checkout feat/sout-hls  -f
gws
gti stash pop
git stash pop
gws
ls
make -C build -9j
make -C build -j9
glo
git rebase --onto origin/master 107b315e50
git stash
git rebase --onto origin/master 107b315e50
glo
gws
tig modules/access_output/livehttp.c
nvim modules/access_output/livehttp.c
gws
git add modules/access_output/livehttp.c 
gws
git rebase --continue
gws
glo
gws
nvim modules/access_output/livehttp.c
git checkout --keep-ours modules/access_output/livehttp.c
git checkout --keep-ours modules/access_output/livehttp.c
git checkout --ours modules/access_output/livehttp.c
nvim modules/access_output/livehttp.c
gws
git checkout --ours modules/access_output/livehttp.c
git checkout --their modules/access_output/livehttp.c
nvim modules/access_output/livehttp.c
git add modules/access_output/livehttp.c
git rebase --continue
make -C build -j9
git stash pop
make -C build -j9
nvim build/custom_config.sh 
cd build
./custom_config.sh 
cd ..
ls
nvim modules/access_output/livehttp.c 
fg
ls
gws
fg
ls
nvim hls-vlc.sh 
ls
./hls-vlc.sh 
fg
nvim hls-vlc.sh 
build/vlc -I dummy
gg "stale plugins cache"
nvim src/modules/bank.c
build/vlc
ps
psaux
ps aux
ps aux | grep vlc
ls
./hls-vlc.sh 
fg
cat hls-vlc.sh 
gdb --arg build/vlc -I dummy "/home/asenat/Videos/Walking The Most Dangerous Path In Britain.mp4" -v --sout='#std{access=livehttp{seglen=10,delsegs=true,numsegs=5,index=/tmp/mystream.m3u8,index-url=http://MYPUBLIC_SERVER/mystream-########.ts},mux=ts{use-key-frames},dst=/tmp/mystream-########.ts}'
fg
l
ls
fg
make -C build -j9
./hls-vlc.sh 
./hls-vlc.sh -vv
./hls-vlc.sh -vvv
fg
gdb --arg build/vlc -I dummy "/home/asenat/Videos/Walking The Most Dangerous Path In Britain.mp4" -v --sout='#std{access=livehttp{seglen=10,delsegs=true,numsegs=5,index=/tmp/mystream.m3u8,index-url=http://MYPUBLIC_SERVER/mystream-########.ts},mux=ts{use-key-frames},dst=/tmp/mystream-########.ts}'
fg
ls
make -C build -j9
./hls-vlc.sh 
nvim hls-vlc.sh 
build/vlc -H | grep stop
fg
ls
./hls-vlc.sh ./hls-vlc.sh 
cat hls-vlc.sh 
gdb --arg build/vlc -I dummy "/home/asenat/Videos/Walking The Most Dangerous Path In Britain.mp4" -v --sout='#std{access=livehttp{seglen=10,delsegs=true,numsegs=5,index=/tmp/mystream.m3u8,index-url=http://MYPUBLIC_SERVER/mystream-########.ts},mux=ts{use-key-frames},dst=/tmp/mystream-########.ts}' --stop-time 1
fg
make -C build -j9
gdb --arg build/vlc -I dummy "/home/asenat/Videos/Walking The Most Dangerous Path In Britain.mp4" -v --sout='#std{access=livehttp{seglen=10,delsegs=true,numsegs=5,index=/tmp/mystream.m3u8,index-url=http://MYPUBLIC_SERVER/mystream-########.ts},mux=ts{use-key-frames},dst=/tmp/mystream-########.ts}' --stop-time 1
./hls-vlc.sh 
nvim hls-vlc.sh 
./hls-vlc.sh 
fg
ls
./hls-vlc.sh 
fg
make -C build -j9
ls
./hls-vlc.sh 
fg
nvim hls-vlc.sh 
./hls-vlc.sh 
nvim /tmp/mystream.m3u8 
fg
make -C build -j9
./hls-vlc.sh 
nvim hls-vlc.sh 
ip a
fg
tmux
sudo dnf install tmux
tmux 
fg
make -C build
ls
tmux a
fg
ip a
fg
nvim hls-vlc.sh 
fg
gg vlc_http_Ho
fg
gg Urlcatch
fg
gg UrlCatch
fg
gg UrlNew
nvim src/network/httpd.c
fg
make -C -build -j9
ls
make -C build -j9
ls
tmux a
fg
make -C build -j9
tmux a
fg
make -C build -j9
tmux 
tmux a
fg
make -C build -j9
tmux a
nvim
fg
gg getHttpStreamPath
fg
tmux a
fg
tmux a
ls
nvim src/network/httpd.c 
tmux a
fg
tmux a
gg "Connection Refused"
gg "Connection refused"
fg
tmux 
tmux a
ls
gg "Connection refused"
tmux a
gg "connection error"
tmux a
nvim modules/access/live555.cpp
nvim src/network/stream.c
tmux a
fg
nvim hls-vlc.sh 
tmux a
fg
tmux a
cat hls-vlc.sh 
tmux a
fg
make -C build -j9
tmux a
fg
tmux a
fg
tmux a
fg
make -C build -j9
fg
tmux a
f
fg
./hls-vlc.sh 
tmux a
fg
make -C build j9
make -C build -j9
tmux a
fg
tmux a
fg
make -C build -j9
tmux a
ls
nvim hls-vlc.sh 
tmux a
fg
make -C build -j9
tmux a
fg
make -C build -j9
tmux a
fg
make -C build -j9
tmux a
fg
make -j9
make -C build -j9
ls
tmux a
fg
make -C -j9
make -C build -j9
ls
tmu a
tmux a
fg
ls
nvim hls-vlc.sh 
make -C build
tmux a
fg
make -C build -j9
ls
tmux a
fg
make -C build -j9
ls
tig modules/services_discovery/upnp.cpp
nvim modules/services_discovery/upnp.cpp 
tig modules/services_discovery/upnp.cpp
fg
tmux a
fg
tmux a
fg
make -C build -j9
gf
fg
make -C build -j9
tmux a
fg
python
fg
make -j9 -C build
tmux a
fg
ls
make -C build -j9
tmux a
fg
git diff
fg
tmux a
fg
tmux a
fg
tmux a
f
fg
make -C build -j9
tmux a
fg
gi diff
git diff
fg
make -C build -j9
nvim compile_commands.json 
tmux a
fg
tmux 
tmux a
fg
make -C build -j9
gws
ls
tmux a
f
fg
dnf search virtual
ls
./hls-vlc.sh 
fg
./hls-vlc.sh 
cat hls-vlc.sh 
gdb --arg build/vlc -I dummy "/home/asenat/Videos/Walking The Most Dangerous Path In Britain.mp4" -v --sout='#std{access=livehttp{seglen=10,delsegs=true,numsegs=5,index=/tmp/mystream.m3u8,index-url=http://localhost:8080/mystream-########.ts},mux=ts{use-key-frames},dst=/tmp/mystream-########.ts}' --stop-time 1 vlc://quit -vvv
clear
gdb --arg build/vlc -I dummy "/home/asenat/Videos/Walking The Most Dangerous Path In Britain.mp4" -v --sout='#std{access=livehttp{seglen=10,delsegs=true,numsegs=5,index=/tmp/mystream.m3u8,index-url=http://localhost:8080/mystream-########.ts},mux=ts{use-key-frames},dst=/tmp/mystream-########.ts}' --stop-time 1 vlc://quit -vvv
make -C build -j9
gdb --arg build/vlc -I dummy "/home/asenat/Videos/Walking The Most Dangerous Path In Britain.mp4" -v --sout='#std{access=livehttp{seglen=10,delsegs=true,numsegs=5,index=/tmp/mystream.m3u8,index-url=http://localhost:8080/mystream-########.ts},mux=ts{use-key-frames},dst=/tmp/mystream-########.ts}' --stop-time 1 vlc://quit -vvv
./hls-vlc.sh 
nvim hls-vlc.sh 
ls
./hls-vlc.sh 
./hls-vlc.sh
./hls-vlc.sh 
make -j9
make -C build -j9
./hls-vlc.sh 
nvim hls-vlc.sh 
./hls-vlc.sh 
