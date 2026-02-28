module Enva
  class ServicesController < ApplicationController
    layout "enva"

    def new
    end

    def create
      prompt = params[:prompt].to_s.strip
      return redirect_to new_enva_service_path, alert: "Опишите сервис" if prompt.blank?

      generated_html = GeminiService.generate(prompt)

      name = params[:name].presence || prompt.truncate(50)
      emoji = params[:emoji].presence || "⚡"

      @service = Service.create!(
        name: name,
        prompt: prompt,
        generated_html: generated_html,
        emoji: emoji,
        published: false
      )

      redirect_to enva_service_path(@service)
    rescue => e
      Rails.logger.error("Enva::GeminiService error: #{e.message}")
      redirect_to new_enva_service_path, alert: "Ошибка генерации: #{e.message}"
    end

    def show
      @service = Service.find(params[:id])
    end

    def publish
      @service = Service.find(params[:id])
      @service.update!(published: true)
      redirect_to enva_service_path(@service), notice: "Сервис опубликован"
    end
  end
end
