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
	elseif rfv[i] <= 0 then
		rfv[i] = 0
		end
	if dfv[i] > 100 then
		dfv[i] = 100
	elseif dfv[i] <= 0 then
		dfv[i] = 0
		end
end
function winner(i)
	ifv[i] = 100 - dfv[i] - rfv[i]
	if ifv[i] > dfv[i] and ifv[i] > rfv[i] then
		nresult[i] = "I" 
	elseif dfv[i] > rfv[i] then
		nresult[i] = "D"
	elseif rfv[i] > dfv[i] then
		nresult[i] = "R"
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
	elseif i >= 22 and i <= 74 then
		s = "California"
		su = 21
		if i == 22 then
			need = true
			end
	elseif i >= 75 and i <= 81 then
		s = "Colorado"
		su = 74
		if i == 75 then
			need = true
			end
	elseif i >= 82 and i <= 86 then
		s = "Connecticut"
		su = 81
		if i == 82 then
			need = true
			end
	elseif i >= 87 and i <= 87 then
		s = "Delaware"
		su = 86
		if i == 87 then
			need = true
			end
	elseif i >= 88 and i <= 114 then
		s = "Florida"
		su = 87
		if i == 88 then
			need = true
			end
	elseif i >= 115 and i <= 128 then
		s = "Georgia"
		su = 114
		if i == 115 then
			need = true
			end
	elseif i >= 129 and i <= 130 then
		s = "Hawaii"
		su = 128
		if i == 129 then
			need = true
			end
	elseif i >= 131 and i <= 132 then
		s = "Idaho"
		su = 130
		if i == 131 then
			need = true
			end
	elseif i >= 133 and i <= 150 then
		s = "Illinois"
		su = 132
		if i == 133 then
			need = true
			end
	elseif i >= 151 and i <= 159 then
		s = "Indiana"
		su = 150
		if i == 151 then
			need = true
			end
	elseif i >= 160 and i <= 163 then
		s = "Iowa"
		su = 159
		if i == 160 then
			need = true
			end
	elseif i >= 164 and i <= 167 then
		s = "Kansas"
		su = 163
		if i == 164 then
			need = true
			end
	elseif i >= 168 and i <= 173 then
		s = "Kentucky"
		su = 167
		if i == 168 then
			need = true
			end
	elseif i >= 174 and i <= 179 then
		s = "Louisiana"
		su = 173
		if i == 174 then
			need = true
			end
	elseif i >= 180 and i <= 181 then
		s = "Maine"
		su = 179
		if i == 180 then
			need = true
			end
	elseif i >= 182 and i <= 189 then
		s = "Maryland"
		su = 181
		if i == 182 then
			need = true
			end
	elseif i >= 190 and i <= 198 then
		s = "Massachusetts"
		su = 189
		if i == 190 then
			need = true
			end
	elseif i >= 199 and i <= 212 then
		s = "Michigan"
		su = 198
		if i == 199 then
			need = true
			end
	elseif i >= 213 and i <= 220 then
		s = "Minnesota"
		su = 212
		if i == 213 then
			need = true
			end
	elseif i >= 221 and i <= 224 then
		s = "Mississippi"
		su = 220
		if i == 221 then
			need = true
			end
	elseif i >= 225 and i <= 232 then
		s = "Missouri"
		su = 224
		if i == 225 then
			need = true
			end
	elseif i >= 233 and i <= 233 then
		s = "Montana"
		su = 232
		if i == 233 then
			need = true
			end
	elseif i >= 234 and i <= 236 then
		s = "Nebraska"
		su = 233
		if i == 234 then
			need = true
			end
	elseif i >= 237 and i <= 240 then
		s = "Nevada"
		su = 236
		if i == 237 then
			need = true
			end
	elseif i >= 241 and i <= 242 then
		s = "New Hampshire"
		su = 240
		if i == 241 then
			need = true
			end
	elseif i >= 243 and i <= 254 then
		s = "New Jersey"
		su = 242
		if i == 243 then
			need = true
			end
	elseif i >= 255 and i <= 257 then
		s = "New Mexico"
		su = 254
		if i == 255 then
			need = true
			end
	elseif i >= 258 and i <= 284 then
		s = "New York"
		su = 257
		if i == 258 then
			need = true
			end
	elseif i >= 285 and i <= 297 then
		s = "North Carolina"
		su = 284
		if i == 285 then
			need = true
			end
	elseif i >= 298 and i <= 298 then
		s = "North Dakota"
		su = 297
		if i == 298 then
			need = true
			end
	elseif i >= 299 and i <= 314 then
		s = "Ohio"
		su = 298
		if i == 299 then
			need = true
			end
	elseif i >= 315 and i <= 319 then
		s = "Oklahoma"
		su = 314
		if i == 315 then
			need = true
			end
	elseif i >= 320 and i <= 324 then
		s = "Oregon"
		su = 319
		if i == 320 then
			need = true
			end
	elseif i >= 325 and i <= 342 then
		s = "Pennsylvania"
		su = 324
		if i == 325 then
			need = true
			end
	elseif i >= 343 and i <= 344 then
		s = "Rhode Island"
		su = 342 
		if i == 343 then
			need = true
			end
	elseif i >= 345 and i <= 351 then
		s = "South Carolina"
		su = 344
		if i == 345 then
			need = true
			end
	elseif i >= 352 and i <= 352 then
		s = "South Dakota"
		su = 351
		if i == 352 then
			need = true
			end
	elseif i >= 353 and i <= 361 then
		s = "Tennessee"
		su = 352
		if i == 353 then
			need = true
			end
	elseif i >= 362 and i <= 397 then
		s = "Texas"
		su = 361
		if i == 362 then
			need = true
			end
	elseif i >= 398 and i <= 401 then
		s = "Utah"
		su = 397
		if i == 398 then
			need = true
			end
	elseif i >= 402 and i <= 402 then
		s = "Vermont"
		su = 401
		if i == 402 then
			need = true
			end
	elseif i >= 403 and i <= 413 then
		s = "Virginia"
		su = 402
		if i == 403 then
			need = true
			end
	elseif i >= 414 and i <= 423 then
		s = "Washington"
		su = 413
		if i == 414 then
			need = true
			end
	elseif i >= 424 and i <= 426 then
		s = "West Virginia"
		su = 423
		if i == 424 then
			need = true
			end
	elseif i >= 427 and i <= 434 then
		s = "Wisconsin"
		su = 426
		if i == 427 then
			need = true
			end
	elseif i >= 435 and i <= 435 then
		s = "Wyoming"
		su = 434
		if i == 435 then
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
			ric = ric + 1
		elseif nresult[i] == "D" then
			fr = "Dem Hold"
			dic = dic + 1
		elseif nresult[i] == "I" then
			fr = "Indy Hold"
			iic = iic + 1
			end
	elseif oresult[i] ~= nresult[i] then
		if nresult[i] == "R" then
			fr = "GOP Gain+"
			ric  = ric + 1
		elseif nresult[i] == "D" then
			fr = "Dem Gain+"
			dic  = dic + 1
		elseif nresult[i] == "I" then
			fr = "Indy Gain"
			iic = iic + 1
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
		--if ifv[i] ~= nil then
			print("  Ind: "..ifv[i].."%")
			--end
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
rovote = { nat=47.6,97.9,63.7,64,74,64.9,71.2,24.1,64.7,45.1,49.58,37.7,67,67.2,61.7,19.2,63.6,44.8,56.4,55.2,75.8,59.5,57.9,29.9,46.3,61.1,25.9,25.6,48.9,57.6,45.9,53.8,30.9,15.2,13.7,26.3,47,45.5,26.7,30,27.3,27.1,59.9,63.1,73.8,45.2,55.2,48.3,36.6,24,25.8,39.5,55.2,34.6,46.3,14.4,44.3,48.6,13.6,32.9,59.2,40.6,43.6,61.4,29.4,40,59.3,39.4,44.9,61.6,58.9,68.4,30.1,49.8,39.6,27,38.6,53.5,58.6,65.3,48.7,41.2,27.8,29.3,25.4,40.2,48.5,33.4,69.6,52.7,
64.7,76.1,26.3,57.2,58.7,58.9,37.5,51.8,64.5,63.5,57.6,29.8,100,53.6,58.7,49.8,62,12,13.3,45.4,35.6,0,75.7,43,60.2,63,36.2,100,26.4,15.7,64.6,62.2,100,76.2,100,68.6,46.3,28.3,73,45.4,19.4,63.1,65.2,26.1,23.4,31.5,16.7,28.7,59.2,11,45.3,33.9,49.5,41.9,42.9,46.6,58.8,68.9,61.9,46.7,74.2,32.7,49,67.1,61.9,58.4,59.1,37.2,53.4,56.3,41.7,42.5,52.3,53.2,100,57,68.5,62.2,69.6,64.3,34.5,62.1,77.9,50.6,
66.6,17.5,60.9,75.3,77.8,79,35.3,41.9,63.4,31.1,29.6,20.7,27.7,37.9,20.8,32.9,0,0,34.1,36,24.5,47.3,16.4,23.7,32.2,48.2,61.1,52.7,63.1,32.2,54.4,53.3,58.6,34,68.7,50.7,28.4,14.7,16.4,42.4,54.1,58.2,31.6,25.5,50.6,34.9,45.5,60.4,31,80,64.1,17.9,60.1,63.5,60.3,36.9,65,63.9,71.9,53.2,68.3,51.2,74.2,31.5,57.6,50.4,42.1,46,45.1,30.3,58,53.8,68.8,55.5,35.3,57.2,18.9,25.4,10.8,58.9,29.5,
40.9,59.1,37,47.8,58.7,41.7,32.4,9.6,31.2,5.5,8.8,11.6,19.3,52.8,19.1,6.3,15.3,2.9,21.4,34.8,48.3,53.4,31.6,48.2,60.9,52.1,43.8,42.8,25.4,50.7,23,55.9,63.2,25.6,57.5,60.9,49.9,54.1,51.8,57,57.4,20.3,57.1,55,58.3,59.1,26.9,58.7,57.6,53.3,56.7,100,23.5,60.2,0,63.7,30.1,54.3,61.8,52.2,63.5,57.4,75.3,67.9,58.7,33.3,69.2,20.1,39.5,42.6,15,9.4,54.7,59.7,62.9,57.1,59.5,56.7,61.6,65.9,58.5,51.5,31,23.1,56.6,55,39.5,63.8,
41.5,35.2,62.4,100,66.7,65,55.6,0,54.9,57.5,76.1,74.5,61.5,55.8,32.8,76.6,71,68.3,23.8,71.7,64.8,57,73,64.4,58,60.8,77.4,19.7,60.6,78.6,70.9,91,53.5,36.8,32.8,79.9,22.6,85,33.4,60.6,64.1,45.5,61,58.5,68.3,56.7,29.7,5.2,19,61.3,58.3,25.7,35.9,32,70.8,71.5,62.3,76.4,48.1,23.2,56.1,53.8,18.8,57.1,55.3,65.6,58.6,30.7,61.2,58.8,35.5,46.4,39.1,60.1,67,62.1,41.2,20.5,59.9,28.5,41.4,62.5,69.8,46.1,54.9,32,35.9,23.8,67.9,62.1,56.1,55.9,69.1 } --(1-7)Alabama,(8)Alaska,(9-17)Arizona,(18-21)Arkansas,(22-74)California,(75-)Colorado
d = {}
dfv = {}
ifv = {}
iic = 0
dovote = { nat=48.8,1.1,36.2,35.8,25.9,34.9,28.6,75.8,28.4,48.8,50.42,57.8,28.3,32.7,33.1,80.3,34.8,48.5,39,39.5,1.1,36.7,42.1,70.1,53.7,38.9,74.1,74.4,51.1,42.4,54.1,46.2,69.1,84.8,86.3,73.7,53,54.5,73.3,70,72.7,72.9,40.1,36.9,26.2,54.8,44.8,51.7,63.4,76,74.2,60.5,44.8,65.4,53.7,85.6,55.7,51.4,86.4,67.1,40.8,59.4,56.4,38.6,70.6,60,40.7,60.6,55.1,38.4,41.1,31.6,69.9,50.2,60.4,68.1,56,41.1,36.7,22.4,45.1,53.2,69.6,68.3,74.6,59.8,51.5,64.4,27.1,47.3,
32.5,23.9,70.8,42.8,41.3,37.5,62.5,48.2,35.5,32.9,42.4,70.2,0,46.4,41.3,50.2,35.8,88,77,54.6,63.3,100,15.8,53.6,36.9,37,63.8,0,73.6,84.3,35.4,37.8,0,23.8,0,31.4,53.7,71.7,27,54.6,80.6,30.8,34.8,73.9,62.1,68.5,83.3,65.6,40.8,84.6,54.7,66.1,50.5,58.1,51.5,46.2,41.2,31.1,38.1,53.3,25.8,67.3,47.6,32.9,34.2,37.6,35.1,62.8,43.1,43.7,56.9,55.4,43.6,44.6,
0,38.7,31.5,31.6,30.4,31.7,64,35,22.1,46.7,21.3,55.2,39.1,24.7,14.4,10.5,64.7,58.1,27.5,65.6,66.8,77.2,69.4,58.8,76.5,63.4,100,100,65.9,61.1,75.5,48.3,83.6,76.3,58.3,47.5,35.1,44.1,33.5,64.2,42.8,43,37.3,61.9,29.8,48.4,68.5,81.5,85.1,57.6,45.9,41.8,62.4,74.5,49.4,60.4,54.5,36.7,67.1,20,28.9,78.7,37.1,32.9,35.5,60.5,32.5,30.9,24.6,42.9,31.7,48.8,25.8,63.6,36.2,42.9,50.1,49.7,50.2,67.9,40,44.8,31,42.4,63.3,40,78.1,73.6,87.3,40,69.2,
59.1,40.9,63,52.2,41.3,57.5,61.7,89.7,67.7,94.5,90,87,80.7,46.2,80.9,90.8,83,97.1,77.5,64.2,51.7,46.6,68.4,50.2,39.1,47.9,48.4,57.2,74.6,49.3,75.2,41.4,36.8,74.4,42.5,39.1,50.1,45.9,45.7,43,42.6,79.7,42.9,41.8,37.1,40.9,67.8,36.2,38.9,46.7,43.3,0,72.6,36.9,100,36.3,69.9,38.5,38.2,47.8,32,38.3,20,27.6,37.3,59.6,28.7,74.5,58.8,54,85.1,89.4,41.1,34.4,37.1,42.9,40.5,43.4,38.4,34.1,41.5,48.5,69,77,43.4,38.9,60.5,36.2,52.4,55.7,35.4,0,33.3,33.8,44.4,94.4,45.1,
42.5,19.9,20.5,35.5,44.2,65.2,14.4,24,28.4,75.1,26.6,32.7,37.9,24.1,33.2,39.2,36.4,20.3,78.5,36.2,18.6,26.7,6.2,44.6,60.9,65.5,20.1,75,15,64,35.4,31.9,50.3,36,37.4,28.6,39.2,67.9,90,78.9,35,39.4,72.5,62.2,64,26.6,24.7,33.6,23.6,49.3,72,41,46.2,81.2,42.9,42.2,34.4,41.4,64.6,38.8,38.4,61,53.6,60.9,39.9,33,37.9,58.8,79.5,40.1,71.5,58.6,37.5,30.2,53.9,43.4,68,64.1,72.3,32.1,37.9,43.9,44.1,23.8 }
rr = "R"
dd = "D"
oresult = { 
rr,rr,rr,rr,rr,rr,dd,  --Alabama
rr,  -- Alaska
dd,dd,dd,rr,rr,rr,dd,rr,dd, --Arizona 
rr,rr,rr,rr, --Arkansas
rr,dd,dd,rr,dd,dd,dd,rr,dd,rr,dd,dd,dd,dd,dd,dd,dd,dd,dd,dd,rr,rr,rr,dd,rr,dd,dd,dd,dd,dd,rr,dd,dd,dd,dd,dd,dd,dd,rr,dd,dd,rr,dd,dd,rr,dd,dd,rr,rr,rr,dd,dd,dd, --California
dd,dd,rr,rr,rr,rr,dd, --Colorado
dd,dd,dd,dd,dd,--Connecticut
dd,  --Delaware
rr,rr,rr,rr,dd,rr,rr,rr,dd,rr,rr,rr,rr,dd,rr,rr,rr,dd,rr,dd,dd,dd,dd,dd,rr,dd,rr,  --Florida
rr,dd,rr,dd,dd,rr,rr,rr,rr,rr,rr,dd,dd,rr, --Georgia
dd,dd, --Hawaii
rr,rr, --Idaho
dd,dd,dd,dd,dd,rr,dd,dd,dd,dd,dd,dd,rr,rr,rr,rr,dd,rr, --Illinois
dd,rr,rr,rr,rr,rr,dd,rr,rr, --Indiana
dd,dd,rr,rr, --Iowa
rr,rr,rr,rr, --Kansas
rr,rr,dd,rr,rr,rr, --Kentucky
rr,dd,rr,rr,rr,rr, --Louisiana 
dd,dd, --Maine
rr,dd,dd,dd,dd,dd,dd,dd, --Maryland
dd,dd,dd,dd,dd,dd,dd,dd,dd, --Massachusetts 
rr,rr,rr,rr,dd,rr,rr,rr,dd,rr,rr,dd,dd,dd, --Michigan
dd,rr,rr,dd,dd,rr,dd,dd, --Minnesota
rr,dd,rr,rr, --Mississippi
dd,rr,rr,rr,dd,rr,rr,rr, --Missouri
rr, --Montana
rr,rr,rr, --Nebraska
dd,rr,rr,dd, --Nevada
dd,dd,  --New Hampshire
dd,rr,rr,rr,rr,dd,rr,dd,dd,dd,rr,dd, --New Jersey
dd,rr,dd, --New Mexico
dd,rr,dd,dd,dd,dd,dd,dd,dd,dd,rr,dd,dd,dd,dd,dd,dd,dd,rr,dd,dd,rr,rr,dd,dd,dd,rr, --New York
dd,rr,rr,dd,rr,rr,dd,rr,rr,rr,rr,dd,rr, --North Carolina
rr, --North Dakota
rr,rr,dd,rr,rr,rr,rr,rr,dd,rr,dd,rr,dd,rr,rr,rr, --Ohio
rr,rr,rr,rr,rr, --Oklahoma
dd,rr,dd,dd,dd, --Oregon
dd,dd,rr,rr,rr,rr,rr,rr,rr,rr,rr,rr,dd,dd,rr,rr,dd,rr, --Pennsylvania
dd,dd, --Rhode Island
rr,rr,rr,rr,rr,dd,rr, --South Carolina
rr, --South Dakota
rr,rr,rr,rr,dd,rr,rr,rr,dd, --Tennessee
rr,rr,rr,rr,rr,rr,rr,rr,dd,rr,rr,rr,rr,rr,dd,dd,rr,dd,rr,dd,rr,rr,dd,rr,rr,rr,rr,dd,dd,dd,rr,rr,dd,dd,dd,rr, --Texas
rr,rr,rr,dd, --Utah
dd, --Vermont
rr,rr,dd,rr,rr,rr,rr,dd,rr,rr,dd, --Virginia
dd,dd,rr,rr,rr,dd,dd,rr,dd,dd, --Washington
rr,rr,dd, --West Virginia
rr,dd,dd,dd,rr,rr,rr,rr, --Wisconsin
rr --Wyoming
}
nresult = {}
r.sn,d.sn = calswing() 
for ab=1,435 do
	election(ab)
	results(ab)
	if res == true then
		longresults(ab)
		end
	end
print("GOP: "..ric)
print("Dem: "..dic)
print("Ind: "..iic)






