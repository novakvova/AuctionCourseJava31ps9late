package car.show.room.ctrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import car.show.room.pojo.Product;
import car.show.room.pojo.ProductDTO;
import car.show.room.service.ProductService;

@Controller
public class ProductCtrl {
	// @Resource(name = "registrationService")
	@Autowired
	private ProductService productService;

	@RequestMapping(value = "/product/add", method = RequestMethod.GET)
	public String showRegistrationForm(WebRequest request, Model model) {
		ProductDTO productDTO = new ProductDTO();
		model.addAttribute("product", productDTO);
		System.out.println("test  ctrl");
		return "addproduct";
	}

	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public ModelAndView registerUserAccount(@ModelAttribute("product") ProductDTO productDTO, BindingResult result,
		WebRequest request, Errors errors) {
		Product prod = new Product();
		// System.out.println(accountDto.toString());
//	    if (!result.hasErrors()) {
		prod = createProduct(productDTO, result);
//	    }
//	    if (registered == null) {
//	        result.rejectValue("email", "message.regError");
//	    }
//	    if (result.hasErrors()) {
//	        return new ModelAndView("registration", "user", accountDto);
//	    } 
//	    else {
		return new ModelAndView("result", "product", productDTO);
		// }
		// rest of the implementation
	}

	private Product createProduct(ProductDTO productDTO, BindingResult result) {
		Product prod = productService.AddProduct(productDTO);
		return prod;
	}

}
