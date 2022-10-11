require "test_helper"

class MovimentacoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movimentacao = movimentacoes(:one)
  end

  test "should get index" do
    get movimentacoes_url
    assert_response :success
  end

  test "should get new" do
    get new_movimentacao_url
    assert_response :success
  end

  test "should create movimentacao" do
    assert_difference("Movimentacao.count") do
      post movimentacoes_url, params: { movimentacao: { data: @movimentacao.data, descricao: @movimentacao.descricao, tipo: @movimentacao.tipo, valor: @movimentacao.valor } }
    end

    assert_redirected_to movimentacao_url(Movimentacao.last)
  end

  test "should show movimentacao" do
    get movimentacao_url(@movimentacao)
    assert_response :success
  end

  test "should get edit" do
    get edit_movimentacao_url(@movimentacao)
    assert_response :success
  end

  test "should update movimentacao" do
    patch movimentacao_url(@movimentacao), params: { movimentacao: { data: @movimentacao.data, descricao: @movimentacao.descricao, tipo: @movimentacao.tipo, valor: @movimentacao.valor } }
    assert_redirected_to movimentacao_url(@movimentacao)
  end

  test "should destroy movimentacao" do
    assert_difference("Movimentacao.count", -1) do
      delete movimentacao_url(@movimentacao)
    end

    assert_redirected_to movimentacoes_url
  end
end
