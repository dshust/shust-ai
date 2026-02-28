module Enva
  class GeminiService
    API_URL = "https://api.kie.ai/gemini-2.5-flash/v1/chat/completions"

    SYSTEM_PROMPT = <<~PROMPT
      Ты — эксперт по созданию бизнес-приложений. По описанию пользователя создай полноценное одностраничное HTML-приложение.

      Требования к генерируемому HTML:
      - Полный HTML-документ с <!DOCTYPE html>, <head> и <body>
      - Подключи Tailwind CSS через CDN: <script src="https://cdn.tailwindcss.com"></script>
      - Используй Inter из Google Fonts
      - Стиль: корпоративный, чистый. Фон страницы: #f5f5f5. Карточки: белые, border-radius 12px, border 1px solid #e5e5e5
      - Основной акцент: #0000CC (тёмно-синий)
      - Заголовок приложения — название сервиса, крупно
      - Если нужна таблица с данными — добавь несколько строк примеров
      - Если нужен калькулятор — сделай рабочий (через inline JavaScript)
      - Если нужна загрузка файла — добавь input type="file" с красивым дропзоной
      - Кнопки: синие (#0000CC), белый текст, border-radius 8px
      - Форма должна выглядеть как настоящее рабочее приложение
      - В конце страницы кнопка "Отправить" или "Сохранить" — по контексту
      - НЕ добавляй никаких объяснений, комментариев или markdown — ТОЛЬКО чистый HTML-код
      - НЕ оборачивай в ```html ... ``` — только сам HTML начиная с <!DOCTYPE html>
    PROMPT

    def self.generate(prompt)
      conn = Faraday.new(url: API_URL) do |f|
        f.request :json
        f.response :json
        f.options.timeout = 60
      end

      response = conn.post do |req|
        req.headers["Authorization"] = "Bearer #{ENV.fetch("GEMINI_API_KEY")}"
        req.headers["Content-Type"] = "application/json"
        req.body = {
          model: "gemini-2.5-flash",
          messages: [
            { role: "system", content: SYSTEM_PROMPT },
            { role: "user", content: prompt }
          ]
        }
      end

      response.body.dig("choices", 0, "message", "content")
    end
  end
end
