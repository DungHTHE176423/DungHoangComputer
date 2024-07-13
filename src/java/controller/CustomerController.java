/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dal.BrandDAO;
import dal.ProductDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Vector;
import model.Brand;
import model.Product;


public class CustomerController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        HttpSession session = req.getSession();
        String service = req.getParameter("service");
        Vector<Brand> brands = (new BrandDAO()).getAll();
        req.setAttribute("allBrands", brands);

        if (session.getAttribute("numberProductsInCart") == null) {
            session.setAttribute("numberProductsInCart", 99999);
        }
        
        if (service == null) {
            service = "listAllProducts";
        }

        if (service.equals("listAllProducts")) {
            Vector<Product> products = (new ProductDAO()).getAll();
            req.setAttribute("allProducts", products);

            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }

        if (service.equals("searchByKeywords")) {
            String keywords = req.getParameter("keywords");
            String sortBy = req.getParameter("sortBy");
            String filterByPrice = req.getParameter("filterByPrice");
            String filterByBrand = req.getParameter("filterByBrand");

            if (filterByPrice == null) {
                filterByPrice = "price-all";
            }

            if (filterByBrand == null) {
                filterByBrand = "brand-all";
            }

            Vector<Product> productsAfterFilterByKeywords = (new ProductDAO()).getProductsByKeywords(keywords);
            Vector<Product> productsAfterFilterByPrice;
            Vector<Product> productsAfterFilterByBrand;

            req.setAttribute("keywords", keywords);
            //filter by price
            productsAfterFilterByPrice = (new ProductDAO()).filterByPrice(filterByPrice, productsAfterFilterByKeywords);
            req.setAttribute("filterByPrice", filterByPrice);

            //filter by brand
            productsAfterFilterByBrand = (new ProductDAO()).filterByBrand(filterByBrand, productsAfterFilterByPrice);
            req.setAttribute("filterByBrand", filterByBrand);

            if (sortBy == null || sortBy.equals("unsorted")) {
                req.setAttribute("allProducts", productsAfterFilterByBrand);
                req.setAttribute("sortBy", "unsorted");

            } else if (sortBy.equals("priceLowHigh") || sortBy.equals("priceHighLow") || sortBy.equals("latest")) {
                Vector<Product> productsAfterFilter = (new ProductDAO()).sortProducts(productsAfterFilterByBrand, sortBy);

                req.setAttribute("allProducts", productsAfterFilter);
                req.setAttribute("sortBy", sortBy);
            }
            req.getRequestDispatcher("index.jsp").forward(req, resp);
        }

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.sendRedirect("index.jsp");
    }

}


//package controller;
//
//import dal.BrandDAO;
//import dal.ProductDAO;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import jakarta.servlet.http.HttpSession;
//import java.io.IOException;
//import java.util.Vector;
//import model.Brand;
//import model.Product;
//
//public class CustomerController extends HttpServlet {
//
//    private static final String TEXT_HTML_UTF8 = "text/html;charset=UTF-8";
//    private static final String ALL_BRANDS = "allBrands";
//    private static final String NUMBER_PRODUCTS_IN_CART = "numberProductsInCart";
//    private static final String LIST_ALL_PRODUCTS = "listAllProducts";
//    private static final String ALL_PRODUCTS = "allProducts";
//    private static final String INDEX_JSP = "index.jsp";
//    private static final String SEARCH_BY_KEYWORDS = "searchByKeywords";
//    private static final String KEYWORDS = "keywords";
//    private static final String SORT_BY = "sortBy";
//    private static final String FILTER_BY_PRICE = "filterByPrice";
//    private static final String FILTER_BY_BRAND = "filterByBrand";
//    private static final String PRICE_ALL = "price-all";
//    private static final String BRAND_ALL = "brand-all";
//    private static final String UNSORTED = "unsorted";
//    private static final String PRICE_LOW_HIGH = "priceLowHigh";
//    private static final String PRICE_HIGH_LOW = "priceHighLow";
//    private static final String LATEST = "latest";
//
//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.setContentType(TEXT_HTML_UTF8);
//        HttpSession session = req.getSession();
//        String service = req.getParameter("service");
//        Vector<Brand> brands = (new BrandDAO()).getAll();
//        req.setAttribute(ALL_BRANDS, brands);
//
//        if (session.getAttribute(NUMBER_PRODUCTS_IN_CART) == null) {
//            session.setAttribute(NUMBER_PRODUCTS_IN_CART, 99999);
//        }
//
//        if (service == null) {
//            service = LIST_ALL_PRODUCTS;
//        }
//
//        if (service.equals(LIST_ALL_PRODUCTS)) {
//            Vector<Product> products = (new ProductDAO()).getAll();
//            req.setAttribute(ALL_PRODUCTS, products);
//            req.getRequestDispatcher(INDEX_JSP).forward(req, resp);
//        }
//
//        if (service.equals(SEARCH_BY_KEYWORDS)) {
//            String keywords = req.getParameter(KEYWORDS);
//            String sortBy = req.getParameter(SORT_BY);
//            String filterByPrice = req.getParameter(FILTER_BY_PRICE);
//            String filterByBrand = req.getParameter(FILTER_BY_BRAND);
//
//            if (filterByPrice == null) {
//                filterByPrice = PRICE_ALL;
//            }
//
//            if (filterByBrand == null) {
//                filterByBrand = BRAND_ALL;
//            }
//
//            Vector<Product> productsAfterFilterByKeywords = (new ProductDAO()).getProductsByKeywords(keywords);
//            Vector<Product> productsAfterFilterByPrice;
//            Vector<Product> productsAfterFilterByBrand;
//
//            req.setAttribute(KEYWORDS, keywords);
//            // filter by price
//            productsAfterFilterByPrice = (new ProductDAO()).filterByPrice(filterByPrice, productsAfterFilterByKeywords);
//            req.setAttribute(FILTER_BY_PRICE, filterByPrice);
//
//            // filter by brand
//            productsAfterFilterByBrand = (new ProductDAO()).filterByBrand(filterByBrand, productsAfterFilterByPrice);
//            req.setAttribute(FILTER_BY_BRAND, filterByBrand);
//
//            if (sortBy == null || sortBy.equals(UNSORTED)) {
//                req.setAttribute(ALL_PRODUCTS, productsAfterFilterByBrand);
//                req.setAttribute(SORT_BY, UNSORTED);
//            } else if (sortBy.equals(PRICE_LOW_HIGH) || sortBy.equals(PRICE_HIGH_LOW) || sortBy.equals(LATEST)) {
//                Vector<Product> productsAfterFilter = (new ProductDAO()).sortProducts(productsAfterFilterByBrand, sortBy);
//                req.setAttribute(ALL_PRODUCTS, productsAfterFilter);
//                req.setAttribute(SORT_BY, sortBy);
//            }
//            req.getRequestDispatcher(INDEX_JSP).forward(req, resp);
//        }
//    }
//
//    @Override
//    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        resp.sendRedirect(INDEX_JSP);
//    }
//}
