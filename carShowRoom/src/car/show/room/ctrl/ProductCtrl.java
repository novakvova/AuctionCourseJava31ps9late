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
import car.show.room.service.CategoryService;
import car.show.room.service.ProductService;

@Controller
public class ProductCtrl {
	// @Resource(name = "registrationService")
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "/product/add", method = RequestMethod.GET)
	public String showRegistrationForm(WebRequest request, Model model) {
		ProductDTO productDTO = new ProductDTO();
		model.addAttribute("product", productDTO);
		model.addAttribute("categories", categoryService.GetAllCategories());
		return "addproduct";
	}

	@RequestMapping(value = "/admin/products", method = RequestMethod.GET)
	public String showAllProducts(WebRequest request, Model model) {
		model.addAttribute("products", productService.GetAllProducts());
		return "products";
	}

	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public ModelAndView registerUserAccount(@ModelAttribute("product") ProductDTO productDTO, BindingResult result,
			WebRequest request, Errors errors) {
		Product prod = new Product();
		prod = createProduct(productDTO, result);
		return new ModelAndView("result", "product", productDTO);

	}

	private Product createProduct(ProductDTO productDTO, BindingResult result) {
		Product prod = productService.AddProduct(productDTO);
		return prod;
	}

}
