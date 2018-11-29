class AlunosController < ApplicationController
  before_action :set_aluno, only: [:edit, :update, :destroy]

  def index
    @alunos = Aluno.all
  end

  def new
    @aluno = Aluno.new(nota: 0)
  end

  def create
    @aluno = Aluno.new(aluno_params)
    if @aluno.save
      redirect_to alunos_path
    else
      render :new
    end
  end

  def edit;  end

  def update
    if @aluno.update(aluno_params)
      redirect_to alunos_path
    else
      render :edit
    end
  end

  def destroy
    @aluno.destroy
    redirect_to alunos_path
  end

  private

  def set_aluno
    @aluno = Aluno.find(params[:id])
  end

  def aluno_params
    params.require(:aluno).permit(:nome, :nota)
  end
end
