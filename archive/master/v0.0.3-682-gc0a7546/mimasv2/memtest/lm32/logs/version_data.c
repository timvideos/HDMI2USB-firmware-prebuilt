
#ifndef PLATFORM_MIMASV2
#error "Version mismatch - PLATFORM_MIMASV2 not defined!"
#endif
const char* board = "mimasv2";

#ifndef TARGET_MEMTEST
#error "Version mismatch - TARGET_MEMTEST not defined!"
#endif
const char* target = "memtest";

const char* git_commit = "c0a754649aaef770c0ec27d09d31eec00210d5e5";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-682-gc0a7546-dirty";
const char* git_status =
    "    --\r\n"
   "     M ../../../../third_party/litepcie\r\n"
   "     M ../../../../third_party/litesata\r\n"
   "     M ../../../../third_party/liteusb\r\n"
    "    --\r\n";

