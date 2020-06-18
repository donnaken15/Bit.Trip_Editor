if x>0x-=32
if x<0x=0
if scoretally=0
{alarm[0]=2}
if x=0&&scoretally<score
{scoretally+=random_range(99,999)
if scoretally>9999 scoretally+=random_range(10,900)
if scoretally>99999 scoretally+=random_range(100,9000)
if scoretally>999999 scoretally+=random_range(1000,90000)
if scoretally>9999999 scoretally+=random_range(10000,900000)
if scoretally>99999999 scoretally+=random_range(100000,9000000)
if scoretally>999999999 scoretally+=random_range(1000000,90000000)
if scoretally>9999999999 scoretally+=random_range(10000000,900000000)
if scoretally>99999999999 scoretally+=random_range(100000000,9000000000)
//scoretally*=random_range(.99,1.01)
}
if scoretally>=score || score = 0 && x=0 && alarm[1]<1 {scoretally=score;alarm[1]=2}
