class DirectorsController < ApplicationController
  def index
    render({ :template => "directors_templates/list"})
  end

  def show
    the_id = params.fetch("the_id")

    matching_record = Director.where({ :id => the_id})

    @the_director = matching_record.at(0)



    render({ :template => "directors_templates/details"})
  end
end
