local function run(msg, matches)
local url , send_document('http://dl.pop-music.ir/music/1395/Tir/Kourosh%20Sharifi%20-%20Aroom%20Aroom%20(128).mp3')
local file = json:file(url)
return nil
end
return {
  patterns = {
    "^(med)$"}, 
run = run 
}
