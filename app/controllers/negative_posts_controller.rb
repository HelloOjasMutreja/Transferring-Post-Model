class NegativePostsController < ApplicationController
  before_action :set_negative_post, only: %i[ show edit update destroy ]

  # GET /negative_posts or /negative_posts.json
  def index
    @negative_posts = NegativePost.all
  end

  # GET /negative_posts/1 or /negative_posts/1.json
  def show
  end

  # GET /negative_posts/new
  def new
    @negative_post = NegativePost.new
  end

  # GET /negative_posts/1/edit
  def edit
  end

  # POST /negative_posts or /negative_posts.json
  def create
    @negative_post = NegativePost.new(negative_post_params)

    respond_to do |format|
      if @negative_post.save
        format.html { redirect_to negative_post_url(@negative_post), notice: "Negative post was successfully created." }
        format.json { render :show, status: :created, location: @negative_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @negative_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /negative_posts/1 or /negative_posts/1.json
  def update
    respond_to do |format|
      if @negative_post.update(negative_post_params)
        format.html { redirect_to negative_post_url(@negative_post), notice: "Negative post was successfully updated." }
        format.json { render :show, status: :ok, location: @negative_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @negative_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /negative_posts/1 or /negative_posts/1.json
  def destroy
    @negative_post.destroy

    respond_to do |format|
      format.html { redirect_to negative_posts_url, notice: "Negative post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_negative_post
      @negative_post = NegativePost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def negative_post_params
      params.require(:negative_post).permit(:title)
    end
end
