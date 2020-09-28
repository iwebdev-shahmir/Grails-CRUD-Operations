package practice_assignment

class User {
    String firstName
    String lastName
    String email

//    static hasMany = [address: Address, contact: Contact]

    static constraints = {
        firstName blank: false
        lastName blank: false
        email blank: false, email: true
    }
}
