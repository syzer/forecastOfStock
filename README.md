##  WAT
Just an example of reactive data visualization server done in R
reactive({}) - caches hash-map input:output, and gives cachces output if encounters same input more than onece (no need to recalulate!).

## DEMO
![demoImage](https://raw.githubusercontent.com/syzer/reactiveStock/master/wiki/demo.png)


## HOWTO

R 3.1.2+ required
    
go to the R console:

    install.packages('quantmod')
    install.packages('shiny')
    library('shiny')
    runGitHub('reactiveStock', 'syzer') 
    

or clone repository:

    git clone git@github.com:syzer/reactiveStock.git

and in the R console:
    
    library('quantmod')
    library('shiny')
    runApp('reactiveStock')