document.getElementById('decompressForm').addEventListener('submit', async function(e) {
    e.preventDefault();
    
    const formData = new FormData();
    const fileInput = document.getElementById('fileInput');
    const resultDiv = document.getElementById('result');
    
    if (!fileInput.files[0]) {
        showResult('Please select a file', 'error');
        return;
    }
    
    formData.append('file', fileInput.files[0]);
    
    try {
        const response = await fetch('/api/decompress', {
            method: 'POST',
            body: formData
        });
        
        if (response.ok) {
            const blob = await response.blob();
            const url = window.URL.createObjectURL(blob);
            const a = document.createElement('a');
            a.href = url;
            const filename = fileInput.files[0].name.replace(/\.(gz|zip)$/i, '');
            a.download = filename;
            document.body.appendChild(a);
            a.click();
            window.URL.revokeObjectURL(url);
            document.body.removeChild(a);
            showResult('File decompressed successfully!', 'success');
        } else {
            showResult('Decompression failed. Please try again.', 'error');
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

