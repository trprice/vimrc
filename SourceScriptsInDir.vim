function SourceScriptsInDir (dir)
    let file_list = split(globpath(a:dir, "*.vim"), '\n')

    for file in file_list
        execute ('source '.file)
    endfor
endfunction
