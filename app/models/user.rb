#encoding: UTF-8

#  @UserTypes = [["trial",2],["vip",1],["admin",0]]


class User < ActiveRecord::Base
  has_many :com
  
  UserTypes = [["试用",2],["vip",1],["管理员",0]]
  States = [["可用",1],["停用",0]] 

  attr_accessor :password_confirmation
  attr_accessor :newpassword,:com_id
  
#validate the contents.
  validates_presence_of :username,:password,:password_confirmation,:level,:starttime,:deadline
 
  validates :username,:length => {:minimum => 5,:maximum => 20,:too_long => "最长不超过20个字符",:too_short=> "最短6个字符"}
  validates :password,:length => {:minimum => 5,:maximum => 20,:too_long => "最长不超过20个字符",:too_short=> "最短6个字符"}
  validates :password_confirmation,:length => {:minimum => 5, :maximum => 20,:too_long => "最长不超过20个字符",:too_short=> "最短6个字符"} 

  validates :username,:uniqueness => {:case_sensitive => false}
  validates :password_confirmation,:presence => true,:if => :same_with_password?
  

private

  def same_with_password?
    :password_confirmation == :password
  end

public
  
  def isAdmin?
    if self.level == nil
      return false
    end
    if self.level.to_i == 0
      return true
    else
      return false
    end
  end

  def isVip? 
    if self.level.to_i == 1
      return true
    else
        return false
    end
  end

  def isTrial?
    if self.level.to_i == 2
      return true
    else
      return false
    end
  end

end

