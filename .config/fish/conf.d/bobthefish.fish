#Here are all the configuration related to the theme

#Git config
set -g theme_display_git yes
set -g theme_display_git_untracked no
set -g theme_display_git_ahead_verbose no
set -g theme_display_git_dirty no
set -g theme_display_git_dirty_verbose yes
set -g theme_display_git_stashed_verbose yes
set -g theme_display_git_default_branch yes
set -g theme_git_worktree_support yes
set -g theme_git_default_branches main trunk

#Display config
set -g theme_display_vagrant no
set -g theme_display_docker_machine no
set -g theme_display_hg no
set -g theme_display_virtualenv no
set -g theme_display_ruby no
set -g theme_display_jobs_verbose no

#Theme/font config
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes 
set -g theme_show_exit_status yes
set -g theme_color_scheme tokyo-night
set -g theme_display_vi no
set -g theme_display_date no
set -g theme_display_cmd_duration no

#User config
#set -g default_user your_normal_user
set -g theme_display_user no
set -g theme_display_sudo_user no
set -g theme_display_hostname no

#Path config
set -g fish_prompt_pwd_dir_length 0
set -g theme_show_project_parent yes
set -g theme_newline_cursor yes
set -g theme_newline_prompt " "
set -g theme_use_abbreviated_branch_name no
set -g theme_display_hg yes
set -g theme_display_fossil yes

#Title config
set -g theme_title_display_user no
set -g theme_title_display_process yes
set -g theme_title_display_path yes
set -g theme_title_use_abbreviated_path no

