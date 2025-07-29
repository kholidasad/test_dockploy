from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Halo Dunia! Ini aplikasi Flask sederhana saya di DocPloy.'

@app.route('/about')
def about():
    return 'Ini adalah halaman About. Terima kasih sudah berkunjung!'

if __name__ == '__main__':
    # Ubah host menjadi '0.0.0.0' agar bisa diakses dari luar container
    app.run(host='0.0.0.0', port=5000)
