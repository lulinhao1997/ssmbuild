package com.qlu.controller;

import com.qlu.pojo.Books;
import com.qlu.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;
    //显示所有书籍
    @RequestMapping("/toAllBook")
    public String list(Model model){
        System.out.println("BookController.list()进来了!!!!");
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allBook";   
    }
    //跳到添加书籍页面
    @RequestMapping("/toAddBook")
    public String toAddPaper(){
        System.out.println("BookController.toAddPaper()进来了!!!!");
        return "addBook";
    }
    //进行书籍添加操作并返回显示全部书籍
    @RequestMapping("addBook")
    public String addBook(Books books){
        bookService.addBook(books);
        return "redirect:/book/toAllBook";
    }
    //跳到指定的书籍修改页面
    @RequestMapping("toUpdateBook")
    public String toUpdateBook(int bookID,Model model){
        System.out.println("当前bookID:"+bookID);
        Books book = bookService.queryBookById(bookID);
        model.addAttribute("book",book);
        return "updateBook";
    }
    //进行书籍修改操作并返回显示全部书籍
    @RequestMapping("updateBook")
    public String updateBook(Books books){
        bookService.updateBook(books);
        return "redirect:/book/toAllBook";
    }
    //删除指定书籍
    @RequestMapping("deleteBook/{bookID}")
    public String deleteBook(@PathVariable("bookID") int id){
        bookService.deleteBookById(id );
        return "redirect:/book/toAllBook";
    }
    //查询指定书籍
    @RequestMapping("queryBook")
    public String queryBook(String queryBookName,Model model){
        System.out.println("输入的书籍名:"+queryBookName);
        List<Books> list = bookService.queryBookByName(queryBookName);
        System.out.println("list:"+list);
        if(list==null||list.size()==0){
            list=bookService.queryAllBook();
            System.out.println("未查到!!!");
            model.addAttribute("error","未查到");
        }
        model.addAttribute("list",list);
        return "allBook";
    }
}
