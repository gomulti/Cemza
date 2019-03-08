
 var posicion = 2;
 var slider_activo = true;
 var slider_actual = 1;
 var num = 0;
 var inicio = 0;
 
	
$(document).ready(function(){
  $(".button-next a img").click(function(){	
   $('#nosotros-wrapper ul li a').removeClass('seleccionado');
   
   if(posicion == 5)
    posicion = 1; 
	
   $('#nav-con-'+posicion).addClass('seleccionado');
     
	posicion++;
	
	num = 0;
  });
});

$(document).ready(function(){
  $(".button-prev a img").click(function(){	
   $('#nosotros-wrapper ul li a').removeClass('seleccionado');
   
   if((posicion-1) == 1)
    posicion = 6;  
   
    posicion --;
	
	num = 0;
    
   $('#nav-con-'+(posicion-1)).addClass('seleccionado');     
  });
});


function actualizar_slider(pos_electa)
{
  var num_click = 0;
  
  posicion_act();
  
  if(pos_electa > (posicion-1))
  {
   num_click = pos_electa - (posicion-1);
   
   for(var r=0; r < num_click ; r++)
     $('.button-next a img').click();
	 
  }
  
  else if(pos_electa < (posicion-1) )
  {
   num_click = (posicion-1) - pos_electa;
   
   for(var r=0; r < num_click ; r++)
     $('.button-prev a img').click();
  }
  
  //Scroll
 /*  $('html, body').animate({
	    scrollTop: $("#conocenos-slider").offset().top - 100
  }, 400, 'swing');  
	 */ 
    
  slider_actual = pos_electa;
  
  inicio++;
}

function posicion_act()
{
  var act_p = 0;
  
  for(var r=1; r < 5;  r++)
  {
	if($("#nav-con-"+r).hasClass('activo'))  
	{
	  act_p = r;	 
	  break;	 
    }
  }
 
 if(act_p!=0) 
  if(slider_actual != act_p)
   slider_actual = act_p;
}

