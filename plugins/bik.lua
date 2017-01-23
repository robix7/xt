local function run(msg, matches)
if matches[1] == 'بیار' then
        if permissions(msg.from.id, msg.to.id, "add") then
            local chat_id = msg.to.id
            local chat_type = msg.to.type
            if msg.reply_id then
                get_message(msg.reply_id, add_by_reply, false)
                return
            end
            if not is_id(matches[2]) then
                local member = string.gsub(matches[2], '@', '')
                print(chat_id)
                resolve_username(member, add_by_username, {chat_id=chat_id, member=member, chat_type=chat_type})
                return
            else
                local user_id = matches[2]
                if chat_type == 'chat' then
                    send_msg('chat#id'..chat_id, 'ℹ️ '..lang_text(chat_id, 'addUser:1')..' '..user_id..' '..lang_text(chat_id, 'addUser:2'), ok_cb, false)
                    chat_add_user('chat#id'..chat_id, 'user#id'..user_id, ok_cb, false)
                elseif chat_type == 'channel' then
                    send_msg('channel#id'..chat_id, 'ℹ️ '..lang_text(chat_id, 'addUser:1')..' '..user_id..' '..lang_text(chat_id, 'addUser:3'), ok_cb, false)
                    channel_invite_user('channel#id'..chat_id, 'user#id'..user_id, ok_cb, false)
                end
                return
            end
            
            return {
    patterns = {
        "^(بیار) (.*)$",
        "^(بیار)$",
          "^(tgservice) (.*)$"
    },
    run = run,
    pre_process = pre_process
}
end
