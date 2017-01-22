local function run(msg, matches)
  if not is_sudo(msg) then -- For Sudoers only !
    return 'از سیستم پیام رسانی فقط سازنده میتونه استفاده کنه'
  end
	if matches[1] == 'sms' and is_sudo(msg) then
		  send_msg(extra.chatid, '"'..user#id..'" ارسال شد', ok_cb, false)
  else
    send_msg(extra.chatid, 'تعداد پیام مورد نظر شما پاک شد', ok_cb, false)
  end
end
		local response = matches[3]
		send_large_msg("user#id"..matches[2], response)
						local receiver = 'user#id'..user_id
				send_large_msg(receiver, response)
	end
	end
return {
  patterns = {
    "^[!/](sms) (%d+) (.*)$"
  },
  run = run
}
