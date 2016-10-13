# Learning Prolog

Watch files and rerun queries with following command:
`fswatch -o . | xargs -n1 -I{} sh -c "clear && cat queries.pro | swipl -s countries.pro --quiet"`
