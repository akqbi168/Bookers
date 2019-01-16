class Book < ApplicationRecord
	#Titleが入力されていない場合エラーを返す
	# validates :title, presence: true
	#Bodyが入力されていない場合エラーを返す
	# validates :body, presence: true

	validate :add_error_sample

	def add_error_sample
		if title.blank?
			errors[:title] << "※タイトルを入力してください。"
		end

		if body.blank?
			errors[:body] << "※本文を入力してください。"
		end
	end
end
