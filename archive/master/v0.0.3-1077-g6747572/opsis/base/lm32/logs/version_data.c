
#ifndef PLATFORM_OPSIS
#error "Version mismatch - PLATFORM_OPSIS not defined!"
#endif
const char* board = "opsis";

#ifndef TARGET_BASE
#error "Version mismatch - TARGET_BASE not defined!"
#endif
const char* target = "base";

const char* git_commit = "67475724a2eb88de68135b6af6f34164bd322f5b";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-1077-g6747572-dirty";
const char* git_status =
    "    --\r\n"
   "     ? ../../../../third_party/litepcie\r\n"
   "     ? ../../../../third_party/litesata\r\n"
   "     ? ../../../../third_party/liteusb\r\n"
    "    --\r\n";

