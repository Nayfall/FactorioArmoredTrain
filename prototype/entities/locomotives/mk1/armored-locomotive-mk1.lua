local armoredLocomotiveMk1 = ArmoredTrain.mk1.locomotives.armoredLocomotiveMk1

------------
--- ITEM ---
------------

data:extend
({
	{
		type = "item",
		name = armoredLocomotiveMk1.name,
		icon = "__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/armored-locomotive-mk1-icon.png",
		icon_size = 64,
		icon_mipmaps = 4,
		subgroup = "transport",
		order = "a[train-system]-l[locomotive_mk1_00]",
		place_result = armoredLocomotiveMk1.name,
		stack_size = armoredLocomotiveMk1.stackSize
	}
})

--------------
--- RECIPE ---
--------------

data:extend
({
	{
		type = "recipe",
		name = armoredLocomotiveMk1.name,
		enabled = false,
		ingredients = armoredLocomotiveMk1.recipe.ingredients,
		result = armoredLocomotiveMk1.name
	}
})

--------------
--- ENTITY ---
--------------

-- Deep copy base data and create new one with custom parametres
local l_armored_locomotive_mk1 = util.table.deepcopy(data.raw["locomotive"]["locomotive"])

-- Name
l_armored_locomotive_mk1.name = armoredLocomotiveMk1.name

-- Icon
l_armored_locomotive_mk1.icon =
"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/armored-locomotive-mk1-icon.png"
l_armored_locomotive_mk1.icon_size = 64
l_armored_locomotive_mk1.icon_mipmaps = 4

-- Mining
l_armored_locomotive_mk1.minable =
{
	mining_time = 0.5,
	result = armoredLocomotiveMk1.name
}

-- Hp
l_armored_locomotive_mk1.max_health = armoredLocomotiveMk1.health;

-- Weight
l_armored_locomotive_mk1.weight = armoredLocomotiveMk1.weight;

-- Max power
l_armored_locomotive_mk1.max_power = armoredLocomotiveMk1.maxPower

-- Resistances
l_armored_locomotive_mk1.resistances = armoredLocomotiveMk1.resistances

-- Burner
l_armored_locomotive_mk1.burner =
{
	fuel_categories = { "chemical" },
	effectivity = armoredLocomotiveMk1.burner.effectivity,
	fuel_inventory_size = armoredLocomotiveMk1.burner.fuelInventorySize,
	smoke =
	{
		{
			name = "train-smoke",
			deviation = { 0.3, 0.3 },
			frequency = 100,
			position = { 0, 0 },
			starting_frame = 0,
			starting_frame_deviation = 60,
			height = 2,
			height_deviation = 0.5,
			starting_vertical_speed = 0.2,
			starting_vertical_speed_deviation = 0.1,
		}
	}
}

-- Animation
l_armored_locomotive_mk1.pictures =
{
	layers =
	{
		{
			priority = "very-low",
			width = 238,
			height = 230,
			direction_count = 256,
			allow_low_quality_rotation = true,
			filenames =
			{
				"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/sprites/armored-locomotive-mk1-01.png",
				"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/sprites/armored-locomotive-mk1-02.png",
				"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/sprites/armored-locomotive-mk1-03.png",
				"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/sprites/armored-locomotive-mk1-04.png",
				"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/sprites/armored-locomotive-mk1-05.png",
				"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/sprites/armored-locomotive-mk1-06.png",
				"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/sprites/armored-locomotive-mk1-07.png",
				"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/sprites/armored-locomotive-mk1-08.png"
			},
			line_length = 32,
			lines_per_file = 1,
			shift = { -0.1, -0.5 },
		},
		{
			priority = "very-low",
			flags = { "mask" },
			width = 238,
			height = 230,
			direction_count = 256,
			allow_low_quality_rotation = true,
			filenames =
			{
				"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/sprites/armored-locomotive-mk1-mask-01.png",
				"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/sprites/armored-locomotive-mk1-mask-02.png",
				"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/sprites/armored-locomotive-mk1-mask-03.png",
				"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/sprites/armored-locomotive-mk1-mask-04.png",
				"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/sprites/armored-locomotive-mk1-mask-05.png",
				"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/sprites/armored-locomotive-mk1-mask-06.png",
				"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/sprites/armored-locomotive-mk1-mask-07.png",
				"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/sprites/armored-locomotive-mk1-mask-08.png"
			},
			line_length = 32,
			lines_per_file = 1,
			shift = { -0.1, -0.5 },
			apply_runtime_tint = true
		},
		-- Shadow
		{
			priority = "very-low",
			flags = { "shadow" },
			width = 253,
			height = 212,
			direction_count = 256,
			draw_as_shadow = true,
			allow_low_quality_rotation = true,
			filenames =
			{
				"__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-01.png",
				"__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-02.png",
				"__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-03.png",
				"__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-04.png",
				"__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-05.png",
				"__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-06.png",
				"__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-07.png",
				"__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-08.png"
			},
			line_length = 4,
			lines_per_file = 8,
			shift = { 0.5, 0.3 }
		}
	}
}

-- Minimap representation
l_armored_locomotive_mk1.minimap_representation =
{
	filename =
	"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/armored-locomotive-mk1-minimap-representation.png",
	flags = { "icon" },
	size = { 20, 40 },
	scale = 0.5
}
l_armored_locomotive_mk1.selected_minimap_representation =
{
	filename =
	"__Armored-train_Nayfall_Fixes__/assets/armored-locomotive-mk1/armored-locomotive-mk1-selected-minimap-representation.png",
	flags = { "icon" },
	size = { 20, 40 },
	scale = 0.5
}

-- Write result
data:extend
({
	l_armored_locomotive_mk1
})