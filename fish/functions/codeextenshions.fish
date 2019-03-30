
function codeextensions --description 'Prints VS code extensions'
    code --list-extensions | xargs -L 1 echo code --install-extension
end
