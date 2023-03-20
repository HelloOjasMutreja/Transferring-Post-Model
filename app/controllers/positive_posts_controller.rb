class PositivePostsController < ApplicationController
  before_action :set_positive_post, only: %i[ show edit update destroy ]

  # GET /positive_posts or /positive_posts.json
  def index
    @positive_posts = PositivePost.all
  end

  # GET /positive_posts/1 or /positive_posts/1.json
  def show
  end

  # GET /positive_posts/new
  def new
    @positive_post = PositivePost.new
  end

  # GET /positive_posts/1/edit
  def edit
  end

  # POST /positive_posts or /positive_posts.json
  def create
    @positive_post = PositivePost.new(positive_post_params)

    respond_to do |format|
      if @positive_post.save
        format.html { redirect_to positive_post_url(@positive_post), notice: "Positive post was successfully created." }
        format.json { render :show, status: :created, location: @positive_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @positive_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /positive_posts/1 or /positive_posts/1.json
  def update
    respond_to do |format|
      if @positive_post.update(positive_post_params)
        format.html { redirect_to positive_post_url(@positive_post), notice: "Positive post was successfully updated." }
        format.json { render :show, status: :ok, location: @positive_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @positive_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /positive_posts/1 or /positive_posts/1.json
  def destroy
    @positive_post.destroy

    respond_to do |format|
      format.html { redirect_to positive_posts_url, notice: "Positive post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def transfer
    @positive_post = PositivePost.find(params[:id])
    NegativePost.create(title: @positive_post.title)
    @positive_post.destroy
    redirect_to negative_posts_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_positive_post
      @positive_post = PositivePost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def positive_post_params
      params.require(:positive_post).permit(:title)
    end
end
