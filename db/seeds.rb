Project.destroy_all

projects = [
  {
    position: 1,
    name: "Сколько калорий?",
    description: "Telegram-бот считает калории по фотографии еды. Сфотографировал тарелку — получил БЖУ и калории.",
    url: "https://kcalc.ru/",
    screenshot_url: "https://image.thum.io/get/width/600/crop/400/https://kcalc.ru/",
    tag: "Telegram-бот"
  },
  {
    position: 2,
    name: "Буковка",
    description: "Telegram-бот превращает голосовые сообщения и видео в текст мгновенно. Работает через OpenAI Whisper.",
    url: "https://bukovkabot.ru/",
    screenshot_url: "https://image.thum.io/get/width/600/crop/400/https://bukovkabot.ru/",
    tag: "Telegram-бот"
  },
  {
    position: 3,
    name: "Убери, бот!",
    description: "Убирает лишние объекты с фотографии одной фразой. Описал — объект исчез.",
    url: "https://uberibot.ru/",
    screenshot_url: "https://image.thum.io/get/width/600/crop/400/https://uberibot.ru/",
    tag: "Telegram-бот"
  },
  {
    position: 4,
    name: "Fotobanana",
    description: "AI-генерация фотографий с твоим лицом в разных стилях. Загрузил фото — выбрал стиль — получил результат за минуту.",
    url: "http://fotobanana.ru/",
    screenshot_url: "https://image.thum.io/get/width/600/crop/400/http://fotobanana.ru/",
    tag: "Веб-сервис"
  },
  {
    position: 5,
    name: "Песня, бот!",
    description: "Telegram-бот создаёт уникальные песни с текстом, мелодией и вокалом по описанию пользователя.",
    url: "https://botspel.ru/",
    screenshot_url: "https://image.thum.io/get/width/600/crop/400/https://botspel.ru/",
    tag: "Telegram-бот"
  },
  {
    position: 6,
    name: "Emoext",
    description: "Раскрась свой текст эмодзи в один клик. ИИ подбирает подходящие эмодзи по контексту каждой фразы.",
    url: "https://emoext.com/ru",
    screenshot_url: "https://image.thum.io/get/width/600/crop/400/https://emoext.com/ru",
    tag: "Веб-сервис"
  },
  {
    position: 7,
    name: "MigrenBot",
    description: "Telegram-бот для ведения дневника мигрени. Записывает приступы, отслеживает триггеры и частоту через AI-анализ.",
    url: "https://migrenbot.ru/",
    screenshot_url: "https://image.thum.io/get/width/600/crop/400/https://migrenbot.ru/",
    tag: "Telegram-бот"
  },
  {
    position: 8,
    name: "Поздрависта",
    description: "Онлайн-генератор персонализированных поздравлений на основе GPT. Указал повод и адресата — получил текст.",
    url: "https://pozdravista.ru/",
    screenshot_url: "https://image.thum.io/get/width/600/crop/400/https://pozdravista.ru/",
    tag: "Веб-сервис"
  }
]

projects.each { |attrs| Project.create!(attrs) }
puts "Created #{Project.count} projects"
