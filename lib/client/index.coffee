class Client
    list = []

    addOption: (option) -> list.push option
    getList: -> list

module.exports = Client
