function mvcd --description 'Moves a directory and changes into it.'
  mv $argv; and cd $argv[2]
end
