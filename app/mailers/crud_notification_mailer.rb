class CrudNotificationMailer < ApplicationMailer

 
  def create_notification(object)
    @object = object
    @object_count = object.class.count

    mail to: "m.zubair4325@gmail.com",  subject: "a new entry #{object.class}"
    
  end

  
  def update_notification(object)
    @object = object
    @object_count = object.class.count

    mail to: "m.zubair4325@gmail.com",  subject: "updated entry #{object.class}"
    
  end

  
  def delete_notification(object)
    @object = object
    @object_count = object.class.count

    mail to: "m.zubair4325@gmail.com",  subject: "deleted entry #{object.class}"
      end
end
