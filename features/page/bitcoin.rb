class Bitcoin < SitePrism::Page
  element :cpf, '#id_cpfcnpj'
  element :password, '#id_password'
  element :signup, '#signup_button'
  element :ordens, :xpath, "//*[@id='coin-block_bitcoin']/div[4]/div[2]/div[2]/div/a"
  element :tabelaVenda, '#bitcoin-venda-form'
  element :ultimoPreco, '#ticker_ultimo'
  element :precoUnitario, '#id_preco_unitario'
  element :saldo, :xpath, "//*[@id='bitcoin-venda-form']/a[1]/small"
  element :valorTotal, '#div-venda-total-brl'
  element :usuario, '#identifierId'
  element :senha, :xpath, "//*[@id='password']/div[1]/div/div[1]/input"
  element :btnproximousuario, :xpath, "//*[@id='identifierNext']/content/span"
  #element :btnproximosenha, :xpath, "//*[@id='passwordNext']/content/span"
  element :btnproximosenha, :xpath, "//*[@id='passwordNext']/content/span"
  element :menulogin, :xpath, "//*[@id='gb']/div[1]/div[1]/div[2]/div[5]/div[1]/a/span"
  element :validarlogin, :xpath, "//*[@id='gb']/div[1]/div[1]/div[2]/div[5]/div[2]" #comentario novo
  element :btnEscrever, :css, '.T-I.J-J5-Ji.T-I-KE.L3'
  element :destinatarios, :css, '.vO'
  element :assunto, :css, '.aoT'
  element :corpoEmail, :css, '.Am.Al.editable.LW-avf'
  element :btnEnviarEmail, :css, '.J-J5-Ji.btA'# Está pegando pela classe. (necessario colocar o ponto antes)
  element :validarMsg, :css, '.dEOOab.RxsGPe'
  # element :mailuser, :xpath, "//*[@id='i0281']/div[1]/div/div[1]/div[2]/div/div/div[2]/div[2]/div/div[2]/div"
  # element :mailentrar, '#idSIButton9'
  # element :mailpassword, '#i0118'
  # element :mailenviar, '#_ariaId_26'
  # element :emailpara, :css, '._fp_G.ms-fwt-r.ms-font-color-neutralSecondary.allowTextSelection.ms-bgc-nl.textbox.ms-font-s.ms-fwt-sl.ms-fcl-np.ms-bcl-nta.ms-bcl-nsa-h.hideClearButton.ms-fcl-ns'
  # element :mailassunto, :css, '._mcp_Q1._mcp_R1.ms-font-weight-regular.ms-bg-color-white-hover.ms-font-color-neutralPrimary.allowTextSelection._mcp_O1.textbox.ms-font-s.ms-fwt-sl.ms-fcl-np.ms-bcl-nta.ms-bcl-nsa-h'
  # element :mailmsg, :css, '.allowTextSelection.ConsumerCED._mcp_32.customScrollBar.ms-bg-color-white.ms-font-color-black.owa-font-compose'
  # element :mailenviarmsg, :xpath, "//*[@id='primaryContainer']/div[5]/div/div[1]/div/div[4]/div[3]/div/div[5]/div[1]/div/div[3]/div[5]/div/div[2]/div[1]/button[1]/span[2]"


  $valor = 100

  def bitcoins
    # f = File.new('output.xml', 'w')
    # f.write(log)
    visit $url_minha_claro
    # cpf.visible?
    # cpf.set('39118165885')
    # password.visible?
    # password.set('vinicius3265!')
# attach_file('screenshot', File.new(page.save_screenshot(File.join(Dir.pwd, "results/#{UUID.new.generate}.png"))))
  end
end
#     signup.visible?
#     signup.click
#     ordens.visible?
#     ordens.click
#     sleep 10
#     loop do
#       ultimoPreco.visible?
#       page.find('#ticker_ultimo').text
#       $ultimo_preco = ultimoPreco.text.gsub(/[R$ ]/, ).to_i
#       page.find("#bitcoin-venda-form").find("#id_preco_unitario").click
#       page.find("#bitcoin-venda-form").find("#id_preco_unitario").set($ultimo_preco)
#       page.find("#bitcoin-venda-form").find(:xpath , "//*[@id='bitcoin-venda-form']/a[1]/small").click
#       sleep 4
#       if valorTotal.text.to_i > $valor.to_i
#         puts "saque seu dinheiro"
#         $total = "R$#{valorTotal.text.to_i}"
#         visit 'https://accounts.google.com/ServiceLogin/identifier?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=AddSession'
#
#         if page.has_xpath?("//*[@id='identifierNext']/content/span") == true
#           usuario.visible?
#           usuario.set ''
#           btnproximousuario.click
#           senha.visible?
#           senha.set ''
#           btnproximosenha.click
#           btnEscrever.visible?
#           btnEscrever.click
#           destinatarios.visible?
#           destinatarios.set('')
#           assunto.set('Venda seus Bitcoins')
#           corpoEmail.set("Você tem #{$total} em bitcoins para resgatar")
#           btnEnviarEmail.click[0]
#         else
#           btnEscrever.visible?
#           btnEscrever.click
#           destinatarios.visible?
#           destinatarios.set('vinicius.fmu@gmail.com')
#           assunto.set('Venda seus Bitcoins')
#           corpoEmail.set("Você tem bitcoins para resgatar")
#           btnEnviarEmail.click[0]
#         end
#
#       else
#         puts "Valor atual R$#{valorTotal.text.to_i}"
#         puts " "
#         puts "Aguardando atingir o valor esperado"
#       end
#       sleep 40
#       visit 'https://www.mercadobitcoin.com.br/BRLBTC/trade/ordens/'
#     end
#   end
# end
