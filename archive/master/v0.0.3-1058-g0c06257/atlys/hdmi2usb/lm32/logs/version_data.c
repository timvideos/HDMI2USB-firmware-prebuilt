
#ifndef PLATFORM_ATLYS
#error "Version mismatch - PLATFORM_ATLYS not defined!"
#endif
const char* board = "atlys";

#ifndef TARGET_HDMI2USB
#error "Version mismatch - TARGET_HDMI2USB not defined!"
#endif
const char* target = "hdmi2usb";

const char* git_commit = "0c062574e57dd513165a8188b30a41918e1ff1be";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-1058-g0c06257-dirty";
const char* git_status =
    "    --\r\n"
   "     ? ../../../../third_party/litepcie\r\n"
   "     ? ../../../../third_party/litesata\r\n"
   "     ? ../../../../third_party/liteusb\r\n"
    "    --\r\n";

