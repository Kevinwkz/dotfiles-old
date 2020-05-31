function fish_prompt
    set -l git_dir (git rev-parse --git-dir 2> /dev/null)

    set_color fc420a
    echo -n '['
    set_color fcc205
    echo -n (whoami)
    set_color bab227
    echo -n '@'
    set_color 3bb5b5
    echo -n (hostname)
    set_color ad76bf
    echo -n ' '(prompt_pwd)
    echo -n (git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')
    set_color fc420a
    echo -n ']'
    set_color ffffff
    echo -n '$ '
end
