#---
# Excerpted from "Agile Web Development with Rails 6",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails6 for more book information.
#---
class SupportRequestsController < ApplicationController
  def index
    # @support_requests = SupportRequest.all
    @search = SupportRequest.all.ransack params[:q]
    @support_requests = @search.result(distinct: true).paginate(page: params[:page], per_page: 5)
  end

  def update
    support_request = SupportRequest.find(params[:id])
    support_request.update(response: params.require(:support_request)[:response])
    SupportRequestMailer.respond(support_request).deliver_now
    redirect_to support_requests_path
  end
end
