
#ifndef PLATFORM_OPSIS
#error "Version mismatch - PLATFORM_OPSIS not defined!"
#endif
const char* board = "opsis";

#ifndef TARGET_ENCODER
#error "Version mismatch - TARGET_ENCODER not defined!"
#endif
const char* target = "encoder";

const char* git_commit = "2c43d00cf4e8870e1bd20b7cf693fe232c51d2d3";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-779-g2c43d00-dirty";
const char* git_status =
    "    --\r\n"
   "     ? ../../../../third_party/litepcie\r\n"
   "     ? ../../../../third_party/litesata\r\n"
   "     ? ../../../../third_party/liteusb\r\n"
    "    --\r\n";

