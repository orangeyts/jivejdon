package com.jdon.jivejdon.presentation.action.query;

import com.jdon.controller.WebAppUtil;
import com.jdon.controller.model.PageIterator;
import com.jdon.jivejdon.manager.mapreduce.ThreadApprovedNewList;
import com.jdon.jivejdon.service.ForumMessageQueryService;
import com.jdon.strutsutil.ModelListAction;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;

public class ThreadApprovedNewListAction extends ModelListAction {
	private ForumMessageQueryService forumMessageQueryService;
	private ThreadApprovedNewList threadApprovedNewList;

	public ForumMessageQueryService getForumMessageQueryService() {
		if (forumMessageQueryService == null)
			forumMessageQueryService = (ForumMessageQueryService) WebAppUtil.getService("forumMessageQueryService", this.servlet.getServletContext());
		return forumMessageQueryService;
	}

	public ThreadApprovedNewList getThreadApprovedNewList() {
		if (threadApprovedNewList == null)
			threadApprovedNewList = (ThreadApprovedNewList) WebAppUtil
					.getComponentInstance("threadApprovedNewList", this.servlet.getServletContext());

		return threadApprovedNewList;
	}

	public PageIterator getPageIterator(HttpServletRequest request, int start, int count) {
		if (start >= 150 || start % count != 0)
			return new PageIterator();

		Collection<Long> list = getThreadApprovedNewList().getApprovedThreads(start);
		int maxSize = 150;
		if (getThreadApprovedNewList().getMaxSize() != -1) {
			maxSize = getThreadApprovedNewList().getMaxSize();
		}
		if (list != null)
			return new PageIterator(maxSize, list.toArray(new Long[0]));
		else
			return new PageIterator();
	}

	public Object findModelIFByKey(HttpServletRequest request, Object key) {
		try {
			return getForumMessageQueryService().getThread((Long) key);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
