$env.config = {
    show_banner: false,
    shell_integration: {
        # Prevent the flickering in Windows terminals such as ConEmu and WezTerm
        osc133: false,
        osc633: false,
    },
    table: {
        mode: light,
        header_on_separator: true,
    },
}

# Start at home directory
cd $env.XDG_CONFIG_HOME

# Setup bookmarks
$env.nu_bookmarks_dir = $env.XDG_CONFIG_HOME
source bookmarks/bookmarks.nu
bookmark load

# Aliases
alias "bm go" = bookmark go
alias "bm ls" = bookmark list
alias "bm mk" = bookmark make
alias "bm rm" = bookmark remove
alias "bm write" = bookmark save
alias "bm read" = bookmark load
