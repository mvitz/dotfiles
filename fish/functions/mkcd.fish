function mkcd --description 'Creates a new directory and changes into it.'
  mkdir -p $argv; and cd $argv
end
