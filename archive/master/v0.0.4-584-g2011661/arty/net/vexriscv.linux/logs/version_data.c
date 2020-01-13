
#ifndef PLATFORM_ARTY
#error "Version mismatch - PLATFORM_ARTY not defined!"
#endif
const char* board = "arty";

#ifndef TARGET_NET
#error "Version mismatch - TARGET_NET not defined!"
#endif
const char* target = "net";

const char* git_commit = "20116612124b4479515578d01627fc4b182395fc";
const char* git_branch = "master";
const char* git_describe = "v0.0.4-584-g2011661-dirty";
const char* git_status =
    "    --\r\n"
   "     m ../../../../third_party/litex\r\n"
    "    --\r\n";

