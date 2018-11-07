class AlunosController < ApplicationController
  def index
    @alunos = Aluno.all
  end

  def new
    @aluno = Aluno.new
  end

  def create
    @aluno = Aluno.new(params.require(:aluno).permit(:nome, :nota))
    if @aluno.save
      redirect_to alunos_path
    else
      render :new
    end
  end
end
