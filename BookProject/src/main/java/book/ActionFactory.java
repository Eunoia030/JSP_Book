package book;
import member.IdCheckAction;
import member.IdCheckFormAction;
import member.MemberJoinAction;
import member.MemberJoinFormAction;

public class ActionFactory{
	private static ActionFactory instance = new ActionFactory();
	
	private ActionFactory() {
		super();
	}
	public static ActionFactory getInstance() {
		return instance;
	}
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);
//		if (command.equals("book_main")) {
//			action = new BookMainAction();
		if (command.equals("member_join")) {
			action = new MemberJoinAction();
		} else if (command.equals("member_form_join")) {
			action = new MemberJoinFormAction();
		} else if (command.equals("id_check")) {
			action = new IdCheckAction();
		} else if (command.equals("id_form_heck")) {
			action = new IdCheckFormAction();
		}
		
		
		return action;
	}
}
