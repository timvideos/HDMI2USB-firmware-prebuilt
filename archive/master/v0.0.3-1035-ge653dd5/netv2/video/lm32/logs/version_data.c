
#ifndef PLATFORM_NETV2
#error "Version mismatch - PLATFORM_NETV2 not defined!"
#endif
const char* board = "netv2";

#ifndef TARGET_VIDEO
#error "Version mismatch - TARGET_VIDEO not defined!"
#endif
const char* target = "video";

const char* git_commit = "e653dd538ee930ddc0f37810de24e347cc2483c3";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-1035-ge653dd5-dirty";
const char* git_status =
    "    --\r\n"
   "     ? ../../../../third_party/litepcie\r\n"
   "     ? ../../../../third_party/litesata\r\n"
   "     ? ../../../../third_party/liteusb\r\n"
    "    --\r\n";

