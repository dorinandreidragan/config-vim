TMUX_CONF=~/.tmux.conf
# GIST_URL=https://gist.githubusercontent.com/briansworth/9da664f15e51ca48ab5d7a0ac4a73cb2/raw/ea2f7da743887e345dbddeccd7eedb1fd2271ba6/.tmux.conf

# Backup the existing tmux.conf if it exists before overwriting
if [ -f $TMUX_CONF ]; then
  cp $TMUX_CONF ~/.tmux.conf.bak_CodeAndKeep
fi
cp .tmux.conf $TMUX_CONF

# Download TPM (Tmux plugin manager) from github
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

