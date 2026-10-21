package com.loopj.android.http;

import android.content.Context;
import cz.msebera.android.httpclient.Header;
import cz.msebera.android.httpclient.HttpEntity;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public abstract class FileAsyncHttpResponseHandler extends AsyncHttpResponseHandler {
    private static final String LOG_TAG = "FileAsyncHttpRH";
    protected final boolean append;
    protected final File file;
    protected File frontendFile;
    protected final boolean renameIfExists;

    public FileAsyncHttpResponseHandler(File file) {
        this(file, false);
    }

    public boolean deleteTargetFile() {
        return getTargetFile() != null && getTargetFile().delete();
    }

    public File getOriginalFile() {
        Utils.asserts(this.file != null, "Target file is null, fatal!");
        return this.file;
    }

    @Override // com.loopj.android.http.AsyncHttpResponseHandler
    public byte[] getResponseData(HttpEntity httpEntity) throws IOException {
        if (httpEntity == null) {
            return null;
        }
        InputStream content = httpEntity.getContent();
        long contentLength = httpEntity.getContentLength();
        FileOutputStream fileOutputStream = new FileOutputStream(getTargetFile(), this.append);
        if (content == null) {
            return null;
        }
        try {
            byte[] bArr = new byte[4096];
            int i2 = 0;
            while (true) {
                int read = content.read(bArr);
                if (read == -1 || Thread.currentThread().isInterrupted()) {
                    break;
                }
                i2 += read;
                fileOutputStream.write(bArr, 0, read);
                sendProgressMessage(i2, contentLength);
            }
            return null;
        } finally {
            AsyncHttpClient.silentCloseInputStream(content);
            fileOutputStream.flush();
            AsyncHttpClient.silentCloseOutputStream(fileOutputStream);
        }
    }

    public File getTargetFile() {
        if (this.frontendFile == null) {
            this.frontendFile = getOriginalFile().isDirectory() ? getTargetFileByParsingURL() : getOriginalFile();
        }
        return this.frontendFile;
    }

    public File getTargetFileByParsingURL() {
        String str;
        Utils.asserts(getOriginalFile().isDirectory(), "Target file is not a directory, cannot proceed");
        Utils.asserts(getRequestURI() != null, "RequestURI is null, cannot proceed");
        String uri = getRequestURI().toString();
        String substring = uri.substring(uri.lastIndexOf(47) + 1, uri.length());
        File file = new File(getOriginalFile(), substring);
        if (!file.exists() || !this.renameIfExists) {
            return file;
        }
        if (substring.contains(".")) {
            str = substring.substring(0, substring.lastIndexOf(46)) + " (%d)" + substring.substring(substring.lastIndexOf(46), substring.length());
        } else {
            str = substring.concat(" (%d)");
        }
        int i2 = 0;
        while (true) {
            File file2 = new File(getOriginalFile(), String.format(str, Integer.valueOf(i2)));
            if (!file2.exists()) {
                return file2;
            }
            i2++;
        }
    }

    public File getTemporaryFile(Context context) {
        Utils.asserts(context != null, "Tried creating temporary file without having Context");
        try {
            return File.createTempFile("temp_", "_handled", context.getCacheDir());
        } catch (IOException e3) {
            AsyncHttpClient.log.e(LOG_TAG, "Cannot create temporary file", e3);
            return null;
        }
    }

    public abstract void onFailure(int i2, Header[] headerArr, Throwable th, File file);

    @Override // com.loopj.android.http.AsyncHttpResponseHandler
    public final void onFailure(int i2, Header[] headerArr, byte[] bArr, Throwable th) {
        onFailure(i2, headerArr, th, getTargetFile());
    }

    public abstract void onSuccess(int i2, Header[] headerArr, File file);

    @Override // com.loopj.android.http.AsyncHttpResponseHandler
    public final void onSuccess(int i2, Header[] headerArr, byte[] bArr) {
        onSuccess(i2, headerArr, getTargetFile());
    }

    public FileAsyncHttpResponseHandler(File file, boolean z6) {
        this(file, z6, false);
    }

    public FileAsyncHttpResponseHandler(File file, boolean z6, boolean z7) {
        this(file, z6, z7, false);
    }

    public FileAsyncHttpResponseHandler(File file, boolean z6, boolean z7, boolean z8) {
        super(z8);
        Utils.asserts(file != null, "File passed into FileAsyncHttpResponseHandler constructor must not be null");
        if (!file.isDirectory() && !file.getParentFile().isDirectory()) {
            Utils.asserts(file.getParentFile().mkdirs(), "Cannot create parent directories for requested File location");
        }
        if (file.isDirectory() && !file.mkdirs()) {
            AsyncHttpClient.log.d(LOG_TAG, "Cannot create directories for requested Directory location, might not be a problem");
        }
        this.file = file;
        this.append = z6;
        this.renameIfExists = z7;
    }

    public FileAsyncHttpResponseHandler(Context context) {
        this.file = getTemporaryFile(context);
        this.append = false;
        this.renameIfExists = false;
    }
}
