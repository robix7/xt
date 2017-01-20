local function run(msg, matches)
     if matches[1] == 'بات' then
                 
               
       end
     end
     
   if is_sudo(msg) then
     send_document(get_receiver(msg), "./data/tmp/sudo.webp", ok_cb, false)
end
end
return {         
    patterns = {
    "^(بات)$"
  },
  run = run
}

