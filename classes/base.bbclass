inherit logging

addtask fetch
python do_fetch() {
    bb.note("BASE_DO_FETCH")
}

addtask unpack after do_fetch
python do_unpack() {
    bb.note("BASE_DO_UNPACK")
}

addtask patch after do_unpack
do_patch() {
    bbnote "BASE_DO_PATCH"
}

addtask configure after do_patch
do_configure() {
    bbnote "BASE_DO_CONFIGURE"
}

addtask make after do_configure
do_make() {
    bbnote "BASE_DO_MAKE"
}

addtask install after do_make
do_install() {
    bbnote "BASE_DO_INSTALL"
}

addtask build after do_install
do_build() {
    bbnote "DO_BUILD"
}

EXPORT_FUNCTIONS do_fetch do_unpack do_patch do_configure do_make do_install do_build
