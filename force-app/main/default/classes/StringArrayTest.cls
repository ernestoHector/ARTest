public with sharing class StringArrayTest {
    
        public Static String[] generateStringArray(Integer tests) {
         List<String> v1 = new List<String>();
         for (Integer stuff = 0; stuff < tests; stuff++) {
             v1.add('Test '+ stuff);
         }
         Return v1;
        }
    
}