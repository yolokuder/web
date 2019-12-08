get_folder_name = function(str)
    index = str:match'^.*()\\'
    local name = string.sub(str, index+1)
    return name
end

function my_prompt_filter()
    cwd = clink.get_cwd()
    dir = get_folder_name(cwd)
    prompt = "\x1b[1;32;40m♥ Tam Pham ♥ << "..dir.." >>\x1b[1;30;40m{lamb} \x1b[  0m"
    new_value = string.gsub(prompt, "{cwd}", cwd)
    clink.prompt.value = string.gsub(prompt, "{lamb}", " λ")
end

clink.prompt.register_filter(my_prompt_filter, 1)