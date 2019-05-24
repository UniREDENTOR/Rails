class AlunosController < ApplicationController
  def index
    if params[:valor].present?
      @alunos = Aluno.where(params[:campo] => params[:valor])
    else
      @alunos = Aluno.all
    end
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
