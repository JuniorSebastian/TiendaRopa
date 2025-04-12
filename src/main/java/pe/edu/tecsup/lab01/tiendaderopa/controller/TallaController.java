package pe.edu.tecsup.lab01.tiendaderopa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import pe.edu.tecsup.lab01.tiendaderopa.model.Talla;
import pe.edu.tecsup.lab01.tiendaderopa.service.TallaService;

@Controller
@RequestMapping("/tallas")
public class TallaController {

    @Autowired
    private TallaService tallaService;

    @GetMapping
    public String listarTallas(Model model,
                               @RequestParam(value = "success", required = false) String success,
                               @RequestParam(value = "error", required = false) String error) {
        model.addAttribute("tallas", tallaService.findAll());
        model.addAttribute("success", success);
        model.addAttribute("error", error);
        return "tallas/lista";
    }

    @GetMapping("/nuevo")
    public String mostrarFormularioNuevo(Model model) {
        model.addAttribute("talla", new Talla());
        return "tallas/formulario";
    }

    @PostMapping("/guardar")
    public String guardarTalla(@ModelAttribute Talla talla) {
        tallaService.save(talla);
        return "redirect:/tallas";
    }

    @GetMapping("/editar/{id}")
    public String mostrarFormularioEditar(@PathVariable Long id, Model model) {
        tallaService.findById(id).ifPresent(talla -> model.addAttribute("talla", talla));
        return "tallas/formulario";
    }

    @GetMapping("/eliminar/{id}")
    public String eliminarTalla(@PathVariable Long id, RedirectAttributes redirectAttributes) {
        try {
            tallaService.deleteById(id);
            redirectAttributes.addAttribute("success", "Talla eliminada correctamente.");
        } catch (DataIntegrityViolationException e) {
            redirectAttributes.addAttribute("error", "No puedes eliminar esta talla porque está relacionada con uno o más productos.");
        } catch (Exception e) {
            redirectAttributes.addAttribute("error", "Ocurrió un error al intentar eliminar la talla.");
        }
        return "redirect:/tallas";
    }
}
