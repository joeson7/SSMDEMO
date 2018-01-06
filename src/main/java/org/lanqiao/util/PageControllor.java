package org.lanqiao.util;


public class PageControllor {
	public static String createPageCode(int PageNum,int maxPage,String url){
		int prePage = PageNum == 1 ? 1 : PageNum - 1;
		int nexPage = PageNum == maxPage? maxPage : PageNum + 1;
		String str="<a href=\""+url+"?p=1\">首页</a>"  
		+"<a href=\""+url+"?p="+prePage+"\">上一页 </a>" 
		+"<a href=\""+url+"?p="+nexPage+"\">下一页 </a>"  
		+"<a href=\""+url+"?p="+maxPage+"\">尾页</a>";
		return str;
	}
}
