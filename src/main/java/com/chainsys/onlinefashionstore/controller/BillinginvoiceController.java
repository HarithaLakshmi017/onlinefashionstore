package com.chainsys.onlinefashionstore.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.chainsys.onlinefashionstore.model.BillingInvoice;
import com.chainsys.onlinefashionstore.model.Product;
import com.chainsys.onlinefashionstore.service.BillinginvoiceService;
import com.chainsys.onlinefashionstore.service.ProductService;

@Controller
@RequestMapping("/")
public class BillinginvoiceController {
	@Autowired
	BillinginvoiceService billinvoiceservice;
	@Autowired
	ProductService productservice;

	@GetMapping("/billinginvoice")
	public String getBillDetailsAll(Model model) {
		List<BillingInvoice> billinvoicelist = billinvoiceservice.findAll();
		model.addAttribute("allbillinvoice", billinvoicelist);
		return "list-billinvoice";
	}

	@GetMapping("/findbillinvoiceid")
	public String findDetailById(@RequestParam("id") long id, Model model) {
		BillingInvoice billinvoicelist = billinvoiceservice.findByBillId(id);
		model.addAttribute("findById", billinvoicelist);
		return "find-billinvoice-id-form";
	}

	@GetMapping("/addbillinvoiceform")
	public String showAddForm(@RequestParam("id") long id,Model model) {
		BillingInvoice billinvoicelist = new BillingInvoice();
		model.addAttribute("addbilldetail", billinvoicelist);
		billinvoicelist.setProductId(id);
		return "add-billinginvoice-form";
	}

	@PostMapping("/addbillinvoice")
	public String addNewbill(@ModelAttribute("addbilldetail") BillingInvoice billinvoicelist,Model model) {
		billinvoiceservice.save(billinvoicelist);
		model.addAttribute("productId",billinvoicelist);
		return "redirect:/admin/successpage";
	}

	@GetMapping("/updatebillinvoiceform")
	public String showUpdateForm(@RequestParam("Id") long id, Model model) {
		BillingInvoice billinvoicelist = billinvoiceservice.findByBillId(id);
		model.addAttribute("updatebillinvoice", billinvoicelist);
		return "update-billinvoice-form";
	}

	@PostMapping("/updatebill")
	public String updateBill(@ModelAttribute("updatebilling") BillingInvoice billinvoicelist) {
		billinvoiceservice.save(billinvoicelist);
		return "redirect:/billinginvoice";
	}

	@GetMapping("/deletebillinvoice")
	public String deleteBill(@RequestParam("Id") long id) {
		billinvoiceservice.deleteBillById(id);
		return "redirect:/billinginvoice";
	}
	@GetMapping("/billlist")
	public String getAllBillList(@RequestParam("id")int id,Model model) {
		productservice.findById(id);
		model.addAttribute("proid", id);
		return "add-billdetail-form";
	}
	@GetMapping("/billpayment")
	public String billPayment(@RequestParam("id") long proid, Model model) {
		BillingInvoice billinvoice = new BillingInvoice();
		Product product = productservice.findById(proid);
		billinvoice.setProductId(proid);
		billinvoice.setRate(product.getRate());
		billinvoiceservice.save(billinvoice);
		return "add-billinvoice-form";
	}

}
