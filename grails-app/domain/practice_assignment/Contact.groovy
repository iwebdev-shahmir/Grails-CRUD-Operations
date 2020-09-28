package practice_assignment

class Contact {
    String phoneNumber
    String landNumber

    static constraints = {
        phoneNumber blank : false
        landNumber blank: false
    }
//    static belongsTo = [user: User]
}
