package pe.edu.tecsup.lab01.tiendaderopa.controller;

import pe.edu.tecsup.lab01.tiendaderopa.model.Producto;
import pe.edu.tecsup.lab01.tiendaderopa.service.CategoriaService;
import pe.edu.tecsup.lab01.tiendaderopa.service.ProductoService;
import pe.edu.tecsup.lab01.tiendaderopa.service.TallaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/productos")
public class ProductoController {

    @Autowired
    private ProductoService productoService;

    @Autowired
    private CategoriaService categoriaService;

    @Autowired
    private TallaService tallaService;

    @GetMapping
    public String listarProductos(Model model) {
        model.addAttribute("productos", productoService.findAll());
        return "productos/lista";
    }

    @GetMapping("/nuevo")
    public String mostrarFormularioNuevo(Model model) {
        model.addAttribute("producto", new Producto());
        model.addAttribute("categorias", categoriaService.findAll());
        model.addAttribute("tallas", tallaService.findAll());
        return "productos/formulario";
    }

    @PostMapping("/guardar")
    public String guardarProducto(@ModelAttribute Producto producto) {
        productoService.save(producto);
        return "redirect:/productos";
    }

    @GetMapping("/editar/{id}")
    public String mostrarFormularioEditar(@PathVariable Long id, Model model) {
        productoService.findById(id).ifPresent(producto -> model.addAttribute("producto", producto));
        model.addAttribute("categorias", categoriaService.findAll());
        model.addAttribute("tallas", tallaService.findAll());
        return "productos/formulario";
    }

    @GetMapping("/eliminar/{id}")
    public String eliminarProducto(@PathVariable Long id) {
        productoService.deleteById(id);
        return "redirect:/productos";
    }

    @GetMapping("/categoria/{id}")
    public String listarProductosPorCategoria(@PathVariable Long id, Model model) {
        model.addAttribute("productos", productoService.findByCategoriaId(id));
        return "productos/lista";
    }

    @GetMapping("/talla/{id}")
    public String listarProductosPorTalla(@PathVariable Long id, Model model) {
        model.addAttribute("productos", productoService.findByTallaId(id));
        return "productos/lista";
    }
}