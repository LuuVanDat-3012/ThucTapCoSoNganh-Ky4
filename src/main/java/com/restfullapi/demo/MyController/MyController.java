package com.restfullapi.demo.MyController;

import com.restfullapi.demo.Entity.Cart;
import com.restfullapi.demo.Entity.Feedback;
import com.restfullapi.demo.Entity.Phone;
import com.restfullapi.demo.Model.*;
import com.restfullapi.demo.Service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Controller
@Transactional
public class MyController {

    @Autowired
    PhoneService phoneService;
    @Autowired
    UserJPA userJPA;
    @Autowired
    PhoneJPA phoneJPA;
    @Autowired
    CartJPA cartJPA;
    @Autowired
    AuthenticationManager authenticationManager;

    @Autowired
    private FeedbackJPA feedbackJPA;
    @Autowired
    PhonePaging phonePaging;

    @GetMapping("/")
    public String getList(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        session.setAttribute("buyPhoneName", null);
        session.setAttribute("userid", userJPA.findIdByUsername((String) session.getAttribute("username")));
        return "redirect:/getPhone";
    }

    //  ĐĂNG NHẬP =======================
    @GetMapping("/getPhone")
    public String getListByPage(@RequestParam(name = "page", required = false, defaultValue = "0") int pageNumber,
                                HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession();
        List<Phone> listPhone = phoneJPA.getEachByBrand();
        List<PhoneDto> phoneDtoList = PhoneMapper.convertListPhone(listPhone);
        List<String> stringPNameList = phoneJPA.getPhoneName();
        request.setAttribute("listphone", phoneDtoList);
        session.setAttribute("stringPNameList", stringPNameList);
        session.setAttribute("url", null);

        return "Produce";
    }

    @GetMapping("/login")
    public String showFormLogin(HttpServletRequest request) {

        return "login";
    }

    @PostMapping("/perform-login")
    public void login(HttpServletRequest request, @RequestParam("username") String username,
                      @RequestParam("password") String password) throws Exception {
//        authenticate(username, password);
//        UserDetails user = (UserDetails) SecurityContextHolder.
//                getContext().getAuthentication().getPrincipal();
//        HttpSession session = request.getSession();
//        User user = userJPA.findByUserName(username);
//        CheckUser checkUser = new CheckUser();
//        String userid = checkUser.check(username, password, user);
//        if (userid != null) {
//            String buyPhoneName = (String) session.getAttribute("buyPhoneName");
////            session.setAttribute("messageLoginError", "");
////            session.setAttribute("username", user.getUserName());
////            session.setAttribute("userid", user.getUserId());
//            countOtherPage++;
//            if (buyPhoneName == null) {
//                return "redirect:/";
//            }
//            if (countOtherPage - countPageInfoPhone >= 1) {
//                return "redirect:/info-phone/" + buyPhoneName;
//            } else {
//                return "redirect:/";
//            }
//
//        } else {
//            session.setAttribute("username", null);
//            session.setAttribute("userid", null);
//            request.setAttribute("messageLoginError", "Sai tài khoản hoặc mật khẩu!!!");
//            return "login";
//        }


    }

    //  ĐĂNG KÝ =======================
    @RequestMapping("/registration")
    public String showFormRegistration(HttpServletRequest request) {

        return "Registration";
    }

//    @PostMapping("/registration")
//    public String checkFormRestration(HttpServletRequest request) {
//
//        return "ResultRegistration";
//    }


    //  Logout =======================
    @GetMapping("/perform-logout")
    public String logout(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.setAttribute("username", null);
        session.setAttribute("userid", null);
        session.setAttribute("url", null);
//        countPageInfoPhone = 0;
//        countOtherPage = 0;
        return "redirect:/getPhone";
    }

    //  TÌM KIẾM =======================
    @GetMapping("/danh-muc-san-pham")
    public String getListPhoneSearch(HttpServletRequest request, @RequestParam(name = "brandId", required = false, defaultValue = "") String brandId,
                                     @RequestParam(name = "page", required = false, defaultValue = "0") int pageNum) {
        Pageable pageable = PageRequest.of(pageNum, 12);
        Page<Phone> phonePage = phonePaging.getPhoneByBrandId(brandId, pageable);
        List<Phone> phoneList = phonePage.getContent();
        if(phoneList == null)
            request.setAttribute("messageSearch", "Không tìm thấy sản phẩm phù hợp !!!");
        else {
            request.setAttribute("brandId", brandId);
            request.setAttribute("phoneWasSearched", phoneList);
            request.setAttribute("totalPage", phonePage.getTotalPages());
        }



        return "PhoneListByBrand";
    }
//    @GetMapping("/danh-muc-san-pham")
//    public String showPhoneByBrand()

