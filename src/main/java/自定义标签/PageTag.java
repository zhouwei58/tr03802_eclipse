package 自定义标签;

import java.io.IOException;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class PageTag extends SimpleTagSupport {
    private String controller; // Web 组件名
    private int curpage; // 当前 页
    private int pagesize; // 页大小
    private int total; // 总记录数
    private String where = ""; // 其他请求参数

    public String getController() {
        return controller;
    }

    public void setController(String controller) {
        this.controller = controller;
    }

    public int getCurpage() {
        return curpage;
    }

    public void setCurpage(int curpage) {
        this.curpage = curpage;
    }

    public int getPagesize() {
        return pagesize;
    }

    public void setPagesize(int pagesize) {
        this.pagesize = pagesize;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public String getWhere() {
        return where;
    }

    public void setWhere(String where) {
        this.where = where;
    }

    private int pages() {
        return (this.total - 1) / this.pagesize + 1;
    }

    public void doTag() throws JspException, IOException {
        super.doTag();
        String url = "<a href='%s?curpage=%d&pagesize=%d&%s'>%s</a>";
        String first = String.format(url, this.controller, 1, this.pagesize, this.where, "第一页");
        String pre = null;
        if (this.curpage == 1) {
            pre = "<a href=javascript:alert('已经是第一页');>上一页</a>";
        } else {
            pre = String.format(url, this.controller, this.curpage - 1, this.pagesize, this.where, "上一页");
        }
        String next = null;
        if (this.curpage == this.pages()) {
            next = "<a href=javascript:alert('已经是最后一页');>下一页</a>";
        } else {
            next = String.format(url, this.controller, this.curpage + 1, this.pagesize, this.where, "下一页");
        }
        String last = String.format(url, this.controller, this.pages(), this.pagesize, this.where, "最后一页");
        String info = String.format(" 第%d 页/共%d 页 共%d 条记录", this.curpage, this.pages(), this.total);
        StringBuffer sb = new StringBuffer();
        sb.append("<div class='lzh_p'>").append(first).append(pre).append(next).append(last).append(info).append("</div>");
        JspWriter out = this.getJspContext().getOut();
        out.print(sb);
    }
}