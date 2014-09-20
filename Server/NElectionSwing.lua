function check()
	if d.s == dovote.nat then
		d.s = 100
		end
	if r.s == rovote.nat then
		r.s = 100
		end
	end
function calswing()
	r.s = rnvote - rovote.nat
	if r.s < 0 then
		rsn = true
		r.s = r.s / -1
	elseif r.s >= 0 then
		rsn = false
		end
	d.s = dnvote - dovote.nat 
	if d.s < 0 then
		dsn = true
		d.s = d.s / -1
	elseif r.s >= 0 then
		dsn = false
		end
	check()
	return rsn,dsn
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
function winner(i)
	if rfv[i] > dfv[i] then
		nresult[i] = "R"
	elseif dfv[i] > rfv[i] then
		nresult[i] = "D"
		end
	end
function state(i)
	need = false
	if i > 0 and i <= 7 then
		s = "Alabama"
		su = 0
		if i == 1 then
			need = true
			end
	elseif i >= 8 and i <= 8 then
		s = "Alaska"
		su = 7
		if i == 8 then
			need = true
			end
	elseif i >= 9 and i <= 17 then
		s = "Arizona"
		su = 8
		if i == 9 then
			need = true
			end
	elseif i >= 18 and i <= 21 then
		s = "Arkansas"
		su = 17
		if i == 18 then
			need = true
			end
		end
	return s,su,need
end
function results(i)
	winner(i)
	if oresult[i] == nresult[i] then
		if nresult[i] == "R" then
			fr = "GOP Hold"
			ric  = ric + 1
		elseif nresult[i] == "D" then
			fr = "Dem Hold"
			dic  = dic + 1
			end
	elseif oresult[i] ~= nresult[i] then
		if nresult[i] == "R" then
			fr = "GOP Gain+"
			ric  = ric + 1
		elseif nresult[i] == "D" then
			fr = "Dem Gain+"
			dic  = dic + 1
			end
		end
	st,subt,need = state(i)
	if need == true then
		print(st..":")
		end
	i = i - subt
	io.write("  District "..i..": ")
	print(fr)
	fr = nil
	end
function longresults(i)
		print("  GOP: "..rfv[i].."%")
		print("  Dem: "..dfv[i].."%")
end
arg = {...}
if #arg < 2 then
	error("Usage: {program name} (GOP Vote) (Dem Vote) {Other arguments}",50)
	end
rnvote = arg[1]
dnvote = arg[2]
if arg[3] == "-r" then
	res = true
	end
ric = 0
dic = 0
r = {}
rfv = {}
rovote = { nat=47.6,97.9,63.7,64,74,64.9,71.2,24.1,64.7,45.1,49.58,37.7,67,67.2,61.7,19.2,63.6,44.8,56.4,55.2,75.8,59.5 } --(1-7)Alabama,(8)Alaska,(9-17)Arizona,(18-21)Arkansas
d = {}
dfv = {}
dovote = { nat=48.8,1.1,36.2,35.8,25.9,34.9,28.6,75.8,28.4,48.8,50.42,57.8,28.3,32.7,33.1,80.3,34.8,48.5,39,39.5,1.1,36.7 }
rr = "R"
dd = "D"
oresult = { rr,rr,rr,rr,rr,rr,dd, rr, dd,dd,dd,rr,rr,rr,dd,rr,dd, rr,rr,rr,rr }
nresult = {}
r.sn,d.sn = calswing() 
for ab=1,21 do
	election(ab)
	results(ab)
	if res == true then
		longresults(ab)
		end
	end
