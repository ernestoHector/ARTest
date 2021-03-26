trigger OrderEventTrigger on Order_Event__e (after insert) {
system.debug(' in Trigger' + trigger.new);
    List<Task> tasks = new List<Task>();
    for (Order_Event__e event : trigger.new) {
if  (event.Has_Shipped__C == true) {
    Task tk = new Task();
    tk.Priority = 'Medium';
    tk.Subject = 'Follow up on shipped order ' + event.Order_Number__C;
    tk.OwnerId = event.CreatedById;
    tasks.add(tk);

}
    }
    insert tasks;

}