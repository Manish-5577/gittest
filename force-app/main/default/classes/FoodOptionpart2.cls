public class FoodOptionpart2 {
    
    
    @invocableMethod(label = 'Generate Food Option Response')
    public static List<foodoptionlist> getfoodoption(list<inputreq> inputReq)
    {    List<foodoptionrecord> foodlist = new list<foodoptionrecord>();
     list<foodoptionlist> finalfood = new list<foodoptionlist>();
        for(Food_Option__c fo : [select id,Part_of_Buffet__c,Price__c,Size__c,Type__c,Name	 from Food_Option__c])
        {
             foodoptionrecord forec = new foodoptionrecord();
              forec.size = fo.size__c;
              forec.Types = fo.Type__c;
              forec.Price = (Integer)fo.Price__c;
              forec.PartofBuffet = fo.Part_of_Buffet__c;
              forec.Name =  fo.Name;
              foodlist.add(forec);
        }
         foodoptionlist  finalfoodlist = new foodoptionlist();
         finalfoodlist.foodoptionrecords = foodlist;
         finalfood.add(finalfoodlist);
         return finalfood;
    }
    public class foodoptionlist{
        @invocablevariable
        public list<foodoptionrecord> foodoptionrecords;
    }
    public class foodoptionrecord{
        @invocablevariable
        public string size ;
          @invocablevariable
        public string Types ;
          @invocablevariable
        public Integer Price ;
         @invocablevariable
        public boolean PartofBuffet ;
          @invocablevariable
        public string Name ;  
    }
    public class inputreq{
         @invocablevariable
        public string name;
    }
    

}