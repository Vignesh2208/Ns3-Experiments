#!/bin/bash


echo 'Running 1000 LXCs HTTP2'
cd /home/kronos/ns-allinone-3.29/ns-3.29/examples/vt_experiments/common/startup_cmds/simple_p2p_network && python generate_lxc_cmds.py --nServers=50 --nLXCsperSwitch=100 --nSwitches=10 --isHTTP2=1
cd /home/kronos/ns-allinone-3.29/ns-3.29 && sudo ./waf --run "examples/kronos_experiments/simple_p2p_network --enableKronos=true --runTimeSecs=20 --nSimHostsperSwitch=1 --nSwitches=10 --nLXCsperSwitch=100 --logFolder=p2p_http2_100LXCs_per_switch_20secs"



#echo 'Running 60 LXCs HTTP2'
#cd /home/kronos/ns-allinone-3.29/ns-3.29/examples/vt_experiments/common/startup_cmds/simple_p2p_network && python generate_lxc_cmds.py --nServers=2 --nLXCsperSwitch=10 --nSwitches=6 --isHTTP2=True
#cd /home/kronos/ns-allinone-3.29/ns-3.29 && sudo ./waf --run "examples/kronos_experiments/simple_p2p_network --enableKronos=true --runTimeSecs=20 --nSimHostsperSwitch=400 --nSwitches=6 --nLXCsperSwitch=10 --logFolder=p2p_http2_10LXCs_400_hosts_per_switch_20secs"

#echo 'Running 120 LXCs HTTP2'
#cd /home/kronos/ns-allinone-3.29/ns-3.29/examples/vt_experiments/common/startup_cmds/simple_p2p_network && python generate_lxc_cmds.py --nServers=2 --nLXCsperSwitch=20 --nSwitches=6 --isHTTP2=True
#cd /home/kronos/ns-allinone-3.29/ns-3.29 && sudo ./waf --run "examples/kronos_experiments/simple_p2p_network --enableKronos=true --runTimeSecs=20 --nSimHostsperSwitch=400 --nSwitches=6 --nLXCsperSwitch=20 --logFolder=p2p_http2_20LXCs_400_hosts_per_switch_20secs"


#echo 'Running 12 LXCs HTTP11'
#cd /home/kronos/ns-allinone-3.29/ns-3.29/examples/vt_experiments/common/startup_cmds/simple_p2p_network && python generate_lxc_cmds.py --nServers=2 --nLXCsperSwitch=2 --nSwitches=6 --isHTTP2=False
#cd /home/kronos/ns-allinone-3.29/ns-3.29 && sudo ./waf --run "examples/kronos_experiments/simple_p2p_network --enableKronos=true --runTimeSecs=20 --nSimHostsperSwitch=400 --nSwitches=6 --nLXCsperSwitch=2 --logFolder=p2p_http11_2LXCs_400_hosts_per_switch_20secs"

#echo 'Running 60 LXCs HTTP11'
#cd /home/kronos/ns-allinone-3.29/ns-3.29/examples/vt_experiments/common/startup_cmds/simple_p2p_network && python generate_lxc_cmds.py --nServers=2 --nLXCsperSwitch=10 --nSwitches=6 --isHTTP2=False
#cd /home/kronos/ns-allinone-3.29/ns-3.29 && sudo ./waf --run "examples/kronos_experiments/simple_p2p_network --enableKronos=true --runTimeSecs=20 --nSimHostsperSwitch=400 --nSwitches=6 --nLXCsperSwitch=10 --logFolder=p2p_http11_10LXCs_400_hosts_per_switch_20secs"

#echo 'Running 120 LXCs HTTP11'
#cd /home/kronos/ns-allinone-3.29/ns-3.29/examples/vt_experiments/common/startup_cmds/simple_p2p_network && python generate_lxc_cmds.py --nServers=2 --nLXCsperSwitch=20 --nSwitches=6 --isHTTP2=False
#cd /home/kronos/ns-allinone-3.29/ns-3.29 && sudo ./waf --run "examples/kronos_experiments/simple_p2p_network --enableKronos=true --runTimeSecs=20 --nSimHostsperSwitch=400 --nSwitches=6 --nLXCsperSwitch=20 --logFolder=p2p_http11_20LXCs_400_hosts_per_switch_20secs"
