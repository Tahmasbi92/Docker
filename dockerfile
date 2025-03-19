# استفاده از ایمیج پایه Go
FROM golang:1.20-alpine

# تنظیم دایرکتوری کاری در داخل کانتینر
WORKDIR /app

# کپی کردن فایل‌های پروژه به داخل کانتینر
COPY . .

# دانلود و نصب وابستگی‌ها (اگر وجود دارند)
RUN go mod download
RUN go mod tidy

# ساخت اپلیکیشن
RUN go build -o main .

# دستوری که هنگام اجرای کانتینر اجرا می‌شود
CMD ["/app/main"]
