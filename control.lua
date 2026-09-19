script.on_event(defines.events.on_player_selected_area, function(event)
	local player = game.players[event.player_index]
	local item = event.item
	local entities = event.entities
	
	if item == "tree-eraser" then
		for _,entity in ipairs(entities) do
			if entity.type == "tree" then
				entity.destroy()
			end
		end
	end
end)

script.on_event(defines.events.on_player_dropped_item, function(event)
	if event.entity ~= nil then
		if event.entity.stack ~= nil then
			if event.entity.stack.name == "tree-eraser" then
				event.entity.stack.clear()
			end
		end
	end
end)