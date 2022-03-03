let sudoku = qsa('#sudoku')[0]
sudoku.onkeydown = function(event, test) {
    log(event, test)
}

let log = console.log.bind(console)

function arr(list) {
    for (let feat of Object.getOwnPropertyNames(Array.prototype))
        if (!(feat in list))
            list[feat] = Array.prototype[feat]
}

function qsa() {
    let [element, selector] = arguments
    log(arguments, element, selector)
    if (selector === undefined)
        [element, selector] = [document, element]
    return element.querySelectorAll(selector)
}