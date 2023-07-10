package com.code.admin;

import com.code.entity.*;
import com.code.mapper.*;
import com.code.util.CommonUtils;
import com.code.util.GlobalResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
public class IndexController {

    @Autowired   //注入对象
    private CommonMapper commonMapper;


    @Autowired   //注入对象
    private NoticeinfoMapper noticeinfoMapper;
    @Autowired   //注入对象
    private UserinfoMapper userinfoMapper;
    @Autowired   //注入对象
    private SortinfoMapper sortinfoMapper;

    @Autowired   //注入对象
    private MsginfoMapper msginfoMapper;
    @Autowired   //注入对象
    private DatainfoMapper datainfoMapper;
    @Autowired   //注入对象
    private WorkinfoMapper workinfoMapper;

    @Autowired   //注入对象
    private HomeworkMapper homeworkMapper;

    @RequestMapping("/index")
    public String index(String keyword, Model model, HttpSession session) {
        List<Sortinfo> sortinfoList = sortinfoMapper.selectByMap(null);
        model.addAttribute("sortinfoList", sortinfoList);
        session.setAttribute("sortinfoList", sortinfoList);
        List<Datainfo> datainfoList = datainfoMapper.selectByMap(null);
        model.addAttribute("datainfoList", datainfoList);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("role", "教师");
        List<Userinfo> userinfoList = userinfoMapper.selectByMap(map);
        session.setAttribute("teacherList", userinfoList);
        return "index";
    }

    @RequestMapping("/index_type")
    public String index_type(String type, String user, Model model, HttpSession session) {
        Map<String, Object> map = new HashMap<String, Object>();
        if (null != type) {
            map.put("datatype", type);
        }
        if (null != user) {
            map.put("datauser", user);
        }
        List<Datainfo> datainfoList = datainfoMapper.selectByMap(map);
        model.addAttribute("datainfoList", datainfoList);
        return "index";
    }


    @RequestMapping("/detail")
    public String eduDetail(int id, Model model) {
        Datainfo datainfo = datainfoMapper.selectById(id);
        model.addAttribute("datainfo", datainfo);
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("tid", datainfo.getDataid());
        List<Msginfo> msginfoList = msginfoMapper.selectByMap(map);
        model.addAttribute("msginfoList", msginfoList);
        return "detail";
    }

    @RequestMapping("/datainfo_insert")
    public String datainfo_insert(Datainfo obj, Model model) {
        datainfoMapper.insert(obj);
        return "redirect:datainfoList";
    }

    @RequestMapping("/workinfo_insert")
    public String workinfo_insert(Workinfo obj, Model model) {
        workinfoMapper.insert(obj);
        return "redirect:workinfoList";
    }

    @RequestMapping("/homework_insert")
    public String homework_insert(Homework obj, Model model) {
        homeworkMapper.insert(obj);
        return "redirect:homeworkList";
    }

    @RequestMapping("/homework_edit")
    public String homework_edit(int id, Model model) {
        Homework homework = homeworkMapper.selectById(id);
        model.addAttribute("homework", homework);
        return "homeworkUpdate";
    }

    @RequestMapping("/homework_update")
    public String homework_update(Homework obj, Model model) {
        homeworkMapper.updateById(obj);
        return "redirect:homeworkList";
    }

    @RequestMapping("/xiangsidu")
    public String xiangsidu(int id, HttpSession session, Model model) {
        Homework homework = homeworkMapper.selectById(id);
        String ss = DelTagsUtil.getTextFromHtml(homework.getSwcontent());
        List<Homework> result = new ArrayList<Homework>();
        List<Homework> homeworkList = homeworkMapper.selectByMap(null);
        for (Homework hh : homeworkList) {
            if (hh.getSwid() != id) {
                String kk = DelTagsUtil.getTextFromHtml(hh.getSwcontent());
                double sim = SimilarityRate.sim(ss, kk);
                hh.setSwscore((sim * 100) + "");
                result.add(hh);
            }
        }
        model.addAttribute("result", result);
        return "xiangsidu";
    }


    @RequestMapping("/homeworkList")
    public String homeworkList(HttpSession session, Model model) {
        List<Homework> homeworkList = homeworkMapper.selectByMap(null);
        model.addAttribute("homeworkList", homeworkList);
        return "homeworkList";
    }

    @RequestMapping("/workinfoList")
    public String workinfoList(HttpSession session, Model model) {
        List<Workinfo> workinfoList = workinfoMapper.selectByMap(null);
        model.addAttribute("workinfoList", workinfoList);
        return "workinfoList";
    }

    @RequestMapping("/datainfoList")
    public String datainfoList(HttpSession session, Model model) {
        List<Datainfo> datainfoList = datainfoMapper.selectByMap(null);
        model.addAttribute("datainfoList", datainfoList);
        return "datainfoList";
    }


    @RequestMapping("/msginfo_submit")
    public String msginfo_submit(Msginfo msginfo, Model model) {
        msginfoMapper.insert(msginfo);
        return "redirect:detail?id=" + msginfo.getTid();
    }

    @RequestMapping("/userinfoCenter")
    public String userinfoCenter(HttpSession session, Model model) {
        Userinfo userinfo = (Userinfo) session.getAttribute("loginUserinfo");
        model.addAttribute("userinfo", userinfo);
        return "userinfoCenter";
    }

    @RequestMapping("/loginOut")
    public String loginOut(HttpSession session, Model model) {
        session.invalidate();
        return "redirect:index";
    }

    @RequestMapping("/infoList")
    public String infoList(Model model) {
        List<Noticeinfo> noticeinfoList = noticeinfoMapper.selectByMap(null);
        model.addAttribute("noticeinfoList", noticeinfoList);
        return "infoList";
    }


    @ResponseBody
    @RequestMapping("/registerSubmit")
    public GlobalResult infoList(Userinfo userinfo) {
        Integer insert = userinfoMapper.insert(userinfo);
        return GlobalResult.ok("注册成功");
    }

    @ResponseBody
    @RequestMapping("/loginSubmit") //插入数据
    public GlobalResult login(String username, String password, String vercode, HttpSession session, Model model) {
        String randCode = session.getAttribute("randCode").toString();
        if (!randCode.equals(vercode)) {
            return GlobalResult.errorMsg("验证码不正确");
        }
        List<Userinfo> userinfoList = userinfoMapper.selectByMap(null);
        Userinfo admin = new Userinfo();
        boolean is = false;
        for (Userinfo admininfo : userinfoList) {
            if (admininfo.getName().equals(username) && admininfo.getPassword().equals(password)) {
                admin = admininfo;
                is = true;
                break;
            }
        }
        if (is) {
            session.setAttribute("loginUserinfo", admin);
            return GlobalResult.ok("注册成功");
        } else {
            model.addAttribute("msg", "账号或者密码错误");
            return GlobalResult.errorMsg("账号或者密码错误");
        }
    }


}
