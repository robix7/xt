local function run(msg, matches)
     if matches[1] == 'ای' then
          if is_sudo(msg) then   
  send_document(org_chat_id,"./icons/7.webp", ok_cb, false)
	elseif is_sudo(result) then
		userrank = "Sudo ⭐⭐⭐⭐⭐"             
               
       end
     end
    
  end
return {         
    patterns = {
    "^(ای)$"
  },
  run = run
}

