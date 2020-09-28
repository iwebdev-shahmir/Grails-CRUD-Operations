package practice_assignment

class HandlerController {

    def index() {
        redirect action: "list"
        flash.message = "Welcome!"
    }

    def create() {}

    def save() {
        def user = new User(params)
        def address = new Address(params)
        def contact = new Contact(params)

        if (address.preAddress == null) {
            address.preAddress = "N/A"
        }
        if (address.perAddress == null) {
            address.perAddress = "N/A"
        }
        if (contact.phoneNumber == "+92") {
            contact.phoneNumber = "N/A"
        }
        if (contact.landNumber == "+92") {
            contact.landNumber = "N/A"
        }

        user.save(flash: true)
        address.save(flash: true)
        contact.save(flash: true)


        redirect action: "show", id: user.id
    }

    def show() {
        def id = params.id
        [user: User.get(id), address: Address.get(id), contact: Contact.get(id)]

    }

    def edit() {

        [user: User.get(params.id), contact: Contact.get(params.id), address: Address.get(params.id)]

    }

    def update() {
        def id = params.idNumber
        def user = User.get(id)
        def address = Address.get(id)
        def contact = Contact.get(id)

        user.properties = params
        address.properties = params
        contact.properties = params

        if (address.preAddress == null) {
            address.preAddress = "N/A"
        }
        if (address.perAddress == null) {
            address.perAddress = "N/A"
        }
        if (contact.phoneNumber == "+92") {
            contact.phoneNumber = "N/A"
        }
        if (contact.landNumber == "+92") {
            contact.landNumber = "N/A"
        }

        user.save(flush: true)
        address.save(flush: true)
        contact.save(flush: true)

        redirect action: "list"
    }

    def delete() {
        def id = params.id
        def user = User.get(id)
        def address = Address.get(id)
        def contact = Contact.get(id)

        user.delete(flush: true)
        contact.delete(flush: true)
        address.delete(flush: true)
        redirect action: "list"

    }

    def list() {
        [users: User.list(), addresses: Address.list(), contacts: Contact.list()]
    }

    def search() {

        def eusers = User.findAllByEmailLike(params.searchEmail)
        if (eusers.isEmpty()){
            def cPhNum = Contact.findAllByPhoneNumberLike(params.searchNumber)
            if (cPhNum.isEmpty()){
                def cLnum = Contact.findAllByLandNumberLike(params.searchNumber)
                def id = cLnum.id
                def cLuser = User.getAll(id)
                def cLaddress = Address.getAll(id)
                [cLuser: cLuser, cLaddress: cLaddress, cLnum: cLnum]
            }
            else {
                def id = cPhNum.id
                def cPuser = User.getAll(id)
                def cPaddress = Address.getAll(id)
                [cPuser:cPuser , cPaddress:cPaddress , cPhNum: cPhNum ]
            }
        }
        else{
            def id = eusers.id
            def eaddresses = Address.getAll(id)
            def econtacts = Contact.getAll(id)
            [euser: eusers, eaddress: eaddresses,econtact: econtacts]
        }
    }
}