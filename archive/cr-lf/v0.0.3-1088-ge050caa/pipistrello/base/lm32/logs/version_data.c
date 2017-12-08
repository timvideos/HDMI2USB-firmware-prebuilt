
#ifndef PLATFORM_PIPISTRELLO
#error "Version mismatch - PLATFORM_PIPISTRELLO not defined!"
#endif
const char* board = "pipistrello";

#ifndef TARGET_BASE
#error "Version mismatch - TARGET_BASE not defined!"
#endif
const char* target = "base";

const char* git_commit = "e050caa950bb1e3d8eef5b6b4236b0b386d517d9";
const char* git_branch = "cr-lf";
const char* git_describe = "v0.0.3-1088-ge050caa-dirty";
const char* git_status =
    "    --\r\n"
   "     ? ../../../../third_party/litepcie\r\n"
   "     ? ../../../../third_party/litesata\r\n"
   "     ? ../../../../third_party/liteusb\r\n"
    "    --\r\n";

