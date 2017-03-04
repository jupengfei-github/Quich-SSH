## Directory ##
HOME_ROOT=/home/Administrator/.tool/.
QSH_SESSION_FILE=$HOME_ROOT/db/qsh.db
QSH_LOGIN_SCRIPT=$HOME_ROOT/lib/login.tcl

## Session Segment ##
SSN_NAME="name"
SSN_ADDR="address"
SSN_TYPE="type"
SSN_USER="username"
SSN_PAWD="password"

SSN_SEG_NAME=
SSN_SEG_INFO=
SSN_SEGS_INFO=()

GET_SESSION_INFO_HINT=
GET_SESSION_TIME_OUT=1000

function qprint {
    echo -e $@
}

function get_session_cmds () {
    echo create delete edit help connect list
}

function get_session_names {
    QSH_SSN_NAMES=()
    [ ! -r "$QSH_SESSION_FILE" ] && return 1

    local names=`cut -d':' -f1 $QSH_SESSION_FILE`
    for name in $names; do
        QSH_SSN_NAMES=(${QSH_SSN_NAMES[*]} $name)
    done

    echo ${QSH_SSN_NAMES[@]}
}
