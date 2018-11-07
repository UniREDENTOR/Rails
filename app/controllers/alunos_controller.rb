class AlunosController < ApplicationController
  def index
    @alunos = Aluno.all
  end

  def new
    @aluno = Aluno.new(nota: 0)
  end

  def create
    @aluno = Aluno.new(params.require(:aluno).permit(:nome, :nota))
    if @aluno.save
      redirect_to alunos_path
    else
      render :new
    end
  end

  def destroy
    aluno = Aluno.find(params[:id])
    aluno.destroy
    redirect_to alunos_path
  end
end
