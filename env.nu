def make_prompt [] {
    let dir = match (do --ignore-shell-errors { $env.PWD | path relative-to $nu.home-path }) {
        null => $env.PWD
        '' => '~'
        $relative_pwd => ([~ $relative_pwd] | path join)
    }

    $"($dir)"
}

$env.PROMPT_COMMAND = {|| make_prompt }
$env.PROMPT_COMMAND_RIGHT = ""
