# Simple ReactJS app used with docker
  
Simple ReactJS app used with docker  

## Use in dev (with docker-compose)  

`docker-compose up --build`  


## Use in dev (without docker-compose)

Remove `node_modules` dir from your LOCAL env if you have it from running the app on your LOCAL before,  
and run the following command to build the image for dev env usage.  
  
`docker build -f Dockerfile.dev .`  
  
Find the image ID, let's say it is 886c9796ccea.  
  
`docker run -p 3000:3000 -v /app/node_modules -v $(pwd):/app 886c9796ccea`  
(other than Linux OS may need some modifications for `$(pwd)` part)  
  
  
# Steps ALREADY USED to create the app
  
As of npm@5.2.0, just use npx as described here:  
https://medium.com/@maybekatz/introducing-npx-an-npm-package-runner-55f7d4bd282b  
  
So..  
  
instead of this:  
  
`npm install -g create-react-app`  
  
`create-react-app client`  
  
use this:  
  
`npx create-react-app client`  
  
Official docs on CRA usage with npx:  
https://create-react-app.dev/docs/getting-started#quick-start  
  

# Commands to be used with npm
  
`npm run start` - starts app in dev server, app is not optimized for prod  
  
`npm run test` - runs tests  
  
`npm run build` - build production version of the project, app optimized for prod  
  
  

# DEFAULT README.MD CONTENT GOT AFTER GENERATING REQUIREJS PROJECT:  

-------------------------------------------------------------------


This project was bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

## Available Scripts

In the project directory, you can run:

### `yarn start`

Runs the app in the development mode.<br />
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.<br />
You will also see any lint errors in the console.

### `yarn test`

Launches the test runner in the interactive watch mode.<br />
See the section about [running tests](https://facebook.github.io/create-react-app/docs/running-tests) for more information.

### `yarn build`

Builds the app for production to the `build` folder.<br />
It correctly bundles React in production mode and optimizes the build for the best performance.

The build is minified and the filenames include the hashes.<br />
Your app is ready to be deployed!

See the section about [deployment](https://facebook.github.io/create-react-app/docs/deployment) for more information.

### `yarn eject`

**Note: this is a one-way operation. Once you `eject`, you can’t go back!**

If you aren’t satisfied with the build tool and configuration choices, you can `eject` at any time. This command will remove the single build dependency from your project.

Instead, it will copy all the configuration files and the transitive dependencies (webpack, Babel, ESLint, etc) right into your project so you have full control over them. All of the commands except `eject` will still work, but they will point to the copied scripts so you can tweak them. At this point you’re on your own.

You don’t have to ever use `eject`. The curated feature set is suitable for small and middle deployments, and you shouldn’t feel obligated to use this feature. However we understand that this tool wouldn’t be useful if you couldn’t customize it when you are ready for it.

## Learn More

You can learn more in the [Create React App documentation](https://facebook.github.io/create-react-app/docs/getting-started).

To learn React, check out the [React documentation](https://reactjs.org/).

### Code Splitting

This section has moved here: https://facebook.github.io/create-react-app/docs/code-splitting

### Analyzing the Bundle Size

This section has moved here: https://facebook.github.io/create-react-app/docs/analyzing-the-bundle-size

### Making a Progressive Web App

This section has moved here: https://facebook.github.io/create-react-app/docs/making-a-progressive-web-app

### Advanced Configuration

This section has moved here: https://facebook.github.io/create-react-app/docs/advanced-configuration

### Deployment

This section has moved here: https://facebook.github.io/create-react-app/docs/deployment

### `yarn build` fails to minify

This section has moved here: https://facebook.github.io/create-react-app/docs/troubleshooting#npm-run-build-fails-to-minify
  
