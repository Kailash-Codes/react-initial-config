#!/bin/bash
rm -r src public
mkdir src public src
cd ./src
mkdir components
touch App.js index.js
echo "import ReactDOM from \"react-dom/client\";
const root = ReactDOM.createRoot(document.getElementById(root));
root.render(<App />);" > index.js
echo "import React from "react";

const App = () => {
  return <div>App</div>;
};

export default App;" > App.js
cd ../
cd ./public 
touch index.html style.css
echo "<!DOCTYPE html>
<html lang=\"en\">
  <head>
    <meta charset=\"UTF-8\" />
    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\" />
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />
    <title>Document</title>
    <link rel=\"stylesheet\" href=\"style.css\" />
  </head>
  <body>
    <div id=\"root\"></div>
  </body>
</html>" > index.html
cd ../
rm -r config
git add . 
git commit -m "initial commit"
