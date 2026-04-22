from flask import Flask, jsonify
from datetime import datetime

app = Flask(__name__)

@app.route('/api/health', methods=['GET'])
def health():
    return jsonify({
        'status': 'healthy',
        'service': 'backend-api',
        'timestamp': datetime.now().isoformat(),
        'message': 'Backend microservice running successfully'
    })

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)