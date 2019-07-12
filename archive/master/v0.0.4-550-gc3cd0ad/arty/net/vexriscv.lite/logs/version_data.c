
#ifndef PLATFORM_ARTY
#error "Version mismatch - PLATFORM_ARTY not defined!"
#endif
const char* board = "arty";

#ifndef TARGET_NET
#error "Version mismatch - TARGET_NET not defined!"
#endif
const char* target = "net";

const char* git_commit = "c3cd0ad331c88aa65d0e175f103af25bb7e433ad";
const char* git_branch = "master";
const char* git_describe = "v0.0.4-550-gc3cd0ad";
const char* git_status =
    "    --\r\n"
   "    ?? ../../../../third_party/zephyr/\r\n"
    "    --\r\n";

