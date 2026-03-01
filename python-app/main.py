from fastapi import FastAPI # импортируем класс FastAPI из молуля fastapi
import socket  # модуль для работы с сетью

app = FastAPI() # создаем обьект из класса фастапи


@app.get("/")
def get_ip():
    try:
        hostname = socket.gethostname()
        ip = socket.gethostbyname(hostname)
    except Exception:
        ip = "Unable to determine via hostname"

    return {
        "hostnamesss": hostname,
        "ip": ip,
    }
