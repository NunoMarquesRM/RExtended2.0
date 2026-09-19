local function is_rock_eraser_target(entity)
	if entity.type == "lightning-attractor" then
		return entity.name == "fulgoran-ruin-attractor"
	end

	if entity.type ~= "simple-entity" then
		return false
	end

	if script.active_mods["alien-biomes"] then
		if
			string.find(entity.name, "huge-rock", 1, true)
			or string.find(entity.name, "big-rock", 1, true)
			or string.find(entity.name, "medium-rock", 1, true)
			or string.find(entity.name, "small-rock", 1, true)
			or string.find(entity.name, "tiny-rock", 1, true)
		then
			return true
		end
	end

	return
		entity.name == "huge-rock"
		or entity.name == "big-rock"
		or entity.name == "big-demolisher-corpse"
		or entity.name == "medium-demolisher-corpse"
		or entity.name == "small-demolisher-corpse"
		or entity.name == "big-sand-rock"
		or entity.name == "huge-volcanic-rock"
		or entity.name == "big-volcanic-rock"
		or entity.name == "vulcanus-chimney-truncated"
		or entity.name == "vulcanus-chimney-short"
		or entity.name == "vulcanus-chimney"
		or entity.name == "vulcanus-chimney-cold"
		or entity.name == "vulcanus-chimney-faded"
		or entity.name == "fulgoran-ruin-vault"
		or entity.name == "fulgoran-ruin-colossal"
		or entity.name == "fulgoran-ruin-huge"
		or entity.name == "fulgoran-ruin-big"
		or entity.name == "fulgoran-ruin-medium"
		or entity.name == "fulgoran-ruin-small"
		or entity.name == "fulgoran-ruin-stonehenge"
		or entity.name == "fulgurite-small"
		or entity.name == "fulgurite"
		or entity.name == "big-fulgora-rock"
		or entity.name == "lithium-iceberg-huge"
		or entity.name == "lithium-iceberg-big"
		or entity.name == "big-stomper-shell"
		or entity.name == "medium-stomper-shell"
		or entity.name == "small-stomper-shell"
end

script.on_event(defines.events.on_player_selected_area, function(event)
	if event.item ~= "tree-rock-eraser" then
		return
	end

	for _, entity in ipairs(event.entities) do
		if entity.type == "tree" or is_rock_eraser_target(entity) then
			entity.destroy()
		end
	end
end)

script.on_event(defines.events.on_player_dropped_item, function(event)
	if event.entity ~= nil then
		if event.entity.stack ~= nil then
			if event.entity.stack.name == "tree-rock-eraser" then
				event.entity.stack.clear()
			end
		end
	end
end)
