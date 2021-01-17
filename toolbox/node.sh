#!/usr/bin/sh

alias _x="sudo npm install -g"
alias _y="sudo yarn add -g"
alias _z="sudo pnpm add -g"

#  NODEJS >-->
       
#| AUTHORIZED      | aprroved_________________________________________________________|
#| google-wombot   | firebase      | firebase-tools    | superstatic   | reactfire    |
#| apollo-bot      | apollo        | apollo-server     | apollo-client | react-apollo |
#| zeit-bot        | vercel        | create-next-app   | micro         | next         |
#| chrismccord     | phoenix       | phoenix-liveview  | phoenix-html  |--------------|
#| aws-amplify-ops | aws-amplify   | aws-amplify-react |---------------|--------------|
#| faunadb         | faunadb       | fauna-shell       |---------------|--------------|
#| aws-cdk-team    | cdk           |-------------------|---------------|--------------|
#| assemblyscript  | assemblyscript|-------------------|---------------|--------------|
#| sass-bot        | sass          |-------------------|---------------|--------------|
#| typescript-bot  | typescript    |-------------------|---------------|--------------|
#| rich_harris     | svelte        |-------------------|---------------|--------------|
#| sokra           | webpack       |-------------------|---------------|--------------|
#| ...             | wrangler      |-------------------|---------------|--------------|
#| ...             | ghost         |-------------------|---------------|--------------|
#|____________________________________________________________________________________|


# BUILD NODE FROM SOURCE
#|> GIT
git clone https://github.com/nodejs/node.git ~/wrkspc/.tmp/node
#|> CONFIGURE
(cd ~/wrkspc/.tmp/node && sudo ./configure --ninja)
#|> MAKE
(cd ~/wrkspc/.tmp/node && sudo make) 
#|> INSTALL
(cd ~/wrkspc/.tmp/node && sudo make install clean)

# PNPN + YARN + NPX
#|> PNPM
sudo curl -L https://raw.githubusercontent.com/pnpm/self-installer/master/install.js | sudo node
#|> YARN
sudo pnpm add -g yarn
#|> NPX
sudo pnpm add -g npx

# ui/ux
	#|> NEXTJS
	_x next
	_x create-next-app 

	#|> ASSEMBLYSCRIPT
	_x assemblyscript 

	#|> SASS
	#_x sass 

	#|> TYPESCRIPT
	_x typescript 

	#|> SVELTE
	_x svelte 

	#| WEBPACK
	_x webpack

	#|> GHOSTCMS
	_x ghost

# severless

	#|> FIREBASE 
	_x firebase 
	_x firebase-tools 
	_x superstatic 

	#|> APOLLO
	_x apollo 
	_x apollo-server 
	_x apollo-client 
	_x react-apollo 

	#|> VERCEL
	_x vercel 
	_x micro 

	#|> AMPLIFY
	_x aws-amplify 
	_x aws-amplify-react 

	#|> FAUNADB
	_x faunadb 
	_x fauna-shell

	#|> CLOUDFLARE
	_x @cloudflare/wrangler

# μservices

	#|> PHOENIX
	_x phoenix 
	_x phoenix-liveview 
	_x phoenix-html



