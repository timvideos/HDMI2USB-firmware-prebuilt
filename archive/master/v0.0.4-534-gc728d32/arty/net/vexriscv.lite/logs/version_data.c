
#ifndef PLATFORM_ARTY
#error "Version mismatch - PLATFORM_ARTY not defined!"
#endif
const char* board = "arty";

#ifndef TARGET_NET
#error "Version mismatch - TARGET_NET not defined!"
#endif
const char* target = "net";

const char* git_commit = "c728d32244af525cfff776b13374689a0d7895de";
const char* git_branch = "master";
const char* git_describe = "v0.0.4-534-gc728d32";
const char* git_status =
    "    --\r\n"
   "    ?? ../../../../third_party/zephyr/\r\n"
    "    --\r\n";

