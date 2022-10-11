require "application_system_test_case"

class MovimentacoesTest < ApplicationSystemTestCase
  setup do
    @movimentacao = movimentacoes(:one)
  end

  test "visiting the index" do
    visit movimentacoes_url
    assert_selector "h1", text: "Movimentacoes"
  end

  test "should create movimentacao" do
    visit movimentacoes_url
    click_on "New movimentacao"

    fill_in "Data", with: @movimentacao.data
    fill_in "Descricao", with: @movimentacao.descricao
    fill_in "Tipo", with: @movimentacao.tipo
    fill_in "Valor", with: @movimentacao.valor
    click_on "Create Movimentacao"

    assert_text "Movimentacao was successfully created"
    click_on "Back"
  end

  test "should update Movimentacao" do
    visit movimentacao_url(@movimentacao)
    click_on "Edit this movimentacao", match: :first

    fill_in "Data", with: @movimentacao.data
    fill_in "Descricao", with: @movimentacao.descricao
    fill_in "Tipo", with: @movimentacao.tipo
    fill_in "Valor", with: @movimentacao.valor
    click_on "Update Movimentacao"

    assert_text "Movimentacao was successfully updated"
    click_on "Back"
  end

  test "should destroy Movimentacao" do
    visit movimentacao_url(@movimentacao)
    click_on "Destroy this movimentacao", match: :first

    assert_text "Movimentacao was successfully destroyed"
  end
end
