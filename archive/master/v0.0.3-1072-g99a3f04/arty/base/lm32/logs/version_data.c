
#ifndef PLATFORM_ARTY
#error "Version mismatch - PLATFORM_ARTY not defined!"
#endif
const char* board = "arty";

#ifndef TARGET_BASE
#error "Version mismatch - TARGET_BASE not defined!"
#endif
const char* target = "base";

const char* git_commit = "99a3f04a4ebd864c879bacfeff660c43118b8aff";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-1072-g99a3f04-dirty";
const char* git_status =
    "    --\r\n"
   "     ? ../../../../third_party/litepcie\r\n"
   "     ? ../../../../third_party/litesata\r\n"
   "     ? ../../../../third_party/liteusb\r\n"
    "    --\r\n";

