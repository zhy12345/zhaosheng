package cn.java.utils;

public class Page {
	private int page;
	private int limit = 14;
	private int totalcount;
	private int totalpages;
	private int showpages = 5;

	public Page(int page, int limit) {
		if (page < 1) {
			this.page = 1;

		} else {
			this.page = page;
		}
		if (limit < 1) {
			this.limit = 10;
		} else {
			this.limit = limit;
		}
	}

	
	public static Page returnPage(String page, String limit) {
		int pg = 1;
		if (page != null && !page.trim().equals("") && !page.trim().equals("NaN")) {
			pg = Integer.parseInt(page);
		}
		int lim = 8;
		if (limit != null && !limit.trim().equals("")) {
			lim = Integer.parseInt(limit);
		}
		return new Page(pg, lim);
	}

	public int getStrat() {
		return (this.getPage() - 1) * this.getLimit();
	}
	
	public void setCount(int count) {
		this.totalcount = count;
		this.totalpages=count / getLimit();
		
		if (count % this.getLimit() != 0) {
			this.totalpages++;
		}

		if (this.page > this.totalpages) {
			this.page = this.totalpages;
			if (this.page < 1) {
				this.page = 1;
			}
		}
	}
	
	
	public int getPageBegin() {
		int begin =this.getPage();
		if(getTotalpages()<getShowpages()) {
			begin=1;
		}else {
			if(begin+getShowpages() -1>getTotalpages()) {
				begin=getTotalpages()- getShowpages()+1;
			}
		}
		return begin;
	}
	public int getShowpageEnd() {
		int end=getPageBegin()+getShowpages()+1;
		if(end>getTotalpages()) {
			end=getTotalpages();
		}
		return end;
	}
	
	
	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public int getTotalcount() {
		return totalcount;
	}


	public int getTotalpages() {
		return this.totalpages;
	}



	public int getShowpages() {
		return showpages;
	}

	public void setShowpages(int showpages) {
		this.showpages = showpages;
	}

}
