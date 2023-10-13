This is part of the Forms Project in The Odin Project’s Ruby on Rails Curriculum. Find it at http://www.theodinproject.com

Finding the following information during the HTML form step number nine was helpful: 
- https://www.theodinproject.com/lessons/ruby-on-rails-controllers#params-and-strong-parameters
- https://guides.rubyonrails.org/getting_started.html#using-strong-parameters


I found step one of the editing section to be challenging when it says 'You’ll need your controller to find a user based on the submitted params ID.'. I ended up needing this bit of code inside of my edit and update definitions:

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end
