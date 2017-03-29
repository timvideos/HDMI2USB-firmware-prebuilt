
#ifndef PLATFORM_MIMASV2
#error "Version mismatch - PLATFORM_MIMASV2 not defined!"
#endif
const char* board = "mimasv2";

#ifndef TARGET_MEMTEST
#error "Version mismatch - TARGET_MEMTEST not defined!"
#endif
const char* target = "memtest";

const char* git_commit = "65c7dd3c172b1318708ed8acb3173b27db440d78";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-689-g65c7dd3-dirty";
const char* git_status =
    "    --\r\n"
   "     M ../../../../third_party/litepcie\r\n"
   "     M ../../../../third_party/litesata\r\n"
   "     M ../../../../third_party/liteusb\r\n"
    "    --\r\n";

