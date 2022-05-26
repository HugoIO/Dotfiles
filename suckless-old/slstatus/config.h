// This is shaolin's dwm config file feel free to use/copy/take anything from it (-_-メ)

/* interval between updates (in ms) */
const unsigned int interval = 1000;

/* text to show if no value can be retrieved */
static const char unknown_str[] = "n/a";

/* maximum output string length */
#define MAXLEN 2048

static const struct arg args[] = {
	/* function format          argument */
	{ run_command, "[Vol:%s] ", "pamixer --get-volume" },
//	{ run_command, "[Up:%s] ", "ifconfig eno1 | grep 'TX packets' | awk {'print $6 $7'}" },
//	{ run_command, "[Down:%s] ", "ifconfig eno1 | grep 'RX packets' | awk {'print $6 $7'}" },
//	{ netspeed_tx, "[Up:%s] ", "eno1" },
//	{ netspeed_rx, "[Down:%s] ", "eno1" },
	{ cpu_perc, "[Cpu:%s%] ", NULL },
//	{ battery_perc, "[BAT:%s%] ", "BAT0" },
	{ wifi_perc, "[Wifi:%s] ", "wlp0s26u1u4" },
	{ ram_used, "[Ram:%s] ", NULL },
	{ datetime, "[%s] ",           "%I:%M" },
	{ datetime, "[%s] ",		"%F" },
};
