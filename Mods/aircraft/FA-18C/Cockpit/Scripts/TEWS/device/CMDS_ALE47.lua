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
	AUTO_6 = counter()
}
	

programs = {}

-- Default manual presets
-- MAN 1
programs[ProgramNames.MAN_1] = {}
programs[ProgramNames.MAN_1]["chaff"] = 0
programs[ProgramNames.MAN_1]["flare"] = 1
programs[ProgramNames.MAN_1]["intv"]  = 0.1
programs[ProgramNames.MAN_1]["cycle"] = 2

-- MAN 2
programs[ProgramNames.MAN_2] = {}
programs[ProgramNames.MAN_2]["chaff"] = 0
programs[ProgramNames.MAN_2]["flare"] = 1
programs[ProgramNames.MAN_2]["intv"]  = 0.25
programs[ProgramNames.MAN_2]["cycle"] = 4

-- MAN 3
programs[ProgramNames.MAN_3] = {}
programs[ProgramNames.MAN_3]["chaff"] = 2
programs[ProgramNames.MAN_3]["flare"] = 2
programs[ProgramNames.MAN_3]["intv"]  = 1.0
programs[ProgramNames.MAN_3]["cycle"] = 5

-- MAN 4
programs[ProgramNames.MAN_4] = {}
programs[ProgramNames.MAN_4]["chaff"] = 2
programs[ProgramNames.MAN_4]["flare"] = 2
programs[ProgramNames.MAN_4]["intv"]  = 0.5
programs[ProgramNames.MAN_4]["cycle"] = 10

-- MAN 5 - Chaff single
programs[ProgramNames.MAN_5] = {}
programs[ProgramNames.MAN_5]["chaff"] = 1
programs[ProgramNames.MAN_5]["flare"] = 0
programs[ProgramNames.MAN_5]["intv"]  = 1.0
programs[ProgramNames.MAN_5]["cycle"] = 1

-- MAN 6 - Wall Dispense button, Panic
programs[ProgramNames.MAN_6] = {}
programs[ProgramNames.MAN_6]["chaff"] = 2
programs[ProgramNames.MAN_6]["flare"] = 2
programs[ProgramNames.MAN_6]["intv"]  = 0.75
programs[ProgramNames.MAN_6]["cycle"] = 5

-- Auto presets
-- Threat type 1
programs[ProgramNames.AUTO_1] = {}
programs[ProgramNames.AUTO_1]["chaff"] = 1
programs[ProgramNames.AUTO_1]["flare"] = 0
programs[ProgramNames.AUTO_1]["intv"]  = 1.5
programs[ProgramNames.AUTO_1]["cycle"] = 4

-- Threat type 2
programs[ProgramNames.AUTO_2] = {}
programs[ProgramNames.AUTO_2]["chaff"] = 1
programs[ProgramNames.AUTO_2]["flare"] = 0
programs[ProgramNames.AUTO_2]["intv"]  = 1.0
programs[ProgramNames.AUTO_2]["cycle"] = 6

-- Threat type 3
programs[ProgramNames.AUTO_3] = {}
programs[ProgramNames.AUTO_3]["chaff"] = 1
programs[ProgramNames.AUTO_3]["flare"] = 0
programs[ProgramNames.AUTO_3]["intv"]  = 0.5
programs[ProgramNames.AUTO_3]["cycle"] = 8


need_to_be_closed = true -- lua_state  will be closed in post_initialize()
