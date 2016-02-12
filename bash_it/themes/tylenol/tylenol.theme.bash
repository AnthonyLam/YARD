#!/usr/bin/env bash
#
# Based on 'bobby' theme with the addition of virtualenv_prompt
#

SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${green}✓"
SCM_THEME_PROMPT_PREFIX=" ${red}|${reset_color}"
SCM_THEME_PROMPT_SUFFIX="${red}|"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"
VIRTUALENV_THEME_PROMPT_PREFIX='|'
VIRTUALENV_THEME_PROMPT_SUFFIX='|'

function prompt_command() {
    PS1="\n${red}\T ${green}$(virtualenv_prompt)${reset_color}\h ${red}in ${reset_color}\w${red}\n ${red}$(scm_char)$(scm_prompt_info) →${white} "
}

PROMPT_COMMAND=prompt_command;
