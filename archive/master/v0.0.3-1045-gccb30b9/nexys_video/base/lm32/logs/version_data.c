
#ifndef PLATFORM_NEXYS_VIDEO
#error "Version mismatch - PLATFORM_NEXYS_VIDEO not defined!"
#endif
const char* board = "nexys_video";

#ifndef TARGET_BASE
#error "Version mismatch - TARGET_BASE not defined!"
#endif
const char* target = "base";

const char* git_commit = "ccb30b98cf86dfd13f619c69ac51f69404e43866";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-1045-gccb30b9-dirty";
const char* git_status =
    "    --\r\n"
   "     ? ../../../../third_party/litepcie\r\n"
   "     ? ../../../../third_party/litesata\r\n"
   "     ? ../../../../third_party/liteusb\r\n"
    "    --\r\n";

