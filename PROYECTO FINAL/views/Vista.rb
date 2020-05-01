class Vista

   def mostrarMensaje(resultado)
   	  puts resultado
   end

   def imprimirListado(arreglo)
   	  for item in arreglo
   	  	 puts item.muestraDatos
   	  end
   end

   def imprimirListaPersonas(arregloPersonas)
   	  for persona in arregloPersonas
   	  	 puts persona.muestraDatos
   	  end
   end
end