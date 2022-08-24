package com.chainsys.onlinefashionstore.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
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
		model.addAttribute("orderdetail", billinvoicelist);
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
		Product pro = productservice.findById(id);
		model.addAttribute("addbilldetail", billinvoicelist);
		billinvoicelist.setProductId(id);
		billinvoicelist.setRate(pro.getRate());
		billinvoicelist.setProductName(pro.getProductName());
		return "add-billinginvoice-form";
	}

	@PostMapping("/addbillinvoice")
	public String addNewbill(@Valid @ModelAttribute("addbilldetail") BillingInvoice billinvoicelist,Errors error,Model model) {
		if(error.hasErrors()) {
			return "add-billinginvoice-form";
		}
		else {
			try {
				billinvoiceservice.save(billinvoicelist);
				return "redirect:/admin/successpage";
			}catch (Exception e) {
				model.addAttribute("message",":(Failed to add bill");
			}
		}
		return "add-billinginvoice-form";
	}

	@GetMapping("/updatebillinvoiceform")
	public String showUpdateForm(@RequestParam("Id") long id, Model model) {
		BillingInvoice billinvoicelist = billinvoiceservice.findByBillId(id);
		model.addAttribute("updatebillinvoice", billinvoicelist);
		return "update-billinvoice-form";
	}

	@PostMapping("/updatebill")
	public String updateBill(@Valid @ModelAttribute("updatebilling") BillingInvoice billinvoicelist,Model model, Errors error) {
		if(error.hasErrors()) {
			return "update-billinvoice-form";
		}
		else {
			try {
				billinvoiceservice.save(billinvoicelist);
				return "redirect:/billinginvoice";
			}catch (Exception e) {
				model.addAttribute("message", ":(Bill update failed");
			}
		}
		return "update-billinvoice-form";
		
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
	@GetMapping("/getfilteremail")
	public String getEmailForm() {
		return "get-filter-email";
	}
	
	@GetMapping("/useremail")
	public String getAllStatus(@RequestParam("userEmail") String userEmail, Model model) {
		List<BillingInvoice> email = billinvoiceservice.userEmail(userEmail);
		model.addAttribute("orderdetail", email);
		return "list-billinvoice";
	}
}
