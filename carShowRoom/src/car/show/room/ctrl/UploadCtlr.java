package car.show.room.ctrl;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.multipart.MultipartFile;

import car.show.room.pojo.UserDTO;

@Controller
public class UploadCtlr {
	
	@Autowired
    //private HttpServletRequest request;
	ServletContext context;

	@RequestMapping(value="/admin/upload", method = RequestMethod.GET)
	public String showRegistrationForm(WebRequest request, Model model) {
		model.addAttribute("file", "");
	    return "upload";
	}
	
	@RequestMapping(value = "/admin/upload", method = RequestMethod.POST, consumes = {"multipart/form-data"})
	public String submit(@RequestParam("file") MultipartFile file, ModelMap modelMap, HttpServletRequest request ) throws IllegalStateException, IOException {
		String name=file.getOriginalFilename();
		long z=file.getSize();
		System.out.println("file size "+name+z);
		
		String filePath = context.getRealPath("/resources/images/"); //request.getServletContext().getRealPath("/uploads/"); 
		System.out.println(filePath+name);
		
		file.transferTo(new File(filePath+name));
		
	    //modelMap.addAttribute("file", file);
	    return "upload";
	}
}