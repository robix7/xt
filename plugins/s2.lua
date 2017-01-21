local function run(msg, matches)
  if matches[1] == "saz" then
    local file = matches[2]
    if is_sudo(msg) then --sudo only !
      local receiver = get_receiver(msg)
      send_document(receiver, "./plugins/"..file..".webp", ok_cb, false)
      else 
        return nil
    end
  end
end

return {
  patterns = {
  "^[!/](saz) (.*)$"
  },
  run = run
}
