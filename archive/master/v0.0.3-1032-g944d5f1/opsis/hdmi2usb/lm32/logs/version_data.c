
#ifndef PLATFORM_OPSIS
#error "Version mismatch - PLATFORM_OPSIS not defined!"
#endif
const char* board = "opsis";

#ifndef TARGET_HDMI2USB
#error "Version mismatch - TARGET_HDMI2USB not defined!"
#endif
const char* target = "hdmi2usb";

const char* git_commit = "944d5f13dbe21a34e474c4cbe2e5a19fd936c26d";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-1032-g944d5f1-dirty";
const char* git_status =
    "    --\r\n"
   "     ? ../../../../third_party/litepcie\r\n"
   "     ? ../../../../third_party/litesata\r\n"
   "     ? ../../../../third_party/liteusb\r\n"
    "    --\r\n";

