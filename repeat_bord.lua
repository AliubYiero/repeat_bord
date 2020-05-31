--[[
1.Yuint_repeat_bord(main_color,{{[3color_1],[bord_1]},{[3color_2],[bord_2]}},...)
2.输出多重边框字体
3.main_color定义字体主颜色
4.tbl是一个表，也是一系列表的集合{}		(定义为外表);外表里面的需要填入 {},{},{},...		(定义为里表),也就是有序的表的组
5.所以tbl需要填入的值：{{},{},{}}
6.里表里面需要填入两个值，边框颜色和边框厚度(例{"&HFFFFFF&",15})
7.里表可以无限延伸，有多少个里表就会生成多少重边框
--]]
function Yuint_repeat_bord(main_color,tbl)
	maxloop(#tbl)																			--重复行
	relayer((maxj-j)+1)																		--设置层数
	re = "\\1c"..main_color.."\\3c"..tbl[j][1] .."\\bord"..tbl[j][2] 						--多重边框赋值
	return re																				--输出
end	



--[[
1.Yuint_repeat_bord(main_color,{{[3color_1],[bord_1]},{[3color_2],[bord_2]}},...)
2.直接输出多重边框字体
3.没什么用的一个变式，方便新手使用的，变化在于直接把特效标签区{}加上去了
--]]
function Yuint_repeat_bord_out(main_color,tbl)
	maxloop(#tbl)																			--重复行
	relayer((maxj-j)+1)																		--设置层数
	re = "\\1c"..main_color.."\\3c"..tbl[j][1] .."\\bord"..tbl[j][2] 						--多重边框赋值
	return "{"..re.."}"																		--直接输出
end