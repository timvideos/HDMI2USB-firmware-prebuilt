
#ifndef PLATFORM_MINISPARTAN6
#error "Version mismatch - PLATFORM_MINISPARTAN6 not defined!"
#endif
const char* board = "minispartan6";

#ifndef TARGET_BASE
#error "Version mismatch - TARGET_BASE not defined!"
#endif
const char* target = "base";

const char* git_commit = "28b8f2e3d4028df68a35c3d1271a5ec8dcd2e1b2";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-756-g28b8f2e-dirty";
const char* git_status =
    "    --\r\n"
   "     ? ../../../../third_party/litepcie\r\n"
   "     ? ../../../../third_party/litesata\r\n"
   "     ? ../../../../third_party/liteusb\r\n"
    "    --\r\n";

