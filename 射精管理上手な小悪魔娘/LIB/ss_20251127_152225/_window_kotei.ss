#Z00


T_LOCK_FLAG = (T_LOCK_FLAG + 1) % 2
syscom.set_global_extra_switch_onoff(1,T_LOCK_FLAG)

return
