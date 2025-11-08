// API utility functions for file compression/decompression

const API_BASE = '';

async function compressFile(file, format) {
    const formData = new FormData();
    formData.append('file', file);
    formData.append('format', format);
    
    const response = await fetch(`${API_BASE}/api/compress`, {
        method: 'POST',
        body: formData
    });
    
    if (!response.ok) {
        throw new Error('Compression failed');
    }
    
    return await response.blob();
}

async function decompressFile(file) {
    const formData = new FormData();
    formData.append('file', file);
    
    const response = await fetch(`${API_BASE}/api/decompress`, {
        method: 'POST',
        body: formData
    });
    
    if (!response.ok) {
        throw new Error('Decompression failed');
    }
    
    return await response.blob();
}

function downloadBlob(blob, filename) {
    const url = window.URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = url;
    a.download = filename;
    document.body.appendChild(a);
    a.click();
    window.URL.revokeObjectURL(url);
    document.body.removeChild(a);
}

