local gettext = require("i_18n")
_ = gettext.translate

local count = 0
local function counter()
	count = count + 1
	return count
end

ProgramNames =
{
	MAN_1 = counter(),
	MAN_2 = counter(),
	MAN_3 = counter(),
	MAN_4 = counter(),
	MAN_5 = counter(),
	MAN_6 = counter(),
	AUTO_1 = counter(),
	AUTO_2 = counter(),
	AUTO_3 = counter(),
	AUTO_4 = counter(),
	AUTO_5 = counter(),
	AUTO_6 = counter(),
}

programs = {}

-- Default manual presets
-- MAN 1
programs[ProgramNames.MAN_1] = {
	chaff = {
		burstQty 	= 1,
		burstIntv	= 0.02,
		salvoQty	= 1,
		salvoIntv	= 1.0,
	},
	flare = {
		burstQty	= 0,
		burstIntv	= 0.02,
		salvoQty	= 0,
		salvoIntv	= 1.0,
	},
}

-- MAN 2
programs[ProgramNames.MAN_2] = {
	chaff = {
		burstQty 	= 1,
		burstIntv	= 0.02,
		salvoQty	= 10,
		salvoIntv	= 0.5,
	},
	flare = {
		burstQty	= 1,
		burstIntv	= 0.02,
		salvoQty	= 10,
		salvoIntv	= 0.5,
	},
}

-- MAN 3
programs[ProgramNames.MAN_3] = {
	chaff = {
		burstQty 	= 2,
		burstIntv	= 0.1,
		salvoQty	= 5,
		salvoIntv	= 1.0,
	},
	flare = {
		burstQty	= 2,
		burstIntv	= 0.1,
		salvoQty	= 5,
		salvoIntv	= 1.0,
	},
}

-- MAN 4
programs[ProgramNames.MAN_4] = {
	chaff = {
		burstQty 	= 2,
		burstIntv	= 0.1,
		salvoQty	= 5,
		salvoIntv	= 0.5,
	},
	flare = {
		burstQty	= 2,
		burstIntv	= 0.1,
		salvoQty	= 5,
		salvoIntv	= 0.5,
	},
}

-- MAN 5 - Wall Dispense button, Panic
programs[ProgramNames.MAN_5] = {
	chaff = {
		burstQty 	= 0,
		burstIntv	= 0.05,
		salvoQty	= 0,
		salvoIntv	= 0.75,
	},
	flare = {
		burstQty	= 1,
		burstIntv	= 0.05,
		salvoQty	= 1,
		salvoIntv	= 0.75,
	},
}

-- MAN 6 - BYPASS mode
programs[ProgramNames.MAN_6] = {
	chaff = {
		burstQty 	= 1,
		burstIntv	= 0.02,
		salvoQty	= 1,
		salvoIntv	= 0.5,
	},
	flare = {
		burstQty	= 1,
		burstIntv	= 0.02,
		salvoQty	= 1,
		salvoIntv	= 0.5,
	},
}

-- Auto presets
-- Old generation radar SAM
programs[ProgramNames.AUTO_1] = {
	chaff = {
		burstQty 	= 1,
		burstIntv	= 0.02,
		salvoQty	= 1,
		salvoIntv	= 0.5,
	},
	flare = {
		burstQty	= 1,
		burstIntv	= 0.02,
		salvoQty	= 1,
		salvoIntv	= 0.5,
	},
}

-- Current generation radar SAM
programs[ProgramNames.AUTO_2] = {
	chaff = {
		burstQty 	= 1,
		burstIntv	= 0.02,
		salvoQty	= 1,
		salvoIntv	= 0.5,
	},
	flare = {
		burstQty	= 1,
		burstIntv	= 0.02,
		salvoQty	= 1,
		salvoIntv	= 0.5,
	},
}

-- IR SAM
programs[ProgramNames.AUTO_3] = {
	chaff = {
		burstQty 	= 1,
		burstIntv	= 0.02,
		salvoQty	= 1,
		salvoIntv	= 0.5,
	},
	flare = {
		burstQty	= 1,
		burstIntv	= 0.02,
		salvoQty	= 1,
		salvoIntv	= 0.5,
	},
}

AN_ALE_47_FAILURE_TOTAL = 0
AN_ALE_47_FAILURE_CONTAINER	= 1

Damage = {	{Failure = AN_ALE_47_FAILURE_TOTAL, Failure_name = "AN_ALE_47_FAILURE_TOTAL", Failure_editor_name = _("AN/ALE-47 total failure"),  Element = 10, Integrity_Treshold = 0.5, work_time_to_fail_probability = 0.5, work_time_to_fail = 3600*300},
			{Failure = AN_ALE_47_FAILURE_CONTAINER, Failure_name = "AN_ALE_47_FAILURE_CONTAINER", Failure_editor_name = _("AN/ALE-47 container failure"),  Element = 23, Integrity_Treshold = 0.75, work_time_to_fail_probability = 0.5, work_time_to_fail = 3600*300},
}

need_to_be_closed = true -- lua_state  will be closed in post_initialize()