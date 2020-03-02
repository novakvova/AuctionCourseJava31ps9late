package car.show.room.ctrl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import car.show.room.pojo.Product;
import car.show.room.pojo.ProductDTO;
import car.show.room.pojo.product.ProductEditDTO;
import car.show.room.service.CategoryService;
import car.show.room.service.ProductService;

@Controller
@RequestMapping(value = "/admin")
public class ProductCtrl {
	// @Resource(name = "registrationService")
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;

	@RequestMapping(value = "/products/add", method = RequestMethod.GET)
	public String showRegistrationForm(WebRequest request, Model model) {
		ProductDTO productDTO = new ProductDTO();
		model.addAttribute("product", productDTO);
		model.addAttribute("categories", categoryService.GetAllCategories());
		return "addproduct";
	}

	@RequestMapping(value = "/products", method = RequestMethod.GET)
	public String showAllProducts(WebRequest request, Model model) {
		model.addAttribute("products", productService.GetAllProducts());
		return "products";
	}

	@RequestMapping(value = "/products/add", method = RequestMethod.POST)
	public ModelAndView registerUserAccount(@ModelAttribute("product") ProductDTO productDTO, BindingResult result,
			WebRequest request, Errors errors) {
		Product prod = new Product();
		prod = createProduct(productDTO, result);
		return new ModelAndView("result", "product", productDTO);

	}

	// admin/products/edit/1
	@RequestMapping(value = "/products/edit/{id}", method = RequestMethod.GET)
	public String showEditProductForm(@PathVariable("id") String id, WebRequest request, Model model) {
		ProductEditDTO productEditDTO = new ProductEditDTO();
		System.out.println("edit method; id=" + id);
		Product product = productService.GetById(Long.parseLong(id));
		productEditDTO.setId(product.getId());
		productEditDTO.setDescription(product.getDescription());
		productEditDTO.setName(product.getName());
		productEditDTO.setPrice(product.getPrice());
		productEditDTO.setImage(product.getImage());

		Long catId = product.getCategory().getId();
		productEditDTO.setCategory_id(catId.toString());
		productEditDTO.setCategories(categoryService.GetAllCategories());
		model.addAttribute("productEdit", productEditDTO);
		return "editproduct";
	}

	@RequestMapping(value = "/products/edit/{id}", method = RequestMethod.POST)
	public String editProduct(@PathVariable("id") String id, @ModelAttribute("productDTO") ProductEditDTO productDTO,
			BindingResult result, ModelMap model) {
		System.out.println("id" + id);
		productDTO.setId(Long.valueOf(id));
		System.out.println(productDTO.toString());
		productService.Update(productDTO);
		model.addAttribute("products", productService.GetAllProducts());
		return "products";
	}

	@RequestMapping(value = "/products/delete/{id}", method = RequestMethod.GET)
	public String showDeleteProductForm(@PathVariable("id") String id, WebRequest request, Model model) {
		ProductEditDTO productEditDTO = new ProductEditDTO();
		System.out.println("delete method method; id=" + id);
		Product product = productService.GetById(Long.parseLong(id));
		productEditDTO.setId(product.getId());
		productEditDTO.setDescription(product.getDescription());
		productEditDTO.setName(product.getName());
		productEditDTO.setPrice(product.getPrice());
		productEditDTO.setImage(product.getImage());

		Long catId = product.getCategory().getId();
		productEditDTO.setCategory_id(catId.toString());
		productEditDTO.setCategories(categoryService.GetAllCategories());
		model.addAttribute("productDelete", productEditDTO);
		return "deleteproduct";
	}

	@RequestMapping(value = "/products/delete/{id}", method = RequestMethod.POST)
	public String deleteProduct(@PathVariable("id") String id, @ModelAttribute("productDTO") ProductEditDTO productDTO,
			BindingResult result, ModelMap model) {
		System.out.println("id" + id);
		long deleteId = Long.parseLong(id);
		productService.Delete(deleteId);
		model.addAttribute("products", productService.GetAllProducts());
		return "products";
	}

	private Product createProduct(ProductDTO productDTO, BindingResult result) {
		Product prod = productService.AddProduct(productDTO);
		return prod;
	}

}
