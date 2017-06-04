local state = 1
local pag = 1
local redes = nil
local mouse
local x
local y


function setclick( )
x=love.mouse.getX()
y=love.mouse.getY()
	if love.mouse.isDown(1) then
		mouse= 1
	else
		mouse = 0
	end
	------------------------------------voltar
	if mouse == 1 and x>= 600 and x<= 725 and y>= 500 and y<= 550  and (pag == 2 or pag == 2.1 or pag == 3) then  --opção voltar
		if pag == 2 then
			pag = 1
			state = 1
		elseif pag == 2.1 then
			pag = 2
			state = 2
		elseif pag == 3 then
			pag= 1
			state =1
		end
------------------------------------------- opções
	elseif mouse == 1 and x>=50 and x<= 300 and y>= 275 and y <= 340 and pag == 1 then -- opção opções
		state = 2
		pag = 2
----------------------------------------------- sair
	elseif mouse== 1 and x>=50 and x<= 150 and y>= 350 and y<= 390 and pag == 1 then   -- opção quit
		state = 3
--------------------------------------------idioma
	elseif mouse == 1 and x>= 50 and x <= 200 and y>=200 and y <= 250 and pag == 2 then -- opção idioma
		state = 4
		pag = 2.1
		---------------------------- créditos--------------------------------
		elseif mouse==1 and x>= 50 and x<= 200 and y>= 425 and y <= 475 and pag == 1 then
			state = 5
			pag = 3
				--links das redes sociais
				elseif mouse == 1 and x>= 50 and x <= 150 and y>=200 and y <= 250 and pag == 3 then -- opção idioma
					redes=love.system.openURL("https://www.facebook.com/matheus.boaro")
				elseif mouse == 1 and x>= 50 and x <= 150 and y>= 275 and y <= 340 and pag == 3 then -- opção idioma
					redes=love.system.openURL("https://www.instagram.com/boaromatheus/?hl=pt-br")
				elseif mouse == 1 and x>= 50 and x <= 150 and y>=340 and y <= 390 and pag == 3 then -- opção idioma
					redes=love.system.openURL("https://twitter.com/matheusboaro_")
	end
		------------------------- musica----------------
		if state == 1 then
			love.audio.play (mus)
		--else
			--love.audio.stop (mus)
		end
end
function menu()
-----------------------pagina inicial ---------------
	if state == 1 then
		love.graphics.draw(ceu,0,0)
		love.graphics.setFont(love.graphics.newFont(fonte,30))
		love.graphics.print("MEU JOGO",275,50,0,2)
		love.graphics.print("PLAY", 50,200,0,2)
		love.graphics.print ("OPTIONS", 50, 275,0,2)
		love.graphics.print ("QUIT", 50, 350,0,2)
		love.graphics.print ("CRÉDITOS", 50, 425,0,2)
		love.graphics.reset()
---------------------------------- opções ----------------------
	elseif state == 2  then
		love.graphics.draw(ceu,0,0)
		love.graphics.setFont(love.graphics.newFont(fonte,30))
		love.graphics.print ("OPTIONS", 300,50,0,2)
		love.graphics.print ("IDIOMA", 50,200,0,2)
		love.graphics.print ("AUDIO", 50,275,0,2)
		love.graphics.print ("VOLTAR", 600,500,0,2)
		------------------------------- voltar ------------------------
	elseif state== 21 then
		love.graphics.draw(ceu,0,0)
		love.graphics.setFont(love.graphics.newFont(fonte,30))
		love.graphics.print("MEU JOGO",300,100,0,2)
		love.graphics.print("PLAY", 50,200,0,2)
		love.graphics.print ("OPTIONS", 50, 275,0,2)
		love.graphics.print ("QUIT", 50, 350,0,2)
		love.graphics.print ("CRÉDITOS", 50, 425,0,2)
		love.graphics.reset()
	-------------------------------- sair_-----------------------------
	elseif state == 3 then
		love.event.quit()
---------------------------------- idioma-----------------------------------
	elseif state == 4 then
		love.graphics.draw (ceu,0,0)
		love.graphics.setFont(love.graphics.newFont(fonte,30))
		love.graphics.print("IDIOMA", 350,50,0,2)
		love.graphics.print ("PORTUGUÊS (BRASIL)", 50,200,0,2)
		love.graphics.print ("INGLÊS", 50,275,0,2)
		love.graphics.print ("VOLTAR", 600,500,0,2)
		love.graphics.reset ()
-------------------------------------- crédito -----------------------------------
	elseif state == 5 then
		love.graphics.draw (ceu,0,0)
		love.graphics.draw (facebook,50,200,0,0.5)
		love.graphics.draw (instagram,50,275,0,0.5)
		love.graphics.draw (twitter,50,350,0,0.5)
		love.graphics.setFont(love.graphics.newFont(fonte,30))
		love.graphics.print ("VOLTAR", 600,500,0,2)
		love.graphics.reset ()

	end


end