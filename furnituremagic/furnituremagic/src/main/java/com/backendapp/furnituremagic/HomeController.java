package com.backendapp.furnituremagic;

import jdk.nashorn.internal.objects.NativeJSON;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.backendapp.furnituremagic.dao.ProductRepo;


import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController
{

    @Autowired
    ProductRepo prod_repo_object;
    
    List<Product>prod_by_id_array= new ArrayList<>();
    
    @RequestMapping("/")
    public String home(Model m)
    {
        System.out.println("Home Page Requested");

        List<Product> all_products= prod_repo_object.findAll();

        m.addAttribute("allProducts",all_products);

        return "product";
    }

    @RequestMapping("Products")
    public String addNewProduct(@ModelAttribute("productData") Product prod,Model m)
    {
        prod_repo_object.save(prod);
        //System.out.print(prod);
        List<Product> all_products= prod_repo_object.findAll();

        m.addAttribute("allProducts",all_products);

        return "product";

    }
    

    @RequestMapping("Product")
    public String getProduct(@RequestParam("product_id") int product_id,Model m)
    {
        Product obj  = prod_repo_object.getProductData(product_id);
        prod_by_id_array.add(obj);

        m.addAttribute("result",prod_by_id_array);

        return "visible";
    }
    
}