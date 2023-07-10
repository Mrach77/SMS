/***





**/
package com.code.admin;

import com.baomidou.mybatisplus.plugins.Page;
import com.code.mapper.DatainfoMapper;
import com.code.entity.Datainfo;
import com.code.util.CommonUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 后台datainfo表的管理操作
 */
@Controller
@RequestMapping("/datainfo")
public class DatainfoController {

    @Autowired   //注入对象
    private DatainfoMapper datainfoMapper;

    @RequestMapping("/add")
    public String toAdd() {
        return "datainfo/datainfoAdd";
    }

    @RequestMapping("/insert") //插入数据
    public String save(Datainfo datainfo) {
        datainfoMapper.insert(datainfo);
        return "redirect:list";
    }

    @RequestMapping("/update") //修改数据
    public String update(Datainfo datainfo) {
        datainfoMapper.updateById(datainfo);
        return "redirect:list";
    }

    @RequestMapping("/delete") //删除数据
    public String save(int id) {
        datainfoMapper.deleteById(id);
        return "redirect:list";
    }

    @RequestMapping("/edit") //编辑数据
    public String edit(int id, Model model) {
        Datainfo datainfo = datainfoMapper.selectById(id);
        model.addAttribute("datainfo", datainfo);
        return "datainfo/datainfoUpdate";
    }

    @RequestMapping("/detail") //编辑数据
    public String detail(int id, Model model) {
        Datainfo datainfo = datainfoMapper.selectById(id);
        model.addAttribute("datainfo", datainfo);
        return "datainfo/datainfoDetail";
    }

    /**
     * @param keyword  搜索关键词
     * @param p        页面            默认第1页
     * @param pageSize 每页显示条数 默认每页10条
     * @param model
     * @return
     */
    @RequestMapping("/list") //分页查询数据
    public String list(String keyword, Integer p, Integer pageSize, Model model) {

        p = null == p ? 1 : p; //默认显示第一页
        pageSize = null == pageSize ? 10 : pageSize; //默认每页显示10条
        Page<Datainfo> sortPage = new Page<Datainfo>(p, pageSize);//参数一是当前页，参数二是每页个数
        List<Datainfo> datainfoList = datainfoMapper.selectPage(sortPage, null);
        long total = sortPage.getTotal(); //总页数
        int current = sortPage.getCurrent();
        long pages = sortPage.getPages();
        model.addAttribute("datainfoList", datainfoList);   //绑定接受参数
        model.addAttribute("cp", current);   //当前页
        model.addAttribute("tp", pages);   //总页数
        model.addAttribute("total", total);   //总条数
        model.addAttribute("pageListURL", "datainfo/list");   //总条数
        return "datainfo/datainfoList";
    }
}
