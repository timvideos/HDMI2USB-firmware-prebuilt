
#ifndef PLATFORM_OPSIS
#error "Version mismatch - PLATFORM_OPSIS not defined!"
#endif
const char* board = "opsis";

#ifndef TARGET_NET
#error "Version mismatch - TARGET_NET not defined!"
#endif
const char* target = "net";

const char* git_commit = "e653dd538ee930ddc0f37810de24e347cc2483c3";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-1035-ge653dd5-dirty";
const char* git_status =
    "    --\r\n"
   "     ? ../../../../third_party/litepcie\r\n"
   "     ? ../../../../third_party/litesata\r\n"
   "     ? ../../../../third_party/liteusb\r\n"
    "    --\r\n";

