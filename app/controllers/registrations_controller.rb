class RegistrationsController < Devise::RegistrationsController
    def sign_up_params
        params.require(:customer).permit(:email,:password,:password_confirmation,:firstname,:lastname,:image,:address,:city,:postal_code,:province_id,:country,:phone)
    end
end