    @GetMapping("/sort-high-to-low")
    public String showPhonePriceHighToLow(HttpServletRequest request) {
        Pageable pageable = PageRequest.of(0, 12, Sort.by("giaTien").ascending());
        Page<Phone> phoneList = phoneJPA.findAll(pageable);
        request.setAttribute("listphone", phoneList.getContent());
        request.setAttribute("countPage", phoneList.getTotalPages());

        return "Produce";
    }

    @GetMapping("/sort-low-to-high")
    public String showPhonePriceLowToHigh(HttpServletRequest request, @RequestParam(name = "pageNumber", required = false, defaultValue = "0") int pageNumber) {
        Pageable pageable = PageRequest.of(0, 12, Sort.by("giaTien"));
        Page<Phone> phoneList = phoneJPA.findAll(pageable);
        request.setAttribute("listphone", phoneList.getContent());
        request.setAttribute("countPage", phoneList.getTotalPages());
        return "Produce";
    }

    @GetMapping("/info-phone/{phoneName}")
    public String showInfoPhone(@PathVariable(value = "phoneName", required = true) String phoneName, HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.setAttribute("buyPhoneName", phoneName);
        List<Phone> phoneList = phoneJPA.findPhoneSameBrand(phoneName);
        request.setAttribute("phoneSameBrand", phoneList);
        String url = request.getRequestURI();
        int phoneId = phoneJPA.getIdByName(phoneName);
        try{
            request.setAttribute("feedbackpoint", feedbackJPA.getFeedbackPoint(phoneId));
        }catch (Exception e){
            request.setAttribute("feedbackpoint", 0);
        }

        List<Feedback> list = feedbackJPA.findAllByPhonePhoneID(phoneId);
        List<FeedbackContent> feedbackContentList = new ArrayList<>();
        for (int i = 0; i < list.size(); i++) {
            FeedbackContent feedbackContent = new FeedbackContent(list.get(i).getUser().getUserName(),
                    list.get(i).getFeedbackRate().getFeedbackPoint(),list.get(i).getFeedbackContent());
          feedbackContentList.add(feedbackContent);
        }
        request.setAttribute("listfeedbackcontent",feedbackContentList);
        session.setAttribute("url", url);
        return "InfoPhone";
    }

    //  ThÊM VÀO GIỎ HÀNG =======================
    @GetMapping("/into-cart")
    public String addToCart(HttpServletRequest request) {

        HttpSession session = request.getSession();
        String userName = (String) session.getAttribute("username");
        if (userName == null) {
            return "redirect:/login";
        } else {
            return "redirect:/info-phone/" + (String) session.getAttribute("buyPhoneName");
        }
    }

    @GetMapping("/order")
    public String buyPhone(HttpServletRequest request, @PathVariable(name = "phoneName", required = false) String phoneName){
        HttpSession session = request.getSession();
        String userName = (String) session.getAttribute("username");
        if (userName == null) {
            return "redirect:/login";
        } else {
            String userId = (String)session.getAttribute("userid");
            List<CartDTO> cartDTOList = CartMapper.convertCartList(cartJPA.getCartByUserId(userId));
            request.setAttribute("cartPhone", cartDTOList);
            return "Order";
        }
    }


    @GetMapping("/show-cart")
    public String showCart(HttpServletRequest request) {
        HttpSession session = request.getSession();
        String userId = userJPA.findIdByUsername((String) session.getAttribute("username"));
        List<Cart> cartList = cartJPA.getCartByUserId(userId);
        List<CartDTO> cartDTOS = CartMapper.convertCartList(cartList);
        if (userId == null) {
            return "redirect:/login";
        } else {
            request.setAttribute("cartPhone", cartDTOS);
            return "Cart";
        }
    }
    private void authenticate(String username, String password) throws Exception {
        try {
            authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(username, password));
        } catch (DisabledException e) {
            throw new Exception("USER_DISABLED", e);
        } catch (BadCredentialsException e) {
            throw new Exception("INVALID_CREDENTIALS", e);
        }
    }


}
