class TopController < ApplicationController
  def index
    @columns = Column.all
  end

  def faq
  end

  def co
  end

  def question
  end

  def cocacola
    render :layout => "cocacola"
  end

  def asahi
    render :layout => "asahi"
  end

  def otsuka
    render :layout => "otsuka"
  end

  def itoen
    render :layout => "itoen"
  end

  def dydo
    render :layout => "dydo"
  end

  def kirin
    render :layout => "kirin"
  end

end
