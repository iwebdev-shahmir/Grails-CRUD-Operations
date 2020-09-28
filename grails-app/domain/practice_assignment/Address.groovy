package practice_assignment

class Address {
    String perAddress
    String preAddress

//    static belongsTo = [user: User]

    static constraints = {
        perAddress blank: false
        preAddress blank: false

    }
}
