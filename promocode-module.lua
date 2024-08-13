--made this 30 mins before go to sleep

local module = {}
local codes = {
	-- put ur codes here example: 10visits = "10visits"
	example = "one";
	example2 = "two"'
}

function module:Redeem(code: string)
	local codeFunction = function(index: string, var: string)
		if var:lower() == code:lower() then
			if index == codes.example then --put ur code name here ex: codes.10visits - returns as "10visits"
				--put ur code here
			elseif index == codes.example2 then --put ur code name here ex: codes.10visits - returns as "10visits"
				--put ur code here
			end
			return true 
		end
		return false
	end

	for index, value in pairs(codes) do
		if codeFunction(index, value) then
			return
		end
	end
end

return module
