document.getElementById('compressForm').addEventListener('submit', async function(e) {
    e.preventDefault();
    
    const formData = new FormData();
    const fileInput = document.getElementById('fileInput');
    const formatSelect = document.getElementById('formatSelect');
    const resultDiv = document.getElementById('result');
    
    if (!fileInput.files[0]) {
        showResult('Please select a file', 'error');
        return;
    }
    
    formData.append('file', fileInput.files[0]);
    formData.append('format', formatSelect.value);
    
    try {
        const response = await fetch('/api/compress', {
            method: 'POST',
            body: formData
        });
        
        if (response.ok) {
            const blob = await response.blob();
            const url = window.URL.createObjectURL(blob);
            const a = document.createElement('a');
            a.href = url;
            a.download = fileInput.files[0].name + (formatSelect.value === 'gzip' ? '.gz' : '.zip');
            document.body.appendChild(a);
            a.click();
            window.URL.revokeObjectURL(url);
            document.body.removeChild(a);
            showResult('File compressed successfully!', 'success');
        } else {
            showResult('Compression failed. Please try again.', 'error');
        }
    } catch (error) {
        showResult('Error: ' + error.message, 'error');
    }
});

function showResult(message, type) {
    const resultDiv = document.getElementById('result');
    resultDiv.textContent = message;
    resultDiv.className = type;
    resultDiv.style.display = 'block';
}

