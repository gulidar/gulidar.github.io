export SAVED_WORKDIR=$PWD

# Set up ~/.local/bin
mkdir -p ~/.local/bin
export PATH=$PATH:$HOME/.local/bin
cd ~/.local/bin


# Install Hugo
if ! command -v hugo &> /dev/null
then
    echo "Downloading Hugo..."
    curl -o hugo.tar.gz -L "https://github.com/gohugoio/hugo/releases/download/v0.85.0/hugo_0.85.0_Linux-64bit.tar.gz" 
    tar -xzvf hugo.tar.gz
    chmod +x hugo
fi


# Return to work directory
cd $SAVED_WORKDIR