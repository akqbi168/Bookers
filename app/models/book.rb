class Book < ApplicationRecord
	#Titleが入力されていない場合エラーを返す
	# validates :title, presence: true
	#Bodyが入力されていない場合エラーを返す
	# validates :body, presence: true

	validates :add_error_sample

	def add_error_sample
		if title.blank?
			error[:base] << "Title項目が空欄です。"
		end

		if body.blank?
			error[:base] << "Body項目が空欄です。"
		end
	end
end
