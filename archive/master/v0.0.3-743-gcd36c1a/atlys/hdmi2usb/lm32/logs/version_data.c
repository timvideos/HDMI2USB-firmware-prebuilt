
#ifndef PLATFORM_ATLYS
#error "Version mismatch - PLATFORM_ATLYS not defined!"
#endif
const char* board = "atlys";

#ifndef TARGET_HDMI2USB
#error "Version mismatch - TARGET_HDMI2USB not defined!"
#endif
const char* target = "hdmi2usb";

const char* git_commit = "cd36c1a8f1feb52186a4dc57542fe59ad54de942";
const char* git_branch = "master";
const char* git_describe = "v0.0.3-743-gcd36c1a-dirty";
const char* git_status =
    "    --\r\n"
   "     M ../../../../third_party/litepcie\r\n"
   "     M ../../../../third_party/litesata\r\n"
   "     M ../../../../third_party/liteusb\r\n"
    "    --\r\n";

