public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer num, String LN) {
        List<Contact> cnts = new List<Contact>();
        for(Integer i=0;i<num;i++) {
            Contact c = new Contact(FirstName= 'Bob'+i, LastName=LN);
            cnts.add(c);
        }
        return cnts;
    }

}