
local function run(msg, matches)
    local receiver = get_receiver(msg)
    local site = matches[2]
 local url = "https://telegram.me/addstickers/kimia_alizade"..site.."kimia_alizade"
 local randoms = math.random(1000,900000)
 local file = download_to_file(url,randomd)
 local cb_extra = {file_path=file}
    send_photo(receiver, file, rmtmp_cb, cb_extra)
end
  
return {
  patterns = {
  "^logo (.*)$",
  }, 
  run = run,
}
end
