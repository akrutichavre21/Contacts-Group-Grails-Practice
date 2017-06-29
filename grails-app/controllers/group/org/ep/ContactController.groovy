package group.org.ep

class ContactController {

    def index() {
    }

    def createGroup() {
    }

    def saveGroup() {

        Map groupMap = [:]
        Group groupExist = UserDetails.groupInstances.find {
            it.name.equals(params.gname)
        }

        if(groupExist) {
            render "Group Already Exists."
            return 
        }
        groupMap.name = params.gname

        Group myGroup = new Group(groupMap)
        UserDetails.groupInstances << myGroup
        redirect(action: "index")
    }

    def createContact() {

        [groupInstance: UserDetails.groupInstances]
    }

    def saveContact() {
        Map contactMap = [:]
        contactMap.firstName = params.fname
        contactMap.lastName = params.lname
        contactMap.phone = Integer.parseInt(params.pno)
        contactMap.id = UserDetails.id
        Contact myContact = new Contact(contactMap)
        Group groupFound = UserDetails.groupInstances.find {it.name.equals(params.gName)}
        groupFound.contacts << myContact
        UserDetails.id++
        redirect(action: "index")
    }

    def view() {
        [groupInstances: UserDetails.groupInstances]
    }

    def delete() {
        UserDetails.groupInstances.each { grp ->
            grp.contacts.removeAll {
                it.id == params.id
            }
        }
        redirect(action: "view")
    }

    def updateContact() {

        Integer groupIndex
        Contact updateContact
        println params.id

        UserDetails.groupInstances.eachWithIndex { grp, index ->
            grp.contacts.each{ cont ->
                if(cont.id == params.id) {
                        updateContact = cont
                        groupIndex = index
                }
            }
        }

        UserDetails.groupInstances.each { grp ->
            grp.contacts.removeAll {
                it.id == params.id
            }
        }
        println updateContact
        println groupIndex
        def myGroup = UserDetails.groupInstances.get(groupIndex)
        List updateList = [myGroup, updateContact]
        println updateList
        [updateContacts: updateList]
    }

    def saveUpdate() {

        println params
        println params.fname
        println params.lname
        println params.id

        Map contactMap = [:]
        contactMap.firstName = params.fname
        contactMap.lastName = params.lname
        contactMap.phone = Integer.parseInt(params.pno)
        contactMap.id = params.id
        Contact myContact = new Contact(contactMap)
        Group groupFound = UserDetails.groupInstances.find {it.name.equals(params.gName)}
        groupFound.contacts << myContact
        redirect(action: "view")
    }
}
