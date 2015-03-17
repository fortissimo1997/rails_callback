class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  callback_method_name =
    case Rails::VERSION::MAJOR
    when 3
      'filter'
    when 4
      'action'
    end

  public_send("before_#{callback_method_name}", :before)
  public_send("around_#{callback_method_name}", :around)
  public_send("after_#{callback_method_name}", :after)
  public_send("append_before_#{callback_method_name}", :append_before)
  public_send("append_around_#{callback_method_name}", :append_around)
  public_send("append_after_#{callback_method_name}", :append_after)
  public_send("prepend_before_#{callback_method_name}", :prepend_before)
  public_send("prepend_around_#{callback_method_name}", :prepend_around)
  public_send("prepend_after_#{callback_method_name}", :prepend_after)

  private

  def before
    @array ||= []
    @array << 'before'
  end

  def append_before
    @array ||= []
    @array << 'append_before'
  end

  def prepend_before
    @array ||= []
    @array << 'prepend_before'
  end

  def around
    @array ||= []
    @array << 'around'
    yield
  end

  def append_around
    @array ||= []
    @array << 'append_around'
    yield
  end

  def prepend_around
    @array ||= []
    @array << 'prepend_around'
    yield
  end

  def after
    @array ||= []
    @array << 'after'
  end

  def append_after
    @array ||= []
    @array << 'append_after'
  end

  def prepend_after
    @array ||= []
    @array << 'prepend_after'
  end
end
