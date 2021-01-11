class SkillSheetsController < ApplicationController
  def index
    @skill_sheets = SkillSheet.page(params[:page]).per(1)

    logger.debug @skill_sheets
    return unless request.xhr?
    respond_to do |format|
      format.html
      format.js { @skill_sheets }
    end
  end

  def list
    @list = [{id: 1, name:"test"}]
    respond_to do |format|
      format.html
      format.js { @list }
    end
  end

  def detail
    @skill_sheet = SkillSheet.find(params[:id])
  end

  def new
    @skill_sheet = SkillSheet.new
    @users = User.eager_load(:skill_sheet).where(skill_sheets: {user_id: nil}).map{|user| [user.email, user.id]}
  end

  def create
    #skill_sheet = params.require(:skill_sheet).permit(:user_id, :age, :affiliation, :sex, :qualification, :academic_history, :earnings, :nearest_station, :specialty, :specialty_technology, :good_business, :self_pr)
    @skill_sheet = SkillSheet.new(skill_sheet_params)
    logger.warn @skill_sheet
    if @skill_sheet.valid?
      @skill_sheet.save
      redirect_to action: "index"
    else
      render "new"
    end
  end

  def edit
    @skill_sheet = SkillSheet.find(params[:id])
  end

  def update
    @skill_sheet = SkillSheet.find(params[:skill_sheet][:id])
    @skill_sheet.assign_attributes(skill_sheet_params)
    logger.warn @skill_sheet
    if @skill_sheet.valid?
      @skill_sheet.save
      #render "index"
      redirect_to action: "index"
    else
      render "edit"
    end
  end

  def delete
    @skill_sheet = SkillSheet.find(params[:id])
    @skill_sheet.delete
    redirect_to action: "index"
  end

  def export
  end

  private

  def skill_sheet_params
    params.require(:skill_sheet).permit(:user_id, :user_name, :age, :affiliation, 
      :sex, :qualification, :academic_history, :earnings, :nearest_station, :specialty, 
      :specialty_technology, :good_business, :self_pr)
  end
end
