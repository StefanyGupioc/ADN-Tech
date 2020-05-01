require_relative '../utils/PrintUtil'

class BaseView

    def initialize

    end

    def show_message(message)
        PrintUtil.printMessage(message)
    end

    def mostrar_error
        PrintUtil.printMessage("Error, revise la información ingresada")
    end

end