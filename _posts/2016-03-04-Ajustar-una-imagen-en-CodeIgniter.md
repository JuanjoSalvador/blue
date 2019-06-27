---
layout: post # Sustituye el layout si lo usas uno diferente
title: Ajustar una imagen en CodeIgniter # Nombre generado automáticamente
---

Para una práctica de CodeIgniter, que consistía en crear una aplicación ficticia para administrar una base de datos, necesité añadir imágenes de perfil para los usuarios de esta. Las imágenes de perfil tenían que visualizarse en una sección cuadrada de 80x80px, un poco pequeña, y que podía deformar las imágenes si no eran del tamaño adecuado al redimensionarlas en el cliente. Además de que, si estas pesan demasiado, estaríamos ante una carga excedente para la web.

### La solución
Ajustar las imágenes a un cuadrado de 80x80 píxeles desde el servidor. Para ello, primero necesitamos recortar una sección cuadrada del centro de la imagen, y del mayor tamaño posible, para posteriormente, ajustar esa nueva imagen cuadrada al tamaño deseado.

En mi caso, usando como medida estándar la medida más pequeña de la imagen. Es decir, si tengo una foto de 400x150px, el recorte se hará de una sección central de 150x150.



### El código

Para trabajar con estas funciones de CodeIgniter, primero tenemos que añadir la librería `image_lib`, ya sea desde `config/autoload.php`, o desde la función `__construct()` de la clase con

```
$this->load->library('image_lib');
```

Con la función `crop()` recortamos una sección cuadrada del centro de la imagen. Esto varía según las dimensiones de la imagen.

```
public function crop($img, $img_w, $img_h) {
		$config['image_library']  = 'gd2';
		$config['source_image']   = $img;
		$config['maintain_ratio'] = FALSE;

		if ($img_w > $img_h) {
			$config['width']      = $img_h;
			$config['height']     = $img_h;
			$config['x_axis']     = $img_w / 4;
		}

		if ($img_h > $img_w) {
			$config['width']      = $img_w;
			$config['height']     = $img_w;
			$config['y_axis']     = $img_h / 4;
		}

		if ($img_w == $img_h) {
			$config['width']      = $img_w;
			$config['height']     = $img_h;
		}

		$this->image_lib->initialize($config);

		if (!$this->image_lib->crop()) {
			echo $this->image_lib->display_errors();
		} else {
			$this->image_lib->clear();
		}
	}
```
  
Y con la función `resize()`, redimensionamos esa nueva imagen que hemos creado (y sobreescrito en nuestro directorio) al tamaño deseado, en mi caso, 80x80px.

```
	public function resize($img) {
		$new_size['image_library']  = 'gd2';
		$new_size['source_image']   = $img;
		$new_size['maintain_ratio'] = TRUE;
		$new_size['width']          = 80;
		$new_size['height']         = 80;

		$this->image_lib->initialize($new_size);
		if (!$this->image_lib->resize()) {
			echo $this->image_lib->display_errors();
		}
	}
```

### Conclusion
A partir de una imagen de 498x670px, en formato JPG y de 315 kB de peso, conseguí crear una imagen de 80x80px, JPG y de ¡tan solo 12 kB! Con esto conseguí reducir la carga del cliente, acelerar así el tiempo de rederizado de mi web, y aprender a manejar mejor la librería de procesado de imágenes que incorpora CodeIgniter.
