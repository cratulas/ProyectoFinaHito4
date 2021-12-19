class UserMailer < ApplicationMailer
    def new_post(user, post)
      @post = post
      mail(to: user.email, subject: 'Se ha publicado un nuevo post!')
      # UserMailer.new_post(user, post).deliver_later
    end
end