public class NewCaseListController {
    public List<case> getNewCases(){
        List<Case> ncs =
        [SELECT Id, CaseNumber From Case where status = 'New'];
  return ncs;
    }

}