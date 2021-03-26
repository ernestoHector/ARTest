public class AccountUtils {
public static List<Account> accountsByState(String state) {
    List<Account> myAccount = [SELECT ID, Name From Account Where BillingState =:state ];
    System.debug('myAccount:' + myAccount);
    return myAccount;
}
}