
#ifndef PLATFORM_OPSIS
#error "Version mismatch - PLATFORM_OPSIS not defined!"
#endif
const char* board = "opsis";

#ifndef TARGET_BASE
#error "Version mismatch - TARGET_BASE not defined!"
#endif
const char* target = "base";

const char* git_commit = "c5cfc97c2510cc30522252c5251e342aeea7da89";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-760-gc5cfc97-dirty";
const char* git_status =
    "    --\r\n"
   "     ? ../../../../third_party/litepcie\r\n"
   "     ? ../../../../third_party/litesata\r\n"
   "     ? ../../../../third_party/liteusb\r\n"
    "    --\r\n";

