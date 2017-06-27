package group.org.ep

class ContactController {

    List<Group> groupInstances = []
    Integer contactId = 1
    def index() {

    }

    def createGroup() {
    }

    def saveGroup() {
        println params.gname
        Map groupMap = [:]
        groupMap.name = params.gname
        println groupMap
        Group myGroup = new Group(groupMap)
        groupInstances << myGroup
        redirect(action: "index")
    }

    def createContact() {

        [groupInstance: groupInstances]
    }
    def saveContact() {
        Map contactMap = [:]
        contactMap.firstName = params.fname
        contactMap.lastName = params.lname
        contactMap.phone = Integer.parseInt(params.pno)
        contactMap.id = contactId
        Contact myContact = new Contact(contactMap)
        Group groupFound = groupInstances.find {it.name.equals(params.gName)}
        groupFound.contacts << myContact
        contactId++
        redirect(action: "index")
    }

    def view() {
        [groupInstances: groupInstances]
    }

    def delete() {
        groupInstances.each { grp ->
            grp.contacts.removeAll {
                it.id == Integer.parseInt(params.id)
            }
        }
        redirect(action: "view")
    }
}
