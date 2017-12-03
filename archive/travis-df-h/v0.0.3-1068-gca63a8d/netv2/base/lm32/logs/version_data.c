
#ifndef PLATFORM_NETV2
#error "Version mismatch - PLATFORM_NETV2 not defined!"
#endif
const char* board = "netv2";

#ifndef TARGET_BASE
#error "Version mismatch - TARGET_BASE not defined!"
#endif
const char* target = "base";

const char* git_commit = "ca63a8d697633b5407e5fdf54ee8a47514d8a5be";
const char* git_branch = "travis-df-h";
const char* git_describe = "v0.0.3-1068-gca63a8d-dirty";
const char* git_status =
    "    --\r\n"
   "     ? ../../../../third_party/litepcie\r\n"
   "     ? ../../../../third_party/litesata\r\n"
   "     ? ../../../../third_party/liteusb\r\n"
    "    --\r\n";

