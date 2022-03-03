# email:string
# password_digest:string
#
# Virtual attributes added by has_secure_password
# password:string
# password_confirmation:string
class User < ApplicationRecord
	has_secure_password
end
