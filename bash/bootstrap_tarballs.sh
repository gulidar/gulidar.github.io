export SAVED_WORKDIR=$PWD

# Set up ~/.local/bin
mkdir -p ~/.local/bin
export PATH=$PATH:$HOME/.local/bin
cd ~/.local/bin


# Install Hugo
if ! command -v hugo &> /dev/null
then
    echo "Downloading Hugo..."
#    curl -o hugo.tar.gz -L "https://github.com/gohugoio/hugo/releases/download/v0.85.0/hugo_0.85.0_Linux-64bit.tar.gz" 
    curl -o hugo.tar.gz -L "https://github.com/gohugoio/hugo/releases/download/v0.57.0/hugo_0.57.0_Linux-64bit.tar.gz" 
#    curl -o hugo.tar.gz -L "https://github.com/gohugoio/hugo/releases/download/v0.14/hugo_0.14_linux_amd64.tar.gz"
    tar -xzvf hugo.tar.gz
#    mv ./hugo_0.14_linux_amd64/hugo_0.14_linux_amd64 ./hugo
    chmod +x hugo
fi


# Return to work directory
cd $SAVED_WORKDIR