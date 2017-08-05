
#ifndef PLATFORM_ATLYS
#error "Version mismatch - PLATFORM_ATLYS not defined!"
#endif
const char* board = "atlys";

#ifndef TARGET_VIDEO
#error "Version mismatch - TARGET_VIDEO not defined!"
#endif
const char* target = "video";

const char* git_commit = "810fc16784626e91f1c11111e3b1f7f8b1b278fc";
const char* git_branch = "cr-lf";
const char* git_describe = "v0.0.3-740-g810fc16-dirty";
const char* git_status =
    "    --\r\n"
   "     M ../../../../third_party/litepcie\r\n"
   "     M ../../../../third_party/litesata\r\n"
   "     M ../../../../third_party/liteusb\r\n"
    "    --\r\n";

