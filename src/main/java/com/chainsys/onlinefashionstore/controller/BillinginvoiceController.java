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
import com.chainsys.onlinefashionstore.service.BillinginvoiceService;

@Controller
@RequestMapping("/")
public class BillinginvoiceController {
		@Autowired
		BillinginvoiceService billinvoiceservice;

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
		public String showAddForm(Model model) {
			BillingInvoice billinvoicelist = new BillingInvoice();
			model.addAttribute("addbilldetail", billinvoicelist);
			return "add-billinginvoice-form";
		}

		@PostMapping("/addbillinvoice")
		public String addNewbill(@ModelAttribute("addbilldetail") BillingInvoice billinvoicelist) {
			billinvoiceservice.save(billinvoicelist);
			return "redirect:/billinginvoice";
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
   

	

}
