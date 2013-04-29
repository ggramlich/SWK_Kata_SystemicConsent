class OptionStore
    list = []

    addOption: (option) -> list.push option
    getList: -> list

module.exports = OptionStore
