# Stage 1 :: Dependency 
FROM node:20 AS build

# Stage 2 : Copy code to Working dir and app dependency 
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .

# Stage 4 : Build 
RUN npm run build

# Stage 5 : Deploy/Host
FROM nginx:alpine
COPY --from=build /app/dist/demo-app/browser /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]



# code + dependency + enviromemt || image 


## power shell => run in equall intreavels => check resource qtlisition (<80% no change )
## >80% => trigger new ps => create vm with docker 
## az cli => az devops pipeline => demo => set env variables => new vm 
## on success creation => update file "autoscale.log" => git pull, git add ., git commit -m " sysDateTime Adding a new aucto scale vm " , git push 


## power shell => run in equall intreavels => check resource qtlisition (<40% && VM count > 2)
## ps  => list vm => terminate by count 




## get vm snapshot => create new vm => restore snapshot 


# docker build -t demov1:initial .
# az login
# az acr login --name demoazciicd
# docker tag demov1:initial demoazciicd.azurecr.io/demov1:initial
# docker push demoazciicd.azurecr.io/demov1:initial



