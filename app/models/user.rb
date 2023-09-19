class User < ApplicationRecord
  has_secure_password

  after_destroy :ensure_an_admin_remains #supongo que se llama despues del destroy de la base pero antes de que termine la transaccion para que de esta forma se tenga como rollbackear el delete

  class Error < StandardError
  end

  private
    def ensure_an_admin_remains
      if User.count.zero?
        raise Error.new "Can't delete last user"
      end
    end 
end
