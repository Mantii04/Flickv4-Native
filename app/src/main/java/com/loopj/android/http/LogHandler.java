package com.loopj.android.http;

import android.annotation.TargetApi;
import android.os.Build;
import android.util.Log;

/* loaded from: classes2.dex */
public class LogHandler implements LogInterface {
    boolean mLoggingEnabled = true;
    int mLoggingLevel = 2;

    @TargetApi(8)
    private void checkedWtf(String str, String str2, Throwable th) {
        Log.wtf(str, str2, th);
    }

    @Override // com.loopj.android.http.LogInterface
    public void d(String str, String str2) {
        log(2, str, str2);
    }

    @Override // com.loopj.android.http.LogInterface
    public void e(String str, String str2) {
        log(6, str, str2);
    }

    @Override // com.loopj.android.http.LogInterface
    public int getLoggingLevel() {
        return this.mLoggingLevel;
    }

    @Override // com.loopj.android.http.LogInterface
    public void i(String str, String str2) {
        log(4, str, str2);
    }

    @Override // com.loopj.android.http.LogInterface
    public boolean isLoggingEnabled() {
        return this.mLoggingEnabled;
    }

    public void log(int i2, String str, String str2) {
        logWithThrowable(i2, str, str2, null);
    }

    public void logWithThrowable(int i2, String str, String str2, Throwable th) {
        if (isLoggingEnabled() && shouldLog(i2)) {
            if (i2 == 2) {
                Log.v(str, str2, th);
                return;
            }
            if (i2 == 3) {
                Log.d(str, str2, th);
                return;
            }
            if (i2 == 4) {
                Log.i(str, str2, th);
                return;
            }
            if (i2 == 5) {
                Log.w(str, str2, th);
                return;
            }
            if (i2 == 6) {
                Log.e(str, str2, th);
            } else {
                if (i2 != 8) {
                    return;
                }
                if (Integer.valueOf(Build.VERSION.SDK).intValue() > 8) {
                    checkedWtf(str, str2, th);
                } else {
                    Log.e(str, str2, th);
                }
            }
        }
    }

    @Override // com.loopj.android.http.LogInterface
    public void setLoggingEnabled(boolean z6) {
        this.mLoggingEnabled = z6;
    }

    @Override // com.loopj.android.http.LogInterface
    public void setLoggingLevel(int i2) {
        this.mLoggingLevel = i2;
    }

    @Override // com.loopj.android.http.LogInterface
    public boolean shouldLog(int i2) {
        return i2 >= this.mLoggingLevel;
    }

    @Override // com.loopj.android.http.LogInterface
    public void v(String str, String str2) {
        log(2, str, str2);
    }

    @Override // com.loopj.android.http.LogInterface
    public void w(String str, String str2) {
        log(5, str, str2);
    }

    @Override // com.loopj.android.http.LogInterface
    public void wtf(String str, String str2) {
        log(8, str, str2);
    }

    @Override // com.loopj.android.http.LogInterface
    public void d(String str, String str2, Throwable th) {
        logWithThrowable(3, str, str2, th);
    }

    @Override // com.loopj.android.http.LogInterface
    public void e(String str, String str2, Throwable th) {
        logWithThrowable(6, str, str2, th);
    }

    @Override // com.loopj.android.http.LogInterface
    public void i(String str, String str2, Throwable th) {
        logWithThrowable(4, str, str2, th);
    }

    @Override // com.loopj.android.http.LogInterface
    public void v(String str, String str2, Throwable th) {
        logWithThrowable(2, str, str2, th);
    }

    @Override // com.loopj.android.http.LogInterface
    public void w(String str, String str2, Throwable th) {
        logWithThrowable(5, str, str2, th);
    }

    @Override // com.loopj.android.http.LogInterface
    public void wtf(String str, String str2, Throwable th) {
        logWithThrowable(8, str, str2, th);
    }
}
