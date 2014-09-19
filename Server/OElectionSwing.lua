function calswing()
	local rs = rnvote - rovote.nat
	if rs < 0 then
		rsn = true
		rs = rs / -1
	elseif rs >= 0 then
		rsn = false
		end
	local ds = dnvote - dovote.nat 
	if ds < 0 then
		dsn = true
		ds = ds / -1
	elseif rs >= 0 then
		dsn = false
		end
	return rs,ds,rsn,dsn
end
function election(i)
	if r.sn == false then
		rfv[i] = rovote[i] + r.s
	elseif r.sn == true then
		rfv[i] = rovote[i] - r.s
		end
	if d.sn == false then
		dfv[i] = dovote[i] + d.s
	elseif d.sn == true then
		dfv[i] = dovote[i] - d.s
		end
	if rfv[i] > 100 then
		rfv[i] = 100
	elseif rfv[i] < 0 then
		rfv[i] = 0
		end
	if dfv[i] > 100 then
		dfv[i] = 100
	elseif dfv[i] < 0 then
		dfv[i] = 0
		end
end
function results(i)
	print("District "..i..":")
		if rfv[i] > dfv[i] then
			print("GOP: "..rfv[i].."%*")
			print("Dem: "..dfv[i].."%")
		elseif rfv[i] < dfv[i] then
			print("GOP: "..rfv[i].."%")
			print("Dem: "..dfv[i].."%*")
		end
end
arg = {...}
if #arg ~= 2 then
	error("Usage: {program name} (GOP Vote) (Dem Vote)",50)
	end
rnvote = arg[1]
dnvote = arg[2]
r = {}
rfv = {}
rovote = { nat=47.6,97.9,63.7,64,74,64.9,71.2,24.1 }
d = {}
dfv = {}
dovote = { nat=48.8,1.1,36.2,35.8,25.9,34.9,28.6,75.8 }
r.s,d.s,r.sn,d.sn = calswing() 
for ab=1,7 do
	election(ab)
	results(ab)
	end
