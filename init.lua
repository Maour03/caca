minetest.register_node("caca:caca_block", {
    description = "Poop block",
    tiles = {"caca_block.png"},
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("caca:caca_brick", {
    description = "Shitty cobble",
    tiles = {"caca_bricks.png"},
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})


minetest.register_craft({
	output = '"caca:caca_paper" 1',
	recipe = {
		{'default:paper', '', ''},
		{'', '', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = '"caca:caca_block" 1',
	recipe = {
		{'', '', ''},
		{'', '', ''},
		{'caca:caca_paper', 'caca:caca_paper', 'caca:caca_paper'},
	}
})

minetest.register_tool("caca:caca_pickaxe", {
    description = "Shitty Pickaxe",
	inventory_image = "caca_pick.png",
tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			cracky={times={[2]=2.00, [3]=1.20}, uses=15, maxlevel=1}
		}
        },
})

minetest.register_craft({
	output = '"caca:caca_pickaxe" 1',
	recipe = {
		{'caca:caca_block', 'caca:caca_block', 'caca:caca_block'},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})
minetest.register_tool("caca:caca_shovel", {
	description = "Shitty shovel",
	inventory_image = "caca_shovel.png",
	wield_image = "caca_shovel.png^[transformR90",
	tool_capabilities = {
		max_drop_level=0,
		groupcaps={
			crumbly={times={[1]=3.00, [2]=0.80, [3]=0.50}, uses=15, maxlevel=1}
		}
	},
})

minetest.register_craft({
	output = '"caca:caca_shovel" 1',
	recipe = {
		{'', 'caca:caca_block', ''},
		{'', 'default:stick', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_tool("caca:caca_sword", {
	description = "Shitty sword",
	inventory_image = "caca_sword.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			fleshy={times={[2]=1.10, [3]=0.60}, uses=10, maxlevel=1},
			snappy={times={[2]=1.00, [3]=0.50}, uses=10, maxlevel=1},
			choppy={times={[3]=1.00}, uses=25, maxlevel=0}
		}
	}
})

minetest.register_craft({
	output = '"caca:caca_sword" 1',
	recipe = {
		{'', 'caca:caca_block', ''},
		{'', 'caca:caca_block', ''},
		{'', 'default:stick', ''},
	}
})

minetest.register_craftitem("caca:caca_chunk", {
	description = "Poop chunk",
	inventory_image = "caca_chunk.png",
	on_use = minetest.item_eat(1),
})

minetest.register_craft({
	output = '"caca:caca_chunk" 9',
	recipe = {
		{'', '', ''},
		{'', 'caca:caca_block', ''},
		{'', '', ''},
	}
})

minetest.register_craft({
	output = '"caca:caca_block" 1',
	recipe = {
		{'caca:caca_chunk', 'caca:caca_chunk', 'caca:caca_chunk'},
		{'caca:caca_chunk', 'caca:caca_chunk', 'caca:caca_chunk'},
		{'caca:caca_chunk', 'caca:caca_chunk', 'caca:caca_chunk'},
	}
})

minetest.register_craftitem("caca:caca_glass", {
	description = "Glass of poop",
	inventory_image = "caca_glass.png",
	on_use = minetest.item_eat(8),
})

minetest.register_craft({
	output = '"caca:caca_glass" 1',
	recipe = {
		{'', '', ''},
		{'', 'caca:caca_block', ''},
		{'', 'vessels:drinking_glass', ''},
	}
})

minetest.register_craftitem("caca:caca_paper", {
	description = "Shitty paper",
	inventory_image = "caca_paper.png",
})

minetest.register_node("caca:caca_flowing", {
	description = "Flowing",
	inventory_image = minetest.inventorycube("default_lava.png"),
	drawtype = "flowingliquid",
	tiles = {"default_lava.png"},
	special_tiles = {
		{
			image="caca_flowing_animated.png",
			backface_culling=false,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.3}
		},
		{
			image="caca_flowing_animated.png",
			backface_culling=true,
			animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.3}
		},
	},
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	liquidtype = "flowing",
	liquid_alternative_flowing = "caca:caca_flowing",
	liquid_alternative_source = "caca:caca_source",
	liquid_viscosity = LAVA_VISC,
--	post_effect_color = {a=192, r=255, g=64, b=0},
	groups = {liquid=2, puts_out_fire=1},
})

minetest.register_node("caca:caca_source", {
	description = "Source",
	inventory_image = minetest.inventorycube("default_lava.png"),
	drawtype = "liquid",
	tiles = {
		{name="caca_source_animated.png", animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}}
	},
	special_tiles = {
		-- New-style lava source material (mostly unused)
		{name="default_lava.png", backface_culling=false},
	},
	paramtype = "light",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	drop = "",
	liquidtype = "source",
	liquid_alternative_flowing = "caca:caca_flowing",
	liquid_alternative_source = "caca:caca_source",
	liquid_viscosity = LAVA_VISC,
--	post_effect_color = {a=192, r=255, g=64, b=0},
	groups = {liquid=2, puts_out_fire=1},
})

minetest.register_craft({
	output = '"caca:caca_brick" 4',
	recipe = {
		{'', '', ''},
		{'caca:caca_block', 'caca:caca_block', ''},
		{'caca:caca_block', 'caca:caca_block', ''},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "caca:caca_ingot",
	recipe = "caca:caca_block",
})

minetest.register_craftitem("caca:caca_ingot", {
	description = "Shitty ingot",
	inventory_image = "caca_ingot.png",
})

minetest.register_node("caca:caca_cobble", {
    description = "Poop cobble",
    tiles = {"caca_brick.png"},
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_node("caca:caca_bricks", {
    description = "Poop Bricks",
    tiles = {"caca_brickk.png"},
    groups = {snappy=1,choppy=2,oddly_breakable_by_hand=2},
})

minetest.register_craft({
	output = '"caca:caca_bricks" 4',
	recipe = {
		{'', '', ''},
		{'caca:caca_ingot', 'caca:caca_ingot', ''},
		{'caca:caca_ingot', 'caca:caca_ingot', ''},
	}
})

minetest.register_craft({
	output = '"caca:caca_cobble" 4',
	recipe = {
		{'', '', ''},
		{'', 'caca:caca_ingot', ''},
		{'caca:caca_ingot', 'caca:caca_ingot', 'caca:caca ingot' },
	}
})
