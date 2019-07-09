
#ifndef PLATFORM_ARTY
#error "Version mismatch - PLATFORM_ARTY not defined!"
#endif
const char* board = "arty";

#ifndef TARGET_NET
#error "Version mismatch - TARGET_NET not defined!"
#endif
const char* target = "net";

const char* git_commit = "cd662e57b0d5450b605ac26cc4ca368f12d39a9e";
const char* git_branch = "master";
const char* git_describe = "v0.0.4-545-gcd662e5";
const char* git_status =
    "    --\r\n"
   "    ?? ../../../../third_party/zephyr/\r\n"
    "    --\r\n";

