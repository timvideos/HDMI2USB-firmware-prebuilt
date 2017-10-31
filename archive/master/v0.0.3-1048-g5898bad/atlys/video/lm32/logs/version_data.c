
#ifndef PLATFORM_ATLYS
#error "Version mismatch - PLATFORM_ATLYS not defined!"
#endif
const char* board = "atlys";

#ifndef TARGET_VIDEO
#error "Version mismatch - TARGET_VIDEO not defined!"
#endif
const char* target = "video";

const char* git_commit = "5898bad141bd47008542f31f78a605cb0d7fefb4";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-1048-g5898bad-dirty";
const char* git_status =
    "    --\r\n"
   "     ? ../../../../third_party/litepcie\r\n"
   "     ? ../../../../third_party/litesata\r\n"
   "     ? ../../../../third_party/liteusb\r\n"
    "    --\r\n";

