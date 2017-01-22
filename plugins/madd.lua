local function run(msg, matches)
  if matches[1] == "madd" then
    local file = matches[2]
    if is_sudo(msg) then --sudo only !
      local receiver = get_receiver(msg)
      send_document(receiver, ".http://dl.pop-music.ir/music/1395/Tir/Kourosh%20Sharifi%20-%20Aroom%20Aroom%20(128).mp3"..file..".mp3", ok_cb, false)
      else 
        return nil
    end
  end
end

return {
  patterns = {
  "^(madd) (.*)$"
  },
  run = run
}
