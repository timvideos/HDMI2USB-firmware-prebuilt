
#ifndef PLATFORM_PIPISTRELLO
#error "Version mismatch - PLATFORM_PIPISTRELLO not defined!"
#endif
const char* board = "pipistrello";

#ifndef TARGET_BASE
#error "Version mismatch - TARGET_BASE not defined!"
#endif
const char* target = "base";

const char* git_commit = "bbede92f7f56ba8d462db0ae4b05179e566ba1eb";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-1054-gbbede92-dirty";
const char* git_status =
    "    --\r\n"
   "     ? ../../../../third_party/litepcie\r\n"
   "     ? ../../../../third_party/litesata\r\n"
   "     ? ../../../../third_party/liteusb\r\n"
    "    --\r\n";

