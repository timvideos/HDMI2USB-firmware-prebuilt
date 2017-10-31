
#ifndef PLATFORM_NETV2
#error "Version mismatch - PLATFORM_NETV2 not defined!"
#endif
const char* board = "netv2";

#ifndef TARGET_VIDEO
#error "Version mismatch - TARGET_VIDEO not defined!"
#endif
const char* target = "video";

const char* git_commit = "ffac4025ce62b29a897ef51fd9452ed83a387c73";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-1050-gffac402-dirty";
const char* git_status =
    "    --\r\n"
   "     ? ../../../../third_party/litepcie\r\n"
   "     ? ../../../../third_party/litesata\r\n"
   "     ? ../../../../third_party/liteusb\r\n"
    "    --\r\n";

