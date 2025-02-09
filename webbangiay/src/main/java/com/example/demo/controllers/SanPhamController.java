//package com.example.demo.controllers;
//
//import com.example.demo.models.ChatLieu;
//import com.example.demo.models.ThuongHieu;
//import com.example.demo.models.HinhAnh;
//import com.example.demo.models.SanPham;
//import com.example.demo.services.ChatLieuService;
//import com.example.demo.services.ThuongHieuService;
//import com.example.demo.services.HinhAnhService;
//import com.example.demo.services.SanPhamService;
//import jakarta.validation.Valid;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.data.domain.Page;
//import org.springframework.data.domain.PageRequest;
//import org.springframework.data.domain.Pageable;
//import org.springframework.data.domain.Sort;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import java.sql.Date;
//import java.time.LocalDate;
//import java.util.List;
//import java.util.Optional;
//import java.util.UUID;
//
//@Controller
//@RequestMapping("/san-pham")
//public class SanPhamController {
//
//   @Autowired
//   private SanPhamService sanPhamService;
//
//   @Autowired
//   private HinhAnhService hinhAnhService;
//
//   @Autowired
//   private ThuongHieuService thuongHieuService;
//
//   @Autowired
//   private ChatLieuService chatLieuService;
//
//   @GetMapping("/hien-thi")
//   public String hienThi(Model model, @RequestParam("num") Optional<Integer> num,
//                         @RequestParam(name = "size", defaultValue = "5", required = false) Integer size) {
//       Sort sort = Sort.by("ngayTao").descending();
//       Pageable pageable = PageRequest.of(num.orElse(0), size, sort);
//       Page<SanPham> list = sanPhamService.getAll(pageable);
//       model.addAttribute("listSanPham", list.getContent());
//       model.addAttribute("total", list.getTotalPages());
//       return "san-pham/hien-thi";
//   }
//
//   @GetMapping("/view-add")
//   public String viewAdd(Model model, @ModelAttribute("sanPham") SanPham sanPham, @ModelAttribute("hinhAnh") HinhAnh hinhAnh, @ModelAttribute("hangSanPham") ThuongHieu thuongHieu, @ModelAttribute("chatLieu") ChatLieu chatLieu) {
//
//       List<ThuongHieu> listThuongHieu = thuongHieuService.findAll();
//       List<ChatLieu> listChatLieu = chatLieuService.findAll();
//       model.addAttribute("sanPham", new SanPham());
//       model.addAttribute("listHangSanPham", listThuongHieu);
//       model.addAttribute("listChatLieu", listChatLieu);
//       return "san-pham/add";
//   }
//
//   @GetMapping("/view-update/{id}")
//   public String detail(Model model, @PathVariable("id") UUID id, @ModelAttribute("sanPham") SanPham sanPham, @ModelAttribute("hinhAnh") HinhAnh hinhAnh, @ModelAttribute("hangSanPham") ThuongHieu thuongHieu, @ModelAttribute("chatLieu") ChatLieu chatLieu) {
//       model.addAttribute("listHangSanPham", thuongHieuService.findAll());
//       model.addAttribute("listChatLieu", chatLieuService.findAll());
//       SanPham hsp = sanPhamService.findById(id);
//       model.addAttribute("sanPham", hsp);
//       return "san-pham/update";
//   }
//
//   @PostMapping("/add")
//   public String add(@Valid @ModelAttribute(name = "sanPham") SanPham sanPham, BindingResult bindingResult, Model model) {
//       if (bindingResult.hasErrors()) {
//           return "san-pham/add";
//       }
//       String maSP = "SP" + (sanPhamService.findAll().size() + 1);
//       sanPham.setMa(maSP);
//       sanPham.setNgayTao(Date.valueOf(LocalDate.now()));
//       sanPhamService.add(sanPham);
//       return "redirect:/san-pham/hien-thi";
//   }
//
//   @PostMapping("/update/{id}")
//   public String update(@ModelAttribute(name = "sanPham") SanPham sanPham,
//                        @PathVariable(name = "id") UUID id) {
//       SanPham nv = sanPhamService.findById(id);
//       sanPham.setId(id);
//       sanPham.setMa(nv.getMa());
//       sanPham.setNgayTao(nv.getNgayTao());
//       sanPham.setNgayCapNhat(Date.valueOf(LocalDate.now()));
//       sanPhamService.update(id, sanPham);
//       return "redirect:/san-pham/hien-thi";
//   }
//
//   @GetMapping("/delete/{id}")
//   public String delete(@PathVariable(name = "id") UUID id) {
//       sanPhamService.delete(id);
//       return "redirect:/san-pham/hien-thi";
//   }
//
//   @PostMapping("/modal-add-hang-san-pham")
//   public String addHangSanPham(@ModelAttribute("hangSanPham") @Valid ThuongHieu thuongHieu, BindingResult bindingResult) {
//       if (bindingResult.hasErrors()) {
//           return "san-pham/add";
//       }
//       String maHSP = "HSP" + (thuongHieuService.findAll().size() + 1);
//       thuongHieu.setMa(maHSP);
//       thuongHieu.setNgayTao(Date.valueOf(LocalDate.now()));
//       thuongHieuService.add(thuongHieu);
//       return "redirect:/san-pham/view-add";
//   }
//
//   @PostMapping("/modal-add-chat-lieu")
//   public String addChatLieu(@ModelAttribute("chatLieu") @Valid ChatLieu chatLieu, BindingResult bindingResult) {
//       if (bindingResult.hasErrors()) {
//           return "san-pham/add";
//       }
//       String maCL = "CL" + (chatLieuService.findAll().size() + 1);
//       chatLieu.setMa(maCL);
//       chatLieu.setNgayTao(Date.valueOf(LocalDate.now()));
//       chatLieuService.add(chatLieu);
//       return "redirect:/san-pham/view-add";
//   }
//
////    @PostMapping("/search")
////    public String search(Model model, @ModelAttribute("sanPham") SanPham sanPham, @RequestParam("search") String search) {
////        List<SanPham> list = sanPhamService.search(search);
////        model.addAttribute("listSanPham", list);
////        return "san-pham/hien-thi";
////    }
//}
